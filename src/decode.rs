#![allow(clippy::identity_op)]

use crate::data::Data;
use proc_macro::{Delimiter, Group, Ident, Literal, Punct, Spacing, Span, TokenStream, TokenTree};
use std::char;
use std::str::{self, FromStr};

pub fn decode(mut bytes: &[u8], data: &Data) -> TokenStream {
    let ret = TokenStream::decode(&mut bytes, data);
    assert!(bytes.is_empty());
    ret
}

trait Decode {
    fn decode(bytes: &mut &[u8], data: &Data) -> Self;
}

fn byte(data: &mut &[u8]) -> u8 {
    let ret = data[0];
    *data = &data[1..];
    ret
}

fn str<'a>(bytes: &mut &'a [u8], data: &Data) -> &'a str {
    let len = u32::decode(bytes, data) as usize;
    let ret = str::from_utf8(&bytes[..len]).unwrap();
    *bytes = &bytes[len..];
    ret
}

impl Decode for TokenStream {
    fn decode(bytes: &mut &[u8], data: &Data) -> Self {
        let mut tts = Vec::new();
        loop {
            match byte(bytes) {
                0 => break,
                1 => tts.push(TokenTree::Group(Group::decode(bytes, data))),
                2 => tts.push(TokenTree::Ident(Ident::decode(bytes, data))),
                3 => tts.push(TokenTree::Punct(Punct::decode(bytes, data))),
                _ => tts.push(TokenTree::Literal(Literal::decode(bytes, data))),
            }
        }
        tts.into_iter().collect()
    }
}

impl Decode for Group {
    fn decode(bytes: &mut &[u8], data: &Data) -> Self {
        let delimiter = Delimiter::decode(bytes, data);
        let span = Span::decode(bytes, data);
        let stream = TokenStream::decode(bytes, data);
        let mut ret = Group::new(delimiter, stream);
        ret.set_span(span);
        ret
    }
}

impl Decode for Delimiter {
    fn decode(bytes: &mut &[u8], _data: &Data) -> Self {
        match byte(bytes) {
            0 => Delimiter::Parenthesis,
            1 => Delimiter::Brace,
            2 => Delimiter::Bracket,
            _ => Delimiter::None,
        }
    }
}

impl Decode for Span {
    fn decode(bytes: &mut &[u8], data: &Data) -> Self {
        let idx = u32::decode(bytes, data);
        if idx == u32::max_value() {
            Span::call_site()
        } else {
            data.span[idx]
        }
    }
}

impl Decode for u32 {
    fn decode(bytes: &mut &[u8], _data: &Data) -> Self {
        let ret = (u32::from(bytes[0]) << 0)
            | (u32::from(bytes[1]) << 8)
            | (u32::from(bytes[2]) << 16)
            | (u32::from(bytes[3]) << 24);
        *bytes = &bytes[4..];
        ret
    }
}

impl Decode for Ident {
    fn decode(bytes: &mut &[u8], data: &Data) -> Self {
        let span = Span::decode(bytes, data);
        let name = str(bytes, data);
        if name.starts_with("r#") {
            match name.parse::<TokenStream>().unwrap().into_iter().next() {
                Some(TokenTree::Ident(ident)) => ident,
                _ => unreachable!(),
            }
        } else {
            Ident::new(name, span)
        }
    }
}

impl Decode for Punct {
    fn decode(bytes: &mut &[u8], data: &Data) -> Self {
        let mut p = Punct::new(
            char::from_u32(u32::decode(bytes, data)).unwrap(),
            Spacing::decode(bytes, data),
        );
        p.set_span(Span::decode(bytes, data));
        p
    }
}

impl Decode for Spacing {
    fn decode(bytes: &mut &[u8], _data: &Data) -> Self {
        match byte(bytes) {
            0 => Spacing::Alone,
            _ => Spacing::Joint,
        }
    }
}

impl Decode for Literal {
    fn decode(bytes: &mut &[u8], data: &Data) -> Self {
        let span = Span::decode(bytes, data);
        if byte(bytes) == 0 {
            let text = str(bytes, data);
            let token = TokenStream::from_str(text)
                .unwrap()
                .into_iter()
                .next()
                .unwrap();
            let mut literal = match token {
                TokenTree::Literal(l) => l,
                _ => unreachable!(),
            };
            literal.set_span(span);
            literal
        } else {
            let mut literal = data.literal[u32::decode(bytes, data)].clone();
            literal.set_span(span);
            literal
        }
    }
}
