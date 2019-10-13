extern "C" {
    fn token_stream_new() -> handle::TokenStream;
    fn token_stream_is_empty(stream: handle::TokenStream) -> bool;
    fn token_stream_from_str(string: handle::String) -> handle::TokenStream;
    fn token_stream_into_iter(stream: handle::TokenStream) -> handle::IntoIter;
    fn token_stream_iter_next(iter: handle::IntoIter) -> handle::TokenTree;
    fn token_stream_from_group(group: handle::Group) -> handle::TokenStream;
    fn token_stream_from_ident(ident: handle::Ident) -> handle::TokenStream;
    fn token_stream_from_punct(punct: handle::Punct) -> handle::TokenStream;
    fn token_stream_from_literal(literal: handle::Literal) -> handle::TokenStream;
    fn token_stream_push_group(stream: handle::TokenStream, group: handle::Group);
    fn token_stream_push_ident(stream: handle::TokenStream, ident: handle::Ident);
    fn token_stream_push_punct(stream: handle::TokenStream, punct: handle::Punct);
    fn token_stream_push_literal(stream: handle::TokenStream, literal: handle::Literal);
    fn token_stream_extend(stream: handle::TokenStream, next: handle::TokenStream);

    fn token_tree_kind(token: handle::TokenTree) -> u32;
    fn token_tree_unwrap_group(token: handle::TokenTree) -> handle::Group;
    fn token_tree_unwrap_ident(token: handle::TokenTree) -> handle::Ident;
    fn token_tree_unwrap_punct(token: handle::TokenTree) -> handle::Punct;
    fn token_tree_unwrap_literal(token: handle::TokenTree) -> handle::Literal;

    fn span_call_site() -> handle::Span;

    fn group_new(delimiter: u32, stream: handle::TokenStream) -> handle::Group;
    fn group_delimiter(group: handle::Group) -> u32;
    fn group_stream(group: handle::Group) -> handle::TokenStream;
    fn group_span(group: handle::Group) -> handle::Span;
    fn group_set_span(group: handle::Group, span: handle::Span);

    fn punct_new(op: u32, spacing: u32) -> handle::Punct;
    fn punct_as_char(punct: handle::Punct) -> u32;
    fn punct_spacing(punct: handle::Punct) -> u32;
    fn punct_span(punct: handle::Punct) -> handle::Span;
    fn punct_set_span(punct: handle::Punct, span: handle::Span);

    fn ident_new(string: handle::String, span: handle::Span) -> handle::Ident;
    fn ident_span(ident: handle::Ident) -> handle::Span;
    fn ident_set_span(ident: handle::Ident, span: handle::Span);
    fn ident_eq(ident: handle::Ident, other: handle::Ident) -> bool;
    fn ident_eq_str(ident: handle::Ident, other: handle::String) -> bool;
    fn ident_cmp(ident: handle::Ident, other: handle::Ident) -> u32;

    fn literal_u8_suffixed(n: u8) -> handle::Literal;
    fn literal_u16_suffixed(n: u16) -> handle::Literal;
    fn literal_u32_suffixed(n: u32) -> handle::Literal;
    fn literal_u64_suffixed(n: u64) -> handle::Literal;
    fn literal_u128_suffixed(lo: u64, hi: u64) -> handle::Literal;
    fn literal_usize_suffixed(n: usize) -> handle::Literal;
    fn literal_i8_suffixed(n: i8) -> handle::Literal;
    fn literal_i16_suffixed(n: i16) -> handle::Literal;
    fn literal_i32_suffixed(n: i32) -> handle::Literal;
    fn literal_i64_suffixed(n: i64) -> handle::Literal;
    fn literal_i128_suffixed(lo: u64, hi: u64) -> handle::Literal;
    fn literal_isize_suffixed(n: isize) -> handle::Literal;
    fn literal_u8_unsuffixed(n: u8) -> handle::Literal;
    fn literal_u16_unsuffixed(n: u16) -> handle::Literal;
    fn literal_u32_unsuffixed(n: u32) -> handle::Literal;
    fn literal_u64_unsuffixed(n: u64) -> handle::Literal;
    fn literal_u128_unsuffixed(lo: u64, hi: u64) -> handle::Literal;
    fn literal_usize_unsuffixed(n: usize) -> handle::Literal;
    fn literal_i8_unsuffixed(n: i8) -> handle::Literal;
    fn literal_i16_unsuffixed(n: i16) -> handle::Literal;
    fn literal_i32_unsuffixed(n: i32) -> handle::Literal;
    fn literal_i64_unsuffixed(n: i64) -> handle::Literal;
    fn literal_i128_unsuffixed(lo: u64, hi: u64) -> handle::Literal;
    fn literal_isize_unsuffixed(n: isize) -> handle::Literal;
    fn literal_f64_unsuffixed(f: f64) -> handle::Literal;
    fn literal_f64_suffixed(f: f64) -> handle::Literal;
    fn literal_f32_unsuffixed(f: f32) -> handle::Literal;
    fn literal_f32_suffixed(f: f32) -> handle::Literal;
    fn literal_string(string: handle::String) -> handle::Literal;
    fn literal_character(ch: u32) -> handle::Literal;
    fn literal_byte_string(bytes: handle::Bytes) -> handle::Literal;
    fn literal_span(literal: handle::Literal) -> handle::Span;
    fn literal_set_span(literal: handle::Literal, span: handle::Span);

    fn token_stream_clone(stream: handle::TokenStream) -> handle::TokenStream;
    fn group_clone(stream: handle::Group) -> handle::Group;
    fn ident_clone(stream: handle::Ident) -> handle::Ident;
    fn punct_clone(stream: handle::Punct) -> handle::Punct;
    fn literal_clone(stream: handle::Literal) -> handle::Literal;
    fn token_stream_iter_clone(stream: handle::IntoIter) -> handle::IntoIter;

    fn token_stream_to_string(stream: handle::TokenStream) -> handle::String;
    fn group_to_string(stream: handle::Group) -> handle::String;
    fn ident_to_string(stream: handle::Ident) -> handle::String;
    fn punct_to_string(stream: handle::Punct) -> handle::String;
    fn literal_to_string(stream: handle::Literal) -> handle::String;
    fn token_stream_debug(stream: handle::TokenStream) -> handle::String;
    fn group_debug(stream: handle::Group) -> handle::String;
    fn ident_debug(stream: handle::Ident) -> handle::String;
    fn punct_debug(stream: handle::Punct) -> handle::String;
    fn literal_debug(stream: handle::Literal) -> handle::String;
    fn span_debug(stream: handle::Span) -> handle::String;

    fn watt_string_with_capacity(capacity: u32) -> handle::String;
    fn watt_string_push_char(string: handle::String, ch: u32);
    fn watt_string_len(string: handle::String) -> u32;
    fn watt_string_char_at(string: handle::String, pos: u32) -> u32;
    fn watt_bytes_with_capacity(capacity: u32) -> handle::Bytes;
    fn watt_bytes_push(bytes: handle::Bytes, byte: u8);
    fn watt_print_panic(message: handle::String);
}

mod handle {
    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct TokenStream(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct TokenTree(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct LexError(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Span(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Group(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Punct(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Ident(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Literal(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct IntoIter(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct String(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Bytes(pub u32);
}

const SENTINEL: u32 = u32::max_value();
const TOKEN_GROUP: u32 = 0;
const TOKEN_IDENT: u32 = 1;
const TOKEN_PUNCT: u32 = 2;
const TOKEN_LITERAL: u32 = 3;
const DELIMITER_PARENTHESIS: u32 = 0;
const DELIMITER_BRACE: u32 = 1;
const DELIMITER_BRACKET: u32 = 2;
const DELIMITER_NONE: u32 = 3;
const SPACING_ALONE: u32 = 0;
const SPACING_JOINT: u32 = 1;
const ORDERING_LESS: u32 = 0;
const ORDERING_EQUAL: u32 = 1;
const ORDERING_GREATER: u32 = 2;

mod ffi {
    use super::*;

    pub fn send_str(data: &str) -> handle::String {
        let cap = data.len() as u32;
        unsafe {
            let string = watt_string_with_capacity(cap);
            for ch in data.chars() {
                watt_string_push_char(string, ch as u32);
            }
            string
        }
    }

    pub fn recv_string(handle: handle::String) -> String {
        unsafe {
            let len = watt_string_len(handle);
            let mut string = String::with_capacity(len as usize);
            let mut pos = 0;
            while pos < len {
                let num = watt_string_char_at(handle, pos);
                let ch = char::from_u32(num).unwrap();
                string.push(ch);
                pos += ch.len_utf8() as u32;
            }
            string
        }
    }

    pub fn send_bytes(data: &[u8]) -> handle::Bytes {
        let cap = data.len() as u32;
        unsafe {
            let bytes = watt_bytes_with_capacity(cap);
            for b in data {
                watt_bytes_push(bytes, *b);
            }
            bytes
        }
    }
}

use std::char;
use std::cmp::Ordering;
use std::fmt::{self, Debug, Display};
use std::hash::{Hash, Hasher};
use std::iter::FromIterator;
use std::ops::RangeBounds;
use std::panic::{self, PanicInfo};
use std::str::FromStr;

pub fn set_wasm_panic_hook() {
    panic::set_hook(Box::new(panic_hook));
}

fn panic_hook(panic: &PanicInfo) {
    let string = panic.to_string();
    unsafe {
        watt_print_panic(ffi::send_str(&string));
    }
}

#[repr(transparent)]
pub struct TokenStream(handle::TokenStream);

impl Clone for TokenStream {
    fn clone(&self) -> Self {
        TokenStream(unsafe { token_stream_clone(self.0) })
    }
}

pub struct LexError {
    _private: (),
}

impl TokenStream {
    pub fn new() -> Self {
        TokenStream(unsafe { token_stream_new() })
    }

    pub fn is_empty(&self) -> bool {
        unsafe { token_stream_is_empty(self.0) }
    }
}

impl Default for TokenStream {
    fn default() -> Self {
        TokenStream::new()
    }
}

impl FromStr for TokenStream {
    type Err = LexError;

    fn from_str(input: &str) -> Result<Self, Self::Err> {
        unsafe {
            let stream = token_stream_from_str(ffi::send_str(input));
            if stream.0 == SENTINEL {
                Err(LexError { _private: () })
            } else {
                Ok(TokenStream(stream))
            }
        }
    }
}

impl From<TokenTree> for TokenStream {
    fn from(token: TokenTree) -> Self {
        TokenStream(match token {
            TokenTree::Group(group) => unsafe { token_stream_from_group(group.0) },
            TokenTree::Ident(ident) => unsafe { token_stream_from_ident(ident.0) },
            TokenTree::Punct(punct) => unsafe { token_stream_from_punct(punct.0) },
            TokenTree::Literal(literal) => unsafe { token_stream_from_literal(literal.0) },
        })
    }
}

impl Extend<TokenTree> for TokenStream {
    fn extend<I: IntoIterator<Item = TokenTree>>(&mut self, iter: I) {
        for token in iter {
            match token {
                TokenTree::Group(group) => unsafe { token_stream_push_group(self.0, group.0) },
                TokenTree::Ident(ident) => unsafe { token_stream_push_ident(self.0, ident.0) },
                TokenTree::Punct(punct) => unsafe { token_stream_push_punct(self.0, punct.0) },
                TokenTree::Literal(literal) => unsafe {
                    token_stream_push_literal(self.0, literal.0)
                },
            }
        }
    }
}

impl Extend<TokenStream> for TokenStream {
    fn extend<I: IntoIterator<Item = TokenStream>>(&mut self, iter: I) {
        for stream in iter {
            unsafe {
                token_stream_extend(self.0, stream.0);
            }
        }
    }
}

impl FromIterator<TokenTree> for TokenStream {
    fn from_iter<I: IntoIterator<Item = TokenTree>>(iter: I) -> Self {
        let mut stream = TokenStream::new();
        stream.extend(iter);
        stream
    }
}

impl FromIterator<TokenStream> for TokenStream {
    fn from_iter<I: IntoIterator<Item = TokenStream>>(iter: I) -> Self {
        let mut stream = TokenStream::new();
        stream.extend(iter);
        stream
    }
}

impl Display for TokenStream {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(token_stream_to_string(self.0)) };
        f.write_str(&string)
    }
}

impl Debug for TokenStream {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(token_stream_debug(self.0)) };
        f.write_str(&string)
    }
}

impl Debug for LexError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        f.write_str("LexError")
    }
}

#[repr(transparent)]
#[derive(Copy, Clone)]
pub struct Span(handle::Span);

impl Span {
    pub fn call_site() -> Self {
        Span(unsafe { span_call_site() })
    }

    pub fn join(&self, other: Span) -> Option<Span> {
        let _ = other;
        None
    }
}

impl Debug for Span {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(span_debug(self.0)) };
        f.write_str(&string)
    }
}

pub enum TokenTree {
    Group(Group),
    Ident(Ident),
    Punct(Punct),
    Literal(Literal),
}

impl Clone for TokenTree {
    fn clone(&self) -> Self {
        match self {
            TokenTree::Group(group) => TokenTree::Group(group.clone()),
            TokenTree::Ident(ident) => TokenTree::Ident(ident.clone()),
            TokenTree::Punct(punct) => TokenTree::Punct(punct.clone()),
            TokenTree::Literal(literal) => TokenTree::Literal(literal.clone()),
        }
    }
}

impl TokenTree {
    pub fn span(&self) -> Span {
        match self {
            TokenTree::Group(t) => t.span(),
            TokenTree::Ident(t) => t.span(),
            TokenTree::Punct(t) => t.span(),
            TokenTree::Literal(t) => t.span(),
        }
    }

    pub fn set_span(&mut self, span: Span) {
        match self {
            TokenTree::Group(t) => t.set_span(span),
            TokenTree::Ident(t) => t.set_span(span),
            TokenTree::Punct(t) => t.set_span(span),
            TokenTree::Literal(t) => t.set_span(span),
        }
    }
}

impl From<Group> for TokenTree {
    fn from(g: Group) -> TokenTree {
        TokenTree::Group(g)
    }
}

impl From<Ident> for TokenTree {
    fn from(g: Ident) -> TokenTree {
        TokenTree::Ident(g)
    }
}

impl From<Punct> for TokenTree {
    fn from(g: Punct) -> TokenTree {
        TokenTree::Punct(g)
    }
}

impl From<Literal> for TokenTree {
    fn from(g: Literal) -> TokenTree {
        TokenTree::Literal(g)
    }
}

impl Display for TokenTree {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self {
            TokenTree::Group(group) => Display::fmt(group, f),
            TokenTree::Ident(ident) => Display::fmt(ident, f),
            TokenTree::Punct(punct) => Display::fmt(punct, f),
            TokenTree::Literal(literal) => Display::fmt(literal, f),
        }
    }
}

impl Debug for TokenTree {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self {
            TokenTree::Group(group) => Debug::fmt(group, f),
            TokenTree::Ident(ident) => Debug::fmt(ident, f),
            TokenTree::Punct(punct) => Debug::fmt(punct, f),
            TokenTree::Literal(literal) => Debug::fmt(literal, f),
        }
    }
}

#[repr(transparent)]
pub struct Group(handle::Group);

impl Clone for Group {
    fn clone(&self) -> Self {
        Group(unsafe { group_clone(self.0) })
    }
}

#[derive(Copy, Clone, Debug, Eq, PartialEq)]
pub enum Delimiter {
    Parenthesis,
    Brace,
    Bracket,
    None,
}

impl Group {
    pub fn new(delimiter: Delimiter, stream: TokenStream) -> Self {
        let delimiter = match delimiter {
            Delimiter::Parenthesis => DELIMITER_PARENTHESIS,
            Delimiter::Brace => DELIMITER_BRACE,
            Delimiter::Bracket => DELIMITER_BRACKET,
            Delimiter::None => DELIMITER_NONE,
        };
        Group(unsafe { group_new(delimiter, stream.0) })
    }

    pub fn delimiter(&self) -> Delimiter {
        let delimiter = unsafe { group_delimiter(self.0) };
        if delimiter == DELIMITER_PARENTHESIS {
            Delimiter::Parenthesis
        } else if delimiter == DELIMITER_BRACE {
            Delimiter::Brace
        } else if delimiter == DELIMITER_BRACKET {
            Delimiter::Bracket
        } else if delimiter == DELIMITER_NONE {
            Delimiter::None
        } else {
            unreachable!()
        }
    }

    pub fn stream(&self) -> TokenStream {
        TokenStream(unsafe { group_stream(self.0) })
    }

    pub fn span(&self) -> Span {
        Span(unsafe { group_span(self.0) })
    }

    pub fn span_open(&self) -> Span {
        self.span()
    }

    pub fn span_close(&self) -> Span {
        self.span()
    }

    pub fn set_span(&mut self, span: Span) {
        unsafe {
            group_set_span(self.0, span.0);
        }
    }
}

impl Display for Group {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(group_to_string(self.0)) };
        f.write_str(&string)
    }
}

impl Debug for Group {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(group_debug(self.0)) };
        f.write_str(&string)
    }
}

#[repr(transparent)]
pub struct Punct(handle::Punct);

impl Clone for Punct {
    fn clone(&self) -> Self {
        Punct(unsafe { punct_clone(self.0) })
    }
}

#[derive(Copy, Clone, Debug, Eq, PartialEq)]
pub enum Spacing {
    Alone,
    Joint,
}

impl Punct {
    pub fn new(op: char, spacing: Spacing) -> Self {
        let spacing = match spacing {
            Spacing::Alone => SPACING_ALONE,
            Spacing::Joint => SPACING_JOINT,
        };
        Punct(unsafe { punct_new(op as u32, spacing) })
    }

    pub fn as_char(&self) -> char {
        let ch = unsafe { punct_as_char(self.0) };
        char::from_u32(ch).unwrap()
    }

    pub fn spacing(&self) -> Spacing {
        let spacing = unsafe { punct_spacing(self.0) };
        if spacing == SPACING_ALONE {
            Spacing::Alone
        } else if spacing == SPACING_JOINT {
            Spacing::Joint
        } else {
            unreachable!()
        }
    }

    pub fn span(&self) -> Span {
        Span(unsafe { punct_span(self.0) })
    }

    pub fn set_span(&mut self, span: Span) {
        unsafe {
            punct_set_span(self.0, span.0);
        }
    }
}

impl Display for Punct {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(punct_to_string(self.0)) };
        f.write_str(&string)
    }
}

impl Debug for Punct {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(punct_debug(self.0)) };
        f.write_str(&string)
    }
}

#[repr(transparent)]
pub struct Ident(handle::Ident);

impl Clone for Ident {
    fn clone(&self) -> Self {
        Ident(unsafe { ident_clone(self.0) })
    }
}

impl Ident {
    pub fn new(string: &str, span: Span) -> Self {
        Ident(unsafe { ident_new(ffi::send_str(string), span.0) })
    }

    pub fn span(&self) -> Span {
        Span(unsafe { ident_span(self.0) })
    }

    pub fn set_span(&mut self, span: Span) {
        unsafe {
            ident_set_span(self.0, span.0);
        }
    }
}

impl PartialEq for Ident {
    fn eq(&self, other: &Ident) -> bool {
        unsafe { ident_eq(self.0, other.0) }
    }
}

impl<T> PartialEq<T> for Ident
where
    T: ?Sized + AsRef<str>,
{
    fn eq(&self, other: &T) -> bool {
        unsafe { ident_eq_str(self.0, ffi::send_str(other.as_ref())) }
    }
}

impl Eq for Ident {}

impl PartialOrd for Ident {
    fn partial_cmp(&self, other: &Ident) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl Ord for Ident {
    fn cmp(&self, other: &Ident) -> Ordering {
        let ordering = unsafe { ident_cmp(self.0, other.0) };
        if ordering == ORDERING_LESS {
            Ordering::Less
        } else if ordering == ORDERING_EQUAL {
            Ordering::Equal
        } else if ordering == ORDERING_GREATER {
            Ordering::Greater
        } else {
            unreachable!()
        }
    }
}

impl Hash for Ident {
    fn hash<H: Hasher>(&self, hasher: &mut H) {
        self.to_string().hash(hasher);
    }
}

impl Display for Ident {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(ident_to_string(self.0)) };
        f.write_str(&string)
    }
}

impl Debug for Ident {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(ident_debug(self.0)) };
        f.write_str(&string)
    }
}

#[repr(transparent)]
pub struct Literal(handle::Literal);

impl Clone for Literal {
    fn clone(&self) -> Self {
        Literal(unsafe { literal_clone(self.0) })
    }
}

impl Literal {
    pub fn u8_suffixed(n: u8) -> Self {
        Literal(unsafe { literal_u8_suffixed(n) })
    }

    pub fn u16_suffixed(n: u16) -> Self {
        Literal(unsafe { literal_u16_suffixed(n) })
    }

    pub fn u32_suffixed(n: u32) -> Self {
        Literal(unsafe { literal_u32_suffixed(n) })
    }

    pub fn u64_suffixed(n: u64) -> Self {
        Literal(unsafe { literal_u64_suffixed(n) })
    }

    pub fn u128_suffixed(n: u128) -> Self {
        let lo = (n & ((1u128 << 64) - 1)) as u64;
        let hi = (n >> 64) as u64;
        Literal(unsafe { literal_u128_suffixed(lo, hi) })
    }

    pub fn usize_suffixed(n: usize) -> Self {
        Literal(unsafe { literal_usize_suffixed(n) })
    }

    pub fn i8_suffixed(n: i8) -> Self {
        Literal(unsafe { literal_i8_suffixed(n) })
    }

    pub fn i16_suffixed(n: i16) -> Self {
        Literal(unsafe { literal_i16_suffixed(n) })
    }

    pub fn i32_suffixed(n: i32) -> Self {
        Literal(unsafe { literal_i32_suffixed(n) })
    }

    pub fn i64_suffixed(n: i64) -> Self {
        Literal(unsafe { literal_i64_suffixed(n) })
    }

    pub fn i128_suffixed(n: i128) -> Self {
        let lo = (n as u128 & ((1u128 << 64) - 1)) as u64;
        let hi = (n as u128 >> 64) as u64;
        Literal(unsafe { literal_i128_suffixed(lo, hi) })
    }

    pub fn isize_suffixed(n: isize) -> Self {
        Literal(unsafe { literal_isize_suffixed(n) })
    }

    pub fn u8_unsuffixed(n: u8) -> Self {
        Literal(unsafe { literal_u8_unsuffixed(n) })
    }

    pub fn u16_unsuffixed(n: u16) -> Self {
        Literal(unsafe { literal_u16_unsuffixed(n) })
    }

    pub fn u32_unsuffixed(n: u32) -> Self {
        Literal(unsafe { literal_u32_unsuffixed(n) })
    }

    pub fn u64_unsuffixed(n: u64) -> Self {
        Literal(unsafe { literal_u64_unsuffixed(n) })
    }

    pub fn u128_unsuffixed(n: u128) -> Self {
        let lo = (n & ((1u128 << 64) - 1)) as u64;
        let hi = (n >> 64) as u64;
        Literal(unsafe { literal_u128_unsuffixed(lo, hi) })
    }

    pub fn usize_unsuffixed(n: usize) -> Self {
        Literal(unsafe { literal_usize_unsuffixed(n) })
    }

    pub fn i8_unsuffixed(n: i8) -> Self {
        Literal(unsafe { literal_i8_unsuffixed(n) })
    }

    pub fn i16_unsuffixed(n: i16) -> Self {
        Literal(unsafe { literal_i16_unsuffixed(n) })
    }

    pub fn i32_unsuffixed(n: i32) -> Self {
        Literal(unsafe { literal_i32_unsuffixed(n) })
    }

    pub fn i64_unsuffixed(n: i64) -> Self {
        Literal(unsafe { literal_i64_unsuffixed(n) })
    }

    pub fn i128_unsuffixed(n: i128) -> Self {
        let lo = (n as u128 & ((1u128 << 64) - 1)) as u64;
        let hi = (n as u128 >> 64) as u64;
        Literal(unsafe { literal_i128_unsuffixed(lo, hi) })
    }

    pub fn isize_unsuffixed(n: isize) -> Self {
        Literal(unsafe { literal_isize_unsuffixed(n) })
    }

    pub fn f64_unsuffixed(f: f64) -> Self {
        Literal(unsafe { literal_f64_unsuffixed(f) })
    }

    pub fn f64_suffixed(f: f64) -> Self {
        Literal(unsafe { literal_f64_suffixed(f) })
    }

    pub fn f32_unsuffixed(f: f32) -> Self {
        Literal(unsafe { literal_f32_unsuffixed(f) })
    }

    pub fn f32_suffixed(f: f32) -> Self {
        Literal(unsafe { literal_f32_suffixed(f) })
    }

    pub fn string(string: &str) -> Self {
        Literal(unsafe { literal_string(ffi::send_str(string)) })
    }

    pub fn character(ch: char) -> Self {
        Literal(unsafe { literal_character(ch as u32) })
    }

    pub fn byte_string(bytes: &[u8]) -> Self {
        Literal(unsafe { literal_byte_string(ffi::send_bytes(bytes)) })
    }

    pub fn span(&self) -> Span {
        Span(unsafe { literal_span(self.0) })
    }

    pub fn set_span(&mut self, span: Span) {
        unsafe {
            literal_set_span(self.0, span.0);
        }
    }

    pub fn subspan<R: RangeBounds<usize>>(&self, range: R) -> Option<Span> {
        let _ = range;
        None
    }
}

impl Debug for Literal {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(literal_debug(self.0)) };
        f.write_str(&string)
    }
}

impl Display for Literal {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let string = unsafe { ffi::recv_string(literal_to_string(self.0)) };
        f.write_str(&string)
    }
}

pub mod token_stream {
    use super::*;

    pub use crate::TokenStream;

    #[repr(transparent)]
    pub struct IntoIter(handle::IntoIter);

    impl Clone for IntoIter {
        fn clone(&self) -> Self {
            IntoIter(unsafe { token_stream_iter_clone(self.0) })
        }
    }

    impl Iterator for IntoIter {
        type Item = TokenTree;

        fn next(&mut self) -> Option<TokenTree> {
            unsafe {
                let tree = token_stream_iter_next(self.0);
                if tree.0 == SENTINEL {
                    return None;
                }
                let kind = token_tree_kind(tree);
                if kind == TOKEN_GROUP {
                    Some(TokenTree::Group(Group(token_tree_unwrap_group(tree))))
                } else if kind == TOKEN_IDENT {
                    Some(TokenTree::Ident(Ident(token_tree_unwrap_ident(tree))))
                } else if kind == TOKEN_PUNCT {
                    Some(TokenTree::Punct(Punct(token_tree_unwrap_punct(tree))))
                } else if kind == TOKEN_LITERAL {
                    Some(TokenTree::Literal(Literal(token_tree_unwrap_literal(tree))))
                } else {
                    unreachable!()
                }
            }
        }
    }

    impl IntoIterator for TokenStream {
        type Item = TokenTree;
        type IntoIter = IntoIter;

        fn into_iter(self) -> Self::IntoIter {
            unsafe { IntoIter(token_stream_into_iter(self.0)) }
        }
    }
}
