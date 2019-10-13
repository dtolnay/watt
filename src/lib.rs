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

/// A #\[proc_macro\] implemented in wasm!
///
/// # Canonical macro implementation:
///
/// ```
/// # const IGNORE: &str = stringify! {
/// use proc_macro2::TokenStream;
///
/// #[no_mangle]
/// pub extern "C" fn my_macro(input: TokenStream) -> TokenStream {
///     proc_macro2::set_wasm_panic_hook();
///
///     ...
/// }
/// # };
/// ```
///
/// # Canonical entry point:
///
/// ```
/// # const IGNORE: &str = stringify! {
/// extern crate proc_macro;
///
/// use proc_macro::TokenStream;
///
/// static WASM: &[u8] = include_bytes!("my_macro.wasm");
///
/// #[proc_macro]
/// pub fn my_macro(input: TokenStream) -> TokenStream {
///     watt::proc_macro("my_macro", input, WASM)
/// }
/// # };
/// ```
pub fn proc_macro(fun: &str, input: TokenStream, wasm: &[u8]) -> TokenStream {
    exec::proc_macro(fun, vec![input], wasm)
}

/// A #\[proc_macro_derive\] implemented in wasm!
///
/// # Canonical macro implementation:
///
/// ```
/// # const IGNORE: &str = stringify! {
/// use proc_macro2::TokenStream;
///
/// #[no_mangle]
/// pub extern "C" fn my_macro(input: TokenStream) -> TokenStream {
///     proc_macro2::set_wasm_panic_hook();
///
///     ...
/// }
/// # };
/// ```
///
/// # Canonical entry point:
///
/// ```
/// # const IGNORE: &str = stringify! {
/// extern crate proc_macro;
///
/// use proc_macro::TokenStream;
///
/// static WASM: &[u8] = include_bytes!("my_macro.wasm");
///
/// #[proc_macro_derive(MyDerive)]
/// pub fn my_macro(input: TokenStream) -> TokenStream {
///     watt::proc_macro_derive("my_macro", input, WASM)
/// }
/// # };
/// ```
pub fn proc_macro_derive(fun: &str, input: TokenStream, wasm: &[u8]) -> TokenStream {
    exec::proc_macro(fun, vec![input], wasm)
}

/// A #\[proc_macro_attribute\] implemented in wasm!
///
/// # Canonical macro implementation:
///
/// ```
/// # const IGNORE: &str = stringify! {
/// use proc_macro2::TokenStream;
///
/// #[no_mangle]
/// pub extern "C" fn my_macro(args: TokenStream, input: TokenStream) -> TokenStream {
///     proc_macro2::set_wasm_panic_hook();
///
///     ...
/// }
/// # };
/// ```
///
/// # Canonical entry point:
///
/// ```
/// # const IGNORE: &str = stringify! {
/// extern crate proc_macro;
///
/// use proc_macro::TokenStream;
///
/// static WASM: &[u8] = include_bytes!("my_macro.wasm");
///
/// #[proc_macro_attribute]
/// pub fn my_macro(args: TokenStream, input: TokenStream) -> TokenStream {
///     watt::proc_macro_attribute("my_macro", args, input, WASM)
/// }
/// # };
/// ```
pub fn proc_macro_attribute(
    fun: &str,
    args: TokenStream,
    input: TokenStream,
    wasm: &[u8],
) -> TokenStream {
    exec::proc_macro(fun, vec![args, input], wasm)
}
