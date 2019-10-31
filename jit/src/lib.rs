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

#![allow(clippy::wrong_self_convention, clippy::useless_transmute)]

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
pub use self::engine::*;
pub use self::func::*;
pub use self::functype::*;
pub use self::instance::*;
pub use self::memory::*;
pub use self::module::*;
pub use self::store::*;
pub use self::trap::*;
pub use self::val::*;
pub use self::valtype::*;

unsafe fn name_to_str<'a>(name: *const ffi::wasm_name_t) -> &'a str {
    str::from_utf8_unchecked(slice::from_raw_parts((*name).data, (*name).size))
}

pub mod current_memory {
    use super::MemoryRef;
    use std::cell::Cell;
    use std::mem;
    use std::ptr;

    std::thread_local!(static CURRENT: Cell<*const MemoryRef<'static>> = Cell::new(ptr::null()));

    pub fn with<R>(f: impl FnOnce(&MemoryRef<'_>) -> R) -> R {
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
