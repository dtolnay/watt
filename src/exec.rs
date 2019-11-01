use crate::data::Data;
use crate::import;
use crate::WasmMacro;
use proc_macro::TokenStream;
use std::cell::RefCell;
use std::collections::hash_map::{Entry, HashMap};

pub fn proc_macro(fun: &str, inputs: Vec<TokenStream>, instance: &WasmMacro) -> TokenStream {
    _proc_macro(fun, inputs, instance)
}

#[cfg(jit)]
fn _proc_macro(fun: &str, inputs: Vec<TokenStream>, instance: &WasmMacro) -> TokenStream {
    use crate::runtime::*;

    struct ThreadState {
        _engine: Engine,
        store: Store,
        modules: HashMap<usize, Module>,
        instances: HashMap<usize, Instance>,
    }

    std::thread_local! {
        static STATE: RefCell<ThreadState> = {
            let engine = Engine::new();
            let store = Store::new(&engine);
            RefCell::new(ThreadState {
                _engine: engine,
                store,
                modules: HashMap::new(),
                instances: HashMap::new(),
            })
        };
    }

    impl ThreadState {
        pub fn instance(&mut self, instance: &WasmMacro) -> (&Module, &Instance) {
            let id = instance.id();
            let entry = match self.instances.entry(id) {
                Entry::Occupied(e) => return (&self.modules[&id], &*e.into_mut()),
                Entry::Vacant(v) => v,
            };

            let module = Module::new(&self.store, instance.wasm);
            let imports = import::extern_vals(&module, &mut self.store);
            let module_instance = Instance::new(&self.store, &module, &imports).unwrap();
            self.modules.insert(id, module);
            let instance = entry.insert(module_instance);
            (&self.modules[&id], &*instance)
        }
    }

    STATE.with(|state| {
        let mut state = state.borrow_mut();
        let (module, instance) = state.instance(instance);
        let main = module
            .exports()
            .iter()
            .position(|p| p.name() == fun)
            .unwrap();
        let exports = instance.exports();
        let main = exports[main].func().unwrap();
        let memory = exports.iter().filter_map(|e| e.memory()).next().unwrap();

        let _guard = Data::guard();
        let args = Data::with(|d| {
            inputs
                .into_iter()
                .map(|input| Val::i32(d.tokenstream.push(input) as i32))
                .collect::<Vec<_>>()
        });

        current_memory::set(&memory, || {
            let values = main.call(&args).unwrap();
            let handle = values.into_iter().next().unwrap();
            let handle = handle.as_i32().unwrap() as u32;
            Data::with(|d| d.tokenstream[handle].clone())
        })
    })
}

#[cfg(not(jit))]
fn _proc_macro(fun: &str, inputs: Vec<TokenStream>, instance: &WasmMacro) -> TokenStream {
    use crate::runtime::{
        decode_module, get_export, init_store, instantiate_module, invoke_func,
        runtime::ModuleInst, ExternVal, Store, Value,
    };
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
            crate::debug::print_module(&module);
            let extern_vals = import::extern_vals(&module, &mut self.store);
            let module_instance =
                instantiate_module(&mut self.store, module, &extern_vals).unwrap();
            entry.insert(module_instance)
        }
    }

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
