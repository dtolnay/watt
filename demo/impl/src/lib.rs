use proc_macro2::TokenStream;
use quote::quote;
use syn::DeriveInput;

#[no_mangle]
pub extern "C" fn demo(input: TokenStream) -> TokenStream {
    let input: DeriveInput = match syn::parse2(input) {
        Ok(input) => input,
        Err(err) => return err.to_compile_error(),
    };

    let ident = input.ident;
    let mut message = format!("Hello from WASM! My name is {}.", ident);

    if proc_macro2::features::check("feat_a") {
        message.push_str(" feat_a is enabled.");
    }
    if proc_macro2::features::check("feat_b") {
        message.push_str(" feat_b is enabled.");
    }

    quote! {
        impl #ident {
            pub const MESSAGE: &'static str = #message;
        }
    }
}
