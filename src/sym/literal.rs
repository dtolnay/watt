use crate::data::{Data, Handle};
use proc_macro::Literal;

pub fn clone_literal_handle(_: Handle<Literal>) -> Handle<Literal> {
    todo!()
}

pub fn drop_literal_handle(_: Handle<Literal>) {
    todo!()
}

pub fn literal_string(s: Handle<String>) -> Handle<Literal> {
    Data::with(|d| {
        let s = d.string.take(s).unwrap();
        d.literal.push(Literal::string(&s))
    })
}
