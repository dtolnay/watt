use crate::data::Data;
use crate::watt::{
    decode_module, get_export, init_store, instantiate_module, invoke_func, ExternVal, Value,
};
use crate::{debug, import};
use proc_macro::TokenStream;
use std::io::Cursor;

pub fn proc_macro(fun: &str, inputs: Vec<TokenStream>, wasm: &[u8]) -> TokenStream {
    let cursor = Cursor::new(wasm);
    let module = decode_module(cursor).unwrap();
    if cfg!(watt_debug) {
        debug::print_module(&module);
    }

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
