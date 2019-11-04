use crate::{decode, encode, handle, TokenStream};
use std::fmt::{self, Display};
use std::panic::{self, PanicInfo};
use std::sync::Once;

#[link(wasm_import_module = "watt-0.3")]
extern "C" {
    fn token_stream_serialize(stream: u32) -> handle::Bytes;
    fn token_stream_deserialize(ptr: *const u8, len: usize) -> u32;
    fn literal_to_string(lit: handle::Literal) -> handle::String;

    fn string_new(ptr: *const u8, len: usize) -> handle::String;
    fn string_len(string: handle::String) -> usize;
    fn string_read(string: handle::String, ptr: *mut u8);
    fn bytes_len(bytes: handle::Bytes) -> usize;
    fn bytes_read(bytes: handle::Bytes, ptr: *mut u8);
    fn print_panic(message: handle::String);
}

fn set_wasm_panic_hook() {
    static INIT: Once = Once::new();
    INIT.call_once(|| {
        panic::set_hook(Box::new(panic_hook));
    });
}

fn panic_hook(panic: &PanicInfo) {
    let string = panic.to_string();
    unsafe {
        let s = string_new(string.as_ptr(), string.len());
        print_panic(s);
    }
}

#[no_mangle]
pub extern "C" fn raw_to_token_stream(raw: u32) -> TokenStream {
    set_wasm_panic_hook();
    let bytes = unsafe {
        let handle = token_stream_serialize(raw);
        let len = bytes_len(handle);
        let mut ret = Vec::with_capacity(len);
        ret.set_len(len);
        bytes_read(handle, ret.as_mut_ptr());
        ret
    };
    decode::decode(&bytes)
}

#[no_mangle]
pub extern "C" fn token_stream_into_raw(stream: TokenStream) -> u32 {
    let bytes = encode::encode(stream);
    unsafe { token_stream_deserialize(bytes.as_ptr(), bytes.len()) }
}

pub fn display_literal(handle: handle::Literal, f: &mut fmt::Formatter) -> fmt::Result {
    unsafe {
        let string = literal_to_string(handle);
        let len = string_len(string);
        let mut ret = Vec::with_capacity(len);
        ret.set_len(len);
        string_read(string, ret.as_mut_ptr());
        let string = String::from_utf8_unchecked(ret);
        Display::fmt(&string, f)
    }
}
