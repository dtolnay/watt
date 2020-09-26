use crate::{
    data::Handle,
    runtime::{wasm_val_t, ValType, WasmArg, WasmRet, WasmVal},
};

unsafe impl<T> WasmVal for Handle<T> {
    fn push_valtype(list: &mut Vec<ValType>) {
        list.push(ValType::i32());
    }
}

unsafe impl<T> WasmArg for Handle<T> {
    unsafe fn from(ptr: *const wasm_val_t) -> (Self, *const wasm_val_t) {
        let id = (*ptr).of.i32 as u32;
        let handle = Handle::new(id);

        (handle, ptr.offset(1))
    }
}

unsafe impl<T> WasmRet for Handle<T> {
    unsafe fn into(value: Self, ptr: *mut wasm_val_t) {
        (*ptr).of.i32 = value.id() as i32;
    }
}
