use super::{ffi, FuncType, Store, Trap, Val, ValType, ValTypeVec};
use std::ffi::c_void;
use std::marker;
use std::ptr;

#[repr(transparent)]
pub struct Func {
    pub(crate) raw: *mut ffi::wasm_func_t,
}

impl Func {
    unsafe fn into_host_func(
        store: &Store,
        ty: &FuncType,
        callback: ffi::wasm_func_callback_with_env_t,
        ptr: *mut c_void,
        dtor: unsafe extern "C" fn(*mut c_void),
    ) -> Func {
        let raw = ffi::wasm_func_new_with_env(store.raw, ty.raw, callback, ptr, Some(dtor));
        assert!(!raw.is_null());
        Func { raw }
    }
}

impl Drop for Func {
    fn drop(&mut self) {
        unsafe {
            ffi::wasm_func_delete(self.raw);
        }
    }
}

pub unsafe trait WasmArg: Sized {
    fn push_valtype(list: &mut Vec<ValType>);
    unsafe fn from(ptr: *const ffi::wasm_val_t) -> (Self, *const ffi::wasm_val_t);
    unsafe fn into(self, ptr: *mut ffi::wasm_val_t);
}

macro_rules! wasmarg {
    ($($a:ident)*) => ($(
        unsafe impl WasmArg for $a {
            fn push_valtype(list: &mut Vec<ValType>) {
                list.push(ValType::$a());
            }
            unsafe fn from(ptr: *const ffi::wasm_val_t) -> ($a, *const ffi::wasm_val_t) {
                ((*ptr).of.$a, ptr.offset(1))
            }
            unsafe fn into(self, ptr: *mut ffi::wasm_val_t) {
                (*ptr).of.$a = self;
            }
        }
    )*)
}

wasmarg! { i32 i64 f32 f64 }

macro_rules! wasmarg_as {
    ($($a:ident as $b:ident)*) => ($(
        unsafe impl WasmArg for $b {
            fn push_valtype(list: &mut Vec<ValType>) {
                $a::push_valtype(list);
            }
            unsafe fn from(ptr: *const ffi::wasm_val_t) -> ($b, *const ffi::wasm_val_t) {
                let (a, b) = <$a as WasmArg>::from(ptr);
                (a as $b, b)
            }
            unsafe fn into(self, ptr: *mut ffi::wasm_val_t) {
                <$a as WasmArg>::into(self as $a, ptr)
            }
        }
    )*)
}

wasmarg_as! {
    i32 as u32
    i64 as u64
}

unsafe impl WasmArg for () {
    fn push_valtype(_list: &mut Vec<ValType>) {}

    unsafe fn from(ptr: *const ffi::wasm_val_t) -> ((), *const ffi::wasm_val_t) {
        ((), ptr.offset(1))
    }

    unsafe fn into(self, _ptr: *mut ffi::wasm_val_t) {}
}

unsafe impl WasmArg for *mut [u8] {
    fn push_valtype(_list: &mut Vec<ValType>) {}

    unsafe fn from(ptr: *const ffi::wasm_val_t) -> (*mut [u8], *const ffi::wasm_val_t) {
        (super::current_memory::with(|m| m.as_slice()), ptr)
    }

    unsafe fn into(self, _ptr: *mut ffi::wasm_val_t) {
        unreachable!()
    }
}

unsafe extern "C" fn dtor<T>(env: *mut c_void) {
    drop(Box::from_raw(env as *mut T));
}

macro_rules! fnimpl {
    ($traitname:ident $($arg:ident)*) => (
        pub trait $traitname<$($arg),*> {
            fn into_host_func(self, store: &Store) -> Func;
        }

        #[allow(non_snake_case)]
        impl<F: FnMut($($arg),*) -> R, R: WasmArg, $($arg: WasmArg),*> $traitname<$($arg),*> for F {
            fn into_host_func(self, store: &Store) -> Func {
                let mut _params = Vec::new();
                $($arg::push_valtype(&mut _params);)*
                let mut results = Vec::new();
                R::push_valtype(&mut results);
                let ty = FuncType::new(ValTypeVec::new(&_params), ValTypeVec::new(&results));
                let me = Box::new(self);
                let ptr = Box::into_raw(me);
                return unsafe {
                    Func::into_host_func(
                        store,
                        &ty,
                        Some(callback::<F, R, $($arg),*>),
                        ptr as *mut c_void,
                        dtor::<F>,
                    )
                };

                unsafe extern "C" fn callback<F: FnMut($($arg),*) -> R, R: WasmArg, $($arg: WasmArg),*>(
                    env: *mut c_void,
                    _args: *const ffi::wasm_val_t,
                    results: *mut ffi::wasm_val_t,
                ) -> *mut ffi::wasm_trap_t {
                    let env = &mut *(env as *mut F);
                    $(
                        let ($arg, _args) = WasmArg::from(_args);
                    )*
                    let ret = env($($arg),*);
                    ret.into(results);
                    ptr::null_mut()
                }

            }
        }
    );
}

fnimpl!(WasmFunc0);
fnimpl!(WasmFunc1 A);
fnimpl!(WasmFunc2 A B);
fnimpl!(WasmFunc3 A B C);

#[repr(transparent)]
pub struct FuncRef<'a> {
    pub(crate) raw: *mut ffi::wasm_func_t,
    pub(crate) _marker: marker::PhantomData<&'a i32>,
}

impl FuncRef<'_> {
    pub fn call(&self, args: &[Val]) -> Result<Vec<Val>, Trap> {
        assert_eq!(args.len(), self.param_arity());
        let mut results = Vec::new();
        for _ in 0..self.result_arity() {
            results.push(Val::i32(0));
        }
        unsafe {
            let trap = ffi::wasm_func_call(
                self.raw,
                args.as_ptr() as *const ffi::wasm_val_t,
                results.as_mut_ptr() as *mut ffi::wasm_val_t,
            );
            if trap.is_null() {
                Ok(results)
            } else {
                Err(Trap { raw: trap })
            }
        }
    }

    pub fn param_arity(&self) -> usize {
        unsafe { ffi::wasm_func_param_arity(self.raw) }
    }

    pub fn result_arity(&self) -> usize {
        unsafe { ffi::wasm_func_result_arity(self.raw) }
    }
}
