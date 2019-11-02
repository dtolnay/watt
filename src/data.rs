use proc_macro::{Literal, Span, TokenStream};
use std::cell::RefCell;
use std::ops::{Index, IndexMut};

thread_local! {
    static DATA: RefCell<Data> = RefCell::new(Data::default());
}

#[derive(Default)]
pub struct Data {
    pub string: Collection<String>,
    pub bytes: Collection<Vec<u8>>,
    pub tokenstream: Collection<TokenStream>,
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

pub struct Collection<T> {
    vec: Vec<T>,
}

pub type Handle = u32;

impl<T> Collection<T> {
    pub fn push(&mut self, value: T) -> Handle {
        let handle = self.vec.len();
        self.vec.push(value);
        handle as Handle
    }
}

impl<T> Index<Handle> for Collection<T> {
    type Output = T;

    fn index(&self, handle: Handle) -> &Self::Output {
        &self.vec[handle as usize]
    }
}

impl<T> IndexMut<Handle> for Collection<T> {
    fn index_mut(&mut self, handle: Handle) -> &mut Self::Output {
        &mut self.vec[handle as usize]
    }
}

impl<T> Default for Collection<T> {
    fn default() -> Self {
        Collection { vec: Vec::new() }
    }
}
