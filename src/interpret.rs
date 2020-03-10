use crate::data::Data;
use crate::import;
use crate::runtime::{
    alloc_func, decode_module, get_export, init_store, instantiate_module, invoke_func,
    module_imports, Extern, ExternVal, FuncAddr, Module, ModuleInst, Store, Value,
};
use crate::WasmMacro;
use proc_macro::TokenStream;
use std::cell::RefCell;
use std::collections::hash_map::{Entry, HashMap};
use std::io::Cursor;
use std::rc::Rc;

struct ThreadState {
    store: Store,
    instances: HashMap<usize, Rc<ModuleInst>>,
}

std::thread_local! {
    static STATE: RefCell<ThreadState> = {
        RefCell::new(ThreadState {
            store: init_store(),
            instances: HashMap::new(),
        })
    };
}

impl ThreadState {
    pub fn instance(&mut self, instance: &WasmMacro) -> &ModuleInst {
        let id = instance.id();
        let ThreadState { store, instances } = self;
        let entry = match instances.entry(id) {
            Entry::Occupied(e) => return e.into_mut(),
            Entry::Vacant(v) => v,
        };

        let cursor = Cursor::new(instance.wasm);
        let module = decode_module(cursor).unwrap();
        #[cfg(watt_debug)]
        print_module(&module);
        let extern_vals = extern_vals(&module, store);
        let module_instance = instantiate_module(store, module, &extern_vals).unwrap();
        let module = entry.insert(module_instance);

        for feature in instance.features {
            publish_feature(feature, store, module)
        }

        module
    }
}

fn publish_feature(feature: &str, store: &mut Store, instance: &ModuleInst) {
    /// A simple 32 bit FNV hash function. Must be the same one as used on the wasm side.
    ///
    /// <https://en.wikipedia.org/wiki/Fowler–Noll–Vo_hash_function>
    /// <http://www.isthe.com/chongo/tech/comp/fnv/index.html#FNV-1a>
    fn fnv1a(bytes: &[u8]) -> u32 {
        const FNV_OFFSET: u32 = 0x811C_9DC5;
        const FNV_PRIME: u32 = 0x100_0193;
        let mut hash = FNV_OFFSET;
        for &byte in bytes {
            hash ^= byte as u32;
            hash = hash.wrapping_mul(FNV_PRIME);
        }
        hash
    }

    // FIXME: guard against collisions
    let feature_hash = fnv1a(feature.as_bytes());
    let fn_publish_feature = match get_export(instance, "__watt_publish_feature") {
        Ok(ExternVal::Func(f)) => f,
        _ => unimplemented!("__watt_publish_feature not found"),
    };
    let arg = Value::I32(feature_hash);

    call(store, fn_publish_feature, vec![arg]);
}

pub fn proc_macro(fun: &str, inputs: Vec<TokenStream>, instance: &WasmMacro) -> TokenStream {
    STATE.with(|state| {
        let state = &mut state.borrow_mut();
        let instance = state.instance(instance);
        let exports = Exports::collect(instance, fun);

        let _guard = Data::guard();
        let raws: Vec<Value> = Data::with(|d| {
            inputs
                .into_iter()
                .map(|input| Value::I32(d.tokenstream.push(input)))
                .collect()
        });

        let args: Vec<Value> = raws
            .into_iter()
            .map(|raw| call(&mut state.store, exports.raw_to_token_stream, vec![raw]).unwrap())
            .collect();
        let output = call(&mut state.store, exports.main, args).unwrap();
        let raw = call(
            &mut state.store,
            exports.token_stream_into_raw,
            vec![output],
        ).unwrap();
        let handle = match raw {
            Value::I32(handle) => handle,
            _ => unimplemented!("unexpected macro return type"),
        };
        Data::with(|d| d.tokenstream[handle].clone())
    })
}

struct Exports {
    main: FuncAddr,
    raw_to_token_stream: FuncAddr,
    token_stream_into_raw: FuncAddr,
}

impl Exports {
    fn collect(instance: &ModuleInst, entry_point: &str) -> Self {
        let main = match get_export(instance, entry_point) {
            Ok(ExternVal::Func(main)) => main,
            _ => unimplemented!("unresolved macro: {:?}", entry_point),
        };
        let raw_to_token_stream = match get_export(instance, "raw_to_token_stream") {
            Ok(ExternVal::Func(func)) => func,
            _ => unimplemented!("raw_to_token_stream not found"),
        };
        let token_stream_into_raw = match get_export(instance, "token_stream_into_raw") {
            Ok(ExternVal::Func(func)) => func,
            _ => unimplemented!("token_stream_into_raw not found"),
        };
        Exports {
            main,
            raw_to_token_stream,
            token_stream_into_raw,
        }
    }
}

fn call(store: &mut Store, func: FuncAddr, args: Vec<Value>) -> Option<Value> {
    match invoke_func(store, func, args) {
        Ok(ret) => {
            match ret.len() {
                0 => return None,
                1 => ret.into_iter().next(),
                _ => panic!("wasm returned more values than expected")
            }
        }
        Err(err) => panic!("{:?}", err),
    }
}

type Import<'a> = (&'a str, &'a str, Extern);

fn extern_vals(module: &Module, store: &mut Store) -> Vec<ExternVal> {
    module_imports(module)
        .map(|import| mk_host_func(import, store))
        .collect()
}

fn mk_host_func(import: Import, store: &mut Store) -> ExternVal {
    let (module, name, ref sig) = import;
    assert_eq!(module, "watt-0.3", "Wasm import from unknown module");
    let func = match sig {
        Extern::Func(func) => func,
        Extern::Table(_) | Extern::Memory(_) | Extern::Global(_) => {
            unimplemented!("unsupported import")
        }
    };
    let hostfunc = import::host_func(name, store);
    ExternVal::Func(alloc_func(store, &func, hostfunc))
}

#[cfg(watt_debug)]
fn print_module(module: &Module) {
    use crate::runtime::module_exports;

    let mut imports: Vec<_> = module_imports(module).collect();
    imports.sort_by_key(|entry| entry.1);
    for (_env, name, sig) in imports {
        eprintln!("IMPORT {:?}: {:?}", name, sig);
    }

    let mut exports: Vec<_> = module_exports(module).collect();
    exports.sort_by_key(|entry| entry.0);
    for (name, sig) in exports {
        eprintln!("EXPORT {:?}: {:?}", name, sig);
    }
}
