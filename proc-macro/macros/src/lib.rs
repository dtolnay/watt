extern crate proc_macro;

use proc_macro::TokenStream;
use std::str::FromStr;

#[proc_macro_attribute]
pub fn expand_macro(_attr: TokenStream, mut tokens: TokenStream) -> TokenStream {
    let name = tokens.clone().into_iter().nth(2).unwrap();
    let source = format!(
        "
            #[export_name = \"{name}\"]
            pub extern \"C\" fn _macro_{name}(a: u32) -> u32 {{
                let a = proc_macro2::__internal::raw_to_token_stream(a);
                proc_macro2::__internal::token_stream_into_raw({name}(a))
            }}
        ",
        name = name
    );
    tokens.extend(TokenStream::from_str(&source).unwrap());
    tokens
}

#[proc_macro_attribute]
pub fn expand_attribute(_attr: TokenStream, mut tokens: TokenStream) -> TokenStream {
    let name = tokens.clone().into_iter().nth(2).unwrap();
    let source = format!(
        "
            #[export_name = \"{name}\"]
            pub extern \"C\" fn _macro_{name}(a: u32, b: u32) -> u32 {{
                let a = proc_macro2::__internal::raw_to_token_stream(a);
                let b = proc_macro2::__internal::raw_to_token_stream(b);
                proc_macro2::__internal::token_stream_into_raw({name}(a, b))
            }}
        ",
        name = name
    );
    tokens.extend(TokenStream::from_str(&source).unwrap());
    tokens
}

#[proc_macro_attribute]
pub fn expand_derive(_attr: TokenStream, mut tokens: TokenStream) -> TokenStream {
    let name = tokens.clone().into_iter().nth(2).unwrap();
    let source = format!(
        "
            #[export_name = \"{name}\"]
            pub extern \"C\" fn _macro_{name}(a: u32) -> u32 {{
                let a = proc_macro2::__internal::raw_to_token_stream(a);
                proc_macro2::__internal::token_stream_into_raw({name}(a))
            }}
        ",
        name = name
    );
    tokens.extend(TokenStream::from_str(&source).unwrap());
    tokens
}
