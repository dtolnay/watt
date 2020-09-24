use proc_macro::TokenStream;
use watt::WasmMacro;

static MACRO: WasmMacro = WasmMacro::new(WASM);
#[cfg(not(feature = "proc-macro-server"))]
static WASM: &[u8] = include_bytes! {
    "../../impl/target/wasm32-unknown-unknown/release/watt_demo.wasm"
};
#[cfg(feature = "proc-macro-server")]
static WASM: &[u8] = include_bytes! {
    "../../impl-proc-macro-server/target/wasm32-unknown-unknown/release/watt_demo.wasm"
};

#[proc_macro_derive(Demo)]
pub fn demo(input: TokenStream) -> TokenStream {
    MACRO.proc_macro_derive("demo", input)
}
