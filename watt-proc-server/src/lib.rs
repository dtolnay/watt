#![feature(proc_macro_internals, proc_macro_span, proc_macro_diagnostic)]

extern crate proc_macro;

mod bytes;
mod ffi;
mod handle;
mod panic;
mod server;
mod string;

pub use handle::TokenStreamHandle;
pub(crate) use handle::*;
pub use panic::PanicHook;

use proc_macro::{
    bridge::{client::Client, server::SameThread},
    TokenStream,
};
use server::Server;

pub fn expand1(tts: TokenStreamHandle, f: fn(TokenStream) -> TokenStream) -> TokenStreamHandle {
    let _guard = PanicHook::hook();

    let client = Client::expand1(f);
    client
        .run(&SameThread, Server::default(), tts, true)
        .map_err(|e| e.as_str().map(ToString::to_string))
        .unwrap()
}

pub fn expand2(
    tts1: TokenStreamHandle,
    tts2: TokenStreamHandle,
    f: fn(TokenStream, TokenStream) -> TokenStream,
) -> TokenStreamHandle {
    let _ = PanicHook::hook();

    let client = Client::expand2(f);
    client
        .run(&SameThread, Server::default(), tts1, tts2, true)
        .map_err(|e| e.as_str().map(ToString::to_string))
        .unwrap()
}
