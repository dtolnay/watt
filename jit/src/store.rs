use super::ffi;
use super::Engine;

#[repr(transparent)]
pub struct Store {
    pub(crate) raw: *mut ffi::wasm_store_t,
}

impl Store {
    pub fn new(engine: &Engine) -> Store {
        unsafe {
            let raw = ffi::wasm_store_new(engine.raw);
            assert!(!raw.is_null());
            Store { raw }
        }
    }
}

impl Drop for Store {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_store_delete(self.raw);
        }
    }
}
