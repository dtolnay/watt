use std::ops::Bound;

use crate::{
    data::{Data, Handle},
    runtime::{
        func::{WasmArg, WasmRet},
        Value,
    },
};
use proc_macro::{Delimiter, Spacing, TokenTree};
#[cfg(feature = "nightly")]
use proc_macro::{Level, LineColumn};

impl WasmRet for Option<TokenTree> {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        let (tag, data): (u32, _) = Data::with(|d| match val {
            Some(TokenTree::Group(g)) => (0, d.group.push(g).id()),
            Some(TokenTree::Punct(p)) => (1, d.punct.push(p).id()),
            Some(TokenTree::Ident(i)) => (2, d.ident.push(i).id()),
            Some(TokenTree::Literal(l)) => (3, d.literal.push(l).id()),
            None => (4, 0),
        });

        let addr = interp.pop().unwrap();
        let addr = if let Value::I32(addr) = addr {
            addr
        } else {
            unreachable!()
        };
        let ret = &mut interp.get_memory_mut()[addr as usize..][..8];

        ret[0..4].copy_from_slice(&tag.to_le_bytes());
        ret[4..8].copy_from_slice(&data.to_le_bytes());
    }
}

impl WasmArg for TokenTree {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        Data::with(|d| {
            let handle = if let Value::I32(handle) = interp.pop().unwrap() {
                handle
            } else {
                unreachable!()
            };
            let tag = if let Value::I32(tag) = interp.pop().unwrap() {
                tag
            } else {
                unreachable!()
            };

            match tag {
                0 => TokenTree::Group(d.group.take(Handle::new(handle))),
                1 => TokenTree::Punct(d.punct.take(Handle::new(handle))),
                2 => TokenTree::Ident(d.ident[Handle::new(handle)].clone()),
                3 => TokenTree::Literal(d.literal.take(Handle::new(handle))),
                _ => unreachable!(),
            }
        })
    }
}

impl WasmRet for Spacing {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I32(val as u32))
    }
}

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

impl WasmArg for bool {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        interp.pop().unwrap() != Value::I32(0)
    }
}

impl WasmRet for bool {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I32(if val { 1 } else { 0 }))
    }
}

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

impl WasmRet for Delimiter {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        interp.push(Value::I32(val as u32))
    }
}

#[cfg(feature = "nightly")]
impl WasmRet for LineColumn {
    fn push(interp: &mut crate::runtime::Interpreter, val: Self) {
        let addr = interp.pop().unwrap();
        let addr = if let Value::I32(addr) = addr {
            addr
        } else {
            unreachable!()
        };
        let ret = &mut interp.get_memory_mut()[addr as usize..][..8];

        ret[0..4].copy_from_slice(&val.line.to_le_bytes());
        ret[4..8].copy_from_slice(&val.column.to_le_bytes());
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

impl WasmArg for Bound<usize> {
    fn pop(interp: &mut crate::runtime::Interpreter) -> Self {
        let value = if let Value::I32(n) = interp.pop().unwrap() {
            n
        } else {
            unreachable!()
        };
        let tag = if let Value::I32(n) = interp.pop().unwrap() {
            n
        } else {
            unreachable!()
        };

        match tag {
            0 => Bound::Included(value as usize),
            1 => Bound::Excluded(value as usize),
            2 => Bound::Unbounded,
            _ => unreachable!(),
        }
    }
}
