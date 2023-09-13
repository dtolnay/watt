use crate::{
    Delimiter, Group, Ident, Literal, LiteralKind, Punct, Spacing, Span, TokenStream, TokenTree,
};

pub fn encode(stream: TokenStream) -> Vec<u8> {
    let mut dst = Vec::new();
    stream.encode(&mut dst);
    dst
}

trait Encode {
    fn encode(self, dst: &mut Vec<u8>);
}

impl Encode for TokenStream {
    fn encode(self, dst: &mut Vec<u8>) {
        for token in self {
            token.encode(dst);
        }
        dst.push(0);
    }
}

impl Encode for TokenTree {
    fn encode(self, dst: &mut Vec<u8>) {
        match self {
            TokenTree::Group(g) => {
                dst.push(1);
                g.encode(dst);
            }
            TokenTree::Ident(i) => {
                dst.push(2);
                i.encode(dst);
            }
            TokenTree::Punct(p) => {
                dst.push(3);
                p.encode(dst);
            }
            TokenTree::Literal(l) => {
                dst.push(4);
                l.encode(dst);
            }
        }
    }
}

impl Encode for Group {
    fn encode(self, dst: &mut Vec<u8>) {
        self.delimiter().encode(dst);
        self.span().encode(dst);
        self.stream().encode(dst);
    }
}

impl Encode for Delimiter {
    fn encode(self, dst: &mut Vec<u8>) {
        dst.push(match self {
            Delimiter::Parenthesis => 0,
            Delimiter::Brace => 1,
            Delimiter::Bracket => 2,
            Delimiter::None => 3,
        });
    }
}

impl Encode for Span {
    fn encode(self, dst: &mut Vec<u8>) {
        self.handle.encode(dst);
    }
}

impl Encode for u32 {
    fn encode(self, dst: &mut Vec<u8>) {
        dst.extend_from_slice(&self.to_le_bytes());
    }
}

impl Encode for usize {
    fn encode(self, dst: &mut Vec<u8>) {
        u32::try_from(self).unwrap().encode(dst);
    }
}

impl Encode for Ident {
    fn encode(self, dst: &mut Vec<u8>) {
        self.span().encode(dst);
        if self.raw {
            (self.sym.len() + 2).encode(dst);
            dst.extend_from_slice(b"r#");
            dst.extend_from_slice(self.sym.as_bytes());
        } else {
            self.sym.encode(dst);
        }
    }
}

impl Encode for &str {
    fn encode(self, dst: &mut Vec<u8>) {
        self.len().encode(dst);
        dst.extend_from_slice(self.as_bytes());
    }
}

impl Encode for Punct {
    fn encode(self, dst: &mut Vec<u8>) {
        self.as_char().encode(dst);
        self.spacing().encode(dst);
        self.span().encode(dst);
    }
}

impl Encode for char {
    fn encode(self, dst: &mut Vec<u8>) {
        (self as u32).encode(dst);
    }
}

impl Encode for Spacing {
    fn encode(self, dst: &mut Vec<u8>) {
        dst.push(match self {
            Spacing::Alone => 0,
            Spacing::Joint => 1,
        });
    }
}

impl Encode for Literal {
    fn encode(self, dst: &mut Vec<u8>) {
        self.span().encode(dst);
        match &self.kind {
            LiteralKind::Local(s) => {
                dst.push(0);
                s.encode(dst);
            }
            LiteralKind::Watt(h) => {
                dst.push(1);
                h.0.encode(dst);
            }
        }
    }
}
