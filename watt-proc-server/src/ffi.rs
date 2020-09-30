use std::ops::Bound;

use crate::{GroupHandle, IdentHandle, LiteralHandle, PunctHandle};
use proc_macro::{bridge::TokenTree, Delimiter, Level, LineColumn, Spacing};

#[repr(C)]
#[derive(Debug)]
pub struct FFITokenTree(u32);

impl From<TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle>> for FFITokenTree {
    fn from(tt: TokenTree<GroupHandle, PunctHandle, IdentHandle, LiteralHandle>) -> Self {
        let (tag, id) = match tt {
            TokenTree::Group(g) => (1, g.into_id()),
            TokenTree::Punct(p) => (2, p.into_id()),
            TokenTree::Ident(i) => (3, i.into_id()),
            TokenTree::Literal(l) => (4, l.into_id()),
        };
        FFITokenTree(id << 3 | tag)
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
        let tag = tt.0 & 7;
        let id = tt.0 >> 3;

        match tag {
            0 => None,
            1 => Some(TokenTree::Group(GroupHandle::new(id))),
            2 => Some(TokenTree::Punct(PunctHandle::new(id))),
            3 => Some(TokenTree::Ident(IdentHandle::new(id))),
            4 => Some(TokenTree::Literal(LiteralHandle::new(id))),
            _ => unreachable!(),
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
pub struct FFILineColumn(u64);

impl From<FFILineColumn> for LineColumn {
    fn from(lc: FFILineColumn) -> Self {
        LineColumn {
            line: (lc.0 >> 32) as usize,
            column: (lc.0 as u32) as usize,
        }
    }
}

impl From<LineColumn> for FFILineColumn {
    fn from(lc: LineColumn) -> Self {
        FFILineColumn((lc.line as u64) << 32 | (lc.column as u64))
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

#[repr(C)]
pub struct FFIBound(u32);

impl From<FFIBound> for Bound<usize> {
    fn from(bound: FFIBound) -> Self {
        let tag = bound.0 & 3;
        let value = bound.0 >> 2;

        match tag {
            0 => Bound::Included(value as usize),
            1 => Bound::Excluded(value as usize),
            2 => Bound::Unbounded,
            _ => unreachable!(),
        }
    }
}

impl From<Bound<usize>> for FFIBound {
    fn from(bound: Bound<usize>) -> Self {
        let (tag, value) = match bound {
            Bound::Included(n) => (0, n as u32),
            Bound::Excluded(n) => (1, n as u32),
            Bound::Unbounded => (2, 0),
        };
        FFIBound((value as u32) << 2 | tag)
    }
}
