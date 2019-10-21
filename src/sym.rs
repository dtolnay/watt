use crate::data::Data;
use crate::watt::{Interpreter, Value};
use proc_macro::{Delimiter, Group, Ident, Literal, Punct, Spacing, Span, TokenStream, TokenTree};
use std::char;
use std::cmp::Ordering;
use std::iter::once;
use std::str::FromStr;

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

// args: []
// result: [Int(I32)]
pub fn token_stream_new(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let stream = d.tokenstream.push(TokenStream::new());
        interp.push(Value::I32(stream));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_is_empty(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let stream = &d.tokenstream[pop(interp)];
        let is_empty = stream.is_empty();
        interp.push(Value::I32(is_empty as u32));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_str(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = &d.string[pop(interp)];
        let result = TokenStream::from_str(string);
        interp.push(Value::I32(match result {
            Ok(stream) => d.tokenstream.push(stream),
            Err(_error) => SENTINEL,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_into_iter(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let stream = &d.tokenstream[pop(interp)];
        let iter = stream.clone().into_iter();
        interp.push(Value::I32(d.intoiter.push(iter)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_iter_next(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let iter = &mut d.intoiter[pop(interp)];
        interp.push(Value::I32(match iter.next() {
            Some(token) => d.tokentree.push(token),
            None => SENTINEL,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_group(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(interp)];
        let tree = TokenTree::Group(group.clone());
        interp.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_ident(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let ident = &d.ident[pop(interp)];
        let tree = TokenTree::Ident(ident.clone());
        interp.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_punct(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(interp)];
        let tree = TokenTree::Punct(punct.clone());
        interp.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_literal(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let literal = &d.literal[pop(interp)];
        let tree = TokenTree::Literal(literal.clone());
        interp.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_group(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(interp)];
        let stream = &mut d.tokenstream[pop(interp)];
        stream.extend(once(TokenTree::Group(group.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_ident(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let ident = &d.ident[pop(interp)];
        let stream = &mut d.tokenstream[pop(interp)];
        stream.extend(once(TokenTree::Ident(ident.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_punct(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(interp)];
        let stream = &mut d.tokenstream[pop(interp)];
        stream.extend(once(TokenTree::Punct(punct.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_literal(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let literal = &d.literal[pop(interp)];
        let stream = &mut d.tokenstream[pop(interp)];
        stream.extend(once(TokenTree::Literal(literal.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_extend(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let next = d.tokenstream[pop(interp)].clone();
        let stream = &mut d.tokenstream[pop(interp)];
        stream.extend(next);
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_kind(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(interp)];
        interp.push(Value::I32(match token {
            TokenTree::Group(_) => TOKEN_GROUP,
            TokenTree::Ident(_) => TOKEN_IDENT,
            TokenTree::Punct(_) => TOKEN_PUNCT,
            TokenTree::Literal(_) => TOKEN_LITERAL,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_unwrap_group(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(interp)];
        let group = match token {
            TokenTree::Group(group) => group,
            _ => unreachable!(),
        };
        interp.push(Value::I32(d.group.push(group.clone())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_unwrap_ident(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(interp)];
        let ident = match token {
            TokenTree::Ident(ident) => ident,
            _ => unreachable!(),
        };
        interp.push(Value::I32(d.ident.push(ident.clone())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_unwrap_punct(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(interp)];
        let punct = match token {
            TokenTree::Punct(punct) => punct,
            _ => unreachable!(),
        };
        interp.push(Value::I32(d.punct.push(punct.clone())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_unwrap_literal(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(interp)];
        let literal = match token {
            TokenTree::Literal(literal) => literal,
            _ => unreachable!(),
        };
        interp.push(Value::I32(d.literal.push(literal.clone())));
        None
    })
}

// args: []
// result: [Int(I32)]
pub fn span_call_site(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        interp.push(Value::I32(d.span.push(Span::call_site())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn group_new(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let stream = &d.tokenstream[pop(interp)];
        let delimiter = pop(interp);
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
        interp.push(Value::I32(d.group.push(group)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_delimiter(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(interp)];
        interp.push(Value::I32(match group.delimiter() {
            Delimiter::Parenthesis => DELIMITER_PARENTHESIS,
            Delimiter::Brace => DELIMITER_BRACE,
            Delimiter::Bracket => DELIMITER_BRACKET,
            Delimiter::None => DELIMITER_NONE,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_stream(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(interp)];
        interp.push(Value::I32(d.tokenstream.push(group.stream())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(interp)];
        interp.push(Value::I32(d.span.push(group.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn group_set_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(interp)];
        let group = &mut d.group[pop(interp)];
        group.set_span(span);
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn punct_new(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let spacing = pop(interp);
        let op = pop(interp);
        let spacing = if spacing == SPACING_ALONE {
            Spacing::Alone
        } else if spacing == SPACING_JOINT {
            Spacing::Joint
        } else {
            unreachable!()
        };
        let op = char::from_u32(op).unwrap();
        interp.push(Value::I32(d.punct.push(Punct::new(op, spacing))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_as_char(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(interp)];
        interp.push(Value::I32(punct.as_char() as u32));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_spacing(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(interp)];
        interp.push(Value::I32(match punct.spacing() {
            Spacing::Alone => SPACING_ALONE,
            Spacing::Joint => SPACING_JOINT,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(interp)];
        interp.push(Value::I32(d.span.push(punct.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn punct_set_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(interp)];
        let punct = &mut d.punct[pop(interp)];
        punct.set_span(span);
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_new(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(interp)];
        let string = &d.string[pop(interp)];
        interp.push(Value::I32(d.ident.push(Ident::new(string, span))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let ident = &d.ident[pop(interp)];
        interp.push(Value::I32(d.span.push(ident.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn ident_set_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(interp)];
        let ident = &mut d.ident[pop(interp)];
        ident.set_span(span);
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_eq(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let other = &d.ident[pop(interp)];
        let ident = &d.ident[pop(interp)];
        let eq = ident.to_string() == other.to_string();
        interp.push(Value::I32(eq as u32));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_eq_str(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let other = &d.string[pop(interp)];
        let ident = &d.ident[pop(interp)];
        let eq = ident.to_string() == *other;
        interp.push(Value::I32(eq as u32));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_cmp(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let other = &d.ident[pop(interp)];
        let ident = &d.ident[pop(interp)];
        let cmp = match ident.to_string().cmp(&other.to_string()) {
            Ordering::Less => ORDERING_LESS,
            Ordering::Equal => ORDERING_EQUAL,
            Ordering::Greater => ORDERING_GREATER,
        };
        interp.push(Value::I32(cmp));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u8_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as u8;
        interp.push(Value::I32(d.literal.push(Literal::u8_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u16_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as u16;
        interp.push(Value::I32(d.literal.push(Literal::u16_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u32_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp);
        interp.push(Value::I32(d.literal.push(Literal::u32_suffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_u64_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop64(interp);
        interp.push(Value::I32(d.literal.push(Literal::u64_suffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_u128_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(interp);
        let lo = pop64(interp);
        let n = ((hi as u128) << 64) + lo as u128;
        interp.push(Value::I32(d.literal.push(Literal::u128_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_usize_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as usize;
        interp.push(Value::I32(d.literal.push(Literal::usize_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i8_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as i8;
        interp.push(Value::I32(d.literal.push(Literal::i8_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i16_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as i16;
        interp.push(Value::I32(d.literal.push(Literal::i16_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i32_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as i32;
        interp.push(Value::I32(d.literal.push(Literal::i32_suffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_i64_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop64(interp) as i64;
        interp.push(Value::I32(d.literal.push(Literal::i64_suffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_i128_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(interp);
        let lo = pop64(interp);
        let n = (((hi as u128) << 64) + lo as u128) as i128;
        interp.push(Value::I32(d.literal.push(Literal::i128_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_isize_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as isize;
        interp.push(Value::I32(d.literal.push(Literal::isize_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u8_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as u8;
        interp.push(Value::I32(d.literal.push(Literal::u8_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u16_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as u16;
        interp.push(Value::I32(d.literal.push(Literal::u16_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u32_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp);
        interp.push(Value::I32(d.literal.push(Literal::u32_unsuffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_u64_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop64(interp);
        interp.push(Value::I32(d.literal.push(Literal::u64_unsuffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_u128_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(interp);
        let lo = pop64(interp);
        let n = ((hi as u128) << 64) + lo as u128;
        interp.push(Value::I32(d.literal.push(Literal::u128_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_usize_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as usize;
        interp.push(Value::I32(d.literal.push(Literal::usize_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i8_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as i8;
        interp.push(Value::I32(d.literal.push(Literal::i8_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i16_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as i16;
        interp.push(Value::I32(d.literal.push(Literal::i16_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i32_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as i32;
        interp.push(Value::I32(d.literal.push(Literal::i32_unsuffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_i64_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop64(interp) as i64;
        interp.push(Value::I32(d.literal.push(Literal::i64_unsuffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_i128_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(interp);
        let lo = pop64(interp);
        let n = (((hi as u128) << 64) + lo as u128) as i128;
        interp.push(Value::I32(d.literal.push(Literal::i128_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_isize_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let n = pop(interp) as isize;
        interp.push(Value::I32(d.literal.push(Literal::isize_unsuffixed(n))));
        None
    })
}

// args: [Int(F64)]
// result: [Int(I32)]
pub fn literal_f64_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let f = popf64(interp);
        interp.push(Value::I32(d.literal.push(Literal::f64_unsuffixed(f))));
        None
    })
}

// args: [Int(F64)]
// result: [Int(I32)]
pub fn literal_f64_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let f = popf64(interp);
        interp.push(Value::I32(d.literal.push(Literal::f64_suffixed(f))));
        None
    })
}

// args: [Int(F32)]
// result: [Int(I32)]
pub fn literal_f32_unsuffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let f = popf(interp);
        interp.push(Value::I32(d.literal.push(Literal::f32_unsuffixed(f))));
        None
    })
}

// args: [Int(F32)]
// result: [Int(I32)]
pub fn literal_f32_suffixed(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let f = popf(interp);
        interp.push(Value::I32(d.literal.push(Literal::f32_suffixed(f))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_string(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = &d.string[pop(interp)];
        interp.push(Value::I32(d.literal.push(Literal::string(string))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_character(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let ch = char::from_u32(pop(interp)).unwrap();
        interp.push(Value::I32(d.literal.push(Literal::character(ch))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_byte_string(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let bytes = &d.bytes[pop(interp)];
        interp.push(Value::I32(d.literal.push(Literal::byte_string(bytes))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let literal = &d.literal[pop(interp)];
        interp.push(Value::I32(d.span.push(literal.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn literal_set_span(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(interp)];
        let literal = &mut d.literal[pop(interp)];
        literal.set_span(span);
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_clone(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let clone = d.tokenstream[pop(interp)].clone();
        interp.push(Value::I32(d.tokenstream.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_clone(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let clone = d.group[pop(interp)].clone();
        interp.push(Value::I32(d.group.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_clone(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let clone = d.ident[pop(interp)].clone();
        interp.push(Value::I32(d.ident.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_clone(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let clone = d.punct[pop(interp)].clone();
        interp.push(Value::I32(d.punct.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_clone(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let clone = d.literal[pop(interp)].clone();
        interp.push(Value::I32(d.literal.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_iter_clone(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let clone = d.intoiter[pop(interp)].clone();
        interp.push(Value::I32(d.intoiter.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_to_string(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = d.tokenstream[pop(interp)].to_string();
        interp.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_to_string(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = d.group[pop(interp)].to_string();
        interp.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_to_string(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = d.ident[pop(interp)].to_string();
        interp.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_to_string(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = d.punct[pop(interp)].to_string();
        interp.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_to_string(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = d.literal[pop(interp)].to_string();
        interp.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_debug(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.tokenstream[pop(interp)]);
        interp.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_debug(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.group[pop(interp)]);
        interp.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_debug(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.ident[pop(interp)]);
        interp.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_debug(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.punct[pop(interp)]);
        interp.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_debug(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.literal[pop(interp)]);
        interp.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn span_debug(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.span[pop(interp)]);
        interp.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn watt_string_new(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let len = pop(interp) as usize;
        let ptr = pop(interp) as usize;
        let bytes = interp.get_memory_mut()[ptr..ptr + len].to_owned();
        let string = String::from_utf8(bytes).expect("non-utf8");
        interp.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn watt_string_len(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let string = &d.string[pop(interp)];
        interp.push(Value::I32(string.len() as u32));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn watt_string_read(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let ptr = pop(interp) as usize;
        let string = &d.string[pop(interp)];
        interp.get_memory_mut()[ptr..ptr + string.len()].copy_from_slice(string.as_bytes());
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn watt_bytes_new(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| {
        let len = pop(interp) as usize;
        let ptr = pop(interp) as usize;
        let bytes = interp.get_memory_mut()[ptr..ptr + len].to_owned();
        interp.push(Value::I32(d.bytes.push(bytes)));
        None
    })
}

// args: [Int(I32)]
// result: []
pub fn watt_print_panic(interp: &mut Interpreter) -> Option<String> {
    Data::with(|d| panic!("{}", d.string[pop(interp)]))
}

fn pop(interp: &mut Interpreter) -> u32 {
    match interp.pop() {
        Some(Value::I32(int)) => int,
        _ => unreachable!("unexpected Value type on interp"),
    }
}

fn pop64(interp: &mut Interpreter) -> u64 {
    match interp.pop() {
        Some(Value::I64(int)) => int,
        _ => unreachable!("unexpected Value type on interp"),
    }
}

fn popf(interp: &mut Interpreter) -> f32 {
    match interp.pop() {
        Some(Value::F32(float)) => float,
        _ => unreachable!("unexpected Value type on interp"),
    }
}

fn popf64(interp: &mut Interpreter) -> f64 {
    match interp.pop() {
        Some(Value::F64(float)) => float,
        _ => unreachable!("unexpected Value type on interp"),
    }
}
