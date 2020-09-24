use crate::{MultiSpanHandle, Server, SpanHandle};
use proc_macro::bridge::server::MultiSpan;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn multi_span_new() -> MultiSpanHandle;
    fn multi_span_push(handle: MultiSpanHandle, span: SpanHandle);
}

impl MultiSpan for Server {
    fn new(&mut self) -> MultiSpanHandle {
        unsafe { multi_span_new() }
    }

    fn push(&mut self, handle: &mut MultiSpanHandle, span: SpanHandle) {
        unsafe { multi_span_push(handle.to_owned(), span) }
    }
}
