use crate::{GroupHandle, IdentHandle, LiteralHandle, PunctHandle};
use proc_macro::{bridge::TokenTree, Delimiter, Spacing};

#[repr(u8)]
#[derive(Debug)]
pub enum FFITokenTree {
    Group(GroupHandle),
    Punct(PunctHandle),
    Ident(IdentHandle),
    Literal(LiteralHandle),
    None,
}

impl From<TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle>> for FFITokenTree {
    fn from(tt: TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle>) -> Self {
        match tt {
            TokenTree::Group(g) => FFITokenTree::Group(g),
            TokenTree::Punct(p) => FFITokenTree::Punct(p),
            TokenTree::Ident(i) => FFITokenTree::Ident(i),
            TokenTree::Literal(l) => FFITokenTree::Literal(l),
        }
    }
}

impl From<FFITokenTree> for TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle> {
    fn from(tt: FFITokenTree) -> Self {
        Option::from(tt).unwrap()
    }
}

impl From<FFITokenTree>
    for Option<TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle>>
{
    fn from(tt: FFITokenTree) -> Self {
        match tt {
            FFITokenTree::Group(g) => Some(TokenTree::Group(g)),
            FFITokenTree::Punct(p) => Some(TokenTree::Punct(p)),
            FFITokenTree::Ident(i) => Some(TokenTree::Ident(i)),
            FFITokenTree::Literal(l) => Some(TokenTree::Literal(l)),
            FFITokenTree::None => None,
        }
    }
}

#[repr(u8)]
pub enum FFISpacing {
    Alone,
    Joint,
}

impl From<FFISpacing> for Spacing {
    fn from(s: FFISpacing) -> Self {
        match s {
            FFISpacing::Alone => Spacing::Alone,
            FFISpacing::Joint => Spacing::Joint,
        }
    }
}

impl From<Spacing> for FFISpacing {
    fn from(s: Spacing) -> Self {
        match s {
            Spacing::Alone => FFISpacing::Alone,
            Spacing::Joint => FFISpacing::Joint,
        }
    }
}

#[repr(u8)]
pub enum FFIDelimiter {
    Parenthesis,
    Brace,
    Bracket,
    None,
}

impl From<FFIDelimiter> for Delimiter {
    fn from(d: FFIDelimiter) -> Self {
        match d {
            FFIDelimiter::Parenthesis => Delimiter::Parenthesis,
            FFIDelimiter::Brace => Delimiter::Brace,
            FFIDelimiter::Bracket => Delimiter::Bracket,
            FFIDelimiter::None => Delimiter::None,
        }
    }
}

impl From<Delimiter> for FFIDelimiter {
    fn from(d: Delimiter) -> Self {
        match d {
            Delimiter::Parenthesis => FFIDelimiter::Parenthesis,
            Delimiter::Brace => FFIDelimiter::Brace,
            Delimiter::Bracket => FFIDelimiter::Bracket,
            Delimiter::None => FFIDelimiter::None,
        }
    }
}
