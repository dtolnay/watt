use proc_macro2::*;
use quote::quote;
use syn::DeriveInput;

#[no_mangle]
pub extern "C" fn demo(input: RawTokenStream) -> RawTokenStream {
    let input: DeriveInput = match syn::parse2(input.into_token_stream()) {
        Ok(input) => input,
        Err(err) => return err.to_compile_error().into_raw_token_stream(),
    };

    let ident = input.ident;
    let message = format!("Hello from WASM! My name is {}.", ident);

    let ret = quote! {
        impl #ident {
            pub const MESSAGE: &'static str = #message;
        }
    };
    ret.into_raw_token_stream()
}
