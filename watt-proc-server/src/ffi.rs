use std::ops::Bound;

use crate::{GroupHandle, IdentHandle, LiteralHandle, PunctHandle};
use proc_macro::{bridge::TokenTree, Delimiter, Level, LineColumn, Spacing};

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

#[repr(C)]
pub struct FFILineColumn {
    line: u32,
    column: u32,
}

impl From<FFILineColumn> for LineColumn {
    fn from(lc: FFILineColumn) -> Self {
        LineColumn {
            line: lc.line as usize,
            column: lc.column as usize,
        }
    }
}

impl From<LineColumn> for FFILineColumn {
    fn from(lc: LineColumn) -> Self {
        FFILineColumn {
            line: lc.line as u32,
            column: lc.column as u32,
        }
    }
}

#[repr(u8)]
pub enum FFILevel {
    Error,
    Warning,
    Note,
    Help,
}

impl From<FFILevel> for Level {
    fn from(level: FFILevel) -> Self {
        match level {
            FFILevel::Error => Level::Error,
            FFILevel::Warning => Level::Warning,
            FFILevel::Note => Level::Note,
            FFILevel::Help => Level::Help,
        }
    }
}

impl From<Level> for FFILevel {
    fn from(level: Level) -> Self {
        match level {
            Level::Error => FFILevel::Error,
            Level::Warning => FFILevel::Warning,
            Level::Note => FFILevel::Note,
            Level::Help => FFILevel::Help,
            _ => unimplemented!(),
        }
    }
}

#[repr(u8)]
pub enum FFIBound {
    Included(u32),
    Excluded(u32),
    Unbounded,
}

impl From<FFIBound> for Bound<usize> {
    fn from(bound: FFIBound) -> Self {
        match bound {
            FFIBound::Included(n) => Bound::Included(n as usize),
            FFIBound::Excluded(n) => Bound::Excluded(n as usize),
            FFIBound::Unbounded => Bound::Unbounded,
        }
    }
}

impl From<Bound<usize>> for FFIBound {
    fn from(bound: Bound<usize>) -> Self {
        match bound {
            Bound::Included(n) => FFIBound::Included(n as u32),
            Bound::Excluded(n) => FFIBound::Excluded(n as u32),
            Bound::Unbounded => FFIBound::Unbounded,
        }
    }
}
