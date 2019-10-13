use ast;
use types;
use types::Value::*;
use types::Int::*;
use types::Float::*;

use std::collections::HashSet;

static EMPTY_TYPE: [types::Value; 0] = [];

pub fn is_valid(module: &ast::Module) -> bool {
	check_module(module).is_some()
}

#[derive(PartialEq, Clone, Copy)]
/// Represent the type of an operand on the stack of the machine.
enum Operand {
	/// Operand with any type. This is used by polymorphic instructions.
	Any,
	/// Operand with an exact type.
	Exact(types::Value),
}

/// A `Frame` record an entered block.
struct Frame<'a> {
	/// Type of label associated to the block
	label_type: &'a[types::Value],
	/// Result type of the block
	end_type: &'a[types::Value],
	/// Height of the operand stack at the start of the block
	init_len: usize,
	/// Whether the rest of the block is unreachable (used to handle stack-polymorphic
	/// typing after branches)
	unreachable: bool,
}

/// A typing context for a module
struct ModContext<'a> {
	types: &'a [types::Func],
	funcs: Vec<&'a types::Func>,
	tables: Vec<&'a types::Table>,
	memories: Vec<&'a types::Memory>,
	globals: Vec<&'a types::Global>,
}

/// A typing context for a function
struct FuncContext {
	locals: Vec<types::Value>,
	return_type: Vec<types::Value>,
}

// Instead of indicating the validity of a component through a boolean, we use
// the empty option type `Option<()>` where Some(()) represent a correct result
// and None represents an error. This way we can use the `?` operator to bubble
// up any error encountered along the way.

fn require(b: bool) -> Option<()> {
	if b { Some(()) } else { None }
}

fn pop_operand(operands: &mut Vec<Operand>, frames: &Vec<Frame>) -> Option<Operand> {
	debug_assert!(
		!frames.is_empty(),
		"validation of instructions should always happen in a frame"
	);
	let curr_frame = frames.last().unwrap();

	if curr_frame.unreachable && operands.len() == curr_frame.init_len {
		// If the block is marked unreachable, the current operand stack is polymorphic.
		// Therefore any value will do if the operand stack of the frame is empty.
		return Some(Operand::Any);
	}

	if operands.len() <= curr_frame.init_len {
		None
	} else {
		operands.pop()
	}
}

fn pop_expected(
	operands: &mut Vec<Operand>,
	frames: &Vec<Frame>,
	expected: Operand
) -> Option<Operand> {
	let actual = pop_operand(operands, frames)?;

	match (actual, expected) {
		(Operand::Any, _) => Some(expected), // can fit any expectation
		(_, Operand::Any) => Some(actual), // no constraint
		(Operand::Exact(t1), Operand::Exact(t2)) if t1 == t2 => Some(actual),
		_ => None,
	}
}

fn exact_step(
	operands: &mut Vec<Operand>,
	frames: &Vec<Frame>,
	from: &[types::Value],
	to: &[types::Value],
) -> Option<()> {
	for expected in from.iter().rev() {
		let _ = pop_expected(operands, frames, Operand::Exact(*expected))?;
	}

	for new in to.iter() {
		operands.push(Operand::Exact(*new));
	}

	Some(())
}

fn push_frame<'a>(
	frames: &mut Vec<Frame<'a>>,
	label_type: &'a [types::Value],
	end_type: &'a [types::Value],
	operands_len: usize,
) {
	frames.push(Frame {
		label_type: label_type,
		end_type: end_type,
		init_len: operands_len,
		unreachable: false,
	});
}

fn pop_frame(frames: &mut Vec<Frame>, operands: &mut Vec<Operand>) -> Option<()> {
	debug_assert!(
		!frames.is_empty(),
		"validation of instructions should always happen in a frame"
	);

	let end_type_len = {
		let end_type = &frames.last().unwrap().end_type[..];
		exact_step(operands, frames, end_type, end_type)?;
		end_type.len()
	};
	let frame = frames.pop().unwrap();
	require(frame.init_len == operands.len() - end_type_len)
}

fn unreachable(frames: &mut Vec<Frame>, operands: &mut Vec<Operand>) {
	debug_assert!(
		!frames.is_empty(),
		"validation of instructions should always happen in a frame"
	);
	let curr_frame = frames.last_mut().unwrap();

	operands.truncate(curr_frame.init_len);
	curr_frame.unreachable = true;
}

fn get_label<'a>(frames: &Vec<Frame<'a>>, nesting_levels: u32) -> Option<&'a [types::Value]> {
	debug_assert!(
		!frames.is_empty(),
		"validation of instructions should always happen in a frame"
	);

	if (nesting_levels as usize) < frames.len() {
		Some(frames[frames.len() - nesting_levels as usize - 1].label_type)
	} else {
		None
	}
}

fn check_const_expr(mod_ctx: &ModContext, instrs: &[ast::Instr], result: types::Value) -> Option<()> {
	// Right now constant expressions are limited to Const and GetGlobal. A
	// direct consequence is that to be valid with type `result`, a constant
	// expression must have a single instruction that leaves a value of type
	// `result` on the operand stack.

	require(instrs.len() == 1)?;

	match instrs[0] {
		ast::Instr::Const(v) => require(v.type_() == result),
		ast::Instr::GetGlobal(x) => {
			let global = mod_ctx.globals.get(x as usize)?;
			require(!global.mutable && global.value == result)
		}
		_ => None,
	}
}

/// Check that the instruction sequence `instrs` is valid and has type `end_type`.
/// The result is left on the stack.
fn check_expr<'a>(
	mod_ctx: &ModContext,
	func_ctx: &FuncContext,
	operands: &mut Vec<Operand>,
	frames: &mut Vec<Frame<'a>>,
	label_type: &'a [types::Value],
	end_type: &'a [types::Value],
	instrs: &'a [ast::Instr],
) -> Option<()> {
	push_frame(frames, label_type, end_type, operands.len());

	for instr in instrs {
		check_instr(mod_ctx, func_ctx, operands, frames, instr)?;
	}

	pop_frame(frames, operands)
}

fn check_instr<'a>(
	mod_ctx: &ModContext,
	func_ctx: &FuncContext,
	operands: &mut Vec<Operand>,
	frames: &mut Vec<Frame<'a>>,
	instr: &'a ast::Instr,
) -> Option<()> {
	use ast::Instr::*;

	match *instr {
		Nop => {}

		Unreachable => {
			unreachable(frames, operands);
		}

		Block(ref result_type, ref instrs) => {
			check_expr(mod_ctx, func_ctx, operands, frames, &result_type[..], &result_type[..], instrs)?;
		}

		Loop(ref result_type, ref instrs) => {
			check_expr(mod_ctx, func_ctx, operands, frames, &EMPTY_TYPE[..], &result_type[..], instrs)?;
		}

		If(ref result_type, ref instrs_then, ref instrs_else) => {
			pop_expected(operands, frames, Operand::Exact(Int(I32)))?;
			check_expr(mod_ctx, func_ctx, operands, frames, &result_type[..], &result_type[..], instrs_then)?;
			// if the "if" part has a return type, the else part must be checked, even if it is empty
			if !instrs_else.is_empty() || !result_type.is_empty(){
				// if there is an "else", we need to remove the result of the "then" part first
				for _ in result_type {
					let _ = pop_operand(operands, frames)?;
				}
				check_expr(mod_ctx, func_ctx, operands, frames, &result_type[..], &result_type[..], instrs_else)?;
			}
		}

		Br(nesting_levels) => {
			{
				let label_type = get_label(frames, nesting_levels)?;
				exact_step(operands, frames, label_type, &[])?;
			}
			unreachable(frames, operands);
		}

		BrIf(nesting_levels) => {
			pop_expected(operands, frames, Operand::Exact(Int(I32)))?;
			let label_type = get_label(frames, nesting_levels)?;
			exact_step(operands, frames, label_type, label_type)?;
		}

		BrTable(ref choices, default) => {
			{
				pop_expected(operands, frames, Operand::Exact(Int(I32)))?;
				// all labels must have the same type
				let label_type = get_label(frames, default)?;
				for choice in choices {
					require(get_label(frames, *choice)? == &label_type[..])?;
				}
				exact_step(operands, frames, label_type, &[])?;
			}
			unreachable(frames, operands);
		}

		Return => {
			exact_step(operands, frames, &func_ctx.return_type[..], &[])?;
			unreachable(frames, operands);
		}

		Call(func_index) => {
			let func = mod_ctx.funcs.get(func_index as usize)?;
			exact_step(operands, frames, &func.args[..], &func.result[..])?;
		}

		CallIndirect(index) => {
			let _ = mod_ctx.tables.get(0)?;
			let func = mod_ctx.types.get(index as usize)?;
			pop_expected(operands, frames, Operand::Exact(Int(I32)))?;
			exact_step(operands, frames, &func.args[..], &func.result[..])?;
		}

		Drop_ => {
			let _ = pop_operand(operands, frames)?;
		}

		Select => {
			pop_expected(operands, frames, Operand::Exact(Int(I32)))?;
			let t = pop_operand(operands, frames)?;
			let _ = pop_expected(operands, frames, t)?;
			operands.push(t);
		}

		GetLocal(x) => {
			let t = *func_ctx.locals.get(x as usize)?;
			exact_step(operands, frames, &[], &[t])?;
		}

		SetLocal(x) => {
			let t = *func_ctx.locals.get(x as usize)?;
			exact_step(operands, frames, &[t], &[])?;
		}

		TeeLocal(x) => {
			let t = *func_ctx.locals.get(x as usize)?;
			exact_step(operands, frames, &[t], &[t])?;
		}

		GetGlobal(x) => {
			let t = mod_ctx.globals.get(x as usize)?.value;
			exact_step(operands, frames, &[], &[t])?;
		}

		SetGlobal(x) => {
			let t = {
				let global = mod_ctx.globals.get(x as usize)?;
				require(global.mutable)?;
				global.value
			};
			exact_step(operands, frames, &[t], &[])?;
		}

		Load(ref load_op) => {
			check_mem_op(mod_ctx, load_op, |&(size, _)| size)?;
			exact_step(operands, frames, &[Int(I32)], &[load_op.type_])?;
		}

		Store(ref store_op) => {
			check_mem_op(mod_ctx, store_op, |&size| size)?;
			exact_step(operands, frames, &[Int(I32), store_op.type_], &[])?;
		}

		CurrentMemory => {
			require(!mod_ctx.memories.is_empty())?;
			exact_step(operands, frames, &[], &[Int(I32)])?;
		}

		GrowMemory => {
			require(!mod_ctx.memories.is_empty())?;
			exact_step(operands, frames, &[Int(I32)], &[Int(I32)])?;
		}

		Const(v) => operands.push(Operand::Exact(v.type_())),

		ITest(t, _) => {
			exact_step(operands, frames, &[Int(t)], &[Int(I32)])?;
		}

		IUnary(t, _) => {
			exact_step(operands, frames, &[Int(t)], &[Int(t)])?;
		}

		FUnary(t, _) => {
			exact_step(operands, frames, &[Float(t)], &[Float(t)])?;
		}

		IBin(t, _) => {
			exact_step(operands, frames, &[Int(t), Int(t)], &[Int(t)])?;
		}

		FBin(t, _) => {
			exact_step(operands, frames, &[Float(t), Float(t)], &[Float(t)])?;
		}

		IRel(t, _) => {
			exact_step(operands, frames, &[Int(t), Int(t)], &[Int(I32)])?;
		}

		FRel(t, _) => {
			exact_step(operands, frames, &[Float(t), Float(t)], &[Int(I32)])?;
		}

		Convert(ref convert_op) => {
			check_convert_op(operands, frames, convert_op)?;
		}
	}

	Some(())
}

fn check_mem_op<T, F>(mod_ctx: &ModContext, load_op: &ast::MemOp<T>, get_size: F) -> Option<()>
	where F: Fn(&T) -> u32
{
	require(!mod_ctx.memories.is_empty())?;

	let size = match load_op.opt {
		Some(ref opt) => get_size(opt),
		None => load_op.type_.bit_width(),
	};

	if 1 << load_op.align > size / 8 {
		return None;
	}

	Some(())
}

fn check_convert_op(
	operands: &mut Vec<Operand>,
	frames: &mut Vec<Frame>,
	convert_op: &ast::ConvertOp,
) -> Option<()> {
	use ast::ConvertOp::*;

	match *convert_op {
		I32WrapI64 => {
			exact_step(operands, frames, &[Int(I64)], &[Int(I32)])
		}
		I64ExtendUI32 | I64ExtendSI32 => {
			exact_step(operands, frames, &[Int(I32)], &[Int(I64)])
		}
		F32DemoteF64 => {
			exact_step(operands, frames, &[Float(F64)], &[Float(F32)])
		}
		F64PromoteF32 => {
			exact_step(operands, frames, &[Float(F32)], &[Float(F64)])
		}
		Reinterpret { from, to, .. } => {
			exact_step(operands, frames, &[from], &[to])
		}
		Trunc { from, to, .. } => {
			exact_step(operands, frames, &[Float(from)], &[Int(to)])
		}
		Convert { from, to, .. } => {
			exact_step(operands, frames, &[Int(from)], &[Float(to)])
		}
	}
}

fn check_func(mod_ctx: &ModContext, func: &ast::Func) -> Option<()> {
	// TODO: cache those vectors to reuse allocated memory
	let mut frames = Vec::new();
	let mut operands = Vec::new();

	let t = mod_ctx.types.get(func.type_index as usize)?;

	let mut locals = t.args.clone();
	locals.extend(func.locals.iter().cloned());
	let return_type = t.result.clone();

	let func_ctx = FuncContext { locals, return_type };

	check_expr(mod_ctx, &func_ctx, &mut operands, &mut frames, &t.result[..], &t.result[..], &func.body[..])
}

fn check_type(type_: &types::Func) -> Option<()> {
	require(type_.result.len() <= 1) // May be lifted in future versions
}

fn check_limits(limits: &types::Limits) -> Option<()> {
	match limits.max {
		Some(max) if limits.min > max => None,
		_ => Some(()),
	}
}

fn check_table(table: &ast::Table) -> Option<()> {
	check_limits(&table.type_.limits)
}

fn check_memory(mem: &ast::Memory) -> Option<()> {
	// Can't allocate more than 4GB since its a 32-bits machine
	let max = (1 << 32) / 65536;
	if mem.type_.limits.min as usize > max ||
		(mem.type_.limits.max.is_some() &&
		 mem.type_.limits.max.unwrap() as usize > max) {
		return None
	}
	check_limits(&mem.type_.limits)
}

fn check_global(mod_ctx: &ModContext, global: &ast::Global) -> Option<()> {
	check_const_expr(mod_ctx, &global.value, global.type_.value)
}

fn check_elem(mod_ctx: &ModContext, elem: &ast::Segment<ast::Index>) -> Option<()> {
	let _ = mod_ctx.tables.get(elem.index as usize)?;
	for index in &elem.init {
		let _ = mod_ctx.funcs.get(*index as usize)?;
	}
	check_const_expr(mod_ctx, &elem.offset, Int(I32))
}

fn check_data(mod_ctx: &ModContext, data: &ast::Segment<u8>) -> Option<()> {
	let _ = mod_ctx.memories.get(data.index as usize)?;
	check_const_expr(mod_ctx, &data.offset, Int(I32))
}

fn check_start(mod_ctx: &ModContext, start: &ast::Index) -> Option<()> {
	let func = mod_ctx.funcs.get(*start as usize)?;
	require(func.args.is_empty() && func.result.is_empty())
}

fn check_export(mod_ctx: &ModContext, export: &ast::Export) -> Option<()> {
	use ast::ExportDesc::*;

	match export.desc {
		Func(x) => require((x as usize) < mod_ctx.funcs.len()),
		Table(x) => require((x as usize) < mod_ctx.tables.len()),
		Memory(x) => require((x as usize) < mod_ctx.memories.len()),
		Global(x) => require(!mod_ctx.globals.get(x as usize)?.mutable),
	}
}

/// Validate an import and insert it into the context of the module
fn check_import<'a>(ctx: &mut ModContext<'a>, import: &'a ast::Import) -> Option<()> {
	use ast::ImportDesc::*;

	match import.desc {
		Func(x) => {
			ctx.funcs.push(ctx.types.get(x as usize)?);
		}
		Table(ref table_type) => {
			check_limits(&table_type.limits)?;
			ctx.tables.push(table_type);
		}
		Memory(ref mem_type) => {
			check_limits(&mem_type.limits)?;
			ctx.memories.push(mem_type);
		}
		Global(ref global_type) => {
			require(!global_type.mutable)?;
			ctx.globals.push(global_type);
		}
	}

	Some(())
}

fn check_module(module: &ast::Module) -> Option<()> {
	// create an empty context with only the types defined in the module
	let mut mod_ctx = ModContext {
		types: &module.types,
		funcs: Vec::new(),
		tables: Vec::new(),
		memories: Vec::new(),
		globals: Vec::new(),
	};

	// first resolve imports from the module
	for import in &module.imports {
		check_import(&mut mod_ctx, import)?;
	}

	// then extend the context with funcs, tables and memories from the module
	for func in &module.funcs {
		mod_ctx.funcs.push(mod_ctx.types.get(func.type_index as usize)?);
	}
	mod_ctx.tables.extend(module.tables.iter().map(|table| &table.type_));
	mod_ctx.memories.extend(module.memories.iter().map(|mem| &mem.type_));

	// check globals before adding them to the context to prevent recursivity
	for global in &module.globals {
		check_global(&mod_ctx, global)?;
	}
	mod_ctx.globals.extend(module.globals.iter().map(|global| &global.type_));

	// finaly check everything else
	for type_ in &module.types {
		check_type(type_)?;
	}
	for func in &module.funcs {
		check_func(&mod_ctx, func)?;
	}
	for table in &module.tables {
		check_table(table)?;
	}
	for mem in &module.memories {
		check_memory(mem)?;
	}
	for elem in &module.elems {
		check_elem(&mod_ctx, elem)?;
	}
	for data in &module.data {
		check_data(&mod_ctx, data)?;
	}
	if let Some(ref func) = module.start {
		check_start(&mod_ctx, func)?;
	}
	let mut unique_exports = HashSet::new();
	for export in &module.exports {
		check_export(&mod_ctx, export)?;
		require(!unique_exports.contains(&export.name))?;
		unique_exports.insert(&export.name);
	}

	require(mod_ctx.tables.len() <= 1 && mod_ctx.memories.len() <= 1)
}
