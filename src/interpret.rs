use crate::{
    data::{Data, Handle},
    import,
    runtime::{
        alloc_func, decode_module, get_export, init_store, instantiate_module, invoke_func,
        module_imports, Extern, ExternVal, FuncAddr, Module, ModuleInst, Store, Value,
    },
    WasmMacro,
};
use proc_macro::TokenStream;
use std::{
    cell::RefCell,
    collections::hash_map::{Entry, HashMap},
    io::Cursor,
    rc::Rc,
};

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
        let entry = match self.instances.entry(id) {
            Entry::Occupied(e) => return e.into_mut(),
            Entry::Vacant(v) => v,
        };

        let cursor = Cursor::new(instance.wasm);
        let module = decode_module(cursor).unwrap();
        #[cfg(watt_debug)]
        print_module(&module);
        let extern_vals = extern_vals(&module, &mut self.store);
        let module_instance = instantiate_module(&mut self.store, module, &extern_vals).unwrap();
        entry.insert(module_instance)
    }
}

pub fn proc_macro(fun: &str, inputs: Vec<TokenStream>, instance: &WasmMacro) -> TokenStream {
    STATE.with(|state| {
        let state = &mut state.borrow_mut();
        let instance = state.instance(instance);
        let exports = Exports::collect(instance, fun);

        let _guard = Data::guard();
        let args: Vec<Value> = Data::with(|d| {
            inputs
                .into_iter()
                .map(|input| Value::I32(d.tokenstream.push(input).id()))
                .collect()
        });
        #[cfg(not(feature = "proc-macro-server"))]
        let args: Vec<Value> = args
            .into_iter()
            .map(|raw| call(state, exports.raw_to_token_stream, vec![raw]))
            .collect();

        let output = call(state, exports.main, args);
        #[cfg(not(feature = "proc-macro-server"))]
        let output = call(state, exports.token_stream_into_raw, vec![output]);
        let output = match output {
            Value::I32(handle) => Handle::new(handle),
            _ => unimplemented!("unexpected macro return type"),
        };
        Data::with(|d| d.tokenstream[output].clone())
    })
}

struct Exports {
    main: FuncAddr,
    #[cfg(not(feature = "proc-macro-server"))]
    raw_to_token_stream: FuncAddr,
    #[cfg(not(feature = "proc-macro-server"))]
    token_stream_into_raw: FuncAddr,
}

impl Exports {
    fn collect(instance: &ModuleInst, entry_point: &str) -> Self {
        let main = match get_export(instance, entry_point) {
            Ok(ExternVal::Func(main)) => main,
            _ => unimplemented!("unresolved macro: {:?}", entry_point),
        };
        #[cfg(not(feature = "proc-macro-server"))]
        let raw_to_token_stream = match get_export(instance, "raw_to_token_stream") {
            Ok(ExternVal::Func(func)) => func,
            _ => unimplemented!("raw_to_token_stream not found"),
        };
        #[cfg(not(feature = "proc-macro-server"))]
        let token_stream_into_raw = match get_export(instance, "token_stream_into_raw") {
            Ok(ExternVal::Func(func)) => func,
            _ => unimplemented!("token_stream_into_raw not found"),
        };
        Exports {
            main,
            #[cfg(not(feature = "proc-macro-server"))]
            raw_to_token_stream,
            #[cfg(not(feature = "proc-macro-server"))]
            token_stream_into_raw,
        }
    }
}

fn call(state: &mut ThreadState, func: FuncAddr, args: Vec<Value>) -> Value {
    match invoke_func(&mut state.store, func, args) {
        Ok(ret) => {
            assert_eq!(ret.len(), 1);
            ret.into_iter().next().unwrap()
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
    assert_eq!(module, "watt-0.4", "Wasm import from unknown module");
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
