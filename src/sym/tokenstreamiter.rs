use crate::data::{Data, Handle};
use proc_macro::{token_stream::IntoIter, TokenTree};

pub fn clone_token_stream_iter_handle(handle: Handle<IntoIter>) -> Handle<IntoIter> {
    Data::with(|d| {
        let iter = d.token_stream_iter[handle].clone();
        d.token_stream_iter.push(iter)
    })
}

pub fn drop_token_stream_iter_handle(handle: Handle<IntoIter>) {
    Data::with(|d| {
        d.token_stream_iter.take(handle);
    })
}

pub fn token_stream_iter_next(handle: Handle<IntoIter>) -> Option<TokenTree> {
    Data::with(|d| d.token_stream_iter[handle].next())
}
