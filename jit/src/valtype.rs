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
    pub fn new(mut list: Vec<ValType>) -> ValTypeVec {
        unsafe {
            let mut raw = mem::zeroed();
            ffi::wasm_valtype_vec_new(
                &mut raw,
                list.len(),
                list.as_ptr().cast::<*mut ffi::wasm_valtype_t>(),
            );
            list.set_len(0);
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
        panic!();
    }
}
