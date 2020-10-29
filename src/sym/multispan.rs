use crate::data::Handle;
use proc_macro::Span;

pub fn drop_multi_span_handle(_: Handle<()>) {
    unimplemented!()
}

pub fn multi_span_new() -> Handle<()> {
    unimplemented!()
}

pub fn multi_span_push(_: Handle<()>, _: Handle<Span>) {
    unimplemented!()
}
