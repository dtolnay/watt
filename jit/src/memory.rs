use super::ffi;
use std::marker;
use std::slice;

#[repr(transparent)]
pub struct MemoryRef<'a> {
    pub(crate) raw: *mut ffi::wasm_memory_t,
    pub(crate) _marker: marker::PhantomData<&'a i32>,
}

impl MemoryRef<'_> {
    pub fn as_slice(&self) -> *mut [u8] {
        unsafe {
            let ptr = ffi::wasm_memory_data(self.raw);
            let len = ffi::wasm_memory_data_size(self.raw);
            slice::from_raw_parts_mut(ptr, len)
        }
    }
}
