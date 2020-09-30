#[cfg(feature = "nightly")]
use crate::data::Data;
use crate::data::Handle;
use proc_macro::Span;

#[cfg(feature = "nightly")]
pub fn drop_multi_span_handle(handle: Handle<Vec<Span>>) {
    Data::with(|d| {
        d.multi_span.take(handle);
    })
}

#[cfg(not(feature = "nightly"))]
pub fn drop_multi_span_handle(_: Handle<()>) {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn multi_span_new() -> Handle<Vec<Span>> {
    Data::with(|d| d.multi_span.push(Vec::new()))
}

#[cfg(not(feature = "nightly"))]
pub fn multi_span_new() -> Handle<()> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn multi_span_push(handle: Handle<Vec<Span>>, span: Handle<Span>) {
    Data::with(|d| {
        d.multi_span[handle].push(d.span[span]);
    })
}

#[cfg(not(feature = "nightly"))]
pub fn multi_span_push(_: Handle<()>, _: Handle<Span>) {
    unimplemented!()
}
