use crate::data::Data;
use crate::watt::Value;
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
pub fn token_stream_new(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let stream = d.tokenstream.push(TokenStream::new());
        stack.push(Value::I32(stream));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_is_empty(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let stream = &d.tokenstream[pop(stack)];
        let is_empty = stream.is_empty();
        stack.push(Value::I32(is_empty as u32));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_str(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = &d.string[pop(stack)];
        let result = TokenStream::from_str(string);
        stack.push(Value::I32(match result {
            Ok(stream) => d.tokenstream.push(stream),
            Err(_error) => SENTINEL,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_into_iter(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let stream = &d.tokenstream[pop(stack)];
        let iter = stream.clone().into_iter();
        stack.push(Value::I32(d.intoiter.push(iter)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_iter_next(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let iter = &mut d.intoiter[pop(stack)];
        stack.push(Value::I32(match iter.next() {
            Some(token) => d.tokentree.push(token),
            None => SENTINEL,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_group(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(stack)];
        let tree = TokenTree::Group(group.clone());
        stack.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_ident(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let ident = &d.ident[pop(stack)];
        let tree = TokenTree::Ident(ident.clone());
        stack.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_punct(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(stack)];
        let tree = TokenTree::Punct(punct.clone());
        stack.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_from_literal(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let literal = &d.literal[pop(stack)];
        let tree = TokenTree::Literal(literal.clone());
        stack.push(Value::I32(d.tokenstream.push(TokenStream::from(tree))));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_group(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(stack)];
        let stream = &mut d.tokenstream[pop(stack)];
        stream.extend(once(TokenTree::Group(group.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_ident(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let ident = &d.ident[pop(stack)];
        let stream = &mut d.tokenstream[pop(stack)];
        stream.extend(once(TokenTree::Ident(ident.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_punct(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(stack)];
        let stream = &mut d.tokenstream[pop(stack)];
        stream.extend(once(TokenTree::Punct(punct.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_push_literal(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let literal = &d.literal[pop(stack)];
        let stream = &mut d.tokenstream[pop(stack)];
        stream.extend(once(TokenTree::Literal(literal.clone())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn token_stream_extend(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let next = d.tokenstream[pop(stack)].clone();
        let stream = &mut d.tokenstream[pop(stack)];
        stream.extend(next);
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_kind(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(stack)];
        stack.push(Value::I32(match token {
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
pub fn token_tree_unwrap_group(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(stack)];
        let group = match token {
            TokenTree::Group(group) => group,
            _ => unreachable!(),
        };
        stack.push(Value::I32(d.group.push(group.clone())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_unwrap_ident(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(stack)];
        let ident = match token {
            TokenTree::Ident(ident) => ident,
            _ => unreachable!(),
        };
        stack.push(Value::I32(d.ident.push(ident.clone())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_unwrap_punct(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(stack)];
        let punct = match token {
            TokenTree::Punct(punct) => punct,
            _ => unreachable!(),
        };
        stack.push(Value::I32(d.punct.push(punct.clone())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_tree_unwrap_literal(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let token = &d.tokentree[pop(stack)];
        let literal = match token {
            TokenTree::Literal(literal) => literal,
            _ => unreachable!(),
        };
        stack.push(Value::I32(d.literal.push(literal.clone())));
        None
    })
}

// args: []
// result: [Int(I32)]
pub fn span_call_site(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        stack.push(Value::I32(d.span.push(Span::call_site())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn group_new(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let stream = &d.tokenstream[pop(stack)];
        let delimiter = pop(stack);
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
        stack.push(Value::I32(d.group.push(group)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_delimiter(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(stack)];
        stack.push(Value::I32(match group.delimiter() {
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
pub fn group_stream(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(stack)];
        stack.push(Value::I32(d.tokenstream.push(group.stream())));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let group = &d.group[pop(stack)];
        stack.push(Value::I32(d.span.push(group.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn group_set_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(stack)];
        let group = &mut d.group[pop(stack)];
        group.set_span(span);
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn punct_new(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let spacing = pop(stack);
        let op = pop(stack);
        let spacing = if spacing == SPACING_ALONE {
            Spacing::Alone
        } else if spacing == SPACING_JOINT {
            Spacing::Joint
        } else {
            unreachable!()
        };
        let op = char::from_u32(op).unwrap();
        stack.push(Value::I32(d.punct.push(Punct::new(op, spacing))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_as_char(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(stack)];
        stack.push(Value::I32(punct.as_char() as u32));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_spacing(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(stack)];
        stack.push(Value::I32(match punct.spacing() {
            Spacing::Alone => SPACING_ALONE,
            Spacing::Joint => SPACING_JOINT,
        }));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let punct = &d.punct[pop(stack)];
        stack.push(Value::I32(d.span.push(punct.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn punct_set_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(stack)];
        let punct = &mut d.punct[pop(stack)];
        punct.set_span(span);
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_new(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(stack)];
        let string = &d.string[pop(stack)];
        stack.push(Value::I32(d.ident.push(Ident::new(string, span))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let ident = &d.ident[pop(stack)];
        stack.push(Value::I32(d.span.push(ident.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn ident_set_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(stack)];
        let ident = &mut d.ident[pop(stack)];
        ident.set_span(span);
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_eq(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let other = &d.ident[pop(stack)];
        let ident = &d.ident[pop(stack)];
        let eq = ident.to_string() == other.to_string();
        stack.push(Value::I32(eq as u32));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_eq_str(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let other = &d.string[pop(stack)];
        let ident = &d.ident[pop(stack)];
        let eq = ident.to_string() == *other;
        stack.push(Value::I32(eq as u32));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn ident_cmp(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let other = &d.ident[pop(stack)];
        let ident = &d.ident[pop(stack)];
        let cmp = match ident.to_string().cmp(&other.to_string()) {
            Ordering::Less => ORDERING_LESS,
            Ordering::Equal => ORDERING_EQUAL,
            Ordering::Greater => ORDERING_GREATER,
        };
        stack.push(Value::I32(cmp));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u8_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as u8;
        stack.push(Value::I32(d.literal.push(Literal::u8_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u16_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as u16;
        stack.push(Value::I32(d.literal.push(Literal::u16_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u32_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack);
        stack.push(Value::I32(d.literal.push(Literal::u32_suffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_u64_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop64(stack);
        stack.push(Value::I32(d.literal.push(Literal::u64_suffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_u128_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(stack);
        let lo = pop64(stack);
        let n = ((hi as u128) << 64) + lo as u128;
        stack.push(Value::I32(d.literal.push(Literal::u128_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_usize_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as usize;
        stack.push(Value::I32(d.literal.push(Literal::usize_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i8_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as i8;
        stack.push(Value::I32(d.literal.push(Literal::i8_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i16_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as i16;
        stack.push(Value::I32(d.literal.push(Literal::i16_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i32_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as i32;
        stack.push(Value::I32(d.literal.push(Literal::i32_suffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_i64_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop64(stack) as i64;
        stack.push(Value::I32(d.literal.push(Literal::i64_suffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_i128_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(stack);
        let lo = pop64(stack);
        let n = (((hi as u128) << 64) + lo as u128) as i128;
        stack.push(Value::I32(d.literal.push(Literal::i128_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_isize_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as isize;
        stack.push(Value::I32(d.literal.push(Literal::isize_suffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u8_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as u8;
        stack.push(Value::I32(d.literal.push(Literal::u8_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u16_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as u16;
        stack.push(Value::I32(d.literal.push(Literal::u16_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_u32_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack);
        stack.push(Value::I32(d.literal.push(Literal::u32_unsuffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_u64_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop64(stack);
        stack.push(Value::I32(d.literal.push(Literal::u64_unsuffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_u128_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(stack);
        let lo = pop64(stack);
        let n = ((hi as u128) << 64) + lo as u128;
        stack.push(Value::I32(d.literal.push(Literal::u128_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_usize_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as usize;
        stack.push(Value::I32(d.literal.push(Literal::usize_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i8_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as i8;
        stack.push(Value::I32(d.literal.push(Literal::i8_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i16_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as i16;
        stack.push(Value::I32(d.literal.push(Literal::i16_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_i32_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as i32;
        stack.push(Value::I32(d.literal.push(Literal::i32_unsuffixed(n))));
        None
    })
}

// args: [Int(I64)]
// result: [Int(I32)]
pub fn literal_i64_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop64(stack) as i64;
        stack.push(Value::I32(d.literal.push(Literal::i64_unsuffixed(n))));
        None
    })
}

// args: [Int(I64), Int(I64)]
// result: [Int(I32)]
pub fn literal_i128_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let hi = pop64(stack);
        let lo = pop64(stack);
        let n = (((hi as u128) << 64) + lo as u128) as i128;
        stack.push(Value::I32(d.literal.push(Literal::i128_unsuffixed(n))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_isize_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let n = pop(stack) as isize;
        stack.push(Value::I32(d.literal.push(Literal::isize_unsuffixed(n))));
        None
    })
}

// args: [Int(F64)]
// result: [Int(I32)]
pub fn literal_f64_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let f = popf64(stack);
        stack.push(Value::I32(d.literal.push(Literal::f64_unsuffixed(f))));
        None
    })
}

// args: [Int(F64)]
// result: [Int(I32)]
pub fn literal_f64_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let f = popf64(stack);
        stack.push(Value::I32(d.literal.push(Literal::f64_suffixed(f))));
        None
    })
}

// args: [Int(F32)]
// result: [Int(I32)]
pub fn literal_f32_unsuffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let f = popf(stack);
        stack.push(Value::I32(d.literal.push(Literal::f32_unsuffixed(f))));
        None
    })
}

// args: [Int(F32)]
// result: [Int(I32)]
pub fn literal_f32_suffixed(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let f = popf(stack);
        stack.push(Value::I32(d.literal.push(Literal::f32_suffixed(f))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_string(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = &d.string[pop(stack)];
        stack.push(Value::I32(d.literal.push(Literal::string(string))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_character(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let ch = char::from_u32(pop(stack)).unwrap();
        stack.push(Value::I32(d.literal.push(Literal::character(ch))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_byte_string(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let bytes = &d.bytes[pop(stack)];
        stack.push(Value::I32(d.literal.push(Literal::byte_string(bytes))));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let literal = &d.literal[pop(stack)];
        stack.push(Value::I32(d.span.push(literal.span())));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn literal_set_span(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let span = d.span[pop(stack)];
        let literal = &mut d.literal[pop(stack)];
        literal.set_span(span);
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_clone(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let clone = d.tokenstream[pop(stack)].clone();
        stack.push(Value::I32(d.tokenstream.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_clone(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let clone = d.group[pop(stack)].clone();
        stack.push(Value::I32(d.group.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_clone(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let clone = d.ident[pop(stack)].clone();
        stack.push(Value::I32(d.ident.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_clone(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let clone = d.punct[pop(stack)].clone();
        stack.push(Value::I32(d.punct.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_clone(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let clone = d.literal[pop(stack)].clone();
        stack.push(Value::I32(d.literal.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_iter_clone(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let clone = d.intoiter[pop(stack)].clone();
        stack.push(Value::I32(d.intoiter.push(clone)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_to_string(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = d.tokenstream[pop(stack)].to_string();
        stack.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_to_string(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = d.group[pop(stack)].to_string();
        stack.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_to_string(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = d.ident[pop(stack)].to_string();
        stack.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_to_string(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = d.punct[pop(stack)].to_string();
        stack.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_to_string(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = d.literal[pop(stack)].to_string();
        stack.push(Value::I32(d.string.push(string)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn token_stream_debug(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.tokenstream[pop(stack)]);
        stack.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn group_debug(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.group[pop(stack)]);
        stack.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn ident_debug(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.ident[pop(stack)]);
        stack.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn punct_debug(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.punct[pop(stack)]);
        stack.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn literal_debug(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.literal[pop(stack)]);
        stack.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn span_debug(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let debug = format!("{:?}", d.span[pop(stack)]);
        stack.push(Value::I32(d.string.push(debug)));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn watt_string_with_capacity(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let cap = pop(stack) as usize;
        let string = d.string.push(String::with_capacity(cap));
        stack.push(Value::I32(string));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn watt_string_push_char(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let ch = pop(stack);
        let string = &mut d.string[pop(stack)];
        string.push(char::from_u32(ch).unwrap());
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn watt_string_len(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let string = &d.string[pop(stack)];
        stack.push(Value::I32(string.len() as u32));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: [Int(I32)]
pub fn watt_string_char_at(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let pos = pop(stack) as usize;
        let string = &d.string[pop(stack)];
        let ch = string[pos..].chars().next().unwrap() as u32;
        stack.push(Value::I32(ch));
        None
    })
}

// args: [Int(I32)]
// result: [Int(I32)]
pub fn watt_bytes_with_capacity(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let cap = pop(stack) as usize;
        let string = d.bytes.push(Vec::with_capacity(cap));
        stack.push(Value::I32(string));
        None
    })
}

// args: [Int(I32), Int(I32)]
// result: []
pub fn watt_bytes_push(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| {
        let b = pop(stack) as u8;
        let bytes = &mut d.bytes[pop(stack)];
        bytes.push(b);
        None
    })
}

// args: [Int(I32)]
// result: []
pub fn watt_print_panic(stack: &mut Vec<Value>) -> Option<String> {
    Data::with(|d| panic!("{}", d.string[pop(stack)]))
}

fn pop(stack: &mut Vec<Value>) -> u32 {
    match stack.pop() {
        Some(Value::I32(int)) => int,
        _ => unreachable!("unexpected Value type on stack"),
    }
}

fn pop64(stack: &mut Vec<Value>) -> u64 {
    match stack.pop() {
        Some(Value::I64(int)) => int,
        _ => unreachable!("unexpected Value type on stack"),
    }
}

fn popf(stack: &mut Vec<Value>) -> f32 {
    match stack.pop() {
        Some(Value::F32(float)) => float,
        _ => unreachable!("unexpected Value type on stack"),
    }
}

fn popf64(stack: &mut Vec<Value>) -> f64 {
    match stack.pop() {
        Some(Value::F64(float)) => float,
        _ => unreachable!("unexpected Value type on stack"),
    }
}
