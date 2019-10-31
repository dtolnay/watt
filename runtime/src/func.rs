use super::{HostFunc, Interpreter, Store, Value};

pub trait WasmArg: Sized {
    fn pop(interp: &mut Interpreter) -> Self;
}

pub trait WasmRet: Sized {
    fn push(interp: &mut Interpreter, val: Self);
}

impl WasmArg for u32 {
    fn pop(interp: &mut Interpreter) -> Self {
        match interp.pop().unwrap() {
            Value::I32(v) => v,
            _ => panic!("unexpected value on wasm stack"),
        }
    }
}

impl WasmRet for u32 {
    fn push(interp: &mut Interpreter, val: Self) {
        interp.push(Value::I32(val));
    }
}

impl WasmRet for () {
    fn push(interp: &mut Interpreter, val: Self) {
        let _ = interp;
        let _ = val;
    }
}

pub fn func1<A, R, F>(func: F, _store: &Store) -> HostFunc
where
    A: WasmArg,
    R: WasmRet,
    F: Fn(A) -> R + 'static,
{
    Box::new(move |interp| {
        let a = A::pop(interp);
        let ret = func(a);
        R::push(interp, ret);
        None
    })
}

pub fn mem_func2<A, B, R, F>(func: F, _store: &Store) -> HostFunc
where
    A: WasmArg,
    B: WasmArg,
    R: WasmRet,
    F: Fn(&mut [u8], A, B) -> R + 'static,
{
    Box::new(move |interp| {
        let b = B::pop(interp);
        let a = A::pop(interp);
        let mem = interp.get_memory_mut();
        let ret = func(mem, a, b);
        R::push(interp, ret);
        None
    })
}
