use crate::{
    ffi::FFITokenTree, GroupHandle, IdentHandle, LiteralHandle, PunctHandle, Server,
    TokenStreamIterHandle,
};
use proc_macro::bridge::{server::TokenStreamIter, TokenTree};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn token_stream_iter_next(handle: TokenStreamIterHandle) -> FFITokenTree;
}

impl TokenStreamIter for Server {
    fn next(
        &mut self,
        handle: &mut TokenStreamIterHandle,
    ) -> Option<TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle>> {
        unsafe { token_stream_iter_next(handle.to_owned()).into() }
    }
}
