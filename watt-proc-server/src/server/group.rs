use crate::{ffi::FFIDelimiter, GroupHandle, Server, SpanHandle, TokenStreamHandle};
use proc_macro::{bridge::server::Group, Delimiter};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn group_new(delimiter: FFIDelimiter, tts: TokenStreamHandle) -> GroupHandle;
}

impl Group for Server {
    fn new(&mut self, delimiter: Delimiter, tts: TokenStreamHandle) -> GroupHandle {
        unsafe { group_new(delimiter.into(), tts) }
    }

    fn delimiter(&mut self, _: &GroupHandle) -> Delimiter {
        crate::custom_todo!();
    }

    fn stream(&mut self, _: &GroupHandle) -> TokenStreamHandle {
        crate::custom_todo!();
    }

    fn span(&mut self, _: &GroupHandle) -> SpanHandle {
        crate::custom_todo!();
    }

    fn span_open(&mut self, _: &GroupHandle) -> SpanHandle {
        crate::custom_todo!();
    }

    fn span_close(&mut self, _: &GroupHandle) -> SpanHandle {
        crate::custom_todo!();
    }

    fn set_span(&mut self, _: &mut GroupHandle, _: SpanHandle) {
        crate::custom_todo!();
    }
}
