use proc_macro2::TokenStream;
use quote::quote;
use syn::DeriveInput;
use watt_feature_passthrough::query_feature_flag;

#[no_mangle]
pub extern "C" fn demo(input: TokenStream) -> TokenStream {
    let input: DeriveInput = match syn::parse2(input) {
        Ok(input) => input,
        Err(err) => return err.to_compile_error(),
    };

    let ident = input.ident;
    let mut message = format!("Hello from WASM! My name is {}.", ident);

    if query_feature_flag("feat_a").unwrap() {
        message.push_str(" feat_a is enabled.");
    }
    if query_feature_flag("feat_b").unwrap() {
        message.push_str(" feat_a is enabled.");
    }

    quote! {
        impl #ident {
            pub const MESSAGE: &'static str = #message;
        }
    }
}
