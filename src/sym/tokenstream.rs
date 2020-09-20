use crate::data::{Data, Handle};
use proc_macro::{token_stream::IntoIter, TokenStream, TokenTree};

pub fn clone_token_stream_handle(handle: Handle<TokenStream>) -> Handle<TokenStream> {
    Data::with(|d| {
        let tts = d.tokenstream[handle].clone();
        d.tokenstream.push(tts)
    })
}

pub fn drop_token_stream_handle(handle: Handle<TokenStream>) {
    Data::with(|d| {
        d.tokenstream.take(handle);
    })
}

pub fn token_stream_new() -> Handle<TokenStream> {
    Data::with(|d| d.tokenstream.push(TokenStream::new()))
}

pub fn token_stream_from_str(s: Handle<String>) -> Handle<TokenStream> {
    Data::with(|d| {
        let s = d.string.take(s).unwrap();
        let tts = s.parse().unwrap();
        d.tokenstream.push(tts)
    })
}

pub fn token_stream_to_string(handle: Handle<TokenStream>) -> Handle<String> {
    Data::with(|d| {
        let tts = &d.tokenstream[handle];
        d.string.push(tts.to_string())
    })
}

pub fn token_stream_from_token_tree(token_tree: TokenTree) -> Handle<TokenStream> {
    Data::with(|d| d.tokenstream.push(TokenStream::from(token_tree)))
}

pub fn token_stream_into_iter(handle: Handle<TokenStream>) -> Handle<IntoIter> {
    Data::with(|d| {
        let tt = d.tokenstream.take(handle).unwrap();
        d.token_stream_iter.push(tt.into_iter())
    })
}

pub fn token_stream_push(handle: Handle<TokenStream>, item: Handle<TokenStream>) {
    Data::with(|d| {
        let item = d.tokenstream.take(item).unwrap();
        d.tokenstream[handle].extend(item)
    })
}
