use crate::data::{Data, Handle};
use proc_macro::{Ident, Span};

pub fn ident_new(name: Handle<String>, span: Handle<Span>, raw: bool) -> Handle<Ident> {
    Data::with(|d| {
        let name = d.string.take(name);
        let span = d.span[span];

        let ident = if !raw {
            Ident::new(&name, span)
        } else {
            #[cfg(not(feature = "nightly"))]
            unimplemented!();
            #[cfg(feature = "nightly")]
            Ident::new_raw(&name, span)
        };

        d.ident.push(ident)
    })
}

pub fn ident_span(handle: Handle<Ident>) -> Handle<Span> {
    Data::with(|d| {
        let ident = &d.ident[handle];
        d.span.push(ident.span())
    })
}

pub fn ident_with_span(handle: Handle<Ident>, span: Handle<Span>) -> Handle<Ident> {
    Data::with(|d| {
        let mut ident = d.ident[handle].clone();
        ident.set_span(d.span[span]);
        d.ident.push(ident)
    })
}
