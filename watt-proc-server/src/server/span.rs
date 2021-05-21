use crate::{ffi::FFILineColumn, Server, SourceFileHandle, SpanHandle, StringHandle};
use proc_macro::{bridge::server::Span, LineColumn};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn span_debug(handle: SpanHandle) -> StringHandle;
    fn span_def_site() -> SpanHandle;
    fn span_call_site() -> SpanHandle;
    fn span_mixed_site() -> SpanHandle;
    fn span_source_file(handle: SpanHandle) -> SourceFileHandle;
    fn span_parent(handle: SpanHandle) -> Option<SpanHandle>;
    fn span_source(handle: SpanHandle) -> SpanHandle;
    fn span_start(handle: SpanHandle) -> FFILineColumn;
    fn span_end(handle: SpanHandle) -> FFILineColumn;
    fn span_join(handle1: SpanHandle, handle2: SpanHandle) -> Option<SpanHandle>;
    fn span_resolved_at(handle1: SpanHandle, handle2: SpanHandle) -> SpanHandle;
    fn span_source_text(handle: SpanHandle) -> Option<StringHandle>;
}

impl Span for Server {
    fn debug(&mut self, handle: SpanHandle) -> String {
        unsafe { span_debug(handle).into() }
    }

    fn def_site(&mut self) -> SpanHandle {
        unsafe { span_def_site() }
    }

    fn call_site(&mut self) -> SpanHandle {
        unsafe { span_call_site() }
    }

    fn mixed_site(&mut self) -> SpanHandle {
        unsafe { span_mixed_site() }
    }

    fn source_file(&mut self, handle: SpanHandle) -> SourceFileHandle {
        unsafe { span_source_file(handle) }
    }

    fn parent(&mut self, handle: SpanHandle) -> Option<SpanHandle> {
        unsafe { span_parent(handle) }
    }

    fn source(&mut self, handle: SpanHandle) -> SpanHandle {
        unsafe { span_source(handle) }
    }

    fn start(&mut self, handle: SpanHandle) -> LineColumn {
        unsafe { span_start(handle).into() }
    }

    fn end(&mut self, handle: SpanHandle) -> LineColumn {
        unsafe { span_end(handle).into() }
    }

    fn join(&mut self, handle1: SpanHandle, handle2: SpanHandle) -> Option<SpanHandle> {
        unsafe { span_join(handle1, handle2) }
    }

    fn resolved_at(&mut self, handle1: SpanHandle, handle2: SpanHandle) -> SpanHandle {
        unsafe { span_resolved_at(handle1, handle2) }
    }

    fn source_text(&mut self, handle: SpanHandle) -> Option<String> {
        unsafe { span_source_text(handle).map(Into::into) }
    }
}
