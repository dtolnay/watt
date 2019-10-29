use super::{HostFunc, Interpreter, Store, Value};

pub trait WasmArg: Sized {
    fn pop(interp: &mut Interpreter) -> Self;
    fn push(interp: &mut Interpreter, val: Self);
}

macro_rules! wasmarg {
    ($($a:ident/$variant:ident)*) => ($(
        impl WasmArg for $a {
            fn pop(interp: &mut Interpreter) -> Self {
                match interp.pop().unwrap() {
                    Value::$variant(v) => v,
                    _ => panic!("unexpected value"),
                }
            }

            fn push(interp: &mut Interpreter, val: Self) {
                interp.push(Value::$variant(val));
            }
        }
    )*)
}

wasmarg! {
    u32/I32
    u64/I64
    f32/F32
    f64/F64
}

macro_rules! wasmarg_as {
    ($($a:ident as $b:ident)*) => ($(
        impl WasmArg for $b {
            fn pop(interp: &mut Interpreter) -> Self {
                <$a as WasmArg>::pop(interp) as $b
            }

            fn push(interp: &mut Interpreter, val: Self) {
                <$a as WasmArg>::push(interp, val as $a)
            }
        }
    )*)
}

wasmarg_as! {
    u32 as i32
    u64 as i64
}

impl WasmArg for () {
    fn pop(interp: &mut Interpreter) -> Self {
        drop(interp);
    }
    fn push(interp: &mut Interpreter, val: Self) {
        drop((interp, val));
    }
}

impl WasmArg for *mut [u8] {
    fn pop(interp: &mut Interpreter) -> *mut [u8] {
        interp.get_memory_mut()
    }
    fn push(_interp: &mut Interpreter, _val: Self) {
        unreachable!();
    }
}

macro_rules! reverse {
    () => ();
    ($a:stmt; $($b:tt)*) => (
        reverse!($($b)*);
        $a;
    );
}

macro_rules! fnimpl {
    ($traitname:ident $($arg:ident)*) => (
        pub trait $traitname<$($arg),*> {
            fn into_host_func(self, _store: &Store) -> HostFunc;
        }

        #[allow(non_snake_case)]
        impl<F, R, $($arg: WasmArg),*> $traitname<$($arg),*> for F
        where
            F: Fn($($arg),*) -> R + 'static,
            R: WasmArg,
        {
            fn into_host_func(self, _store: &Store) -> HostFunc {
                return Box::new(move |interp| {
                    reverse!($(let $arg = <$arg as WasmArg>::pop(interp);)*);
                    let ret = self($($arg),*);
                    <R as WasmArg>::push(interp, ret);
                    None
                });
            }
        }
    );
}

fnimpl!(WasmFunc0);
fnimpl!(WasmFunc1 A);
fnimpl!(WasmFunc2 A B);
fnimpl!(WasmFunc3 A B C);
