use crate::data::{Data, Handle};
use proc_macro::Span;

pub fn span_debug(handle: Handle<Span>) -> Handle<String> {
    Data::with(|d| {
        let span = &d.span[handle];
        d.string.push(format!("{:?}", span))
    })
}

pub fn span_def_site() -> Handle<Span> {
    unimplemented!()
}

pub fn span_call_site() -> Handle<Span> {
    Data::with(|d| d.span.push(Span::call_site()))
}

pub fn span_mixed_site() -> Handle<Span> {
    unimplemented!()
}

pub fn span_source_file(_: Handle<Span>) -> Handle<()> {
    unimplemented!()
}

pub fn span_parent(_: Handle<Span>) -> Option<Handle<Span>> {
    unimplemented!()
}

pub fn span_source(_: Handle<Span>) -> Handle<Span> {
    unimplemented!()
}

pub fn span_start(_: Handle<Span>) -> u64 {
    unimplemented!()
}

pub fn span_end(_: Handle<Span>) -> u64 {
    unimplemented!()
}

pub fn span_join(_: Handle<Span>, _: Handle<Span>) -> Option<Handle<Span>> {
    unimplemented!()
}

pub fn span_resolved_at(handle1: Handle<Span>, handle2: Handle<Span>) -> Handle<Span> {
    Data::with(|d| {
        let resolved = d.span[handle1].resolved_at(d.span[handle2]);
        d.span.push(resolved)
    })
}

pub fn span_source_text(_: Handle<Span>) -> Option<Handle<String>> {
    unimplemented!()
}
