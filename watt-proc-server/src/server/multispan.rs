use crate::{MultiSpanHandle, Server, SpanHandle};
use proc_macro::bridge::server::MultiSpan;

impl MultiSpan for Server {
    fn new(&mut self) -> MultiSpanHandle {
        crate::custom_todo!();
    }

    fn push(&mut self, _: &mut MultiSpanHandle, _: SpanHandle) {
        crate::custom_todo!();
    }
}
