#[cfg(feature = "proc-macro-server")]
use crate::data::Data;
use crate::{
    data::Handle,
    runtime::{
        func::{WasmArg, WasmRet},
        Value,
    },
};
#[cfg(feature = "proc-macro-server")]
use proc_macro::{Delimiter, Spacing, TokenTree};
#[cfg(feature = "nightly")]
use proc_macro::{Level, LineColumn};
use std::num::NonZeroU32;
#[cfg(feature = "proc-macro-server")]
use std::ops::Bound;

#[cfg(feature = "proc-macro-server")]
impl WasmRet for Option<TokenTree> {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        let (tag, data): (u32, u32) = Data::with(|d| match val {
            Some(TokenTree::Group(g)) => (1, d.group.push(g).id()),
            Some(TokenTree::Punct(p)) => (2, d.punct.push(p).id()),
            Some(TokenTree::Ident(i)) => (3, d.ident.push(i).id()),
            Some(TokenTree::Literal(l)) => (4, d.literal.push(l).id()),
            None => (0, 0),
        });

        interp.push(Value::I32(data << 3 | tag));
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmArg for TokenTree {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        Data::with(|d| {
            let raw = if let Value::I32(raw) = interp.pop().unwrap() {
                raw
            } else {
                unreachable!()
            };
            let handle = raw >> 3;
            let tag = raw & 7;

            match tag {
                1 => TokenTree::Group(d.group.take(Handle::new(handle))),
                2 => TokenTree::Punct(d.punct[Handle::new(handle)].clone()),
                3 => TokenTree::Ident(d.ident[Handle::new(handle)].clone()),
                4 => TokenTree::Literal(d.literal.take(Handle::new(handle))),
                _ => unreachable!(),
            }
        })
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmRet for Spacing {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I32(val as u32))
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmArg for Spacing {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        let val = interp.pop().unwrap();
        if let Value::I32(val) = val {
            if val == Spacing::Alone as u32 {
                Spacing::Alone
            } else if val == Spacing::Joint as u32 {
                Spacing::Joint
            } else {
                unreachable!()
            }
        } else {
            unreachable!()
        }
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmArg for bool {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        interp.pop().unwrap() != Value::I32(0)
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmRet for bool {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I32(if val { 1 } else { 0 }))
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmArg for Delimiter {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        let val = interp.pop().unwrap();
        if let Value::I32(val) = val {
            if val == Delimiter::Parenthesis as u32 {
                Delimiter::Parenthesis
            } else if val == Delimiter::Brace as u32 {
                Delimiter::Brace
            } else if val == Delimiter::Bracket as u32 {
                Delimiter::Bracket
            } else if val == Delimiter::None as u32 {
                Delimiter::None
            } else {
                unreachable!()
            }
        } else {
            unreachable!()
        }
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmRet for Delimiter {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I32(val as u32))
    }
}

#[cfg(feature = "nightly")]
impl WasmRet for LineColumn {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I64(((val.line as u64) << 32) | (val.column as u64)));
    }
}

#[cfg(feature = "nightly")]
impl WasmArg for Level {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        let val = interp.pop().unwrap();
        if let Value::I32(val) = val {
            if val == Level::Error as u32 {
                Level::Error
            } else if val == Level::Warning as u32 {
                Level::Warning
            } else if val == Level::Note as u32 {
                Level::Note
            } else if val == Level::Help as u32 {
                Level::Help
            } else {
                unreachable!()
            }
        } else {
            unreachable!()
        }
    }
}

#[cfg(feature = "proc-macro-server")]
impl WasmArg for Bound<usize> {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        let raw = if let Value::I32(raw) = interp.pop().unwrap() {
            raw
        } else {
            unreachable!()
        };

        let tag = raw & 3;
        let value = raw >> 2;

        match tag {
            0 => Bound::Included(value as usize),
            1 => Bound::Excluded(value as usize),
            2 => Bound::Unbounded,
            _ => unreachable!(),
        }
    }
}

impl<T> WasmArg for Handle<T> {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        let id: u32 = WasmArg::pop(interp);
        Handle::new(id)
    }
}

impl<T> WasmRet for Handle<T> {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        let id: u32 = val.id();
        WasmRet::push(interp, id)
    }
}

impl<T> WasmArg for Option<Handle<T>> {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        let id: u32 = WasmArg::pop(interp);
        NonZeroU32::new(id).map(Into::into).map(Handle::<T>::new)
    }
}

impl<T> WasmRet for Option<Handle<T>> {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        let id: u32 = val.map(|val| val.id()).unwrap_or(0);
        WasmRet::push(interp, id)
    }
}

impl WasmRet for u64 {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I64(val))
    }
}
