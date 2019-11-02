use crate::rc::Rc;
use std::iter;
use std::mem;
use std::vec;

use crate::{Delimiter, Group, Ident, Literal, Punct, Spacing, Span, TokenStream, TokenTree};
use rustc_lexer::{first_token, TokenKind};

fn tokenize(mut input: &str) -> impl Iterator<Item = (TokenKind, &str)> + '_ {
    iter::from_fn(move || {
        if input.is_empty() {
            return None;
        }

        let token = first_token(input);
        let text = &input[..token.len];
        input = &input[token.len..];
        Some((token.kind, text))
    })
}

fn doc_attr(tts: &mut Vec<TokenTree>, doc: &str, inner: bool) {
    tts.push(TokenTree::Punct(Punct::new('#', Spacing::Alone)));
    if inner {
        tts.push(TokenTree::Punct(Punct::new('!', Spacing::Alone)));
    }
    tts.push(TokenTree::Group(Group {
        delimiter: Delimiter::Brace,
        stream: TokenStream {
            inner: Rc::new(vec![
                TokenTree::Ident(Ident::new("doc", Span::call_site())),
                TokenTree::Punct(Punct::new('=', Spacing::Alone)),
                TokenTree::Literal(Literal::string(doc)),
            ]),
        },
        span: Span::call_site(),
    }))
}

pub fn lex(src: &str) -> Result<TokenStream, ()> {
    let mut stack = Vec::new();
    let mut active = Vec::new();

    let mut iter = tokenize(src).peekable();
    while let Some((kind, text)) = iter.next() {
        match kind {
            TokenKind::Whitespace => {}

            TokenKind::LineComment => {
                if text.starts_with("//!") {
                    doc_attr(&mut active, &text[3..], true);
                } else if text.starts_with("///") && !text.starts_with("////") {
                    doc_attr(&mut active, &text[3..], false);
                }
            }
            TokenKind::BlockComment { terminated: false } => return Err(()),
            TokenKind::BlockComment { terminated: true } => {
                // FIXME: This is wrong, but is good-enough for now. We don't
                // appear to handle block doc-comments correctly in any fallback
                // implementations, so this is about as correct as proc-macro2.
                if text.starts_with("/*!") {
                    doc_attr(&mut active, &text[3..text.len() - 2], true);
                } else if text.starts_with("/**") {
                    doc_attr(&mut active, &text[3..text.len() - 2], false);
                }
            }

            TokenKind::OpenParen | TokenKind::OpenBrace | TokenKind::OpenBracket => {
                let delimiter = match kind {
                    TokenKind::OpenParen => Delimiter::Parenthesis,
                    TokenKind::OpenBrace => Delimiter::Brace,
                    TokenKind::OpenBracket => Delimiter::Bracket,
                    _ => unreachable!(),
                };
                let parent = mem::replace(&mut active, Vec::new());
                stack.push((delimiter, parent));
            }

            TokenKind::CloseParen | TokenKind::CloseBrace | TokenKind::CloseBracket => {
                let expected = match kind {
                    TokenKind::CloseParen => Delimiter::Parenthesis,
                    TokenKind::CloseBrace => Delimiter::Brace,
                    TokenKind::CloseBracket => Delimiter::Bracket,
                    _ => unreachable!(),
                };
                let (delimiter, parent) = stack.pop().ok_or(())?;
                if delimiter != expected {
                    return Err(());
                }

                let body = mem::replace(&mut active, parent);
                active.push(
                    Group {
                        delimiter,
                        stream: TokenStream {
                            inner: Rc::new(body),
                        },
                        span: Span::call_site(),
                    }
                    .into(),
                );
            }

            TokenKind::Ident => {
                active.push(Ident::new(text, Span::call_site()).into());
            }
            TokenKind::RawIdent => {
                active.push(Ident::_new(&text[2..], true, Span::call_site()).into());
            }
            TokenKind::Literal { .. } => {
                active.push(Literal::_new(text).into());
            }
            TokenKind::Lifetime { .. } => {
                active.push(Punct::new('\'', Spacing::Joint).into());
                active.push(Ident::new(&text[1..], Span::call_site()).into());
            }

            TokenKind::Semi
            | TokenKind::Comma
            | TokenKind::Dot
            | TokenKind::At
            | TokenKind::Pound
            | TokenKind::Tilde
            | TokenKind::Question
            | TokenKind::Colon
            | TokenKind::Dollar
            | TokenKind::Eq
            | TokenKind::Not
            | TokenKind::Lt
            | TokenKind::Gt
            | TokenKind::Minus
            | TokenKind::And
            | TokenKind::Or
            | TokenKind::Plus
            | TokenKind::Star
            | TokenKind::Slash
            | TokenKind::Caret
            | TokenKind::Percent => {
                let peek = iter.peek().map(|t| t.0).unwrap_or(TokenKind::Unknown);
                let spacing = match peek {
                    TokenKind::Semi
                    | TokenKind::Comma
                    | TokenKind::Dot
                    | TokenKind::At
                    | TokenKind::Pound
                    | TokenKind::Tilde
                    | TokenKind::Question
                    | TokenKind::Colon
                    | TokenKind::Dollar
                    | TokenKind::Eq
                    | TokenKind::Not
                    | TokenKind::Lt
                    | TokenKind::Gt
                    | TokenKind::Minus
                    | TokenKind::And
                    | TokenKind::Or
                    | TokenKind::Plus
                    | TokenKind::Star
                    | TokenKind::Slash
                    | TokenKind::Caret
                    | TokenKind::Percent => Spacing::Joint,
                    _ => Spacing::Alone,
                };

                let ch = text.chars().next().unwrap();
                active.push(Punct::new(ch, spacing).into());
            }

            TokenKind::Unknown => return Err(()),
        }
    }

    if !stack.is_empty() {
        return Err(());
    }

    Ok(TokenStream {
        inner: Rc::new(active),
    })
}
