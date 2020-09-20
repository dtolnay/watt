use crate::{LiteralHandle, Server, SpanHandle, StringHandle};
use proc_macro::bridge::server::Literal;
use std::ops::Bound;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn literal_string(s: StringHandle) -> LiteralHandle;
}

impl Literal for Server {
    fn debug_kind(&mut self, _: &LiteralHandle) -> std::string::String {
        crate::custom_todo!();
    }

    fn symbol(&mut self, _: &LiteralHandle) -> std::string::String {
        crate::custom_todo!();
    }

    fn suffix(&mut self, _: &LiteralHandle) -> Option<std::string::String> {
        crate::custom_todo!();
    }

    fn integer(&mut self, _: &str) -> LiteralHandle {
        crate::custom_todo!();
    }

    fn typed_integer(&mut self, _: &str, _: &str) -> LiteralHandle {
        crate::custom_todo!();
    }

    fn float(&mut self, _: &str) -> LiteralHandle {
        crate::custom_todo!();
    }

    fn f32(&mut self, _: &str) -> LiteralHandle {
        crate::custom_todo!();
    }

    fn f64(&mut self, _: &str) -> LiteralHandle {
        crate::custom_todo!();
    }

    fn string(&mut self, s: &str) -> LiteralHandle {
        unsafe { literal_string(s.into()) }
    }

    fn character(&mut self, _: char) -> LiteralHandle {
        crate::custom_todo!();
    }

    fn byte_string(&mut self, _: &[u8]) -> LiteralHandle {
        crate::custom_todo!();
    }

    fn span(&mut self, _: &LiteralHandle) -> SpanHandle {
        crate::custom_todo!();
    }

    fn set_span(&mut self, _: &mut LiteralHandle, _: SpanHandle) {
        crate::custom_todo!();
    }

    fn subspan(
        &mut self,
        _: &LiteralHandle,
        _: Bound<usize>,
        _: Bound<usize>,
    ) -> Option<SpanHandle> {
        crate::custom_todo!();
    }
}
