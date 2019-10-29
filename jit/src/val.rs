use super::ffi;

#[repr(transparent)]
pub struct Val {
    pub(crate) raw: ffi::wasm_val_t,
}

impl Val {
    pub fn i32(val: i32) -> Val {
        Val {
            raw: ffi::wasm_val_t {
                kind: ffi::WASM_I32,
                of: ffi::wasm_val_t_union { i32: val },
            },
        }
    }

    // pub fn i64(val: i64) -> Val {
    //     Val {
    //         raw: ffi::wasm_val_t {
    //             kind: ffi::WASM_I64,
    //             of: ffi::wasm_val_t_union { i64: val },
    //         },
    //     }
    // }
    //
    // pub fn f32(val: f32) -> Val {
    //     Val {
    //         raw: ffi::wasm_val_t {
    //             kind: ffi::WASM_F32,
    //             of: ffi::wasm_val_t_union { f32: val },
    //         },
    //     }
    // }
    //
    // pub fn f64(val: f64) -> Val {
    //     Val {
    //         raw: ffi::wasm_val_t {
    //             kind: ffi::WASM_F64,
    //             of: ffi::wasm_val_t_union { f64: val },
    //         },
    //     }
    // }

    pub fn as_i32(&self) -> Option<i32> {
        if self.raw.kind == ffi::WASM_I32 {
            Some(unsafe { self.raw.of.i32 })
        } else {
            None
        }
    }

    // pub fn as_i64(&self) -> Option<i64> {
    //     if self.raw.kind == ffi::WASM_I64 {
    //         Some(unsafe { self.raw.of.i64 })
    //     } else {
    //         None
    //     }
    // }
    //
    // pub fn as_f32(&self) -> Option<f32> {
    //     if self.raw.kind == ffi::WASM_F32 {
    //         Some(unsafe { self.raw.of.f32 })
    //     } else {
    //         None
    //     }
    // }
    //
    // pub fn as_f64(&self) -> Option<f64> {
    //     if self.raw.kind == ffi::WASM_F64 {
    //         Some(unsafe { self.raw.of.f64 })
    //     } else {
    //         None
    //     }
    // }
}
