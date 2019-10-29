use super::{ffi, Func, FuncRef, MemoryRef, Module, Store, Trap};
use std::marker;
use std::mem;
use std::ops::Deref;
use std::ptr;
use std::slice;

#[repr(transparent)]
pub struct Instance {
    pub(crate) raw: *mut ffi::wasm_instance_t,
}

impl Instance {
    pub fn new(
        store: &Store,
        module: &Module,
        imports: &InstanceImports,
    ) -> Result<Instance, Trap> {
        unsafe {
            assert_eq!(module.imports().len(), imports.imports.len());
            let mut trap = ptr::null_mut();
            let raw =
                ffi::wasm_instance_new(store.raw, module.raw, imports.imports.as_ptr(), &mut trap);
            if raw.is_null() {
                assert!(!trap.is_null());
                Err(Trap { raw: trap })
            } else {
                Ok(Instance { raw })
            }
        }
    }

    pub fn exports(&self) -> ExternVec {
        unsafe {
            let mut raw = mem::zeroed();
            ffi::wasm_instance_exports(self.raw, &mut raw);
            ExternVec { raw }
        }
    }
}

impl Drop for Instance {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_instance_delete(self.raw);
        }
    }
}

#[derive(Default)]
pub struct InstanceImports {
    imports: Vec<*const ffi::wasm_extern_t>,
    funcs: Vec<Func>,
}

impl InstanceImports {
    pub fn func(&mut self, func: Func) {
        self.imports
            .push(unsafe { ffi::wasm_func_as_extern(func.raw) });
        self.funcs.push(func);
    }
}

pub struct ExternVec {
    raw: ffi::wasm_extern_vec_t,
}

impl Deref for ExternVec {
    type Target = [Extern];

    fn deref(&self) -> &[Extern] {
        unsafe { slice::from_raw_parts(self.raw.data as *const Extern, self.raw.size) }
    }
}

impl Drop for ExternVec {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_extern_vec_delete(&mut self.raw);
        }
    }
}

#[repr(transparent)]
pub struct Extern {
    raw: *mut ffi::wasm_extern_t,
}

impl Extern {
    pub fn func(&self) -> Option<FuncRef<'_>> {
        unsafe {
            if ffi::wasm_extern_kind(self.raw) != ffi::WASM_EXTERN_FUNC {
                None
            } else {
                Some(FuncRef {
                    raw: ffi::wasm_extern_as_func(self.raw),
                    _marker: marker::PhantomData,
                })
            }
        }
    }

    pub fn memory(&self) -> Option<MemoryRef<'_>> {
        unsafe {
            if ffi::wasm_extern_kind(self.raw) != ffi::WASM_EXTERN_MEMORY {
                None
            } else {
                Some(MemoryRef {
                    raw: ffi::wasm_extern_as_memory(self.raw),
                    _marker: marker::PhantomData,
                })
            }
        }
    }
}

impl Drop for Extern {
    fn drop(&mut self) {
        eprintln!("drop extern");
        panic!()
        // unsafe {
        //     ffi::wasm_extern_delete(self.raw);
        // }
    }
}
