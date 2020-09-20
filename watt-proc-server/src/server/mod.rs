mod diagnostic;
mod freefunctions;
mod group;
mod ident;
mod literal;
mod multispan;
mod punct;
mod sourcefile;
mod span;
mod tokenstream;
mod tokenstreambuilder;
mod tokenstreamiter;

use crate::{
    DiagnosticHandle, GroupHandle, IdentHandle, LiteralHandle, MultiSpanHandle, PunctHandle,
    SourceFileHandle, SpanHandle, TokenStreamBuilderHandle, TokenStreamHandle,
    TokenStreamIterHandle,
};
use proc_macro::bridge::server::Types;

#[derive(Default)]
pub struct Server;

impl Types for Server {
    type TokenStream = TokenStreamHandle;
    type TokenStreamBuilder = TokenStreamBuilderHandle;
    type TokenStreamIter = TokenStreamIterHandle;
    type Group = GroupHandle;
    type Punct = PunctHandle;
    type Ident = IdentHandle;
    type Literal = LiteralHandle;
    type SourceFile = SourceFileHandle;
    type MultiSpan = MultiSpanHandle;
    type Diagnostic = DiagnosticHandle;
    type Span = SpanHandle;
    type FreeFunctions = ();
}
