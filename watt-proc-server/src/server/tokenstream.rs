use crate::{
    ffi::FFITokenTree, handle::TokenStreamHandle, GroupHandle, IdentHandle, LiteralHandle,
    PunctHandle, Server, StringHandle, TokenStreamIterHandle,
};
use proc_macro::bridge::{server::TokenStream, TokenTree};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn token_stream_new() -> TokenStreamHandle;
    fn token_stream_from_str(handle: StringHandle) -> TokenStreamHandle;
    fn token_stream_to_string(handle: TokenStreamHandle) -> StringHandle;
    fn token_stream_from_token_tree(group: FFITokenTree) -> TokenStreamHandle;
    fn token_stream_into_iter(handle: TokenStreamHandle) -> TokenStreamIterHandle;
}

impl TokenStream for Server {
    fn new(&mut self) -> TokenStreamHandle {
        unsafe { token_stream_new() }
    }

    fn is_empty(&mut self, _: &TokenStreamHandle) -> bool {
        crate::custom_todo!();
    }

    fn from_str(&mut self, s: &str) -> TokenStreamHandle {
        unsafe { token_stream_from_str(s.into()) }
    }

    fn to_string(&mut self, handle: &TokenStreamHandle) -> std::string::String {
        unsafe { token_stream_to_string(handle.to_owned()).into() }
    }

    fn from_token_tree(
        &mut self,
        tt: TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle>,
    ) -> TokenStreamHandle {
        unsafe { token_stream_from_token_tree(tt.into()) }
    }

    fn into_iter(&mut self, handle: TokenStreamHandle) -> TokenStreamIterHandle {
        unsafe { token_stream_into_iter(handle) }
    }
}
