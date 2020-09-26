use crate::data::{Data, Handle};
use proc_macro::TokenStream;
#[cfg(feature = "proc-macro-server")]
use proc_macro::{token_stream::IntoIter, TokenTree};
#[cfg(not(feature = "proc-macro-server"))]
use std::str;

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

#[cfg(feature = "proc-macro-server")]
pub fn token_stream_new() -> Handle<TokenStream> {
    Data::with(|d| d.tokenstream.push(TokenStream::new()))
}

#[cfg(feature = "proc-macro-server")]
pub fn token_stream_is_empty(handle: Handle<TokenStream>) -> bool {
    Data::with(|d| d.tokenstream[handle].is_empty())
}

#[cfg(feature = "proc-macro-server")]
pub fn token_stream_from_str(s: Handle<String>) -> Handle<TokenStream> {
    Data::with(|d| {
        let s = d.string.take(s);
        let tts = s.parse().unwrap();
        d.tokenstream.push(tts)
    })
}

#[cfg(feature = "proc-macro-server")]
pub fn token_stream_to_string(handle: Handle<TokenStream>) -> Handle<String> {
    Data::with(|d| {
        let tts = &d.tokenstream[handle];
        d.string.push(tts.to_string())
    })
}

#[cfg(feature = "proc-macro-server")]
pub fn token_stream_from_token_tree(token_tree: TokenTree) -> Handle<TokenStream> {
    Data::with(|d| d.tokenstream.push(TokenStream::from(token_tree)))
}

#[cfg(feature = "proc-macro-server")]
pub fn token_stream_into_iter(handle: Handle<TokenStream>) -> Handle<IntoIter> {
    Data::with(|d| {
        let tt = d.tokenstream.take(handle);
        d.token_stream_iter.push(tt.into_iter())
    })
}

#[cfg(feature = "proc-macro-server")]
pub fn token_stream_push(handle: Handle<TokenStream>, item: Handle<TokenStream>) {
    Data::with(|d| {
        let item = d.tokenstream.take(item);
        d.tokenstream[handle].extend(item)
    })
}

#[cfg(not(feature = "proc-macro-server"))]
pub fn token_stream_serialize(stream: Handle<TokenStream>) -> Handle<Vec<u8>> {
    Data::with(|d| {
        let stream = d.tokenstream[stream].clone();
        let bytes = crate::encode::encode(stream, d);
        d.bytes.push(bytes)
    })
}

#[cfg(not(feature = "proc-macro-server"))]
pub fn token_stream_deserialize(memory: &mut [u8], ptr: u32, len: u32) -> Handle<TokenStream> {
    Data::with(|d| {
        let ptr = ptr as usize;
        let len = len as usize;
        let memory = &memory[ptr..ptr + len];
        let stream = crate::decode::decode(memory, d);
        d.tokenstream.push(stream)
    })
}

#[cfg(not(feature = "proc-macro-server"))]
pub fn token_stream_parse(memory: &mut [u8], ptr: u32, len: u32) -> Handle<TokenStream> {
    Data::with(|d| {
        let ptr = ptr as usize;
        let len = len as usize;
        let memory = &memory[ptr..ptr + len];
        let string = match str::from_utf8(memory) {
            Ok(s) => s,
            Err(_) => return Handle::new(u32::max_value()),
        };
        let stream = match string.parse() {
            Ok(s) => s,
            Err(_) => return Handle::new(u32::max_value()),
        };
        d.tokenstream.push(stream)
    })
}
