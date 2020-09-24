extern crate proc_macro;

use proc_macro::TokenStream;
use quote::quote;
use syn::DeriveInput;
use watt_proc_server::TokenStreamHandle;

#[no_mangle]
pub extern "C" fn demo(input: TokenStreamHandle) -> TokenStreamHandle {
    watt_proc_server::expand1(input, demo_expand)
}

fn demo_expand(input: TokenStream) -> TokenStream {
    let input: DeriveInput = match syn::parse(input) {
        Ok(input) => input,
        Err(err) => return err.to_compile_error().into(),
    };

    let ident = input.ident;
    let message = format!("Hello from WASM! My name is {}.", ident);

    (quote! {
        impl #ident {
            pub const MESSAGE: &'static str = #message;
        }
    })
    .into()
}
