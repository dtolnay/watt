use crate::{ffi::FFIBound, BytesHandle, LiteralHandle, Server, SpanHandle, StringHandle};
use proc_macro::bridge::server::Literal;
use std::ops::Bound;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn literal_debug_kind(handle: LiteralHandle) -> StringHandle;
    fn literal_symbol(handle: LiteralHandle) -> StringHandle;
    fn literal_suffix(handle: LiteralHandle) -> Option<StringHandle>;
    fn literal_integer(s: StringHandle) -> LiteralHandle;
    fn literal_typed_integer(s: StringHandle, s2: StringHandle) -> LiteralHandle;
    fn literal_float(s: StringHandle) -> LiteralHandle;
    fn literal_f32(s: StringHandle) -> LiteralHandle;
    fn literal_f64(s: StringHandle) -> LiteralHandle;
    fn literal_string(s: StringHandle) -> LiteralHandle;
    fn literal_character(s: StringHandle) -> LiteralHandle;
    fn literal_byte_string(s: BytesHandle) -> LiteralHandle;
    fn literal_span(handle: LiteralHandle) -> SpanHandle;
    fn literal_set_span(handle: LiteralHandle, span: SpanHandle);
    fn literal_subspan(handle: LiteralHandle, start: FFIBound, end: FFIBound)
        -> Option<SpanHandle>;
}

impl Literal for Server {
    fn debug_kind(&mut self, handle: &LiteralHandle) -> String {
        unsafe { literal_debug_kind(handle.to_owned()).into() }
    }

    fn symbol(&mut self, handle: &LiteralHandle) -> String {
        unsafe { literal_symbol(handle.to_owned()).into() }
    }

    fn suffix(&mut self, handle: &LiteralHandle) -> Option<String> {
        unsafe { literal_suffix(handle.to_owned()).map(Into::into) }
    }

    fn integer(&mut self, s: &str) -> LiteralHandle {
        unsafe { literal_integer(s.into()) }
    }

    fn typed_integer(&mut self, s: &str, s2: &str) -> LiteralHandle {
        unsafe { literal_typed_integer(s.into(), s2.into()) }
    }

    fn float(&mut self, s: &str) -> LiteralHandle {
        unsafe { literal_float(s.into()) }
    }

    fn f32(&mut self, s: &str) -> LiteralHandle {
        unsafe { literal_f32(s.into()) }
    }

    fn f64(&mut self, s: &str) -> LiteralHandle {
        unsafe { literal_f64(s.into()) }
    }

    fn string(&mut self, s: &str) -> LiteralHandle {
        unsafe { literal_string(s.into()) }
    }

    fn character(&mut self, c: char) -> LiteralHandle {
        unsafe { literal_character(c.to_string().into()) }
    }

    fn byte_string(&mut self, bs: &[u8]) -> LiteralHandle {
        unsafe { literal_byte_string(bs.into()) }
    }

    fn span(&mut self, handle: &LiteralHandle) -> SpanHandle {
        unsafe { literal_span(handle.to_owned()) }
    }

    fn set_span(&mut self, handle: &mut LiteralHandle, span: SpanHandle) {
        unsafe { literal_set_span(handle.to_owned(), span) }
    }

    fn subspan(
        &mut self,
        handle: &LiteralHandle,
        start: Bound<usize>,
        end: Bound<usize>,
    ) -> Option<SpanHandle> {
        unsafe { literal_subspan(handle.to_owned(), start.into(), end.into()) }
    }
}
