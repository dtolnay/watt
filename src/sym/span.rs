use crate::data::{Data, Handle};
use proc_macro::Span;

pub fn span_debug(handle: Handle<Span>) -> Handle<String> {
    Data::with(|d| {
        let span = &d.span[handle];
        d.string.push(format!("{:?}", span))
    })
}

pub fn span_call_site() -> Handle<Span> {
    Data::with(|d| d.span.push(Span::call_site()))
}
