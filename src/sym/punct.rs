use crate::data::{Data, Handle};
use proc_macro::{Punct, Spacing, Span};

pub fn punct_new(c: Handle<String>, spacing: Spacing) -> Handle<Punct> {
    Data::with(|d| {
        let c = d.string.take(c).unwrap();
        let c = c.chars().next().unwrap();
        d.punct.push(Punct::new(c, spacing))
    })
}

pub fn punct_as_char(handle: Handle<Punct>) -> Handle<String> {
    Data::with(|d| {
        let c = d.punct[handle].as_char();
        d.string.push(c.to_string())
    })
}

pub fn punct_spacing(handle: Handle<Punct>) -> Spacing {
    Data::with(|d| d.punct[handle].spacing())
}

pub fn punct_span(handle: Handle<Punct>) -> Handle<Span> {
    Data::with(|d| {
        let p = &d.punct[handle];
        d.span.push(p.span())
    })
}

pub fn punct_with_span(punct: Handle<Punct>, span: Handle<Span>) -> Handle<Punct> {
    Data::with(|d| {
        let mut punct = d.punct[punct].clone();
        let span = d.span[span];
        punct.set_span(span);
        d.punct.push(punct)
    })
}
