use proc_macro::{token_stream::IntoIter, Group, Ident, Literal, Punct, Span, TokenStream};
use std::{
    cell::RefCell,
    collections::HashMap,
    hash::{Hash, Hasher},
    marker::PhantomData,
    num::NonZeroU32,
    ops::{Index, IndexMut},
};

use crate::runtime::func::{WasmArg, WasmRet};

thread_local! {
    static DATA: RefCell<Data> = RefCell::new(Data::default());
}

#[derive(Default)]
pub struct Data {
    pub group: Collection<Group>,
    pub punct: Collection<Punct>,
    pub ident: Collection<Ident>,
    pub string: Collection<String>,
    pub bytes: Collection<Vec<u8>>,
    pub tokenstream: Collection<TokenStream>,
    pub token_stream_iter: Collection<IntoIter>,
    pub literal: Collection<Literal>,
    pub span: Collection<Span>,
}

impl Data {
    pub fn with<T>(op: impl FnOnce(&mut Self) -> T) -> T {
        DATA.with(|d| op(&mut d.borrow_mut()))
    }

    pub fn guard() -> impl Drop {
        struct Guard;

        impl Drop for Guard {
            fn drop(&mut self) {
                Data::with(|d| *d = Data::default());
            }
        }

        Guard
    }
}

pub struct Handle<T> {
    id: NonZeroU32,
    _marker: PhantomData<*const T>,
}

impl<T> Handle<T> {
    pub fn new(id: u32) -> Self {
        Handle {
            id: NonZeroU32::new(id).unwrap(),
            _marker: PhantomData,
        }
    }

    pub fn id(&self) -> u32 {
        self.id.into()
    }
}

impl<T> Clone for Handle<T> {
    fn clone(&self) -> Self {
        Handle {
            id: self.id,
            _marker: PhantomData,
        }
    }
}

impl<T> Copy for Handle<T> {}

impl<T> PartialEq for Handle<T> {
    fn eq(&self, other: &Self) -> bool {
        self.id == other.id
    }
}

impl<T> Eq for Handle<T> {}

impl<T> Hash for Handle<T> {
    fn hash<H: Hasher>(&self, state: &mut H) {
        self.id.hash(state)
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
        let id: u32 = val.id.into();
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
        let id: u32 = val.map(|val| val.id.into()).unwrap_or(0);
        WasmRet::push(interp, id)
    }
}

pub struct Collection<T> {
    cnt: Handle<T>,
    data: HashMap<Handle<T>, T>,
}

impl<T> Collection<T> {
    pub fn push(&mut self, value: T) -> Handle<T> {
        let id: u32 = self.cnt.id.into();
        self.cnt.id = NonZeroU32::new(id + 1).unwrap();
        let handle = self.cnt;

        self.data.insert(handle, value);
        handle
    }

    pub fn take(&mut self, handle: Handle<T>) -> Option<T> {
        self.data.remove(&handle)
    }
}

impl<T> Index<Handle<T>> for Collection<T> {
    type Output = T;

    fn index(&self, handle: Handle<T>) -> &Self::Output {
        &self.data[&handle]
    }
}

impl<T> IndexMut<Handle<T>> for Collection<T> {
    fn index_mut(&mut self, handle: Handle<T>) -> &mut Self::Output {
        self.data.get_mut(&handle).unwrap()
    }
}

impl<T> Default for Collection<T> {
    fn default() -> Self {
        Collection {
            cnt: Handle::new(1),
            data: HashMap::new(),
        }
    }
}
