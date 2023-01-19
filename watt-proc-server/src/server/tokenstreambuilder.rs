use crate::{Server, TokenStreamBuilderHandle, TokenStreamHandle};
use proc_macro::bridge::server::{TokenStream, TokenStreamBuilder};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn token_stream_push(handle: TokenStreamBuilderHandle, item: TokenStreamHandle);
}

impl TokenStreamBuilder for Server {
    fn new(&mut self) -> TokenStreamBuilderHandle {
        TokenStream::new(self)
    }

    fn push(&mut self, handle: &mut TokenStreamBuilderHandle, item: TokenStreamHandle) {
        unsafe { token_stream_push(handle.to_owned(), item) }
    }

    fn build(&mut self, handle: TokenStreamBuilderHandle) -> TokenStreamHandle {
        handle
    }
}
