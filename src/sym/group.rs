use crate::data::{Data, Handle};
use proc_macro::{Delimiter, Group, Span, TokenStream};

pub fn clone_group_handle(handle: Handle<Group>) -> Handle<Group> {
    Data::with(|d| {
        let group = d.group[handle].clone();
        d.group.push(group)
    })
}

pub fn drop_group_handle(handle: Handle<Group>) {
    Data::with(|d| {
        d.group.take(handle);
    })
}

pub fn group_new(delimiter: Delimiter, tts: Handle<TokenStream>) -> Handle<Group> {
    Data::with(|d| {
        let tts = d.tokenstream.take(tts);
        d.group.push(Group::new(delimiter, tts))
    })
}

pub fn group_delimiter(handle: Handle<Group>) -> Delimiter {
    Data::with(|d| d.group[handle].delimiter())
}

pub fn group_stream(handle: Handle<Group>) -> Handle<TokenStream> {
    Data::with(|d| {
        let tts = d.group[handle].stream();
        d.tokenstream.push(tts)
    })
}

pub fn group_span(handle: Handle<Group>) -> Handle<Span> {
    Data::with(|d| {
        let span = d.group[handle].span();
        d.span.push(span)
    })
}

#[cfg(feature = "nightly")]
pub fn group_span_open(handle: Handle<Group>) -> Handle<Span> {
    Data::with(|d| {
        let span = d.group[handle].span_open();
        d.span.push(span)
    })
}

#[cfg(not(feature = "nightly"))]
pub fn group_span_open(_: Handle<Group>) -> Handle<Span> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn group_span_close(handle: Handle<Group>) -> Handle<Span> {
    Data::with(|d| {
        let span = d.group[handle].span_close();
        d.span.push(span)
    })
}

#[cfg(not(feature = "nightly"))]
pub fn group_span_close(_: Handle<Group>) -> Handle<Span> {
    unimplemented!()
}

pub fn group_set_span(handle: Handle<Group>, span: Handle<Span>) {
    Data::with(|d| {
        let span = d.span[span];
        d.group[handle].set_span(span);
    })
}
