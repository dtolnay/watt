use crate::{
    data::{Data, Handle},
    import,
    runtime::{
        current_memory, Engine, Extern, Func, FuncRef, ImportType, Instance, InstanceImports,
        MemoryRef, Module, Store, Val,
    },
    WasmMacro,
};
use proc_macro::TokenStream;
use std::{
    cell::RefCell,
    collections::hash_map::{Entry, HashMap},
};

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
            Entry::Occupied(e) => return (&self.modules[&id], e.into_mut()),
            Entry::Vacant(v) => v,
        };

        let module = Module::new(&self.store, instance.wasm);
        let imports = extern_vals(&module, &mut self.store);
        let module_instance = Instance::new(&self.store, &module, &imports).unwrap();
        self.modules.insert(id, module);
        let instance = entry.insert(module_instance);
        (&self.modules[&id], instance)
    }
}

pub fn proc_macro(fun: &str, inputs: Vec<TokenStream>, instance: &WasmMacro) -> TokenStream {
    STATE.with(|state| {
        let mut state = state.borrow_mut();
        let (module, instance) = state.instance(instance);
        let instance_exports = instance.exports();
        let exports = Exports::collect(module, &instance_exports, fun);

        let _guard = Data::guard();
        let args = Data::with(|d| {
            inputs
                .into_iter()
                .map(|input| Val::i32(d.tokenstream.push(input).id() as i32))
                .collect::<Vec<_>>()
        });

        current_memory::set(&exports.memory, || {
            #[cfg(not(feature = "proc-macro-server"))]
            let args: Vec<Val> = args
                .into_iter()
                .map(|raw| call(&exports.raw_to_token_stream, &[raw]))
                .collect();
            let output = call(&exports.main, &args);
            #[cfg(not(feature = "proc-macro-server"))]
            let output = call(&exports.token_stream_into_raw, &[output]);
            let handle = output.as_i32().unwrap() as u32;
            Data::with(|d| d.tokenstream.take(Handle::new(handle)))
        })
    })
}

struct Exports<'a> {
    main: FuncRef<'a>,
    #[cfg(not(feature = "proc-macro-server"))]
    raw_to_token_stream: FuncRef<'a>,
    #[cfg(not(feature = "proc-macro-server"))]
    token_stream_into_raw: FuncRef<'a>,
    memory: MemoryRef<'a>,
}

impl<'a> Exports<'a> {
    fn collect(module: &Module, externs: &'a [Extern], entry_point: &str) -> Self {
        let mut main = None;
        #[cfg(not(feature = "proc-macro-server"))]
        let mut raw_to_token_stream = None;
        #[cfg(not(feature = "proc-macro-server"))]
        let mut token_stream_into_raw = None;
        let mut memory = None;

        for (ty, ex) in module.exports().iter().zip(externs) {
            match ty.name() {
                #[cfg(not(feature = "proc-macro-server"))]
                "raw_to_token_stream" => raw_to_token_stream = Some(ex.func().unwrap()),
                #[cfg(not(feature = "proc-macro-server"))]
                "token_stream_into_raw" => token_stream_into_raw = Some(ex.func().unwrap()),
                name if name == entry_point => main = Some(ex.func().unwrap()),
                _ => {}
            }
            if let Some(mem) = ex.memory() {
                memory = Some(mem);
            }
        }

        let main = main.unwrap_or_else(|| unimplemented!("unresolved macro: {:?}", entry_point));
        #[cfg(not(feature = "proc-macro-server"))]
        let raw_to_token_stream = raw_to_token_stream.expect("raw_to_token_stream not found");
        #[cfg(not(feature = "proc-macro-server"))]
        let token_stream_into_raw = token_stream_into_raw.expect("token_stream_into_raw not found");
        let memory = memory.expect("missing memory export");

        Exports {
            main,
            #[cfg(not(feature = "proc-macro-server"))]
            raw_to_token_stream,
            #[cfg(not(feature = "proc-macro-server"))]
            token_stream_into_raw,
            memory,
        }
    }
}

fn call(func: &FuncRef, args: &[Val]) -> Val {
    match func.call(args) {
        Ok(ret) => {
            assert_eq!(ret.len(), 1);
            ret.into_iter().next().unwrap()
        }
        Err(err) => panic!("{:?}", err),
    }
}

fn extern_vals(module: &Module, store: &mut Store) -> InstanceImports {
    let mut imports = InstanceImports::default();
    for import in module.imports().iter() {
        imports.func(mk_host_func(import, store));
    }
    imports
}

fn mk_host_func(import: &ImportType, store: &Store) -> Func {
    // TODO: assert `import` is a function import
    assert_eq!(
        import.module(),
        "watt-0.4",
        "Wasm import from unknown module"
    );
    import::host_func(import.name(), store)
}
