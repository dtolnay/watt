extern crate proc_macro;

use proc_macro::TokenStream;
use watt::WasmMacro;

static MACRO: WasmMacro = watt::wasm_macro_features!(WASM; "feat_a", "feat_b");
static WASM: &[u8] = include_bytes! {
    "../../impl/target/wasm32-unknown-unknown/release/watt_demo.wasm"
};

#[proc_macro_derive(Demo)]
pub fn demo(input: TokenStream) -> TokenStream {
    MACRO.proc_macro_derive("demo", input)
}
