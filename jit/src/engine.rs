use super::ffi;

#[repr(transparent)]
pub struct Engine {
    pub(crate) raw: *mut ffi::wasm_engine_t,
}

impl Engine {
    pub fn new() -> Engine {
        unsafe {
            let raw = ffi::wasm_engine_new();
            assert!(!raw.is_null());
            Engine { raw }
        }
    }
}

impl Drop for Engine {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_engine_delete(self.raw);
        }
    }
}
