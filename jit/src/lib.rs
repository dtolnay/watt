//! Experimental support to use a JIT to load/run wasm files
//!
//! This is heavily under-documented and not fully fleshed out. This is demo
//! quality and is meant to get things up and running, this is turned off by
//! default. Expect breakage if you use this!
//!
//! This currently requires a dynamic library which implements the proposed wasm
//! C API [1] and is currently hooked up by default to `libwasmtime_api.so`.
//!
//! [1]: https://github.com/WebAssembly/wasm-c-api

#![allow(
    clippy::cast_possible_wrap,
    clippy::cast_sign_loss,
    clippy::items_after_statements,
    clippy::missing_safety_doc,
    clippy::module_name_repetitions,
    clippy::redundant_closure_for_method_calls, // https://github.com/rust-lang/rust-clippy/issues/9335
    clippy::transmute_ptr_to_ptr,
    clippy::useless_transmute,
    clippy::wrong_self_convention
)]

use std::slice;
use std::str;

mod engine;
mod ffi;
mod func;
mod functype;
mod instance;
mod memory;
mod module;
mod store;
mod trap;
mod val;
mod valtype;
pub use self::engine::Engine;
pub use self::func::{func1, mem_func2, Func as HostFunc, Func, FuncRef};
pub use self::functype::FuncType;
pub use self::instance::{Extern, Instance, InstanceImports};
pub use self::memory::MemoryRef;
pub use self::module::{ImportType, Module};
pub use self::store::Store;
pub use self::trap::Trap;
pub use self::val::Val;
pub use self::valtype::{ValType, ValTypeVec};

unsafe fn name_to_str<'a>(name: *const ffi::wasm_name_t) -> &'a str {
    str::from_utf8_unchecked(slice::from_raw_parts((*name).data, (*name).size))
}

pub mod current_memory {
    use super::MemoryRef;
    use std::cell::Cell;
    use std::mem;
    use std::ptr;

    std::thread_local!(static CURRENT: Cell<*const MemoryRef<'static>> = Cell::new(ptr::null()));

    pub fn with<R>(f: impl FnOnce(&MemoryRef) -> R) -> R {
        CURRENT.with(|c| {
            assert!(!c.get().is_null());
            unsafe { f(&*c.get()) }
        })
    }

    pub fn set<R>(mem: &MemoryRef, f: impl FnOnce() -> R) -> R {
        struct Reset<'a, T: Copy>(T, &'a Cell<T>);

        impl<T: Copy> Drop for Reset<'_, T> {
            fn drop(&mut self) {
                self.1.set(self.0);
            }
        }

        CURRENT.with(|c| {
            let prev = c.get();
            c.set(unsafe {
                mem::transmute::<*const MemoryRef<'_>, *const MemoryRef<'static>>(mem)
            });
            let _reset = Reset(prev, c);
            f()
        })
    }
}
