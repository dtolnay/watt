use super::{ffi, ValTypeVec};
use std::mem;

#[repr(transparent)]
pub struct FuncType {
    pub(crate) raw: *mut ffi::wasm_functype_t,
}

impl FuncType {
    pub fn new(mut params: ValTypeVec, mut results: ValTypeVec) -> FuncType {
        unsafe {
            let raw = ffi::wasm_functype_new(&mut params.raw, &mut results.raw);
            assert!(!raw.is_null());
            mem::forget((params, results));
            FuncType { raw }
        }
    }
}

impl Drop for FuncType {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_functype_delete(self.raw);
        }
    }
}
