use types;

#[derive(Debug, Clone, Copy)]
pub enum Value {
    I32(u32),
    I64(u64),
    F32(f32),
    F64(f64),
}

impl PartialEq for Value {
    /// Two values are equals if they have the same type and they are bitwise equals.
    fn eq(&self, other: &Value) -> bool {
        use self::Value::*;

        match (*self, *other) {
            (I32(a), I32(b)) => a == b,
            (I64(a), I64(b)) => a == b,
            (F32(a), F32(b)) => a.to_bits() == b.to_bits(),
            (F64(a), F64(b)) => a.to_bits() == b.to_bits(),
            _ => false,
        }
    }
}

impl Value {
    pub fn from_i32(v: i32) -> Value {
        Value::I32(v as u32)
    }

    pub fn from_i64(v: i64) -> Value {
        Value::I64(v as u64)
    }

    pub fn from_bool(v: bool) -> Value {
        if v {
            Value::true_()
        } else {
            Value::false_()
        }
    }

    pub fn false_() -> Value {
        Value::I32(0)
    }

    pub fn true_() -> Value {
        Value::I32(1)
    }

    pub fn type_(&self) -> types::Value {
        match *self {
            Value::I32(_) => types::I32,
            Value::I64(_) => types::I64,
            Value::F32(_) => types::F32,
            Value::F64(_) => types::F64,
        }
    }
}
