extern crate proc_macro;

use proc_macro::TokenStream;

static WASM: &[u8] = include_bytes! {
    "../../impl/target/wasm32-unknown-unknown/release/watt_demo.wasm"
};

#[proc_macro_derive(Demo)]
pub fn demo(input: TokenStream) -> TokenStream {
    watt::proc_macro_derive("demo", input, WASM)
}
