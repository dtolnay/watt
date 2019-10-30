use crate::data::Data;
use proc_macro::{Delimiter, Group, Ident, Literal, Punct, Spacing, Span, TokenStream, TokenTree};
use std::char;
use std::cmp::Ordering;
use std::iter::once;
use std::str::{self, FromStr};

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

pub fn token_stream_new() -> u32 {
    Data::with(|d| d.tokenstream.push(TokenStream::new()))
}

pub fn token_stream_is_empty(stream: u32) -> u32 {
    Data::with(|d| {
        let stream = &d.tokenstream[stream];
        stream.is_empty() as u32
    })
}

pub fn token_stream_from_str(string: u32) -> u32 {
    Data::with(|d| {
        let string = &d.string[string];
        let result = TokenStream::from_str(string);
        match result {
            Ok(stream) => d.tokenstream.push(stream),
            Err(_error) => SENTINEL,
        }
    })
}

pub fn token_stream_into_iter(stream: u32) -> u32 {
    Data::with(|d| {
        let stream = &d.tokenstream[stream];
        let iter = stream.clone().into_iter();
        d.intoiter.push(iter)
    })
}

pub fn token_stream_iter_next(iter: u32) -> u32 {
    Data::with(|d| {
        let iter = &mut d.intoiter[iter];
        match iter.next() {
            Some(token) => d.tokentree.push(token),
            None => SENTINEL,
        }
    })
}

pub fn token_stream_from_group(group: u32) -> u32 {
    Data::with(|d| {
        let group = &d.group[group];
        let tree = TokenTree::Group(group.clone());
        d.tokenstream.push(TokenStream::from(tree))
    })
}

pub fn token_stream_from_ident(ident: u32) -> u32 {
    Data::with(|d| {
        let ident = &d.ident[ident];
        let tree = TokenTree::Ident(ident.clone());
        d.tokenstream.push(TokenStream::from(tree))
    })
}

pub fn token_stream_from_punct(punct: u32) -> u32 {
    Data::with(|d| {
        let punct = &d.punct[punct];
        let tree = TokenTree::Punct(punct.clone());
        d.tokenstream.push(TokenStream::from(tree))
    })
}

pub fn token_stream_from_literal(literal: u32) -> u32 {
    Data::with(|d| {
        let literal = &d.literal[literal];
        let tree = TokenTree::Literal(literal.clone());
        d.tokenstream.push(TokenStream::from(tree))
    })
}

pub fn token_stream_push_group(stream: u32, group: u32) {
    Data::with(|d| {
        let group = &d.group[group];
        let stream = &mut d.tokenstream[stream];
        stream.extend(once(TokenTree::Group(group.clone())));
    })
}

pub fn token_stream_push_ident(stream: u32, ident: u32) {
    Data::with(|d| {
        let ident = &d.ident[ident];
        let stream = &mut d.tokenstream[stream];
        stream.extend(once(TokenTree::Ident(ident.clone())));
    })
}

pub fn token_stream_push_punct(stream: u32, punct: u32) {
    Data::with(|d| {
        let punct = &d.punct[punct];
        let stream = &mut d.tokenstream[stream];
        stream.extend(once(TokenTree::Punct(punct.clone())));
    })
}

pub fn token_stream_push_literal(stream: u32, literal: u32) {
    Data::with(|d| {
        let literal = &d.literal[literal];
        let stream = &mut d.tokenstream[stream];
        stream.extend(once(TokenTree::Literal(literal.clone())));
    })
}

pub fn token_stream_extend(stream: u32, next: u32) {
    Data::with(|d| {
        let next = d.tokenstream[next].clone();
        let stream = &mut d.tokenstream[stream];
        stream.extend(next);
    })
}

pub fn token_tree_kind(token: u32) -> u32 {
    Data::with(|d| {
        let token = &d.tokentree[token];
        match token {
            TokenTree::Group(_) => TOKEN_GROUP,
            TokenTree::Ident(_) => TOKEN_IDENT,
            TokenTree::Punct(_) => TOKEN_PUNCT,
            TokenTree::Literal(_) => TOKEN_LITERAL,
        }
    })
}

pub fn token_tree_unwrap_group(token: u32) -> u32 {
    Data::with(|d| {
        let token = &d.tokentree[token];
        let group = match token {
            TokenTree::Group(group) => group,
            _ => unreachable!(),
        };
        d.group.push(group.clone())
    })
}

pub fn token_tree_unwrap_ident(token: u32) -> u32 {
    Data::with(|d| {
        let token = &d.tokentree[token];
        let ident = match token {
            TokenTree::Ident(ident) => ident,
            _ => unreachable!(),
        };
        d.ident.push(ident.clone())
    })
}

pub fn token_tree_unwrap_punct(token: u32) -> u32 {
    Data::with(|d| {
        let token = &d.tokentree[token];
        let punct = match token {
            TokenTree::Punct(punct) => punct,
            _ => unreachable!(),
        };
        d.punct.push(punct.clone())
    })
}

pub fn token_tree_unwrap_literal(token: u32) -> u32 {
    Data::with(|d| {
        let token = &d.tokentree[token];
        let literal = match token {
            TokenTree::Literal(literal) => literal,
            _ => unreachable!(),
        };
        d.literal.push(literal.clone())
    })
}

pub fn span_call_site() -> u32 {
    Data::with(|d| d.span.push(Span::call_site()))
}

pub fn group_new(delimiter: u32, stream: u32) -> u32 {
    Data::with(|d| {
        let stream = &d.tokenstream[stream];
        let delimiter = if delimiter == DELIMITER_PARENTHESIS {
            Delimiter::Parenthesis
        } else if delimiter == DELIMITER_BRACE {
            Delimiter::Brace
        } else if delimiter == DELIMITER_BRACKET {
            Delimiter::Bracket
        } else if delimiter == DELIMITER_NONE {
            Delimiter::None
        } else {
            unreachable!()
        };
        let group = Group::new(delimiter, stream.clone());
        d.group.push(group)
    })
}

pub fn group_delimiter(group: u32) -> u32 {
    Data::with(|d| {
        let group = &d.group[group];
        match group.delimiter() {
            Delimiter::Parenthesis => DELIMITER_PARENTHESIS,
            Delimiter::Brace => DELIMITER_BRACE,
            Delimiter::Bracket => DELIMITER_BRACKET,
            Delimiter::None => DELIMITER_NONE,
        }
    })
}

pub fn group_stream(group: u32) -> u32 {
    Data::with(|d| {
        let group = &d.group[group];
        d.tokenstream.push(group.stream())
    })
}

pub fn group_span(group: u32) -> u32 {
    Data::with(|d| {
        let group = &d.group[group];
        d.span.push(group.span())
    })
}

pub fn group_set_span(group: u32, span: u32) {
    Data::with(|d| {
        let span = d.span[span];
        let group = &mut d.group[group];
        group.set_span(span);
    })
}

pub fn punct_new(op: u32, spacing: u32) -> u32 {
    Data::with(|d| {
        let spacing = spacing;
        let op = op;
        let spacing = if spacing == SPACING_ALONE {
            Spacing::Alone
        } else if spacing == SPACING_JOINT {
            Spacing::Joint
        } else {
            unreachable!()
        };
        let op = char::from_u32(op).unwrap();
        d.punct.push(Punct::new(op, spacing))
    })
}

pub fn punct_as_char(punct: u32) -> u32 {
    Data::with(|d| {
        let punct = &d.punct[punct];
        punct.as_char() as u32
    })
}

pub fn punct_spacing(punct: u32) -> u32 {
    Data::with(|d| {
        let punct = &d.punct[punct];
        match punct.spacing() {
            Spacing::Alone => SPACING_ALONE,
            Spacing::Joint => SPACING_JOINT,
        }
    })
}

pub fn punct_span(punct: u32) -> u32 {
    Data::with(|d| {
        let punct = &d.punct[punct];
        d.span.push(punct.span())
    })
}

pub fn punct_set_span(punct: u32, span: u32) {
    Data::with(|d| {
        let span = d.span[span];
        let punct = &mut d.punct[punct];
        punct.set_span(span);
    })
}

pub fn ident_new(string: u32, span: u32) -> u32 {
    Data::with(|d| {
        let span = d.span[span];
        let string = &d.string[string];
        d.ident.push(Ident::new(string, span))
    })
}

pub fn ident_span(ident: u32) -> u32 {
    Data::with(|d| {
        let ident = &d.ident[ident];
        d.span.push(ident.span())
    })
}

pub fn ident_set_span(ident: u32, span: u32) {
    Data::with(|d| {
        let span = d.span[span];
        let ident = &mut d.ident[ident];
        ident.set_span(span);
    })
}

pub fn ident_eq(ident: u32, other: u32) -> u32 {
    Data::with(|d| {
        let other = &d.ident[other];
        let ident = &d.ident[ident];
        let eq = ident.to_string() == other.to_string();
        eq as u32
    })
}

pub fn ident_eq_str(ident: u32, other: u32) -> u32 {
    Data::with(|d| {
        let other = &d.string[other];
        let ident = &d.ident[ident];
        let eq = ident.to_string() == *other;
        eq as u32
    })
}

pub fn ident_cmp(ident: u32, other: u32) -> u32 {
    Data::with(|d| {
        let other = &d.ident[other];
        let ident = &d.ident[ident];
        let cmp = match ident.to_string().cmp(&other.to_string()) {
            Ordering::Less => ORDERING_LESS,
            Ordering::Equal => ORDERING_EQUAL,
            Ordering::Greater => ORDERING_GREATER,
        };
        cmp
    })
}

pub fn literal_u8_suffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as u8;
        d.literal.push(Literal::u8_suffixed(n))
    })
}

pub fn literal_u16_suffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as u16;
        d.literal.push(Literal::u16_suffixed(n))
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u32_suffixed(n: u32) -> u32 {
    Data::with(|d| d.literal.push(Literal::u32_suffixed(n)))
}

pub fn literal_u64_suffixed(n: u64) -> u32 {
    Data::with(|d| d.literal.push(Literal::u64_suffixed(n)))
}

pub fn literal_u128_suffixed(lo: u64, hi: u64) -> u32 {
    Data::with(|d| {
        let n = ((hi as u128) << 64) + lo as u128;
        d.literal.push(Literal::u128_suffixed(n))
    })
}

pub fn literal_usize_suffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as usize;
        d.literal.push(Literal::usize_suffixed(n))
    })
}

pub fn literal_i8_suffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as i8;
        d.literal.push(Literal::i8_suffixed(n))
    })
}

pub fn literal_i16_suffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as i16;
        d.literal.push(Literal::i16_suffixed(n))
    })
}

pub fn literal_i32_suffixed(n: i32) -> u32 {
    Data::with(|d| d.literal.push(Literal::i32_suffixed(n)))
}

pub fn literal_i64_suffixed(n: i64) -> u32 {
    Data::with(|d| d.literal.push(Literal::i64_suffixed(n)))
}

pub fn literal_i128_suffixed(lo: u64, hi: u64) -> u32 {
    Data::with(|d| {
        let n = (((hi as u128) << 64) + lo as u128) as i128;
        d.literal.push(Literal::i128_suffixed(n))
    })
}

pub fn literal_isize_suffixed(n: i32) -> u32 {
    Data::with(|d| {
        let n = n as isize;
        d.literal.push(Literal::isize_suffixed(n))
    })
}

pub fn literal_u8_unsuffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as u8;
        d.literal.push(Literal::u8_unsuffixed(n))
    })
}

pub fn literal_u16_unsuffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as u16;
        d.literal.push(Literal::u16_unsuffixed(n))
    })
}

pub fn literal_u32_unsuffixed(n: u32) -> u32 {
    Data::with(|d| d.literal.push(Literal::u32_unsuffixed(n)))
}

pub fn literal_u64_unsuffixed(n: u64) -> u32 {
    Data::with(|d| d.literal.push(Literal::u64_unsuffixed(n)))
}

pub fn literal_u128_unsuffixed(lo: u64, hi: u64) -> u32 {
    Data::with(|d| {
        let n = ((hi as u128) << 64) + lo as u128;
        d.literal.push(Literal::u128_unsuffixed(n))
    })
}

pub fn literal_usize_unsuffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as usize;
        d.literal.push(Literal::usize_unsuffixed(n))
    })
}

pub fn literal_i8_unsuffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as i8;
        d.literal.push(Literal::i8_unsuffixed(n))
    })
}

pub fn literal_i16_unsuffixed(n: u32) -> u32 {
    Data::with(|d| {
        let n = n as i16;
        d.literal.push(Literal::i16_unsuffixed(n))
    })
}

pub fn literal_i32_unsuffixed(n: i32) -> u32 {
    Data::with(|d| d.literal.push(Literal::i32_unsuffixed(n)))
}

pub fn literal_i64_unsuffixed(n: i64) -> u32 {
    Data::with(|d| d.literal.push(Literal::i64_unsuffixed(n)))
}

pub fn literal_i128_unsuffixed(lo: u64, hi: u64) -> u32 {
    Data::with(|d| {
        let n = (((hi as u128) << 64) + lo as u128) as i128;
        d.literal.push(Literal::i128_unsuffixed(n))
    })
}

pub fn literal_isize_unsuffixed(n: i32) -> u32 {
    Data::with(|d| {
        let n = n as isize;
        d.literal.push(Literal::isize_unsuffixed(n))
    })
}

pub fn literal_f64_unsuffixed(f: f64) -> u32 {
    Data::with(|d| d.literal.push(Literal::f64_unsuffixed(f)))
}

pub fn literal_f64_suffixed(f: f64) -> u32 {
    Data::with(|d| d.literal.push(Literal::f64_suffixed(f)))
}

pub fn literal_f32_unsuffixed(f: f32) -> u32 {
    Data::with(|d| d.literal.push(Literal::f32_unsuffixed(f)))
}

pub fn literal_f32_suffixed(f: f32) -> u32 {
    Data::with(|d| d.literal.push(Literal::f32_suffixed(f)))
}

pub fn literal_string(string: u32) -> u32 {
    Data::with(|d| {
        let string = &d.string[string];
        d.literal.push(Literal::string(string))
    })
}

pub fn literal_character(ch: u32) -> u32 {
    Data::with(|d| {
        let ch = char::from_u32(ch).unwrap();
        d.literal.push(Literal::character(ch))
    })
}

pub fn literal_byte_string(bytes: u32) -> u32 {
    Data::with(|d| {
        let bytes = &d.bytes[bytes];
        d.literal.push(Literal::byte_string(bytes))
    })
}

pub fn literal_span(literal: u32) -> u32 {
    Data::with(|d| {
        let literal = &d.literal[literal];
        d.span.push(literal.span())
    })
}

pub fn literal_set_span(literal: u32, span: u32) {
    Data::with(|d| {
        let span = d.span[span];
        let literal = &mut d.literal[literal];
        literal.set_span(span);
    })
}

pub fn token_stream_clone(stream: u32) -> u32 {
    Data::with(|d| {
        let clone = d.tokenstream[stream].clone();
        d.tokenstream.push(clone)
    })
}

pub fn group_clone(group: u32) -> u32 {
    Data::with(|d| {
        let clone = d.group[group].clone();
        d.group.push(clone)
    })
}

pub fn ident_clone(ident: u32) -> u32 {
    Data::with(|d| {
        let clone = d.ident[ident].clone();
        d.ident.push(clone)
    })
}

pub fn punct_clone(punct: u32) -> u32 {
    Data::with(|d| {
        let clone = d.punct[punct].clone();
        d.punct.push(clone)
    })
}

pub fn literal_clone(literal: u32) -> u32 {
    Data::with(|d| {
        let clone = d.literal[literal].clone();
        d.literal.push(clone)
    })
}

pub fn token_stream_iter_clone(iter: u32) -> u32 {
    Data::with(|d| {
        let clone = d.intoiter[iter].clone();
        d.intoiter.push(clone)
    })
}

pub fn token_stream_to_string(stream: u32) -> u32 {
    Data::with(|d| {
        let string = d.tokenstream[stream].to_string();
        d.string.push(string)
    })
}

pub fn group_to_string(group: u32) -> u32 {
    Data::with(|d| {
        let string = d.group[group].to_string();
        d.string.push(string)
    })
}

pub fn ident_to_string(ident: u32) -> u32 {
    Data::with(|d| {
        let string = d.ident[ident].to_string();
        d.string.push(string)
    })
}

pub fn punct_to_string(punct: u32) -> u32 {
    Data::with(|d| {
        let string = d.punct[punct].to_string();
        d.string.push(string)
    })
}

pub fn literal_to_string(literal: u32) -> u32 {
    Data::with(|d| {
        let string = d.literal[literal].to_string();
        d.string.push(string)
    })
}

pub fn token_stream_debug(stream: u32) -> u32 {
    Data::with(|d| {
        let debug = format!("{:?}", d.tokenstream[stream]);
        d.string.push(debug)
    })
}

pub fn group_debug(group: u32) -> u32 {
    Data::with(|d| {
        let debug = format!("{:?}", d.group[group]);
        d.string.push(debug)
    })
}

pub fn ident_debug(ident: u32) -> u32 {
    Data::with(|d| {
        let debug = format!("{:?}", d.ident[ident]);
        d.string.push(debug)
    })
}

pub fn punct_debug(punct: u32) -> u32 {
    Data::with(|d| {
        let debug = format!("{:?}", d.punct[punct]);
        d.string.push(debug)
    })
}

pub fn literal_debug(literal: u32) -> u32 {
    Data::with(|d| {
        let debug = format!("{:?}", d.literal[literal]);
        d.string.push(debug)
    })
}

pub fn span_debug(span: u32) -> u32 {
    Data::with(|d| {
        let debug = format!("{:?}", d.span[span]);
        d.string.push(debug)
    })
}

pub fn watt_string_new(memory: *mut [u8], ptr: u32, len: u32) -> u32 {
    Data::with(|d| {
        let len = len as usize;
        let ptr = ptr as usize;
        let bytes = unsafe { (*memory)[ptr..ptr + len].to_owned() };
        let string = String::from_utf8(bytes).expect("non-utf8");
        d.string.push(string)
    })
}

pub fn watt_string_len(string: u32) -> u32 {
    Data::with(|d| {
        let string = &d.string[string];
        string.len() as u32
    })
}

pub fn watt_string_read(memory: *mut [u8], string: u32, ptr: u32) {
    Data::with(|d| {
        let ptr = ptr as usize;
        let string = &d.string[string];
        unsafe {
            (*memory)[ptr..ptr + string.len()].copy_from_slice(string.as_bytes());
        }
    })
}

pub fn watt_bytes_new(memory: *mut [u8], ptr: u32, len: u32) -> u32 {
    Data::with(|d| {
        let len = len as usize;
        let ptr = ptr as usize;
        let bytes = unsafe { (*memory)[ptr..ptr + len].to_owned() };
        d.bytes.push(bytes)
    })
}

pub fn watt_print_panic(string: u32) {
    Data::with(|d| panic!("{}", d.string[string]))
}

pub fn watt_string_with_capacity(cap: u32) -> u32 {
    Data::with(|d| {
        let cap = cap as usize;
        d.string.push(String::with_capacity(cap))
    })
}

pub fn watt_string_push_char(string: u32, ch: u32) {
    Data::with(|d| {
        let ch = ch;
        let string = &mut d.string[string];
        string.push(char::from_u32(ch).unwrap());
    })
}

pub fn watt_string_char_at(string: u32, pos: u32) -> u32 {
    Data::with(|d| {
        let pos = pos as usize;
        let string = &d.string[string];
        string[pos..].chars().next().unwrap() as u32
    })
}

pub fn watt_bytes_with_capacity(cap: u32) -> u32 {
    Data::with(|d| {
        let cap = cap as usize;
        d.bytes.push(Vec::with_capacity(cap))
    })
}

pub fn watt_bytes_push(bytes: u32, b: u32) {
    Data::with(|d| {
        let b = b as u8;
        let bytes = &mut d.bytes[bytes];
        bytes.push(b);
    })
}

pub fn watt_bytes_len(bytes: u32) -> u32 {
    Data::with(|d| d.bytes[bytes].len() as u32)
}

pub fn watt_bytes_read(memory: *mut [u8], bytes: u32, ptr: u32) {
    Data::with(|d| {
        let ptr = ptr as usize;
        let bytes = &d.bytes[bytes];
        unsafe {
            (*memory)[ptr..ptr + bytes.len()].copy_from_slice(bytes);
        }
    })
}

pub fn token_stream_serialize(stream: u32) -> u32 {
    Data::with(|d| {
        let stream = d.tokenstream[stream].clone();
        let bytes = crate::encode::encode(stream, d);
        d.bytes.push(bytes)
    })
}

pub fn token_stream_deserialize(memory: *mut [u8], ptr: u32, len: u32) -> u32 {
    Data::with(|d| {
        let ptr = ptr as usize;
        let len = len as usize;
        let memory = unsafe { &(*memory)[ptr..ptr + len] };
        let stream = crate::decode::decode(memory, d);
        d.tokenstream.push(stream)
    })
}

pub fn token_stream_parse(memory: *mut [u8], ptr: u32, len: u32) -> u32 {
    Data::with(|d| {
        let ptr = ptr as usize;
        let len = len as usize;
        let memory = unsafe { &(*memory)[ptr..ptr + len] };
        let string = match str::from_utf8(memory) {
            Ok(s) => s,
            Err(_) => return u32::max_value(),
        };
        let stream = match string.parse() {
            Ok(s) => s,
            Err(_) => return u32::max_value(),
        };
        d.tokenstream.push(stream)
    })
}
