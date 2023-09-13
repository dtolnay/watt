use crate::data::Data;
use proc_macro::{Delimiter, Group, Ident, Literal, Punct, Spacing, Span, TokenStream, TokenTree};

pub fn encode(stream: TokenStream, data: &mut Data) -> Vec<u8> {
    let mut dst = Vec::new();
    stream.encode(&mut dst, data);
    dst
}

trait Encode {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data);
}

impl Encode for TokenStream {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        for token in self {
            token.encode(dst, data);
        }
        dst.push(0);
    }
}

impl Encode for TokenTree {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        match self {
            TokenTree::Group(g) => {
                dst.push(1);
                g.encode(dst, data);
            }
            TokenTree::Ident(i) => {
                dst.push(2);
                i.encode(dst, data);
            }
            TokenTree::Punct(p) => {
                dst.push(3);
                p.encode(dst, data);
            }
            TokenTree::Literal(l) => {
                dst.push(4);
                l.encode(dst, data);
            }
        }
    }
}

impl Encode for Group {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        self.delimiter().encode(dst, data);
        self.span().encode(dst, data);
        self.span_open().encode(dst, data);
        self.span_close().encode(dst, data);
        self.stream().encode(dst, data);
    }
}

impl Encode for Delimiter {
    fn encode(self, dst: &mut Vec<u8>, _data: &mut Data) {
        dst.push(match self {
            Delimiter::Parenthesis => 0,
            Delimiter::Brace => 1,
            Delimiter::Bracket => 2,
            Delimiter::None => 3,
        });
    }
}

impl Encode for Span {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        data.span.push(self).encode(dst, data);
    }
}

impl Encode for u32 {
    fn encode(self, dst: &mut Vec<u8>, _data: &mut Data) {
        dst.extend_from_slice(&self.to_le_bytes());
    }
}

impl Encode for usize {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        u32::try_from(self).unwrap().encode(dst, data);
    }
}

impl Encode for Ident {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        self.span().encode(dst, data);
        self.to_string().encode(dst, data);
    }
}

impl Encode for &str {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        self.len().encode(dst, data);
        dst.extend_from_slice(self.as_bytes());
    }
}

impl Encode for Punct {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        self.as_char().encode(dst, data);
        self.spacing().encode(dst, data);
        self.span().encode(dst, data);
    }
}

impl Encode for char {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        (self as u32).encode(dst, data);
    }
}

impl Encode for Spacing {
    fn encode(self, dst: &mut Vec<u8>, _data: &mut Data) {
        dst.push(match self {
            Spacing::Alone => 0,
            Spacing::Joint => 1,
        });
    }
}

impl Encode for Literal {
    fn encode(self, dst: &mut Vec<u8>, data: &mut Data) {
        self.span().encode(dst, data);
        dst.push(1);
        data.literal.push(self).encode(dst, data);
    }
}
