use super::ffi;
use std::mem;

#[repr(transparent)]
pub struct ValType {
    pub(crate) raw: *mut ffi::wasm_valtype_t,
}

impl ValType {
    pub fn i32() -> ValType {
        ValType::new(ffi::WASM_I32)
    }

    pub fn i64() -> ValType {
        ValType::new(ffi::WASM_I64)
    }

    fn new(kind: ffi::wasm_valkind_t) -> ValType {
        unsafe {
            let raw = ffi::wasm_valtype_new(kind);
            assert!(!raw.is_null());
            ValType { raw }
        }
    }
}

impl Drop for ValType {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_valtype_delete(self.raw);
        }
    }
}

#[repr(transparent)]
pub struct ValTypeVec {
    pub(crate) raw: ffi::wasm_valtype_vec_t,
}

impl ValTypeVec {
    pub fn new(list: &[ValType]) -> ValTypeVec {
        unsafe {
            let mut raw = mem::zeroed();
            ffi::wasm_valtype_vec_new(
                &mut raw,
                list.len(),
                list.as_ptr() as *const *mut ffi::wasm_valtype_t,
            );
            ValTypeVec { raw }
        }
    }

    // pub fn empty() -> ValTypeVec {
    //     unsafe {
    //         let mut raw = mem::zeroed();
    //         ffi::wasm_valtype_vec_new_empty(&mut raw);
    //         ValTypeVec { raw }
    //     }
    // }
}

impl Drop for ValTypeVec {
    fn drop(&mut self) {
        eprintln!("drop valtype vec");
        panic!()
    }
}
