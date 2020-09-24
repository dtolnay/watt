use std::ops::Bound;

use crate::data::{Data, Handle};
use proc_macro::{Literal, Span};

pub fn clone_literal_handle(handle: Handle<Literal>) -> Handle<Literal> {
    Data::with(|d| {
        let cloned = d.literal[handle].clone();
        d.literal.push(cloned)
    })
}

pub fn drop_literal_handle(handle: Handle<Literal>) {
    Data::with(|d| {
        d.literal.take(handle);
    })
}

pub fn literal_debug_kind(_: Handle<Literal>) -> Handle<String> {
    unimplemented!();
}

pub fn literal_symbol(_: Handle<Literal>) -> Handle<String> {
    unimplemented!();
}

pub fn literal_suffix(_: Handle<Literal>) -> Option<Handle<String>> {
    unimplemented!();
}

pub fn literal_integer(s: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s);
        if let Ok(n) = s.parse() {
            d.literal.push(Literal::u128_unsuffixed(n))
        } else {
            let n = s.parse().unwrap();
            d.literal.push(Literal::i128_unsuffixed(n))
        }
    })
}

pub fn literal_typed_integer(s: Handle<String>, ty: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s);
        let ty = d.string.take(ty);
        d.literal.push(match &*ty {
            "u8" => Literal::u8_suffixed(s.parse().unwrap()),
            "u16" => Literal::u16_suffixed(s.parse().unwrap()),
            "u32" => Literal::u32_suffixed(s.parse().unwrap()),
            "u64" => Literal::u64_suffixed(s.parse().unwrap()),
            "u128" => Literal::u128_suffixed(s.parse().unwrap()),
            "usize" => Literal::usize_suffixed(s.parse().unwrap()),
            "i8" => Literal::i8_suffixed(s.parse().unwrap()),
            "i16" => Literal::i16_suffixed(s.parse().unwrap()),
            "i32" => Literal::i32_suffixed(s.parse().unwrap()),
            "i64" => Literal::i64_suffixed(s.parse().unwrap()),
            "i128" => Literal::i128_suffixed(s.parse().unwrap()),
            "isize" => Literal::isize_suffixed(s.parse().unwrap()),
            _ => unreachable!(),
        })
    })
}

pub fn literal_float(s: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s);
        let f = s.parse().unwrap();
        d.literal.push(Literal::f64_unsuffixed(f))
    })
}

pub fn literal_f32(s: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s);
        let f = s.parse().unwrap();
        d.literal.push(Literal::f32_suffixed(f))
    })
}

pub fn literal_f64(s: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s);
        let f = s.parse().unwrap();
        d.literal.push(Literal::f64_suffixed(f))
    })
}

pub fn literal_string(s: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s);
        d.literal.push(Literal::string(&s))
    })
}

pub fn literal_character(s: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s);
        d.literal
            .push(Literal::character(s.chars().next().unwrap()))
    })
}

pub fn literal_byte_string(s: Handle<Vec<u8>>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.bytes.take(s);
        d.literal.push(Literal::byte_string(&s))
    })
}

pub fn literal_span(handle: Handle<Literal>) -> Handle<Span> {
    Data::with(|d| {
        let literal = &d.literal[handle];
        d.span.push(literal.span())
    })
}

pub fn literal_set_span(handle: Handle<Literal>, span: Handle<Span>) {
    Data::with(|d| {
        let span = d.span[span];
        d.literal[handle].set_span(span);
    })
}

#[cfg(feature = "nightly")]
pub fn literal_subspan(
    handle: Handle<Literal>,
    start: Bound<usize>,
    end: Bound<usize>,
) -> Option<Handle<Span>> {
    Data::with(|d| {
        let literal = &d.literal[handle];
        literal.subspan((start, end)).map(|span| d.span.push(span))
    })
}

#[cfg(not(feature = "nightly"))]
pub fn literal_subspan(
    _: Handle<Literal>,
    _: Bound<usize>,
    _: Bound<usize>,
) -> Option<Handle<Span>> {
    unimplemented!()
}
