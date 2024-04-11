use super::ast::*;
use super::ops::{FloatDemoteOp, FloatOp, FloatPromoteOp, IntOp};
use super::runtime::*;
use super::types;
use super::values::Value;
use std::mem;
use std::rc::Rc;

/// A struct storing the state of the current interpreted
pub struct Interpreter<'a> {
    pub stack: Vec<Value>,

    frame: StackFrame,

    funcs: &'a FuncInstStore,
    tables: &'a TableInstStore,
    mems: &'a mut MemInstStore,
    globals: &'a mut GlobalInstStore,
}

#[derive(Debug, PartialEq)]
/// Causes at the origin of a trap.
pub enum TrapOrigin {
    Unreachable,
    UndefinedResult,
    CallIndirectElemNotFound,
    CallIndirectElemUnitialized,
    CallIndirectTypesDiffer,
    LoadOutOfMemory,
    StoreOutOfMemory,
    StackOverflow,
    HostFunction(HostFunctionError),
}

#[derive(Debug, PartialEq)]
pub struct Trap {
    /// Original cause of the trap. Useful for debugging.
    pub origin: TrapOrigin,
}

#[derive(Debug, PartialEq)]
pub enum Control {
    /// Continue the execution linearly
    Continue,
    /// Branch to the `nesting_levels` outer scope, 0 being the innermost surrounding scope.
    Branch { nesting_levels: u32 },
    /// Exit the function
    Return,
}

use self::Control::*;

type IntResult = Result<Control, Trap>;

/// Stack frames tracks frame activation
pub struct StackFrame {
    module: Option<Rc<ModuleInst>>,
    stack_idx: usize, // The size of the stack before pushing args & locals for the Frame
    nested_levels: usize,
}

// The stack budget (how many nested levels)
const STACK_BUDGET: usize = 300;

impl StackFrame {
    pub fn new(module: Option<Rc<ModuleInst>>) -> StackFrame {
        StackFrame {
            module,
            stack_idx: 0,
            nested_levels: STACK_BUDGET,
        }
    }

    /// Get the current module.
    ///
    /// Panics if run while a module is not active.
    fn module(&self) -> &ModuleInst {
        self.module.as_ref().unwrap()
    }

    pub fn push(&self, module: Option<Rc<ModuleInst>>, stack_idx: usize) -> Option<StackFrame> {
        if self.nested_levels == 0 {
            return None;
        }

        Some(StackFrame {
            module,
            stack_idx,
            nested_levels: self.nested_levels - 1,
        })
    }
}

impl<'a> Interpreter<'a> {
    /// Instantiate a new interpreter
    pub fn new(
        funcs: &'a FuncInstStore,
        tables: &'a TableInstStore,
        globals: &'a mut GlobalInstStore,
        mems: &'a mut MemInstStore,
    ) -> Interpreter<'a> {
        Interpreter {
            stack: Vec::new(),
            frame: StackFrame::new(None),
            funcs,
            tables,
            globals,
            mems,
        }
    }

    /// Push a new value onto the stack
    pub fn push(&mut self, val: Value) {
        self.stack.push(val)
    }

    /// Pop a value from the stack
    pub fn pop(&mut self) -> Option<Value> {
        self.stack.pop()
    }

    /// Get mutable access to the underlying memory associated with the current stack frame.
    pub fn get_memory_mut(&mut self) -> &mut [u8] {
        &mut self.mems[self.frame.module().mem_addrs[0]].data
    }

    /// Intrepret a single instruction.
    /// This is the main dispatching function of the interpreter.
    fn instr(&mut self, instr: &Instr) -> IntResult {
        use super::ast::Instr::*;

        match *instr {
            Unreachable => self.unreachable(),
            Nop => self.nop(),
            Block(ref result_type, ref instrs) => self.block(result_type, instrs),
            Loop(_, ref instrs) => self.loop_(instrs),
            If(ref result_type, ref if_instrs, ref else_instrs) => {
                self.if_(result_type, if_instrs, else_instrs)
            }
            Br(nesting_levels) => self.branch(nesting_levels),
            BrIf(nesting_levels) => self.branch_cond(nesting_levels),
            BrTable(ref all_levels, default_level) => self.branch_table(all_levels, default_level),
            Return => self.return_(),
            Call(idx) => self.call(self.frame.module().func_addrs[idx as usize]),
            CallIndirect(idx) => self.call_indirect(idx),
            Drop_ => self.drop(),
            Select => self.select(),
            GetLocal(idx) => self.get_local(idx),
            SetLocal(idx) => self.set_local(idx),
            TeeLocal(idx) => self.tee_local(idx),
            GetGlobal(idx) => self.get_global(idx),
            SetGlobal(idx) => self.set_global(idx),
            Load(ref memop) => self.load(memop),
            Store(ref memop) => self.store(memop),
            CurrentMemory => self.current_memory(),
            GrowMemory => self.grow_memory(),
            Const(c) => self.const_(c),
            IUnary(t, ref op) => self.iunary(t, op),
            FUnary(t, ref op) => self.funary(t, op),
            IBin(t, ref op) => self.ibin(t, op),
            FBin(t, ref op) => self.fbin(t, op),
            ITest(t, ref op) => self.itest(t, op),
            IRel(t, ref op) => self.irel(t, op),
            FRel(t, ref op) => self.frel(t, op),
            Convert(ref op) => self.cvtop(op),
        }
    }

    /// Raises an unconditional trap
    fn unreachable(&self) -> IntResult {
        Err(Trap {
            origin: TrapOrigin::Unreachable,
        })
    }

    /// Do nothing
    fn nop(&self) -> IntResult {
        Ok(Continue)
    }

    /// Interpret a block
    fn block(&mut self, result_type: &[types::Value], instrs: &[Instr]) -> IntResult {
        let local_stack_begin = self.stack.len();

        for instr in instrs {
            match self.instr(instr)? {
                Branch { nesting_levels } => {
                    // If the instruction caused a branch, we need to exit the block early on.
                    // The way to do so depends if the current block is the target of the branch.
                    return Ok(if nesting_levels == 0 {
                        // We have reached the target block.
                        // Unwind values that could be left on the stack, except for the result,
                        // and resume normal execution.
                        let junk_end = self.stack.len() - result_type.len();
                        self.stack.drain(local_stack_begin..junk_end);
                        Continue
                    } else {
                        // Keep traversing nesting levels
                        Branch {
                            nesting_levels: nesting_levels - 1,
                        }
                    });
                }
                Return => return Ok(Return), // Stack unwinding will be done by the caller
                Continue => {}
            }
        }

        Ok(Continue)
    }

    /// Interpret a loop
    fn loop_(&mut self, instrs: &[Instr]) -> IntResult {
        let local_stack_begin = self.stack.len();

        'outer: loop {
            for instr in instrs {
                let res = self.instr(instr)?;

                match res {
                    Branch { nesting_levels } => {
                        // If the instruction caused a branch, we need to exit or restart the loop
                        if nesting_levels == 0 {
                            // We have reached the target loop.
                            // Unwind all values that could be left on the stack and restart the loop
                            self.stack.truncate(local_stack_begin);
                            continue 'outer;
                        } else {
                            // Exit the loop and keep traversing nesting levels
                            return Ok(Branch {
                                nesting_levels: nesting_levels - 1,
                            });
                        }
                    }
                    Return => return Ok(Return),
                    Continue => {}
                }
            }

            // loops that reach the end of the instruction sequence without branching terminate
            return Ok(Continue);
        }
    }

    /// Perform a unconditional branch to the nesting_levels+1 surrounding block.
    fn branch(&self, nesting_levels: u32) -> IntResult {
        Ok(Branch { nesting_levels })
    }

    /// Perform a branch if the top of the stack is not null
    fn branch_cond(&mut self, nesting_levels: u32) -> IntResult {
        match self.stack.pop().unwrap() {
            Value::I32(c) => Ok(if c != 0 {
                Branch { nesting_levels }
            } else {
                Continue
            }),
            _ => unreachable!(),
        }
    }

    /// Perform a branch using a vector of levels, or a default nesting level based on the top of the stack
    fn branch_table(&mut self, all_levels: &[u32], default_level: u32) -> IntResult {
        match self.stack.pop().unwrap() {
            Value::I32(c) => Ok(Branch {
                nesting_levels: *all_levels.get(c as usize).unwrap_or(&default_level),
            }),
            _ => unreachable!(),
        }
    }

    /// If/Else block (delegate to block)
    fn if_(
        &mut self,
        result_type: &[types::Value],
        if_instrs: &[Instr],
        else_instrs: &[Instr],
    ) -> IntResult {
        let c = match self.stack.pop().unwrap() {
            Value::I32(c) => c,
            _ => unreachable!(),
        };

        Ok(if c != 0 {
            self.block(result_type, if_instrs)?
        } else {
            self.block(result_type, else_instrs)?
        })
    }

    /// Drop a value from the stack
    fn drop(&mut self) -> IntResult {
        self.stack.pop();
        Ok(Continue)
    }

    /// branchless conditional
    fn select(&mut self) -> IntResult {
        let b = self.stack.pop().unwrap();
        let (v1, v2) = self.pop2();

        match b {
            Value::I32(c) => self.stack.push(if c != 0 { v1 } else { v2 }),
            _ => unreachable!(),
        }

        Ok(Continue)
    }

    /// Push c to the stack
    fn const_(&mut self, c: Value) -> IntResult {
        self.stack.push(c);
        Ok(Continue)
    }

    /// Dispatch an IUnop
    fn iunary(&mut self, _t: types::Int, op: &IUnOp) -> IntResult {
        // Validation should assert that the top of the stack exists and has the type t
        let v = match self.stack.pop().unwrap() {
            Value::I32(c) => Value::I32(self.type_iunary(c, op)),
            Value::I64(c) => Value::I64(self.type_iunary(c, op)),
            _ => unreachable!(),
        };
        self.stack.push(v);
        Ok(Continue)
    }

    fn type_iunary<T>(&self, v: T, op: &IUnOp) -> T
    where
        T: IntOp,
    {
        match *op {
            IUnOp::Clz => v.leading_zeros(),
            IUnOp::Ctz => v.trailing_zeros(),
            IUnOp::Popcnt => v.count_ones(),
        }
    }

    /// Dispatch an FUnOp
    fn funary(&mut self, _t: types::Float, op: &FUnOp) -> IntResult {
        // Validation should assert that the top of the stack exists and has the type t
        let v = match self.stack.pop().unwrap() {
            Value::F32(c) => Value::F32(self.type_funary(c, op)),
            Value::F64(c) => Value::F64(self.type_funary(c, op)),
            _ => unreachable!(),
        };
        self.stack.push(v);
        Ok(Continue)
    }

    fn type_funary<T>(&self, v: T, op: &FUnOp) -> T
    where
        T: FloatOp,
    {
        match *op {
            FUnOp::Neg => v.neg(),
            FUnOp::Abs => v.abs(),
            FUnOp::Ceil => v.ceil(),
            FUnOp::Floor => v.floor(),
            FUnOp::Trunc => v.trunc(),
            FUnOp::Nearest => v.nearest(),
            FUnOp::Sqrt => v.sqrt(),
        }
    }

    /// Dispatch an IBinOp
    fn ibin(&mut self, _t: types::Int, op: &IBinOp) -> IntResult {
        // Validation should assert that there are two values on top of the
        // stack having the same integer type t
        let res = match self.pop2() {
            (Value::I32(c1), Value::I32(c2)) => self.type_ibin(c1, c2, op).map(Value::I32),
            (Value::I64(c1), Value::I64(c2)) => self.type_ibin(c1, c2, op).map(Value::I64),
            _ => unreachable!(),
        };

        if let Some(v) = res {
            self.stack.push(v);
            Ok(Continue)
        } else {
            Err(Trap {
                origin: TrapOrigin::UndefinedResult,
            })
        }
    }

    // type_ibin returns None if the result is undefined
    fn type_ibin<T>(&self, c1: T, c2: T, op: &IBinOp) -> Option<T>
    where
        T: IntOp,
    {
        let res = match *op {
            IBinOp::Add => c1.add(c2),
            IBinOp::Sub => c1.sub(c2),
            IBinOp::Mul => c1.mul(c2),
            IBinOp::DivS => c1.divs(c2)?,
            IBinOp::DivU => c1.divu(c2)?,
            IBinOp::RemS => c1.rems(c2)?,
            IBinOp::RemU => c1.remu(c2)?,
            IBinOp::And => c1.and(c2),
            IBinOp::Or => c1.or(c2),
            IBinOp::Xor => c1.xor(c2),
            IBinOp::Shl => c1.shl(c2),
            IBinOp::ShrS => c1.shrs(c2),
            IBinOp::ShrU => c1.shru(c2),
            IBinOp::Rotr => c1.rotr(c2),
            IBinOp::Rotl => c1.rotl(c2),
        };
        Some(res)
    }

    /// Dispatch an FBinOp
    fn fbin(&mut self, _t: types::Float, op: &FBinOp) -> IntResult {
        // Validation should assert that there are two values on top of the
        // stack having the same type t
        let res = match self.pop2() {
            (Value::F32(c1), Value::F32(c2)) => Value::F32(self.type_fbin(c1, c2, op)),
            (Value::F64(c1), Value::F64(c2)) => Value::F64(self.type_fbin(c1, c2, op)),
            _ => unreachable!(),
        };
        self.stack.push(res);
        Ok(Continue)
    }

    fn type_fbin<T>(&self, c1: T, c2: T, op: &FBinOp) -> T
    where
        T: FloatOp,
    {
        match *op {
            FBinOp::Add => c1.add(c2),
            FBinOp::Sub => c1.sub(c2),
            FBinOp::Mul => c1.mul(c2),
            FBinOp::Div => c1.div(c2),
            FBinOp::Min => c1.min(c2),
            FBinOp::Max => c1.max(c2),
            FBinOp::CopySign => c1.copysign(c2),
        }
    }

    /// Dispatch an ITestOp
    fn itest(&mut self, _t: types::Int, op: &ITestOp) -> IntResult {
        // Validation should assert that the top of the stack exists and has the type t
        let v = match self.stack.pop().unwrap() {
            Value::I32(c) => Value::from_bool(self.type_itest(c, op)),
            Value::I64(c) => Value::from_bool(self.type_itest(c, op)),
            _ => unreachable!(),
        };
        self.stack.push(v);
        Ok(Continue)
    }

    fn type_itest<T>(&self, v: T, op: &ITestOp) -> bool
    where
        T: IntOp,
    {
        match *op {
            ITestOp::Eqz => v.eqz(),
        }
    }

    /// Dispatch an IRelOp
    fn irel(&mut self, _t: types::Int, op: &IRelOp) -> IntResult {
        // Validation should assert that there are two values on top of the
        // stack having the same integer type t
        let res = match self.pop2() {
            (Value::I32(c1), Value::I32(c2)) => Value::from_bool(self.type_irel(c1, c2, op)),
            (Value::I64(c1), Value::I64(c2)) => Value::from_bool(self.type_irel(c1, c2, op)),
            _ => unreachable!(),
        };
        self.stack.push(res);
        Ok(Continue)
    }

    fn type_irel<T>(&self, c1: T, c2: T, op: &IRelOp) -> bool
    where
        T: IntOp,
    {
        match *op {
            IRelOp::Eq_ => c1.eq(c2),
            IRelOp::Ne => c1.ne(c2),
            IRelOp::LtS => c1.lts(c2),
            IRelOp::LtU => c1.ltu(c2),
            IRelOp::GtS => c1.gts(c2),
            IRelOp::GtU => c1.gtu(c2),
            IRelOp::LeS => c1.les(c2),
            IRelOp::LeU => c1.leu(c2),
            IRelOp::GeS => c1.ges(c2),
            IRelOp::GeU => c1.geu(c2),
        }
    }

    /// Dispatch an FRelOp
    fn frel(&mut self, _t: types::Float, op: &FRelOp) -> IntResult {
        // Validation should assert that there are two values on top of the
        // stack having the same integer type t
        let res = match self.pop2() {
            (Value::F32(c1), Value::F32(c2)) => Value::from_bool(self.type_frel(c1, c2, op)),
            (Value::F64(c1), Value::F64(c2)) => Value::from_bool(self.type_frel(c1, c2, op)),
            _ => unreachable!(),
        };
        self.stack.push(res);
        Ok(Continue)
    }

    fn type_frel<T>(&self, c1: T, c2: T, op: &FRelOp) -> bool
    where
        T: FloatOp,
    {
        match *op {
            FRelOp::Eq_ => c1.eq(c2),
            FRelOp::Ne => c1.ne(c2),
            FRelOp::Lt => c1.lt(c2),
            FRelOp::Gt => c1.gt(c2),
            FRelOp::Le => c1.le(c2),
            FRelOp::Ge => c1.ge(c2),
        }
    }

    /// Dispatch a ConvertOp
    fn cvtop(&mut self, op: &ConvertOp) -> IntResult {
        use super::types::Value as tv;
        use super::types::{Float, Int};

        let c = self.stack.pop().unwrap();
        let cls = |&op, &c| {
            Some(match (op, c) {
                (&ConvertOp::I32WrapI64, Value::I64(c)) => Value::I32(c.to_u32()),
                (&ConvertOp::I64ExtendUI32, Value::I32(c)) => Value::I64(c.to_u64()),
                (&ConvertOp::I64ExtendSI32, Value::I32(c)) => Value::from_i64(c.to_i64()),

                (
                    &ConvertOp::Trunc {
                        from: Float::F32,
                        to: Int::I32,
                        signed: false,
                    },
                    Value::F32(c),
                ) => Value::I32(c.to_u32()?),
                (
                    &ConvertOp::Trunc {
                        from: Float::F32,
                        to: Int::I32,
                        signed: true,
                    },
                    Value::F32(c),
                ) => Value::from_i32(c.to_i32()?),
                (
                    &ConvertOp::Trunc {
                        from: Float::F32,
                        to: Int::I64,
                        signed: false,
                    },
                    Value::F32(c),
                ) => Value::I64(c.to_u64()?),
                (
                    &ConvertOp::Trunc {
                        from: Float::F32,
                        to: Int::I64,
                        signed: true,
                    },
                    Value::F32(c),
                ) => Value::from_i64(c.to_i64()?),
                (
                    &ConvertOp::Trunc {
                        from: Float::F64,
                        to: Int::I32,
                        signed: false,
                    },
                    Value::F64(c),
                ) => Value::I32(c.to_u32()?),
                (
                    &ConvertOp::Trunc {
                        from: Float::F64,
                        to: Int::I32,
                        signed: true,
                    },
                    Value::F64(c),
                ) => Value::from_i32(c.to_i32()?),
                (
                    &ConvertOp::Trunc {
                        from: Float::F64,
                        to: Int::I64,
                        signed: false,
                    },
                    Value::F64(c),
                ) => Value::I64(c.to_u64()?),
                (
                    &ConvertOp::Trunc {
                        from: Float::F64,
                        to: Int::I64,
                        signed: true,
                    },
                    Value::F64(c),
                ) => Value::from_i64(c.to_i64()?),

                (
                    &ConvertOp::Convert {
                        from: Int::I32,
                        to: Float::F32,
                        signed: false,
                    },
                    Value::I32(c),
                ) => Value::F32(c.to_uf32()),
                (
                    &ConvertOp::Convert {
                        from: Int::I32,
                        to: Float::F32,
                        signed: true,
                    },
                    Value::I32(c),
                ) => Value::F32(c.to_if32()),
                (
                    &ConvertOp::Convert {
                        from: Int::I32,
                        to: Float::F64,
                        signed: false,
                    },
                    Value::I32(c),
                ) => Value::F64(c.to_uf64()),
                (
                    &ConvertOp::Convert {
                        from: Int::I32,
                        to: Float::F64,
                        signed: true,
                    },
                    Value::I32(c),
                ) => Value::F64(c.to_if64()),
                (
                    &ConvertOp::Convert {
                        from: Int::I64,
                        to: Float::F32,
                        signed: false,
                    },
                    Value::I64(c),
                ) => Value::F32(c.to_uf32()),
                (
                    &ConvertOp::Convert {
                        from: Int::I64,
                        to: Float::F32,
                        signed: true,
                    },
                    Value::I64(c),
                ) => Value::F32(c.to_if32()),
                (
                    &ConvertOp::Convert {
                        from: Int::I64,
                        to: Float::F64,
                        signed: false,
                    },
                    Value::I64(c),
                ) => Value::F64(c.to_uf64()),
                (
                    &ConvertOp::Convert {
                        from: Int::I64,
                        to: Float::F64,
                        signed: true,
                    },
                    Value::I64(c),
                ) => Value::F64(c.to_if64()),

                (
                    &ConvertOp::Reinterpret {
                        from: tv::Int(Int::I32),
                        to: tv::Float(Float::F32),
                    },
                    Value::I32(c),
                ) => Value::F32(c.reinterpret()),
                (
                    &ConvertOp::Reinterpret {
                        from: tv::Int(Int::I64),
                        to: tv::Float(Float::F64),
                    },
                    Value::I64(c),
                ) => Value::F64(c.reinterpret()),
                (
                    &ConvertOp::Reinterpret {
                        from: tv::Float(Float::F32),
                        to: tv::Int(Int::I32),
                    },
                    Value::F32(c),
                ) => Value::I32(c.reinterpret()),
                (
                    &ConvertOp::Reinterpret {
                        from: tv::Float(Float::F64),
                        to: tv::Int(Int::I64),
                    },
                    Value::F64(c),
                ) => Value::I64(c.reinterpret()),

                (&ConvertOp::F32DemoteF64, Value::F64(c)) => Value::F32(c.demote()),
                (&ConvertOp::F64PromoteF32, Value::F32(c)) => Value::F64(c.promote()),
                _ => unreachable!(),
            })
        };

        if let Some(v) = cls(&op, &c) {
            self.stack.push(v);
            Ok(Continue)
        } else {
            Err(Trap {
                origin: TrapOrigin::UndefinedResult,
            })
        }
    }

    /// GetGlobal
    fn get_global(&mut self, idx: Index) -> IntResult {
        self.stack
            .push(self.globals[self.frame.module().global_addrs[idx as usize]].value);
        Ok(Continue)
    }

    /// SetGlobal
    fn set_global(&mut self, idx: Index) -> IntResult {
        // "Validation ensures that the global is, in fact, marked as mutable."
        let val = self.stack.pop().unwrap();
        self.globals[self.frame.module().global_addrs[idx as usize]].value = val;
        Ok(Continue)
    }

    /// Push local idx on the Stack
    fn get_local(&mut self, idx: Index) -> IntResult {
        let val = self.stack[self.frame.stack_idx + (idx as usize)];
        self.stack.push(val);
        Ok(Continue)
    }

    /// Update local idx based on the value popped from the stack
    fn set_local(&mut self, idx: Index) -> IntResult {
        self.stack[self.frame.stack_idx + (idx as usize)] = self.stack.pop().unwrap();
        Ok(Continue)
    }

    /// Update the local idx without popping the top of the stack
    fn tee_local(&mut self, idx: Index) -> IntResult {
        self.stack[self.frame.stack_idx + (idx as usize)] = *self.stack.last().unwrap();
        Ok(Continue)
    }

    fn call_module(&mut self, f_inst: &ModuleFuncInst) -> IntResult {
        // Push locals
        for l in &f_inst.code.locals {
            match *l {
                types::Value::Int(types::Int::I32) => self.stack.push(Value::I32(0)),
                types::Value::Int(types::Int::I64) => self.stack.push(Value::I64(0)),
                types::Value::Float(types::Float::F32) => self.stack.push(Value::F32(0.0)),
                types::Value::Float(types::Float::F64) => self.stack.push(Value::F64(0.0)),
            }
        }

        // Push the frame
        let frame_begin = self.stack.len() - f_inst.type_.args.len() - f_inst.code.locals.len();
        let new_frame = self
            .frame
            .push(Some(f_inst.module.clone()), frame_begin)
            .ok_or(Trap {
                origin: TrapOrigin::StackOverflow,
            })?;

        // Execute the function inside a block
        let old_frame = mem::replace(&mut self.frame, new_frame);
        self.block(&f_inst.type_.result, &f_inst.code.body)?;
        self.frame = old_frame;

        // Remove locals/args
        let drain_start = frame_begin;
        let drain_end = self.stack.len() - f_inst.type_.result.len();
        self.stack.drain(drain_start..drain_end);
        Ok(Continue)
    }

    fn call_host(&mut self, f_inst: &HostFuncInst) -> IntResult {
        /*
        let stack_before_call = self.stack.len();
        */

        if let Some(err) = (f_inst.hostcode)(self) {
            return Err(Trap {
                origin: TrapOrigin::HostFunction(err),
            });
        }

        // Stack must be valid
        /*
        assert_eq!(self.stack.len(), stack_before_call);
        for (arg, type_) in self.stack[stack_before_call..]

            .iter()
            .zip(f_inst.type_.args.iter())
        {
            match (arg, type_) {
                (&Value::I32(_), &types::Value::Int(types::Int::I32)) => (),
                (&Value::I64(_), &types::Value::Int(types::Int::I64)) => (),
                (&Value::F32(_), &types::Value::Float(types::Float::F32)) => (),
                (&Value::F64(_), &types::Value::Float(types::Float::F64)) => (),
                _ => {
                    panic!("Invalid return value by host function.");
                }
            };
        }

        // Remove args
        let drain_end = self.stack.len() - f_inst.type_.result.len();
        self.stack
            .drain((stack_before_call - f_inst.type_.args.len())..drain_end);
        */

        Ok(Continue)
    }

    /// Call a function directly
    pub fn call(&mut self, f_addr: FuncAddr) -> IntResult {
        // Idea: the new stack_idx is the base frame pointer, which point to the
        // first argument of the called function. When calling call, all
        // arguments should already be on the stack (thanks to validation).
        match self.funcs[f_addr] {
            FuncInst::Module(ref f_inst) => self.call_module(f_inst)?,
            FuncInst::Host(ref f_inst) => self.call_host(f_inst)?,
        };

        Ok(Continue)
    }

    /// Call a function indirectly
    fn call_indirect(&mut self, idx: Index) -> IntResult {
        // For the MVP, only the table at index 0 exists and is implicitly referenced
        let tab = &self.tables[self.frame.module().table_addrs[0]];
        let type_ = &self.frame.module().types[idx as usize];
        let indirect_idx = match self.stack.pop().unwrap() {
            Value::I32(c) => c as usize,
            _ => unreachable!(),
        };

        if indirect_idx >= tab.elem.len() {
            return Err(Trap {
                origin: TrapOrigin::CallIndirectElemNotFound,
            });
        }

        let func_addr = match tab.elem[indirect_idx] {
            Some(c) => c,
            None => {
                return Err(Trap {
                    origin: TrapOrigin::CallIndirectElemUnitialized,
                });
            }
        };

        let f = &self.funcs[func_addr];
        let f_type_ = match *f {
            FuncInst::Module(ref f) => &f.type_,
            FuncInst::Host(ref f) => &f.type_,
        };
        if f_type_ != type_ {
            return Err(Trap {
                origin: TrapOrigin::CallIndirectTypesDiffer,
            });
        }
        self.call(func_addr)
    }

    /// Return to the caller of the current function
    fn return_(&self) -> IntResult {
        Ok(Return)
    }

    /// Get the size of the current memory
    fn current_memory(&mut self) -> IntResult {
        self.stack.push(Value::I32(
            self.mems.size(self.frame.module().mem_addrs[0]) as u32
        ));
        Ok(Continue)
    }

    /// Grow the memory
    fn grow_memory(&mut self) -> IntResult {
        let new_pages = match self.stack.pop().unwrap() {
            Value::I32(c) => c as usize,
            _ => unreachable!(),
        };
        if let Some(old_size) = self.mems.grow(self.frame.module().mem_addrs[0], new_pages) {
            self.stack.push(Value::I32(old_size as u32));
        } else {
            self.stack.push(Value::from_i32(-1));
        }
        Ok(Continue)
    }

    /// Load memory (dispatcher)
    fn load(&mut self, memop: &LoadOp) -> IntResult {
        use super::types::Value as Tv;
        use super::types::{Float, Int};

        let mem = &self.mems[self.frame.module().mem_addrs[0]];
        let offset = match self.stack.pop().unwrap() {
            Value::I32(c) => c as usize + memop.offset as usize,
            _ => unreachable!(),
        };
        let (size_in_bits, signed) = memop.opt.unwrap_or((memop.type_.bit_width(), false));
        let size_in_bytes: usize = (size_in_bits as usize) / 8;

        if offset + size_in_bytes > mem.data.len() {
            return Err(Trap {
                origin: TrapOrigin::LoadOutOfMemory,
            });
        }
        let bits: &[u8] = &mem.data[offset..(offset + size_in_bytes)];

        let res = match (size_in_bits, signed, memop.type_) {
            (8, false, Tv::Int(Int::I32)) => Value::I32(bits[0] as u32),
            (8, true, Tv::Int(Int::I32)) => Value::I32(bits[0] as i8 as u32),
            (16, false, Tv::Int(Int::I32)) => {
                Value::I32(u16::from_le_bytes([bits[0], bits[1]]) as u32)
            }
            (16, true, Tv::Int(Int::I32)) => {
                Value::I32(i16::from_le_bytes([bits[0], bits[1]]) as u32)
            }
            (32, false, Tv::Int(Int::I32)) => {
                Value::I32(u32::from_le_bytes([bits[0], bits[1], bits[2], bits[3]]) as u32)
            }
            (32, true, Tv::Int(Int::I32)) => {
                Value::I32(i32::from_le_bytes([bits[0], bits[1], bits[2], bits[3]]) as u32)
            }

            (8, false, Tv::Int(Int::I64)) => Value::I64(bits[0] as u64),
            (8, true, Tv::Int(Int::I64)) => Value::I64(bits[0] as i8 as u64),
            (16, false, Tv::Int(Int::I64)) => {
                Value::I64(u16::from_le_bytes([bits[0], bits[1]]) as u64)
            }
            (16, true, Tv::Int(Int::I64)) => {
                Value::I64(i16::from_le_bytes([bits[0], bits[1]]) as u64)
            }
            (32, false, Tv::Int(Int::I64)) => {
                Value::I64(u32::from_le_bytes([bits[0], bits[1], bits[2], bits[3]]) as u64)
            }
            (32, true, Tv::Int(Int::I64)) => {
                Value::I64(i32::from_le_bytes([bits[0], bits[1], bits[2], bits[3]]) as u64)
            }
            (64, false, Tv::Int(Int::I64)) => Value::I64(u64::from_le_bytes([
                bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7],
            ]) as u64),
            (64, true, Tv::Int(Int::I64)) => Value::I64(i64::from_le_bytes([
                bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7],
            ]) as u64),

            (32, false, Tv::Float(Float::F32)) => Value::F32(f32::from_bits(u32::from_le_bytes([
                bits[0], bits[1], bits[2], bits[3],
            ]))),
            (64, false, Tv::Float(Float::F64)) => Value::F64(f64::from_bits(u64::from_le_bytes([
                bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7],
            ]))),
            _ => unreachable!(),
        };
        self.stack.push(res);
        Ok(Continue)
    }

    /// Store memory (dispatcher)
    fn store(&mut self, memop: &StoreOp) -> IntResult {
        use super::types::Value as Tv;
        use super::types::{Float, Int};

        let mem = &mut self.mems[self.frame.module().mem_addrs[0]];
        let c = self.stack.pop().unwrap();
        let offset = match self.stack.pop().unwrap() {
            Value::I32(c) => c as usize + memop.offset as usize,
            _ => unreachable!(),
        };
        let size_in_bits = memop.opt.unwrap_or_else(|| memop.type_.bit_width());
        let size_in_bytes: usize = (size_in_bits as usize) / 8;

        if offset + size_in_bytes > mem.data.len() {
            return Err(Trap {
                origin: TrapOrigin::StoreOutOfMemory,
            });
        }
        let bits = &mut mem.data[offset..(offset + size_in_bytes)];
        match (size_in_bits, memop.type_, c) {
            (8, Tv::Int(Int::I32), Value::I32(c)) => bits[0] = c as u8,
            (16, Tv::Int(Int::I32), Value::I32(c)) => {
                let b = (c as u16).to_le_bytes();
                bits[0] = b[0];
                bits[1] = b[1];
            }
            (32, Tv::Int(Int::I32), Value::I32(c)) => {
                let b = (c as u32).to_le_bytes();
                bits[0] = b[0];
                bits[1] = b[1];
                bits[2] = b[2];
                bits[3] = b[3];
            }

            (8, Tv::Int(Int::I64), Value::I64(c)) => bits[0] = c as u8,
            (16, Tv::Int(Int::I64), Value::I64(c)) => {
                let b = (c as u16).to_le_bytes();
                bits[0] = b[0];
                bits[1] = b[1];
            }
            (32, Tv::Int(Int::I64), Value::I64(c)) => {
                let b = (c as u32).to_le_bytes();
                bits[0] = b[0];
                bits[1] = b[1];
                bits[2] = b[2];
                bits[3] = b[3];
            }
            (64, Tv::Int(Int::I64), Value::I64(c)) => {
                let b = (c as u64).to_le_bytes();
                bits[0] = b[0];
                bits[1] = b[1];
                bits[2] = b[2];
                bits[3] = b[3];
                bits[4] = b[4];
                bits[5] = b[5];
                bits[6] = b[6];
                bits[7] = b[7];
            }

            (32, Tv::Float(Float::F32), Value::F32(c)) => {
                let b = (c as f32).to_bits().to_le_bytes();
                bits[0] = b[0];
                bits[1] = b[1];
                bits[2] = b[2];
                bits[3] = b[3];
            }
            (64, Tv::Float(Float::F64), Value::F64(c)) => {
                let b = (c as f64).to_bits().to_le_bytes();
                bits[0] = b[0];
                bits[1] = b[1];
                bits[2] = b[2];
                bits[3] = b[3];
                bits[4] = b[4];
                bits[5] = b[5];
                bits[6] = b[6];
                bits[7] = b[7];
            }
            _ => unreachable!(),
        };
        Ok(Continue)
    }

    /// Pops two values from the stack, assuming that the stack is large enough to do so.
    fn pop2(&mut self) -> (Value, Value) {
        let b = self.stack.pop().unwrap();
        let a = self.stack.pop().unwrap();
        (a, b)
    }
}

/// Evaluate a constant expression (sequence of a single instruction) and return its value
///
/// While this functionality is already provided by the default interpreter
/// mode, this version works with a more limited context and less allocations.
///
/// Panic if called with a sequence of instruction that is not a constant expression.
pub fn eval_const_expr(
    globals: &GlobalInstStore,
    mod_globals: &[GlobalAddr],
    expr: &[Instr],
) -> Value {
    if expr.len() != 1 {
        panic!("constant expressions must have exactly only one instruction");
    }

    match expr[0] {
        Instr::Const(c) => c,
        Instr::GetGlobal(idx) => globals[mod_globals[idx as usize]].value,
        _ => panic!("not a constant expression"),
    }
}
