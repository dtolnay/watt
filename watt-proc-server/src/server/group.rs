use crate::{ffi::FFIDelimiter, GroupHandle, Server, SpanHandle, TokenStreamHandle};
use proc_macro::{bridge::server::Group, Delimiter};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn group_new(delimiter: FFIDelimiter, tts: TokenStreamHandle) -> GroupHandle;
    fn group_delimiter(handle: GroupHandle) -> FFIDelimiter;
    fn group_stream(handle: GroupHandle) -> TokenStreamHandle;
    fn group_span(handle: GroupHandle) -> SpanHandle;
    fn group_span_open(handle: GroupHandle) -> SpanHandle;
    fn group_span_close(handle: GroupHandle) -> SpanHandle;
    fn group_set_span(handle: GroupHandle, span: SpanHandle);
}

impl Group for Server {
    fn new(&mut self, delimiter: Delimiter, tts: TokenStreamHandle) -> GroupHandle {
        unsafe { group_new(delimiter.into(), tts) }
    }

    fn delimiter(&mut self, handle: &GroupHandle) -> Delimiter {
        unsafe { group_delimiter(handle.to_owned()).into() }
    }

    fn stream(&mut self, handle: &GroupHandle) -> TokenStreamHandle {
        unsafe { group_stream(handle.to_owned()) }
    }

    fn span(&mut self, handle: &GroupHandle) -> SpanHandle {
        unsafe { group_span(handle.to_owned()) }
    }

    fn span_open(&mut self, handle: &GroupHandle) -> SpanHandle {
        unsafe { group_span_open(handle.to_owned()) }
    }

    fn span_close(&mut self, handle: &GroupHandle) -> SpanHandle {
        unsafe { group_span_close(handle.to_owned()) }
    }

    fn set_span(&mut self, handle: &mut GroupHandle, span: SpanHandle) {
        unsafe { group_set_span(handle.to_owned(), span) }
    }
}
