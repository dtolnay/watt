use crate::{IdentHandle, Server, SpanHandle, StringHandle};
use proc_macro::bridge::server::Ident;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn ident_new(name: StringHandle, span: SpanHandle, raw: bool) -> IdentHandle;
    fn ident_span(handle: IdentHandle) -> SpanHandle;
    fn ident_with_span(handle: IdentHandle, span: SpanHandle) -> IdentHandle;
}

impl Ident for Server {
    fn new(&mut self, name: &str, span: SpanHandle, raw: bool) -> IdentHandle {
        let name = name.into();
        unsafe { ident_new(name, span, raw) }
    }

    fn span(&mut self, handle: IdentHandle) -> SpanHandle {
        unsafe { ident_span(handle) }
    }

    fn with_span(&mut self, handle: IdentHandle, span: SpanHandle) -> IdentHandle {
        unsafe { ident_with_span(handle, span) }
    }
}
