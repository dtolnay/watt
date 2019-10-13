#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Float {
    F32,
    F64,
}

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Int {
    I32,
    I64,
}

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Value {
    Int(Int),
    Float(Float),
}

impl Value {
    pub fn bit_width(&self) -> u32 {
        match *self {
            Value::Int(Int::I32) | Value::Float(Float::F32) => 32,
            Value::Int(Int::I64) | Value::Float(Float::F64) => 64,
        }
    }
}

// Useful aliases for value types
pub static I32: Value = Value::Int(Int::I32);
pub static I64: Value = Value::Int(Int::I64);
pub static F32: Value = Value::Float(Float::F32);
pub static F64: Value = Value::Float(Float::F64);

#[derive(Debug, Clone, PartialEq)]
pub enum Elem {
    AnyFunc,
}

#[derive(Debug, Clone, PartialEq)]
pub struct Func {
    pub args: Vec<Value>,
    pub result: Vec<Value>,
}

// Note: Do not implement PartialEq on Limits, Limits comparison is specified and not straightforward
#[derive(Debug, Clone)]
pub struct Limits {
    pub min: u32,
    pub max: Option<u32>,
}

impl Limits {
    /// Check if a limit matches another according to import matching rule on limits
    fn matches(&self, l2: &Limits) -> bool {
        self.min >= l2.min
            && (l2.max.is_none() || (self.max.is_some() && self.max.unwrap() <= l2.max.unwrap()))
    }
}

#[derive(Debug, Clone)]
pub struct Table {
    pub limits: Limits,
    pub elem: Elem,
}

#[derive(Debug, Clone)]
pub struct Memory {
    pub limits: Limits,
}

#[derive(Debug, Clone, PartialEq)]
pub struct Global {
    pub value: Value,
    pub mutable: bool,
}

/// Types of elements defined externally to the module
#[derive(Debug)]
pub enum Extern {
    Func(Func),
    Table(Table),
    Memory(Memory),
    Global(Global),
}

impl Extern {
    /// Check if an external type matches another.
    ///
    /// When instantiating a module, external values must be provided whose types
    /// are matched against the respective external types classifying each import.
    /// In some cases, this allows for a simple form of subtyping.
    pub fn matches(&self, other: &Extern) -> bool {
        use self::Extern::*;

        match (self, other) {
            (Func(f1), Func(f2)) => f1 == f2,
            (Table(t1), Table(t2)) => t1.elem == t2.elem && t1.limits.matches(&t2.limits),
            (Memory(m1), Memory(m2)) => m1.limits.matches(&m2.limits),
            (Global(g1), Global(g2)) => g1 == g2,
            _ => false,
        }
    }
}
