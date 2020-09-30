#[cfg(feature = "proc-macro-server")]
use crate::data::Data;
use crate::{
    data::Handle,
    runtime::{wasm_val_t, ValType, WasmArg, WasmRet, WasmVal},
};
#[cfg(feature = "proc-macro-server")]
use proc_macro::{Delimiter, Spacing, TokenTree};
#[cfg(feature = "nightly")]
use proc_macro::{Level, LineColumn};
#[cfg(feature = "proc-macro-server")]
use std::ops::Bound;

unsafe impl<T> WasmVal for Handle<T> {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

unsafe impl<T> WasmArg for Handle<T> {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let id = (*ptr).of.i32 as u32;
        let handle = Handle::new(id);

        (handle, ptr.offset(1))
    }
}

unsafe impl<T> WasmRet for Handle<T> {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i32 = value.id() as i32;
    }
}

unsafe impl WasmVal for bool {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

unsafe impl WasmArg for bool {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        ((*ptr).of.i32 != 0, ptr.offset(1))
    }
}

unsafe impl WasmRet for bool {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i32 = if value { 1 } else { 0 };
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl<T> WasmVal for Option<Handle<T>> {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl<T> WasmArg for Option<Handle<T>> {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let id = (*ptr).of.i32 as u32;
        let handle = if id == 0 { None } else { Some(Handle::new(id)) };

        (handle, ptr.offset(1))
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl<T> WasmRet for Option<Handle<T>> {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i32 = value.as_ref().map(Handle::<T>::id).unwrap_or(0) as i32;
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmVal for Spacing {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmArg for Spacing {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let id = (*ptr).of.i32;
        let handle = if id == Spacing::Alone as i32 {
            Spacing::Alone
        } else if id == Spacing::Joint as i32 {
            Spacing::Joint
        } else {
            unreachable!()
        };

        (handle, ptr.offset(1))
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmRet for Spacing {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i32 = value as i32;
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmVal for Delimiter {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmArg for Delimiter {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let id = (*ptr).of.i32;
        let handle = if id == Delimiter::Parenthesis as i32 {
            Delimiter::Parenthesis
        } else if id == Delimiter::Brace as i32 {
            Delimiter::Brace
        } else if id == Delimiter::Bracket as i32 {
            Delimiter::Bracket
        } else if id == Delimiter::None as i32 {
            Delimiter::None
        } else {
            unreachable!()
        };

        (handle, ptr.offset(1))
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmRet for Delimiter {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i32 = value as i32;
    }
}

#[cfg(feature = "nightly")]
unsafe impl WasmVal for Level {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

#[cfg(feature = "nightly")]
unsafe impl WasmArg for Level {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let id = (*ptr).of.i32;
        let handle = if id == Level::Error as i32 {
            Level::Error
        } else if id == Level::Warning as i32 {
            Level::Warning
        } else if id == Level::Note as i32 {
            Level::Note
        } else if id == Level::Help as i32 {
            Level::Help
        } else {
            unreachable!()
        };

        (handle, ptr.offset(1))
    }
}

#[cfg(feature = "nightly")]
unsafe impl WasmRet for Level {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i32 = value as i32;
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmVal for Option<TokenTree> {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmArg for Option<TokenTree> {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let raw = (*ptr).of.i32 as u32;
        let tag = raw & 7;
        let id = raw >> 3;

        let val = Data::with(|d| match tag {
            0 => None,
            1 => Some(TokenTree::Group(d.group.take(Handle::new(id)))),
            2 => Some(TokenTree::Punct(d.punct[Handle::new(id)].clone())),
            3 => Some(TokenTree::Ident(d.ident[Handle::new(id)].clone())),
            4 => Some(TokenTree::Literal(d.literal.take(Handle::new(id)))),
            _ => unreachable!(),
        });

        (val, ptr.offset(1))
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmRet for Option<TokenTree> {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        let (tag, data): (u32, u32) = Data::with(|d| match value {
            Some(TokenTree::Group(g)) => (1, d.group.push(g).id()),
            Some(TokenTree::Punct(p)) => (2, d.punct.push(p).id()),
            Some(TokenTree::Ident(i)) => (3, d.ident.push(i).id()),
            Some(TokenTree::Literal(l)) => (4, d.literal.push(l).id()),
            None => (0, 0),
        });

        (*ptr).of.i32 = (data << 3 | tag) as i32;
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmVal for TokenTree {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmArg for TokenTree {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let (val, ptr) = <Option<TokenTree> as WasmArg>::from(ptr);
        (val.unwrap(), ptr)
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmRet for TokenTree {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        <Option<TokenTree> as WasmRet>::into(Some(value), ptr)
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmVal for Bound<usize> {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmArg for Bound<usize> {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let raw = (*ptr).of.i32 as u32;
        let tag = raw & 2;
        let value = raw >> 2;

        let value = match tag {
            0 => Bound::Included(value as usize),
            1 => Bound::Excluded(value as usize),
            2 => Bound::Unbounded,
            _ => unreachable!(),
        };

        (value, ptr.offset(1))
    }
}

#[cfg(feature = "proc-macro-server")]
unsafe impl WasmRet for Bound<usize> {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        let (tag, data) = match value {
            Bound::Included(val) => (0, val as u32),
            Bound::Excluded(val) => (1, val as u32),
            Bound::Unbounded => (2, 0),
        };

        (*ptr).of.i32 = ((data as u32) << 2 | tag) as i32;
    }
}

#[cfg(feature = "nightly")]
unsafe impl WasmVal for LineColumn {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i64());
    }
}

#[cfg(feature = "nightly")]
unsafe impl WasmArg for LineColumn {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let raw = (*ptr).of.i64 as u64;
        (
            LineColumn {
                line: (raw >> 32) as usize,
                column: (raw & 0xFFFF_FFFF) as usize,
            },
            ptr.offset(2),
        )
    }
}

#[cfg(feature = "nightly")]
unsafe impl WasmRet for LineColumn {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i64 = ((value.line as u64) << 32 | (value.column as u64)) as i64;
    }
}
