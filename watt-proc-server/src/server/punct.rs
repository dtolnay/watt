use crate::{ffi::FFISpacing, PunctHandle, Server, SpanHandle, StringHandle};
use proc_macro::{bridge::server::Punct, Spacing};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn punct_new(c: StringHandle, spacing: FFISpacing) -> PunctHandle;
    fn punct_spacing(punct: PunctHandle) -> FFISpacing;
    fn punct_as_char(punct: PunctHandle) -> StringHandle;
    fn punct_span(punct: PunctHandle) -> SpanHandle;
    fn punct_with_span(punct: PunctHandle, span: SpanHandle) -> PunctHandle;
}

impl Punct for Server {
    fn new(&mut self, c: char, s: Spacing) -> PunctHandle {
        let c = String::from(c);
        unsafe { punct_new(c.into(), s.into()) }
    }

    fn as_char(&mut self, handle: PunctHandle) -> char {
        let s = unsafe { punct_as_char(handle) };
        let s = String::from(s);
        s.chars().next().unwrap()
    }

    fn spacing(&mut self, handle: PunctHandle) -> Spacing {
        unsafe { punct_spacing(handle).into() }
    }

    fn span(&mut self, handle: PunctHandle) -> SpanHandle {
        unsafe { punct_span(handle) }
    }

    fn with_span(&mut self, p: PunctHandle, s: SpanHandle) -> PunctHandle {
        unsafe { punct_with_span(p, s) }
    }
}
