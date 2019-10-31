extern crate proc_macro;

use proc_macro::TokenStream;

static WASM: watt::Instance = watt::Instance::new(include_bytes! {
    "../../impl/target/wasm32-unknown-unknown/release/watt_demo.wasm"
});

#[proc_macro_derive(Demo)]
pub fn demo(input: TokenStream) -> TokenStream {
    WASM.proc_macro_derive("demo", input)
}
