use std::{i32, i64, io};
use std::io::Read;
use ops::IntOp;

use types;
use ast::*;
use values::Value;

const MAGIC: u32 = 0x6d736100;

pub const VERSION: u32 = 1;

/// Decode a Web Assembly module from the given `reader`
pub fn decode<R: Read>(reader: R) -> Result<Module, DecodeError> {
	Decoder { reader: reader, pos: 0 }.read_module()
}

#[derive(Debug)]
pub enum DecodeError {
	Io(io::Error),
	MalformedBinary,
}

impl From<io::Error> for DecodeError {
	fn from(e: io::Error) -> Self {
		DecodeError::Io(e)
	}
}

type DecodeResult<T> = Result<T, DecodeError>;

struct Decoder<R: Read> {
	reader: R,
	pos: usize,
}

impl<R: Read> Decoder<R> {
	fn read_byte(&mut self) -> DecodeResult<u8> {
		let mut buf = [0];
		self.reader.read_exact(&mut buf)?;
		self.pos += 1;
		Ok(buf[0])
	}

	fn read_u16(&mut self) -> DecodeResult<u16> {
		let lo = self.read_byte()?;
		let hi = self.read_byte()?;
		Ok((hi as u16) << 8 | lo as u16)
	}

	fn read_u32(&mut self) -> DecodeResult<u32> {
		let lo = self.read_u16()?;
		let hi = self.read_u16()?;
		Ok((hi as u32) << 16 | lo as u32)
	}

	fn read_u64(&mut self) -> DecodeResult<u64> {
		let lo = self.read_u32()?;
		let hi = self.read_u32()?;
		Ok((hi as u64) << 32 | lo as u64)
	}

	fn read_bool(&mut self) -> DecodeResult<bool> {
		match self.read_byte()? {
			0 => Ok(false),
			1 => Ok(true),
			_ => Err(DecodeError::MalformedBinary),
		}
	}

	/// Read a LEB128 encoded 32-bits unsigned integer
	fn read_vu32(&mut self) -> DecodeResult<u32> {
		let mut res = 0;
		let mut shift = 0;
		loop {
			let b = self.read_byte()?;

			// forbid unused bits
			if shift >= 32 - 32 % 7 && (b & 0x7f >= 1 << (32 % 7)) {
				return Err(DecodeError::MalformedBinary);
			}

			res |= ((b & 0x7f) as u32) << shift;
			if b & 0x80 == 0 {
				return Ok(res);
			}
			shift += 7;

			if shift >= 32 {
				return Err(DecodeError::MalformedBinary);
			}
		}
	}

	/// Read a LEB128 encoded 32-bits signed integer
	fn read_vs32(&mut self) -> DecodeResult<i32> {
		let mut res = 0;
		let mut shift = 0;
		loop {
			let b = self.read_byte()?;

			// forbid unused bits
			if shift >= 32 - 32 % 7 {
				let mask = ((-1 << (32 % 7) - 1) & 0x7f) as u8;
				if b & mask != 0 && b & mask != mask {
					return Err(DecodeError::MalformedBinary);
				}
			}

			res |= ((b & 0x7f) as i32) << shift;
			shift += 7;
			if b & 0x80 == 0 {
				if shift < 32 && (b & 0x40 != 0) {
					res |= -1 << shift;
				}
				return Ok(res);
			}

			if shift >= 32 {
				return Err(DecodeError::MalformedBinary);
			}
		}
	}

	/// Read a LEB128 encoded 64-bits signed integer
	fn read_vs64(&mut self) -> DecodeResult<i64> {
		let mut res = 0;
		let mut shift = 0;
		loop {
			let b = self.read_byte()?;

			// forbid unused bits
			if shift >= 64 - 64 % 7 {
				let mask = 0x7fu8;
				if b & mask != 0 && b & mask != mask {
					return Err(DecodeError::MalformedBinary);
				}
			}

			res |= ((b & 0x7f) as i64) << shift;
			shift += 7;
			if b & 0x80 == 0 {
				if shift < 64 && (b & 0x40 != 0) {
					res |= -1 << shift;
				}
				return Ok(res);
			}

			if shift >= 64 {
				return Err(DecodeError::MalformedBinary);
			}
		}
	}

	fn read_f32(&mut self) -> DecodeResult<f32> {
		Ok(self.read_u32()?.reinterpret())
	}

	fn read_f64(&mut self) -> DecodeResult<f64> {
		Ok(self.read_u64()?.reinterpret())
	}

	fn read_vec<T, F>(&mut self, read_elem: F) -> DecodeResult<Vec<T>>
		where F: Fn(&mut Decoder<R>) -> DecodeResult<T>
	{
		let n = self.read_vu32()?;
		let mut vec = Vec::with_capacity(n as usize);
		for _ in 0..n {
			vec.push(read_elem(self)?);
		}
		Ok(vec)
	}

	fn read_name(&mut self) -> DecodeResult<String> {
		let vec = self.read_vec(Decoder::read_byte)?;
		match String::from_utf8(vec) {
			Ok(s) => Ok(s),
			Err(_) => Err(DecodeError::MalformedBinary),
		}
	}

	fn read_value_type(&mut self) -> DecodeResult<types::Value> {
		decode_value_type(self.read_byte()?)
	}

	fn read_block_type(&mut self) -> DecodeResult<Vec<types::Value>> {
		Ok(match self.read_byte()? {
			0x40 => vec![],
			b => vec![decode_value_type(b)?],
		})
	}

	fn read_func_type(&mut self) -> DecodeResult<types::Func> {
		if self.read_byte()? != 0x60 {
			return Err(DecodeError::MalformedBinary);
		}

		let args = self.read_vec(Decoder::read_value_type)?;
		let result = self.read_vec(Decoder::read_value_type)?;

		Ok(types::Func { args, result })
	}

	fn read_limits(&mut self) -> DecodeResult<types::Limits> {
		let has_max = self.read_bool()?;
		let min = self.read_vu32()?;
		let max = if has_max {
			Some(self.read_vu32()?)
		} else {
			None
		};

		Ok(types::Limits { min, max })
	}

	fn read_memory_type(&mut self) -> DecodeResult<types::Memory> {
		Ok(types::Memory { limits: self.read_limits()? })
	}

	fn read_elem_type(&mut self) -> DecodeResult<types::Elem> {
		if self.read_byte()? != 0x70 {
			return Err(DecodeError::MalformedBinary);
		}

		Ok(types::Elem::AnyFunc)
	}

	fn read_table_type(&mut self) -> DecodeResult<types::Table> {
		let elem = self.read_elem_type()?;
		let limits = self.read_limits()?;
		Ok(types::Table { limits, elem })
	}

	fn read_global_type(&mut self) -> DecodeResult<types::Global> {
		let value = self.read_value_type()?;
		let mutable = self.read_bool()?;
		Ok(types::Global { value, mutable })
	}

	fn read_index(&mut self) -> DecodeResult<Index> {
		self.read_vu32()
	}

	fn read_meta_instr(&mut self) -> DecodeResult<MetaInstr> {
		use ast::Instr::*;
		use types::Value::*;
		use types::Int::*;
		use types::Float::*;

		let opcode = self.read_byte()?;

		Ok(MetaInstr::Instr(match opcode {
			0x00 => Unreachable,
			0x01 => Nop,

			0x02 => {
				let block_type = self.read_block_type()?;
				let instrs = self.read_instr_block()?;
				Block(block_type, instrs)
			},
			0x03 => {
				let block_type = self.read_block_type()?;
				let instrs = self.read_instr_block()?;
				Loop(block_type, instrs)
			},
			0x04 => {
				let block_type = self.read_block_type()?;
				let (instrs1, delim) = self.read_instr_block_with_delim()?;
				let instrs2 = match delim {
					PseudoInstr::End => Vec::new(),
					PseudoInstr::Else => self.read_instr_block()?,
				};
				If(block_type, instrs1, instrs2)
			},

			0x05 => return Ok(MetaInstr::PseudoInstr(PseudoInstr::Else)),
			0x0b => return Ok(MetaInstr::PseudoInstr(PseudoInstr::End)),

			0x0c => Br(self.read_index()?),
			0x0d => BrIf(self.read_index()?),
			0x0e => BrTable(self.read_vec(Decoder::read_index)?, self.read_index()?),
			0x0f => Return,

			0x10 => Call(self.read_index()?),
			0x11 => {
				let index = self.read_index()?;
				if self.read_byte()? != 0 {
					return Err(DecodeError::MalformedBinary);
				}
				CallIndirect(index)
			},

			0x1a => Drop_,
			0x1b => Select,

			0x20 => GetLocal(self.read_index()?),
			0x21 => SetLocal(self.read_index()?),
			0x22 => TeeLocal(self.read_index()?),
			0x23 => GetGlobal(self.read_index()?),
			0x24 => SetGlobal(self.read_index()?),

			0x28 => self.read_load_op(Int(I32), None)?,
			0x29 => self.read_load_op(Int(I64), None)?,
			0x2a => self.read_load_op(Float(F32), None)?,
			0x2b => self.read_load_op(Float(F64), None)?,
			0x2c => self.read_load_op(Int(I32), Some((8, true)))?,
			0x2d => self.read_load_op(Int(I32), Some((8, false)))?,
			0x2e => self.read_load_op(Int(I32), Some((16, true)))?,
			0x2f => self.read_load_op(Int(I32), Some((16, false)))?,
			0x30 => self.read_load_op(Int(I64), Some((8, true)))?,
			0x31 => self.read_load_op(Int(I64), Some((8, false)))?,
			0x32 => self.read_load_op(Int(I64), Some((16, true)))?,
			0x33 => self.read_load_op(Int(I64), Some((16, false)))?,
			0x34 => self.read_load_op(Int(I64), Some((32, true)))?,
			0x35 => self.read_load_op(Int(I64), Some((32, false)))?,

			0x36 => self.read_store_op(Int(I32), None)?,
			0x37 => self.read_store_op(Int(I64), None)?,
			0x38 => self.read_store_op(Float(F32), None)?,
			0x39 => self.read_store_op(Float(F64), None)?,
			0x3a => self.read_store_op(Int(I32), Some(8))?,
			0x3b => self.read_store_op(Int(I32), Some(16))?,
			0x3c => self.read_store_op(Int(I64), Some(8))?,
			0x3d => self.read_store_op(Int(I64), Some(16))?,
			0x3e => self.read_store_op(Int(I64), Some(32))?,

			0x3f => {
				if self.read_byte()? != 0 {
					return Err(DecodeError::MalformedBinary);
				}
				CurrentMemory
			},
			0x40 => {
				if self.read_byte()? != 0 {
					return Err(DecodeError::MalformedBinary);
				}
				GrowMemory
			},

			0x41 => Const(Value::from_i32(self.read_vs32()?)),
			0x42 => Const(Value::from_i64(self.read_vs64()?)),
			0x43 => Const(Value::F32(self.read_f32()?)),
			0x44 => Const(Value::F64(self.read_f64()?)),

			0x45 => ITest(I32, ITestOp::Eqz),
			0x46 => IRel(I32, IRelOp::Eq_),
			0x47 => IRel(I32, IRelOp::Ne),
			0x48 => IRel(I32, IRelOp::LtS),
			0x49 => IRel(I32, IRelOp::LtU),
			0x4a => IRel(I32, IRelOp::GtS),
			0x4b => IRel(I32, IRelOp::GtU),
			0x4c => IRel(I32, IRelOp::LeS),
			0x4d => IRel(I32, IRelOp::LeU),
			0x4e => IRel(I32, IRelOp::GeS),
			0x4f => IRel(I32, IRelOp::GeU),

			0x50 => ITest(I64, ITestOp::Eqz),
			0x51 => IRel(I64, IRelOp::Eq_),
			0x52 => IRel(I64, IRelOp::Ne),
			0x53 => IRel(I64, IRelOp::LtS),
			0x54 => IRel(I64, IRelOp::LtU),
			0x55 => IRel(I64, IRelOp::GtS),
			0x56 => IRel(I64, IRelOp::GtU),
			0x57 => IRel(I64, IRelOp::LeS),
			0x58 => IRel(I64, IRelOp::LeU),
			0x59 => IRel(I64, IRelOp::GeS),
			0x5a => IRel(I64, IRelOp::GeU),

			0x5b => FRel(F32, FRelOp::Eq_),
			0x5c => FRel(F32, FRelOp::Ne),
			0x5d => FRel(F32, FRelOp::Lt),
			0x5e => FRel(F32, FRelOp::Gt),
			0x5f => FRel(F32, FRelOp::Le),
			0x60 => FRel(F32, FRelOp::Ge),

			0x61 => FRel(F64, FRelOp::Eq_),
			0x62 => FRel(F64, FRelOp::Ne),
			0x63 => FRel(F64, FRelOp::Lt),
			0x64 => FRel(F64, FRelOp::Gt),
			0x65 => FRel(F64, FRelOp::Le),
			0x66 => FRel(F64, FRelOp::Ge),

			0x67 => IUnary(I32, IUnOp::Clz),
			0x68 => IUnary(I32, IUnOp::Ctz),
			0x69 => IUnary(I32, IUnOp::Popcnt),
			0x6a => IBin(I32, IBinOp::Add),
			0x6b => IBin(I32, IBinOp::Sub),
			0x6c => IBin(I32, IBinOp::Mul),
			0x6d => IBin(I32, IBinOp::DivS),
			0x6e => IBin(I32, IBinOp::DivU),
			0x6f => IBin(I32, IBinOp::RemS),
			0x70 => IBin(I32, IBinOp::RemU),
			0x71 => IBin(I32, IBinOp::And),
			0x72 => IBin(I32, IBinOp::Or),
			0x73 => IBin(I32, IBinOp::Xor),
			0x74 => IBin(I32, IBinOp::Shl),
			0x75 => IBin(I32, IBinOp::ShrS),
			0x76 => IBin(I32, IBinOp::ShrU),
			0x77 => IBin(I32, IBinOp::Rotl),
			0x78 => IBin(I32, IBinOp::Rotr),

			0x79 => IUnary(I64, IUnOp::Clz),
			0x7a => IUnary(I64, IUnOp::Ctz),
			0x7b => IUnary(I64, IUnOp::Popcnt),
			0x7c => IBin(I64, IBinOp::Add),
			0x7d => IBin(I64, IBinOp::Sub),
			0x7e => IBin(I64, IBinOp::Mul),
			0x7f => IBin(I64, IBinOp::DivS),
			0x80 => IBin(I64, IBinOp::DivU),
			0x81 => IBin(I64, IBinOp::RemS),
			0x82 => IBin(I64, IBinOp::RemU),
			0x83 => IBin(I64, IBinOp::And),
			0x84 => IBin(I64, IBinOp::Or),
			0x85 => IBin(I64, IBinOp::Xor),
			0x86 => IBin(I64, IBinOp::Shl),
			0x87 => IBin(I64, IBinOp::ShrS),
			0x88 => IBin(I64, IBinOp::ShrU),
			0x89 => IBin(I64, IBinOp::Rotl),
			0x8a => IBin(I64, IBinOp::Rotr),

			0x8b => FUnary(F32, FUnOp::Abs),
			0x8c => FUnary(F32, FUnOp::Neg),
			0x8d => FUnary(F32, FUnOp::Ceil),
			0x8e => FUnary(F32, FUnOp::Floor),
			0x8f => FUnary(F32, FUnOp::Trunc),
			0x90 => FUnary(F32, FUnOp::Nearest),
			0x91 => FUnary(F32, FUnOp::Sqrt),
			0x92 => FBin(F32, FBinOp::Add),
			0x93 => FBin(F32, FBinOp::Sub),
			0x94 => FBin(F32, FBinOp::Mul),
			0x95 => FBin(F32, FBinOp::Div),
			0x96 => FBin(F32, FBinOp::Min),
			0x97 => FBin(F32, FBinOp::Max),
			0x98 => FBin(F32, FBinOp::CopySign),

			0x99 => FUnary(F64, FUnOp::Abs),
			0x9a => FUnary(F64, FUnOp::Neg),
			0x9b => FUnary(F64, FUnOp::Ceil),
			0x9c => FUnary(F64, FUnOp::Floor),
			0x9d => FUnary(F64, FUnOp::Trunc),
			0x9e => FUnary(F64, FUnOp::Nearest),
			0x9f => FUnary(F64, FUnOp::Sqrt),
			0xa0 => FBin(F64, FBinOp::Add),
			0xa1 => FBin(F64, FBinOp::Sub),
			0xa2 => FBin(F64, FBinOp::Mul),
			0xa3 => FBin(F64, FBinOp::Div),
			0xa4 => FBin(F64, FBinOp::Min),
			0xa5 => FBin(F64, FBinOp::Max),
			0xa6 => FBin(F64, FBinOp::CopySign),

			0xa7 => Convert(ConvertOp::I32WrapI64),
			0xa8 => Convert(ConvertOp::Trunc { from: F32, to: I32, signed: true }),
			0xa9 => Convert(ConvertOp::Trunc { from: F32, to: I32, signed: false }),
			0xaa => Convert(ConvertOp::Trunc { from: F64, to: I32, signed: true }),
			0xab => Convert(ConvertOp::Trunc { from: F64, to: I32, signed: false }),
			0xac => Convert(ConvertOp::I64ExtendSI32),
			0xad => Convert(ConvertOp::I64ExtendUI32),
			0xae => Convert(ConvertOp::Trunc { from: F32, to: I64, signed: true }),
			0xaf => Convert(ConvertOp::Trunc { from: F32, to: I64, signed: false }),
			0xb0 => Convert(ConvertOp::Trunc { from: F64, to: I64, signed: true }),
			0xb1 => Convert(ConvertOp::Trunc { from: F64, to: I64, signed: false }),
			0xb2 => Convert(ConvertOp::Convert { from: I32, to: F32, signed: true }),
			0xb3 => Convert(ConvertOp::Convert { from: I32, to: F32, signed: false }),
			0xb4 => Convert(ConvertOp::Convert { from: I64, to: F32, signed: true }),
			0xb5 => Convert(ConvertOp::Convert { from: I64, to: F32, signed: false }),
			0xb6 => Convert(ConvertOp::F32DemoteF64),
			0xb7 => Convert(ConvertOp::Convert { from: I32, to: F64, signed: true }),
			0xb8 => Convert(ConvertOp::Convert { from: I32, to: F64, signed: false }),
			0xb9 => Convert(ConvertOp::Convert { from: I64, to: F64, signed: true }),
			0xba => Convert(ConvertOp::Convert { from: I64, to: F64, signed: false }),
			0xbb => Convert(ConvertOp::F64PromoteF32),

			0xbc => Convert(ConvertOp::Reinterpret { from: Float(F32), to: Int(I32) }),
			0xbd => Convert(ConvertOp::Reinterpret { from: Float(F64), to: Int(I64) }),
			0xbe => Convert(ConvertOp::Reinterpret { from: Int(I32), to: Float(F32) }),
			0xbf => Convert(ConvertOp::Reinterpret { from: Int(I64), to: Float(F64) }),

			_ => return Err(DecodeError::MalformedBinary),
		}))
	}

	fn read_instr_block_with_delim(&mut self) -> DecodeResult<(Vec<Instr>, PseudoInstr)> {
		let mut res = Vec::new();
		loop {
			match self.read_meta_instr()? {
				MetaInstr::PseudoInstr(delim) => return Ok((res, delim)),
				MetaInstr::Instr(instr) => res.push(instr),
			}
		}
	}

	fn read_instr_block(&mut self) -> DecodeResult<Vec<Instr>> {
		let (instrs, delim) = self.read_instr_block_with_delim()?;
		match delim {
			PseudoInstr::Else => Err(DecodeError::MalformedBinary),
			PseudoInstr::End => Ok(instrs),
		}
	}

	fn read_expr(&mut self) -> DecodeResult<Vec<Instr>> {
		self.read_instr_block()
	}

	fn read_load_op(&mut self, type_: types::Value, opt: Option<(u32, bool)>) -> DecodeResult<Instr> {
		let align = self.read_vu32()?;
		let offset = self.read_vu32()?;
		Ok(Instr::Load(LoadOp { align, offset, type_, opt }))
	}

	fn read_store_op(&mut self, type_: types::Value, opt: Option<u32>) -> DecodeResult<Instr> {
		let align = self.read_vu32()?;
		let offset = self.read_vu32()?;
		Ok(Instr::Store(StoreOp { align, offset, type_, opt }))
	}

	fn skip_custom_section(&mut self, size: u32) -> DecodeResult<()> {
		// Even if we ignore custom sections, we must ensure that its name is valid utf8.
		let start_pos = self.pos;
		let _ = self.read_name()?;
		let nread = self.pos - start_pos;
		// ensure that we didn't read more than the declared size of the section
		if nread > size as usize {
			return Err(DecodeError::MalformedBinary);
		}
		let nskip = size as usize - nread;

		for _ in 0..nskip {
			let _ = self.read_byte()?;
		}

		Ok(())
	}

	fn read_type_section(&mut self) -> DecodeResult<Vec<types::Func>> {
		self.read_vec(Decoder::read_func_type)
	}

	fn read_import_desc(&mut self) -> DecodeResult<ImportDesc> {
		match self.read_byte()? {
			0x00 => Ok(ImportDesc::Func(self.read_index()?)),
			0x01 => Ok(ImportDesc::Table(self.read_table_type()?)),
			0x02 => Ok(ImportDesc::Memory(self.read_memory_type()?)),
			0x03 => Ok(ImportDesc::Global(self.read_global_type()?)),
			_ => Err(DecodeError::MalformedBinary),
		}
	}

	fn read_import(&mut self) -> DecodeResult<Import> {
		let module = self.read_name()?;
		let name = self.read_name()?;
		let desc = self.read_import_desc()?;
		Ok(Import { module, name, desc })
	}

	fn read_import_section(&mut self) -> DecodeResult<Vec<Import>> {
		self.read_vec(Decoder::read_import)
	}

	fn read_func_section(&mut self) -> DecodeResult<Vec<Index>> {
		self.read_vec(Decoder::read_index)
	}

	fn read_table(&mut self) -> DecodeResult<Table> {
		Ok(Table { type_: self.read_table_type()? })
	}

	fn read_table_section(&mut self) -> DecodeResult<Vec<Table>> {
		self.read_vec(Decoder::read_table)
	}

	fn read_memory(&mut self) -> DecodeResult<Memory> {
		Ok(Memory { type_: self.read_memory_type()? })
	}

	fn read_memory_section(&mut self) -> DecodeResult<Vec<Memory>> {
		self.read_vec(Decoder::read_memory)
	}

	fn read_global(&mut self) -> DecodeResult<Global> {
		let type_ = self.read_global_type()?;
		let value = self.read_expr()?;
		Ok(Global { type_, value })
	}

	fn read_global_section(&mut self) -> DecodeResult<Vec<Global>> {
		self.read_vec(Decoder::read_global)
	}

	fn read_export_desc(&mut self) -> DecodeResult<ExportDesc> {
		match self.read_byte()? {
			0x00 => Ok(ExportDesc::Func(self.read_index()?)),
			0x01 => Ok(ExportDesc::Table(self.read_index()?)),
			0x02 => Ok(ExportDesc::Memory(self.read_index()?)),
			0x03 => Ok(ExportDesc::Global(self.read_index()?)),
			_ => Err(DecodeError::MalformedBinary),
		}
	}

	fn read_export(&mut self) -> DecodeResult<Export> {
		let name = self.read_name()?;
		let desc = self.read_export_desc()?;
		Ok(Export { name, desc })
	}

	fn read_export_section(&mut self) -> DecodeResult<Vec<Export>> {
		self.read_vec(Decoder::read_export)
	}

	fn read_start_section(&mut self) -> DecodeResult<Option<Index>> {
		Ok(Some(self.read_index()?))
	}

	fn read_segment<T, F>(&mut self, read_elem: F) -> DecodeResult<Segment<T>>
		where F: Fn(&mut Decoder<R>) -> DecodeResult<T>
	{
		let index = self.read_index()?;
		let offset = self.read_expr()?;
		let init = self.read_vec(read_elem)?;
		Ok(Segment { index, offset, init })
	}

	fn read_elem(&mut self) -> DecodeResult<Segment<Index>> {
		self.read_segment(Decoder::read_index)
	}

	fn read_elem_section(&mut self) -> DecodeResult<Vec<Segment<Index>>> {
		self.read_vec(Decoder::read_elem)
	}

	fn read_locals(&mut self) -> DecodeResult<Vec<types::Value>> {
		let n = self.read_vu32()?;
		let t = self.read_value_type()?;
		Ok(vec![t; n as usize])
	}

	fn read_code(&mut self) -> DecodeResult<(Vec<types::Value>, Expr)> {
		let _size = self.read_vu32()?;
		// TODO: do not create intermediate vectors just to concatenate them
		let locals = self.read_vec(Decoder::read_locals)?.concat();
		let body = self.read_expr()?;
		Ok((locals, body))
	}

	fn read_code_section(&mut self) -> DecodeResult<Vec<(Vec<types::Value>, Expr)>> {
		self.read_vec(Decoder::read_code)
	}

	fn read_data(&mut self) -> DecodeResult<Segment<u8>> {
		self.read_segment(Decoder::read_byte)
	}

	fn read_data_section(&mut self) -> DecodeResult<Vec<Segment<u8>>> {
		self.read_vec(Decoder::read_data)
	}

	fn read_module(&mut self) -> DecodeResult<Module> {
		if self.read_u32()? != MAGIC {
			return Err(DecodeError::MalformedBinary);
		}
		if self.read_u32()? != VERSION {
			return Err(DecodeError::MalformedBinary);
		}

		let mut types = Vec::new();
		let mut imports = Vec::new();
		let mut func_types = Vec::new();
		let mut tables = Vec::new();
		let mut memories = Vec::new();
		let mut globals = Vec::new();
		let mut exports = Vec::new();
		let mut start = None;
		let mut elems = Vec::new();
		let mut func_bodies = Vec::new();
		let mut data = Vec::new();

		// All sections are optional and they are ordered according to their
		// id, except for custom section (id=0) that may appear anywhere.
		// TODO: enforce sections ordering and uniqueness

		loop {
			match self.read_byte() {
				Err(DecodeError::Io(ref e)) if e.kind() == io::ErrorKind::UnexpectedEof => break,
				Err(e) => return Err(e),
				Ok(id) => {
					let size = self.read_vu32()?;

					match id {
						0 => self.skip_custom_section(size)?, // ignore custom sections
						1 => types = self.read_type_section()?,
						2 => imports = self.read_import_section()?,
						3 => func_types = self.read_func_section()?,
						4 => tables = self.read_table_section()?,
						5 => memories = self.read_memory_section()?,
						6 => globals = self.read_global_section()?,
						7 => exports = self.read_export_section()?,
						8 => start = self.read_start_section()?,
						9 => elems = self.read_elem_section()?,
						10 => func_bodies = self.read_code_section()?,
						11 => data = self.read_data_section()?,
						_ => return Err(DecodeError::MalformedBinary),
					}
				}
			}
		}

		if func_types.len() != func_bodies.len() {
			return Err(DecodeError::MalformedBinary);
		}

		// pairwise merge function types and code
		let funcs = func_types.into_iter()
			.zip(func_bodies)
			.map(|(type_index, (locals, body))| Func { type_index, locals, body })
			.collect();

		Ok(Module { types, funcs, tables, memories, globals, elems, data, start, imports, exports })
	}
}

enum PseudoInstr {
	Else,
	End,
}

enum MetaInstr {
	Instr(Instr),
	PseudoInstr(PseudoInstr),
}

fn decode_value_type(b: u8) -> DecodeResult<types::Value> {
	use types::*;

	match b {
		0x7f => Ok(Value::Int(Int::I32)),
		0x7e => Ok(Value::Int(Int::I64)),
		0x7d => Ok(Value::Float(Float::F32)),
		0x7c => Ok(Value::Float(Float::F64)),
		_ => Err(DecodeError::MalformedBinary),
	}
}
