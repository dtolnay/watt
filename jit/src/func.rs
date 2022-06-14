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

pub unsafe trait WasmVal {
    fn push_valtype(list: &mut Vec<ValType>);
}

pub unsafe trait WasmArg: WasmVal + Sized {
    unsafe fn from(ptr: *const ffi::wasm_val_t) -> (Self, *const ffi::wasm_val_t);
}

pub unsafe trait WasmRet: WasmVal + Sized {
    unsafe fn into(value: Self, ptr: *mut ffi::wasm_val_t);
}

unsafe impl WasmVal for u32 {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

unsafe impl WasmArg for u32 {
    unsafe fn from(ptr: *const ffi::wasm_val_t) -> (Self, *const ffi::wasm_val_t) {
        ((*ptr).of.i32 as u32, ptr.offset(1))
    }
}

unsafe impl WasmRet for u32 {
    unsafe fn into(value: Self, ptr: *mut ffi::wasm_val_t) {
        (*ptr).of.i32 = value as i32;
    }
}

unsafe impl WasmVal for () {
    fn push_valtype(_list: &mut Vec<ValType>) {}
}

unsafe impl WasmRet for () {
    unsafe fn into(_value: Self, _ptr: *mut ffi::wasm_val_t) {}
}

unsafe extern "C" fn dtor<T>(env: *mut c_void) {
    drop(Box::from_raw(env as *mut T));
}

pub fn func1<A, R, F>(func: F, store: &Store) -> Func
where
    A: WasmArg,
    R: WasmRet,
    F: Fn(A) -> R + 'static,
{
    let mut params = Vec::new();
    A::push_valtype(&mut params);
    let mut results = Vec::new();
    R::push_valtype(&mut results);
    let ty = FuncType::new(ValTypeVec::new(params), ValTypeVec::new(results));
    let ptr = Box::into_raw(Box::new(func));
    return unsafe {
        Func::into_host_func(
            store,
            &ty,
            Some(callback::<A, R, F>),
            ptr as *mut c_void,
            dtor::<F>,
        )
    };

    unsafe extern "C" fn callback<A, R, F>(
        env: *mut c_void,
        args: *const ffi::wasm_val_vec_t,
        results: *mut ffi::wasm_val_vec_t,
    ) -> *mut ffi::wasm_trap_t
    where
        A: WasmArg,
        R: WasmRet,
        F: Fn(A) -> R,
    {
        let env = &*(env as *const F);
        let (a, _args) = A::from((*args).data);
        let ret = env(a);
        R::into(ret, (*results).data);
        ptr::null_mut()
    }
}

pub fn mem_func2<A, B, R, F>(func: F, store: &Store) -> Func
where
    A: WasmArg,
    B: WasmArg,
    R: WasmRet,
    F: Fn(&mut [u8], A, B) -> R + 'static,
{
    let mut params = Vec::new();
    A::push_valtype(&mut params);
    B::push_valtype(&mut params);
    let mut results = Vec::new();
    R::push_valtype(&mut results);
    let ty = FuncType::new(ValTypeVec::new(params), ValTypeVec::new(results));
    let ptr = Box::into_raw(Box::new(func));
    return unsafe {
        Func::into_host_func(
            store,
            &ty,
            Some(callback::<A, B, R, F>),
            ptr as *mut c_void,
            dtor::<F>,
        )
    };

    unsafe extern "C" fn callback<A, B, R, F>(
        env: *mut c_void,
        args: *const ffi::wasm_val_vec_t,
        results: *mut ffi::wasm_val_vec_t,
    ) -> *mut ffi::wasm_trap_t
    where
        A: WasmArg,
        B: WasmArg,
        R: WasmRet,
        F: Fn(&mut [u8], A, B) -> R,
    {
        let env = &*(env as *const F);
        let mem = super::current_memory::with(|m| m.as_slice());
        let (a, args) = A::from((*args).data);
        let (b, _args) = B::from(args);
        let ret = env(&mut *mem, a, b);
        R::into(ret, (*results).data);
        ptr::null_mut()
    }
}

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
        let ffi_args = ffi::wasm_val_vec_t {
            data: args.as_ptr() as *mut _,
            size: args.len(),
        };
        let mut ffi_results = ffi::wasm_val_vec_t {
            data: results.as_mut_ptr().cast(),
            size: results.len(),
        };
        unsafe {
            let trap = ffi::wasm_func_call(self.raw, &ffi_args, &mut ffi_results);
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
