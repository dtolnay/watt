use crate::data::Data;
use crate::import;
use proc_macro::TokenStream;

pub fn proc_macro(fun: &str, inputs: Vec<TokenStream>, wasm: &[u8]) -> TokenStream {
    _proc_macro(fun, inputs, wasm)
}

#[cfg(jit)]
fn _proc_macro(fun: &str, inputs: Vec<TokenStream>, wasm: &[u8]) -> TokenStream {
    use crate::runtime::*;

    let engine = Engine::new();
    let mut store = Store::new(&engine);
    let module = Module::new(&store, wasm);
    let imports = import::extern_vals(&module, &mut store);
    let module_instance = Instance::new(&store, &module, &imports).unwrap();
    let main = module
        .exports()
        .iter()
        .position(|p| p.name() == fun)
        .unwrap();
    let exports = module_instance.exports();
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
}

#[cfg(not(jit))]
fn _proc_macro(fun: &str, inputs: Vec<TokenStream>, wasm: &[u8]) -> TokenStream {
    use crate::runtime::{
        decode_module, get_export, init_store, instantiate_module, invoke_func, ExternVal, Value,
    };
    use std::io::Cursor;

    let cursor = Cursor::new(wasm);
    let module = decode_module(cursor).unwrap();
    #[cfg(watt_debug)]
    crate::debug::print_module(&module);

    let mut store = init_store();
    let extern_vals = import::extern_vals(&module, &mut store);
    let module_instance = instantiate_module(&mut store, module, &extern_vals).unwrap();
    let main = match get_export(&module_instance, fun) {
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

    let res = invoke_func(&mut store, main, args);
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
}
