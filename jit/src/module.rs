use super::{ffi, Store};
use std::mem;
use std::ops::Deref;
use std::slice;
use std::str;

#[repr(transparent)]
pub struct Module {
    pub(crate) raw: *mut ffi::wasm_module_t,
}

impl Module {
    pub fn new(store: &Store, wasm: &[u8]) -> Module {
        unsafe {
            let vec = ffi::wasm_byte_vec_t {
                size: wasm.len(),
                data: wasm.as_ptr() as *mut u8,
            };
            let raw = ffi::wasm_module_new(store.raw, &vec);
            assert!(!raw.is_null());
            Module { raw }
        }
    }

    pub fn imports(&self) -> ImportTypeVec {
        unsafe {
            let mut raw = mem::zeroed();
            ffi::wasm_module_imports(self.raw, &mut raw);
            ImportTypeVec { raw }
        }
    }

    pub fn exports(&self) -> ExportTypeVec {
        unsafe {
            let mut raw = mem::zeroed();
            ffi::wasm_module_exports(self.raw, &mut raw);
            ExportTypeVec { raw }
        }
    }
}

impl Drop for Module {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_module_delete(self.raw);
        }
    }
}

pub struct ImportTypeVec {
    raw: ffi::wasm_importtype_vec_t,
}

impl Deref for ImportTypeVec {
    type Target = [ImportType];

    fn deref(&self) -> &[ImportType] {
        unsafe { slice::from_raw_parts(self.raw.data as *const ImportType, self.raw.size) }
    }
}

impl Drop for ImportTypeVec {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_importtype_vec_delete(&mut self.raw);
        }
    }
}

#[repr(transparent)]
pub struct ImportType {
    raw: *mut ffi::wasm_importtype_t,
}

impl ImportType {
    pub fn module(&self) -> &str {
        unsafe { super::name_to_str(ffi::wasm_importtype_module(self.raw)) }
    }

    pub fn name(&self) -> &str {
        unsafe { super::name_to_str(ffi::wasm_importtype_name(self.raw)) }
    }

    // pub fn ty(&self) -> ExternType {
    //     ExternType {
    //         raw: unsafe { ffi::wasm_importtype_type(self.raw) },
    //     }
    // }
}

impl Drop for ImportType {
    fn drop(&mut self) {
        eprintln!("drop import type");
        panic!();
        // unsafe {
        //     ffi::wasm_importtype_delete(self.raw);
        // }
    }
}

// #[repr(transparent)]
// pub struct ExternType {
//     raw: *const ffi::wasm_externtype_t,
// }
//
// impl Drop for ExternType {
//     fn drop(&mut self) {
//         unsafe {
//             ffi::wasm_externtype_delete(self.raw as *mut ffi::wasm_externtype_t);
//         }
//     }
// }

pub struct ExportTypeVec {
    raw: ffi::wasm_exporttype_vec_t,
}

impl Deref for ExportTypeVec {
    type Target = [ExportType];

    fn deref(&self) -> &[ExportType] {
        unsafe { slice::from_raw_parts(self.raw.data as *const ExportType, self.raw.size) }
    }
}

impl Drop for ExportTypeVec {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_exporttype_vec_delete(&mut self.raw);
        }
    }
}

#[repr(transparent)]
pub struct ExportType {
    raw: *mut ffi::wasm_exporttype_t,
}

impl ExportType {
    pub fn name(&self) -> &str {
        unsafe { super::name_to_str(ffi::wasm_exporttype_name(self.raw)) }
    }
}

impl Drop for ExportType {
    fn drop(&mut self) {
        eprintln!("drop export type");
        panic!();
        // unsafe {
        //     ffi::wasm_exporttype_delete(self.raw);
        // }
    }
}
