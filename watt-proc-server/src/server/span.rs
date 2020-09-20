use crate::{Server, SourceFileHandle, SpanHandle, StringHandle};
use proc_macro::{bridge::server::Span, LineColumn};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn span_debug(handle: SpanHandle) -> StringHandle;
    fn span_call_site() -> SpanHandle;
}

impl Span for Server {
    fn debug(&mut self, handle: SpanHandle) -> String {
        unsafe { span_debug(handle).into() }
    }

    fn def_site(&mut self) -> SpanHandle {
        crate::custom_todo!();
    }

    fn call_site(&mut self) -> SpanHandle {
        unsafe { span_call_site() }
    }

    fn mixed_site(&mut self) -> SpanHandle {
        crate::custom_todo!();
    }

    fn source_file(&mut self, _: SpanHandle) -> SourceFileHandle {
        crate::custom_todo!();
    }

    fn parent(&mut self, _: SpanHandle) -> Option<SpanHandle> {
        crate::custom_todo!();
    }

    fn source(&mut self, _: SpanHandle) -> SpanHandle {
        crate::custom_todo!();
    }

    fn start(&mut self, _: SpanHandle) -> LineColumn {
        crate::custom_todo!();
    }

    fn end(&mut self, _: SpanHandle) -> LineColumn {
        crate::custom_todo!();
    }

    fn join(&mut self, _: SpanHandle, _: SpanHandle) -> Option<SpanHandle> {
        crate::custom_todo!();
    }

    fn resolved_at(&mut self, _: SpanHandle, _: SpanHandle) -> SpanHandle {
        crate::custom_todo!();
    }

    fn source_text(&mut self, _: SpanHandle) -> Option<String> {
        crate::custom_todo!();
    }
}
