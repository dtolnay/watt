use crate::data::Data;
use crate::import;
use crate::runtime::{
    alloc_func, decode_module, get_export, init_store, instantiate_module, invoke_func,
    module_imports, Extern, ExternVal, Module, ModuleInst, Store, Value,
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
        let mut state = state.borrow_mut();
        let instance = state.instance(instance);
        let main = match get_export(instance, fun) {
            Ok(ExternVal::Func(main)) => main,
            _ => unimplemented!("unresolved macro: {:?}", fun),
        };

        let _guard = Data::guard();
        let args = Data::with(|d| {
            inputs
                .into_iter()
                .map(|input| Value::I32(d.tokenstream.push(input)))
                .collect()
        });

        let res = invoke_func(&mut state.store, main, args);
        let values = match res {
            Ok(values) => values,
            Err(err) => panic!("{:?}", err),
        };
        let handle = values.into_iter().next().unwrap();
        let handle = match handle {
            Value::I32(handle) => handle,
            _ => unimplemented!("unexpected macro return type"),
        };
        Data::with(|d| d.tokenstream[handle].clone())
    })
}

type Import<'a> = (&'a str, &'a str, Extern);

fn extern_vals(module: &Module, store: &mut Store) -> Vec<ExternVal> {
    module_imports(module)
        .map(|import| mk_host_func(import, store))
        .collect()
}

fn mk_host_func(import: Import, store: &mut Store) -> ExternVal {
    let (module, name, ref sig) = import;
    assert_eq!(module, "watt-0.2", "Wasm import from unknown module");
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
