use crate::data::Data;
use crate::import;
use crate::runtime::{
    current_memory, Engine, HostFunc, ImportType, Instance, InstanceImports, Module, Store, Val,
};
use crate::WasmMacro;
use proc_macro::TokenStream;
use std::cell::RefCell;
use std::collections::hash_map::{Entry, HashMap};

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
        let imports = extern_vals(&module, &mut self.store);
        let module_instance = Instance::new(&self.store, &module, &imports).unwrap();
        self.modules.insert(id, module);
        let instance = entry.insert(module_instance);
        (&self.modules[&id], &*instance)
    }
}

pub fn proc_macro(fun: &str, inputs: Vec<TokenStream>, instance: &WasmMacro) -> TokenStream {
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

fn extern_vals(module: &Module, store: &mut Store) -> InstanceImports {
    let mut imports = InstanceImports::default();
    for import in module.imports().iter() {
        imports.func(mk_host_func(import, store));
    }
    imports
}

fn mk_host_func(import: &ImportType, store: &Store) -> HostFunc {
    // TODO: assert `import` is a function import
    assert_eq!(
        import.module(),
        "watt-0.2",
        "Wasm import from unknown module"
    );
    import::host_func(import.name(), store)
}
