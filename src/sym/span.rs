use crate::data::{Data, Handle};
use proc_macro::Span;
#[cfg(feature = "nightly")]
use proc_macro::{LineColumn, SourceFile};

pub fn span_debug(handle: Handle<Span>) -> Handle<String> {
    Data::with(|d| {
        let span = &d.span[handle];
        d.string.push(format!("{:?}", span))
    })
}

#[cfg(feature = "nightly")]
pub fn span_def_site() -> Handle<Span> {
    Data::with(|d| d.span.push(Span::def_site()))
}

#[cfg(not(feature = "nightly"))]
pub fn span_def_site() -> Handle<Span> {
    unimplemented!()
}

pub fn span_call_site() -> Handle<Span> {
    Data::with(|d| d.span.push(Span::call_site()))
}

pub fn span_mixed_site() -> Handle<Span> {
    Data::with(|d| d.span.push(Span::mixed_site()))
}

#[cfg(feature = "nightly")]
pub fn span_source_file(handle: Handle<Span>) -> Handle<SourceFile> {
    Data::with(|d| {
        let span = &d.span[handle];
        d.source_file.push(span.source_file())
    })
}

#[cfg(not(feature = "nightly"))]
pub fn span_source_file(_: Handle<Span>) -> Handle<()> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn span_parent(handle: Handle<Span>) -> Option<Handle<Span>> {
    Data::with(|d| {
        let span = &d.span[handle];
        span.parent().map(|parent| d.span.push(parent))
    })
}

#[cfg(not(feature = "nightly"))]
pub fn span_parent(_: Handle<Span>) -> Option<Handle<Span>> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn span_source(handle: Handle<Span>) -> Handle<Span> {
    Data::with(|d| {
        let span = &d.span[handle];
        let source = span.source();
        d.span.push(source)
    })
}

#[cfg(not(feature = "nightly"))]
pub fn span_source(_: Handle<Span>) -> Handle<Span> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn span_start(handle: Handle<Span>) -> LineColumn {
    Data::with(|d| d.span[handle].start())
}

#[cfg(not(feature = "nightly"))]
pub fn span_start(_: Handle<Span>) -> u64 {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn span_end(handle: Handle<Span>) -> LineColumn {
    Data::with(|d| d.span[handle].end())
}

#[cfg(not(feature = "nightly"))]
pub fn span_end(_: Handle<Span>) -> u64 {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn span_join(handle1: Handle<Span>, handle2: Handle<Span>) -> Option<Handle<Span>> {
    Data::with(|d| {
        d.span[handle1]
            .join(d.span[handle2])
            .map(|joined| d.span.push(joined))
    })
}

#[cfg(not(feature = "nightly"))]
pub fn span_join(_: Handle<Span>, _: Handle<Span>) -> Option<Handle<Span>> {
    unimplemented!()
}

pub fn span_resolved_at(handle1: Handle<Span>, handle2: Handle<Span>) -> Handle<Span> {
    Data::with(|d| {
        let resolved = d.span[handle1].resolved_at(d.span[handle2]);
        d.span.push(resolved)
    })
}

#[cfg(feature = "nightly")]
pub fn span_source_text(handle: Handle<Span>) -> Option<Handle<String>> {
    Data::with(|d| d.span[handle].source_text().map(|st| d.string.push(st)))
}

#[cfg(not(feature = "nightly"))]
pub fn span_source_text(_: Handle<Span>) -> Option<Handle<String>> {
    unimplemented!()
}
