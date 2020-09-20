use crate::data::{Data, Handle};
use proc_macro::{Ident, Span};

pub fn ident_new(name: Handle<String>, span: Handle<Span>, raw: bool) -> Handle<Ident> {
    Data::with(|d| {
        let name = d.string.take(name).unwrap();
        let span = d.span.take(span).unwrap();

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
