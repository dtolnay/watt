use super::*;
use std::str;

pub fn decode(mut buf: &[u8]) -> TokenStream {
    let ret = TokenStream::decode(&mut buf);
    assert!(buf.is_empty());
    ret
}

trait Decode {
    fn decode(data: &mut &[u8]) -> Self;
}

fn byte(data: &mut &[u8]) -> u8 {
    let ret = data[0];
    *data = &data[1..];
    ret
}

fn str<'a>(data: &mut &'a [u8]) -> &'a str {
    let len = u32::decode(data) as usize;
    let ret = str::from_utf8(&data[..len]).unwrap();
    *data = &data[len..];
    ret
}

impl Decode for TokenStream {
    fn decode(data: &mut &[u8]) -> Self {
        let mut tokens = Vec::new();
        loop {
            match byte(data) {
                0 => break,
                1 => tokens.push(TokenTree::Group(Group::decode(data))),
                2 => tokens.push(TokenTree::Ident(Ident::decode(data))),
                3 => tokens.push(TokenTree::Punct(Punct::decode(data))),
                _ => tokens.push(TokenTree::Literal(Literal::decode(data))),
            }
        }
        TokenStream {
            inner: Rc::new(tokens),
        }
    }
}

impl Decode for Group {
    fn decode(data: &mut &[u8]) -> Self {
        let delimiter = Delimiter::decode(data);
        let span = Span::decode(data);
        let stream = TokenStream::decode(data);
        let mut ret = Group::new(delimiter, stream);
        ret.set_span(span);
        ret
    }
}

impl Decode for Delimiter {
    fn decode(data: &mut &[u8]) -> Self {
        match byte(data) {
            0 => Delimiter::Parenthesis,
            1 => Delimiter::Brace,
            2 => Delimiter::Bracket,
            _ => Delimiter::None,
        }
    }
}

impl Decode for Span {
    fn decode(data: &mut &[u8]) -> Self {
        Span {
            handle: u32::decode(data),
        }
    }
}

impl Decode for u32 {
    fn decode(data: &mut &[u8]) -> Self {
        let ret = ((data[0] as u32) << 0)
            | ((data[1] as u32) << 8)
            | ((data[2] as u32) << 16)
            | ((data[3] as u32) << 24);
        *data = &data[4..];
        ret
    }
}

impl Decode for Ident {
    fn decode(data: &mut &[u8]) -> Self {
        let span = Span::decode(data);
        let name = str(data);
        Ident::new(name, span)
    }
}

impl Decode for Punct {
    fn decode(data: &mut &[u8]) -> Self {
        let mut p = Punct::new(
            char::from_u32(u32::decode(data)).unwrap(),
            Spacing::decode(data),
        );
        p.set_span(Span::decode(data));
        p
    }
}

impl Decode for Spacing {
    fn decode(data: &mut &[u8]) -> Self {
        match byte(data) {
            0 => Spacing::Alone,
            _ => Spacing::Joint,
        }
    }
}

impl Decode for Literal {
    fn decode(data: &mut &[u8]) -> Self {
        Literal {
            span: Span::decode(data),
            kind: match byte(data) {
                0 => LiteralKind::Local(super::intern(str(data))),
                _ => LiteralKind::Watt(handle::Literal(u32::decode(data))),
            },
        }
    }
}
