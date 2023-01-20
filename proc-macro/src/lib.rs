#![allow(
    clippy::cast_lossless,
    clippy::identity_op,
    clippy::items_after_statements,
    clippy::manual_assert,
    clippy::manual_range_contains,
    clippy::manual_strip,
    clippy::must_use_candidate,
    clippy::trivially_copy_pass_by_ref,
    clippy::uninit_vec,
    clippy::uninlined_format_args
)]

extern crate proc_macro;

mod decode;
mod encode;
mod ffi;
mod rc;

use crate::rc::Rc;
use std::char;
use std::cmp::Ordering;
use std::collections::HashSet;
use std::fmt::{self, Debug, Display};
use std::hash::{Hash, Hasher};
use std::iter::FromIterator;
use std::marker::PhantomData;
use std::mem;
use std::ops::RangeBounds;
use std::str::FromStr;

mod handle {
    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct String(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Bytes(pub u32);

    #[repr(transparent)]
    #[derive(Copy, Clone)]
    pub struct Literal(pub u32);
}

#[derive(Clone)]
#[repr(transparent)]
pub struct TokenStream {
    inner: Rc<Vec<TokenTree>>,
}

impl From<proc_macro::TokenStream> for TokenStream {
    fn from(_: proc_macro::TokenStream) -> Self {
        unimplemented!("From<proc_macro::TokenStream> does not exist in wasm");
    }
}

impl From<TokenStream> for proc_macro::TokenStream {
    fn from(_: TokenStream) -> Self {
        unimplemented!("Into<proc_macro::TokenStream> does not exist in wasm");
    }
}

pub struct LexError {
    _marker: PhantomData<Rc<()>>,
}

impl LexError {
    pub fn span(&self) -> Span {
        Span::call_site()
    }
}

impl TokenStream {
    pub fn new() -> Self {
        TokenStream {
            inner: Rc::new(Vec::new()),
        }
    }

    pub fn is_empty(&self) -> bool {
        self.inner.is_empty()
    }

    fn _assert_single_word(self) -> usize {
        unsafe { mem::transmute::<TokenStream, usize>(self) }
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
        ffi::parse(input)
    }
}

impl From<TokenTree> for TokenStream {
    fn from(token: TokenTree) -> Self {
        TokenStream {
            inner: Rc::new(vec![token]),
        }
    }
}

impl Extend<TokenTree> for TokenStream {
    fn extend<I: IntoIterator<Item = TokenTree>>(&mut self, iter: I) {
        Rc::make_mut(&mut self.inner).extend(iter);
    }
}

impl Extend<TokenStream> for TokenStream {
    fn extend<I: IntoIterator<Item = TokenStream>>(&mut self, iter: I) {
        Rc::make_mut(&mut self.inner).extend(iter.into_iter().flatten());
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
        let mut joint = false;
        for (i, tt) in self.inner.iter().enumerate() {
            if i != 0 && !joint {
                write!(f, " ")?;
            }
            joint = false;
            match *tt {
                TokenTree::Group(ref tt) => {
                    let (start, end) = match tt.delimiter() {
                        Delimiter::Parenthesis => ("(", ")"),
                        Delimiter::Brace => ("{", "}"),
                        Delimiter::Bracket => ("[", "]"),
                        Delimiter::None => ("", ""),
                    };
                    if tt.stream().into_iter().next().is_none() {
                        write!(f, "{} {}", start, end)?;
                    } else {
                        write!(f, "{} {} {}", start, tt.stream(), end)?;
                    }
                }
                TokenTree::Ident(ref tt) => write!(f, "{}", tt)?,
                TokenTree::Punct(ref tt) => {
                    write!(f, "{}", tt.as_char())?;
                    match tt.spacing() {
                        Spacing::Alone => {}
                        Spacing::Joint => joint = true,
                    }
                }
                TokenTree::Literal(ref tt) => write!(f, "{}", tt)?,
            }
        }

        Ok(())
    }
}

impl Debug for TokenStream {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        f.write_str("TokenStream ")?;
        f.debug_list().entries(self.clone()).finish()
    }
}

impl Debug for LexError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        f.write_str("LexError")
    }
}

#[derive(Copy, Clone, Debug)]
pub struct Span {
    handle: u32,
    _marker: PhantomData<Rc<()>>,
}

impl Span {
    pub fn call_site() -> Self {
        Span {
            handle: u32::max_value(),
            _marker: PhantomData,
        }
    }

    pub fn join(&self, other: Span) -> Option<Span> {
        let _ = other;
        None
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
    fn from(g: Group) -> Self {
        TokenTree::Group(g)
    }
}

impl From<Ident> for TokenTree {
    fn from(g: Ident) -> Self {
        TokenTree::Ident(g)
    }
}

impl From<Punct> for TokenTree {
    fn from(g: Punct) -> Self {
        TokenTree::Punct(g)
    }
}

impl From<Literal> for TokenTree {
    fn from(g: Literal) -> Self {
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

#[derive(Debug, Clone)]
pub struct Group {
    delimiter: Delimiter,
    stream: TokenStream,
    span: Span,
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
        Group {
            delimiter,
            stream,
            span: Span::call_site(),
        }
    }

    pub fn delimiter(&self) -> Delimiter {
        self.delimiter
    }

    pub fn stream(&self) -> TokenStream {
        self.stream.clone()
    }

    pub fn span(&self) -> Span {
        self.span
    }

    pub fn span_open(&self) -> Span {
        self.span
    }

    pub fn span_close(&self) -> Span {
        self.span
    }

    pub fn set_span(&mut self, span: Span) {
        self.span = span;
    }
}

impl Display for Group {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let (left, right) = match self.delimiter {
            Delimiter::Parenthesis => ("(", ")"),
            Delimiter::Brace => ("{", "}"),
            Delimiter::Bracket => ("[", "]"),
            Delimiter::None => ("", ""),
        };

        f.write_str(left)?;
        Display::fmt(&self.stream, f)?;
        f.write_str(right)?;

        Ok(())
    }
}

#[derive(Clone, Debug)]
pub struct Punct {
    op: char,
    spacing: Spacing,
    span: Span,
}

#[derive(Copy, Clone, Debug, Eq, PartialEq)]
pub enum Spacing {
    Alone,
    Joint,
}

impl Punct {
    pub fn new(op: char, spacing: Spacing) -> Self {
        Punct {
            op,
            spacing,
            span: Span::call_site(),
        }
    }

    pub fn as_char(&self) -> char {
        self.op
    }

    pub fn spacing(&self) -> Spacing {
        self.spacing
    }

    pub fn span(&self) -> Span {
        self.span
    }

    pub fn set_span(&mut self, span: Span) {
        self.span = span;
    }
}

impl Display for Punct {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        Display::fmt(&self.op, f)
    }
}

#[derive(Clone)]
pub struct Ident {
    sym: &'static str,
    span: Span,
    raw: bool,
}

impl Ident {
    fn _new(string: &str, raw: bool, span: Span) -> Self {
        Ident::validate(string);

        Ident {
            sym: intern(string),
            span,
            raw,
        }
    }

    pub fn new(string: &str, span: Span) -> Self {
        Ident::_new(string, false, span)
    }

    pub fn new_raw(string: &str, span: Span) -> Self {
        Ident::_new(string, true, span)
    }

    pub fn span(&self) -> Span {
        self.span
    }

    pub fn set_span(&mut self, span: Span) {
        self.span = span;
    }

    fn validate(string: &str) {
        let validate = string;
        if validate.is_empty() {
            panic!("Ident is not allowed to be empty; use Option<Ident>");
        }

        if validate.bytes().all(|digit| digit >= b'0' && digit <= b'9') {
            panic!("Ident cannot be a number; use Literal instead");
        }

        fn ident_ok(string: &str) -> bool {
            let mut chars = string.chars();
            let first = chars.next().unwrap();
            if !is_ident_start(first) {
                return false;
            }
            for ch in chars {
                if !is_ident_continue(ch) {
                    return false;
                }
            }
            true
        }

        if !ident_ok(validate) {
            panic!("{:?} is not a valid Ident", string);
        }

        #[inline]
        fn is_ident_start(c: char) -> bool {
            ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || c == '_'
            /*|| (c > '\x7f' && UnicodeXID::is_xid_start(c))*/ // TODO
        }

        #[inline]
        fn is_ident_continue(c: char) -> bool {
            ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || c == '_' || ('0' <= c && c <= '9')
            /*|| (c > '\x7f' && UnicodeXID::is_xid_continue(c))*/ // TODO
        }
    }
}

impl PartialEq for Ident {
    fn eq(&self, other: &Ident) -> bool {
        self.sym == other.sym && self.raw == other.raw
    }
}

impl<T> PartialEq<T> for Ident
where
    T: ?Sized + AsRef<str>,
{
    fn eq(&self, other: &T) -> bool {
        let other = other.as_ref();
        if self.raw {
            other.starts_with("r#") && self.sym == &other[2..]
        } else {
            self.sym == other
        }
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
        self.to_string().cmp(&other.to_string())
    }
}

impl Hash for Ident {
    fn hash<H: Hasher>(&self, hasher: &mut H) {
        self.to_string().hash(hasher);
    }
}

impl Display for Ident {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        if self.raw {
            f.write_str("r#")?;
        }
        Display::fmt(&self.sym, f)
    }
}

impl Debug for Ident {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let mut debug = f.debug_struct("Ident");
        debug.field("sym", &format_args!("{}", self));
        debug.field("span", &self.span);
        debug.finish()
    }
}

#[derive(Clone)]
pub struct Literal {
    kind: LiteralKind,
    span: Span,
}

#[derive(Copy, Clone)]
enum LiteralKind {
    Watt(handle::Literal),
    Local(&'static str),
}

macro_rules! suffixed_numbers {
    ($($name:ident => $kind:ident,)*) => ($(
        pub fn $name(n: $kind) -> Self {
            Literal::_new(format!(concat!("{}", stringify!($kind)), n))
        }
    )*)
}

macro_rules! unsuffixed_numbers {
    ($($name:ident => $kind:ident,)*) => ($(
        pub fn $name(n: $kind) -> Self {
            Literal::_new(n.to_string())
        }
    )*)
}

impl Literal {
    fn _new(text: String) -> Self {
        Literal {
            kind: LiteralKind::Local(intern(text)),
            span: Span::call_site(),
        }
    }

    suffixed_numbers! {
        u8_suffixed => u8,
        u16_suffixed => u16,
        u32_suffixed => u32,
        u64_suffixed => u64,
        usize_suffixed => usize,
        i8_suffixed => i8,
        i16_suffixed => i16,
        i32_suffixed => i32,
        i64_suffixed => i64,
        isize_suffixed => isize,

        f32_suffixed => f32,
        f64_suffixed => f64,
        u128_suffixed => u128,
        i128_suffixed => i128,
    }

    unsuffixed_numbers! {
        u8_unsuffixed => u8,
        u16_unsuffixed => u16,
        u32_unsuffixed => u32,
        u64_unsuffixed => u64,
        usize_unsuffixed => usize,
        i8_unsuffixed => i8,
        i16_unsuffixed => i16,
        i32_unsuffixed => i32,
        i64_unsuffixed => i64,
        isize_unsuffixed => isize,
        u128_unsuffixed => u128,
        i128_unsuffixed => i128,
    }

    pub fn f32_unsuffixed(f: f32) -> Self {
        let mut s = f.to_string();
        if !s.contains('.') {
            s.push_str(".0");
        }
        Literal::_new(s)
    }

    pub fn f64_unsuffixed(f: f64) -> Self {
        let mut s = f.to_string();
        if !s.contains('.') {
            s.push_str(".0");
        }
        Literal::_new(s)
    }

    pub fn string(t: &str) -> Self {
        let mut text = String::with_capacity(t.len() + 2);
        text.push('"');
        for c in t.chars() {
            if c == '\'' {
                // escape_default turns this into "\'" which is unnecessary.
                text.push(c);
            } else {
                text.extend(c.escape_default());
            }
        }
        text.push('"');
        Literal::_new(text)
    }

    pub fn character(t: char) -> Self {
        let mut text = String::new();
        text.push('\'');
        if t == '"' {
            // escape_default turns this into '\"' which is unnecessary.
            text.push(t);
        } else {
            text.extend(t.escape_default());
        }
        text.push('\'');
        Literal::_new(text)
    }

    #[allow(clippy::match_overlapping_arm)]
    pub fn byte_string(bytes: &[u8]) -> Self {
        let mut escaped = "b\"".to_string();
        for b in bytes {
            match *b {
                b'\0' => escaped.push_str(r"\0"),
                b'\t' => escaped.push_str(r"\t"),
                b'\n' => escaped.push_str(r"\n"),
                b'\r' => escaped.push_str(r"\r"),
                b'"' => escaped.push_str("\\\""),
                b'\\' => escaped.push_str("\\\\"),
                b'\x20'..=b'\x7E' => escaped.push(*b as char),
                _ => escaped.push_str(&format!("\\x{:02X}", b)),
            }
        }
        escaped.push('"');
        Literal::_new(escaped)
    }

    pub fn span(&self) -> Span {
        self.span
    }

    pub fn set_span(&mut self, span: Span) {
        self.span = span;
    }

    pub fn subspan<R: RangeBounds<usize>>(&self, range: R) -> Option<Span> {
        let _ = range;
        None
    }
}

impl FromStr for Literal {
    type Err = LexError;

    fn from_str(repr: &str) -> Result<Self, Self::Err> {
        let tokens = ffi::parse(repr)?;
        let mut iter = tokens.into_iter();
        if let (Some(TokenTree::Literal(literal)), None) = (iter.next(), iter.next()) {
            if literal.to_string().len() == repr.len() {
                return Ok(literal);
            }
        }
        Err(LexError {
            _marker: PhantomData,
        })
    }
}

impl Display for Literal {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self.kind {
            LiteralKind::Local(s) => Display::fmt(s, f),
            LiteralKind::Watt(handle) => ffi::display_literal(handle, f),
        }
    }
}

impl Debug for Literal {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        f.debug_struct("Literal")
            .field("lit", &self.to_string())
            .field("span", &self.span)
            .finish()
    }
}

pub mod token_stream {
    use crate::TokenTree;
    use std::ops::Range;

    pub use crate::TokenStream;

    #[derive(Clone)]
    pub struct IntoIter {
        stream: TokenStream,
        range: Range<usize>,
    }

    impl Iterator for IntoIter {
        type Item = TokenTree;

        fn next(&mut self) -> Option<TokenTree> {
            self.range.next().map(|i| self.stream.inner[i].clone())
        }
    }

    impl IntoIterator for TokenStream {
        type Item = TokenTree;
        type IntoIter = IntoIter;

        fn into_iter(self) -> Self::IntoIter {
            IntoIter {
                range: 0..self.inner.len(),
                stream: self,
            }
        }
    }
}

// Look up `s` in our global table of interned strings. If it exists return that
// string, otherwise allocate `s` onto the heap, leak it, and then return it.
fn intern<T>(s: T) -> &'static str
where
    T: AsRef<str> + Into<Box<str>>,
{
    // NB: `static mut` and `unsafe` here should be ok because we are in wasm
    // which is always single-threaded right now.
    static mut INTERN: Option<HashSet<&'static str>> = None;
    let intern = unsafe { &mut INTERN };

    let map = intern.get_or_insert_with(HashSet::new);
    if let Some(s) = map.get(s.as_ref()) {
        return s;
    }

    let val = Box::leak(s.into());
    map.insert(val);
    val
}
