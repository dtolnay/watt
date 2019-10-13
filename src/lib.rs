extern crate proc_macro;

#[path = "../runtime/src/lib.rs"]
mod watt;

mod data;
mod debug;
mod exec;
mod import;
mod sym;

use crate::watt::*;
use proc_macro::TokenStream;

pub fn proc_macro(fun: &str, input: TokenStream, wasm: &[u8]) -> TokenStream {
    exec::proc_macro(fun, vec![input], wasm)
}

pub fn proc_macro_derive(fun: &str, input: TokenStream, wasm: &[u8]) -> TokenStream {
    exec::proc_macro(fun, vec![input], wasm)
}

pub fn proc_macro_attribute(
    fun: &str,
    args: TokenStream,
    input: TokenStream,
    wasm: &[u8],
) -> TokenStream {
    exec::proc_macro(fun, vec![args, input], wasm)
}
