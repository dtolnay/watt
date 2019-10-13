use ast;
use types;
use values;

use std::rc::Rc;
use std::ops::{Index, IndexMut};
use std::collections::HashMap;

// Use a map for types to answer type_{func, table, memory, global}
#[derive(PartialEq, Eq, Hash)]
pub struct TypeKey {
	pub extern_val: ExternVal,
}

pub type TypeHashMap = HashMap<TypeKey, types::Extern>;

// Instances of a Module/Func/Table/Memory/Global
pub struct ModuleInst {
	pub(crate) types: Vec<types::Func>,
	pub(crate) func_addrs: Vec<FuncAddr>,
	pub(crate) table_addrs: Vec<TableAddr>,
	pub(crate) mem_addrs: Vec<MemAddr>,
	pub(crate) global_addrs: Vec<GlobalAddr>,
	pub(crate) exports: Vec<ExportInst>,
}

pub struct MemInst {
	pub data: Vec<u8>,
	pub max: Option<u32>,
}

pub struct GlobalInst {
	pub value: values::Value,
	pub mutable: bool,
}

pub type HostFunctionError = String;
pub type HostFunc = Box<Fn(&mut Vec<values::Value>) -> Option<HostFunctionError>>;

pub struct HostFuncInst {
	pub type_: types::Func,
	pub hostcode: HostFunc,
}

pub struct ModuleFuncInst {
	pub type_: types::Func,
	pub module: Rc<ModuleInst>,
	pub code: ast::Func,
}

pub enum FuncInst {
	Module(ModuleFuncInst),
	Host(HostFuncInst),
}

type FuncElem = Option<FuncAddr>;

pub struct TableInst {
	pub elem: Vec<FuncElem>,
	pub max: Option<u32>,
}

pub struct ExportInst {
	pub name: String,
	pub value: ExternVal,
}

pub struct FuncInstStore(Vec<FuncInst>);
pub struct MemInstStore(Vec<MemInst>);
pub struct TableInstStore(Vec<TableInst>);
pub struct GlobalInstStore(Vec<GlobalInst>);

// Addrs and extern valus exported to the user
type Addr = usize;
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct FuncAddr(Addr);
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct TableAddr(Addr);
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct MemAddr(Addr);
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct GlobalAddr(Addr);

#[derive(Clone, Copy, PartialEq, Eq, Hash, Debug)]
pub enum ExternVal {
	Func(FuncAddr),
	Table(TableAddr),
	Memory(MemAddr),
	Global(GlobalAddr),
}

// Constants
pub const PAGE_SIZE: usize = 65536;

// Traits
impl ModuleInst {
	pub fn new() -> ModuleInst {
		ModuleInst {
			types: Vec::new(),
			func_addrs: Vec::new(),
			table_addrs: Vec::new(),
			mem_addrs: Vec::new(),
			global_addrs: Vec::new(),
			exports: Vec::new(),
		}
	}
}

macro_rules! impl_inst_store {
	($StoreType:tt, $InnerType:ty, $AddrType:tt) => (
		impl $StoreType {
			pub fn new() -> Self {
				Self { 0: Vec::new() }
			}

			pub fn len(&self) -> usize {
				self.0.len()
			}

			pub fn contains(&self, addr: $AddrType) -> bool {
				self.0.len() >= addr.0
			}
		}

		impl Index<$AddrType> for $StoreType {
			type Output = $InnerType;
			fn index(&self, idx: $AddrType) -> &$InnerType {
				self.0.get(idx.0).unwrap()
			}
		}

		impl IndexMut<$AddrType> for $StoreType {
			fn index_mut(&mut self, idx: $AddrType) -> &mut $InnerType {
				self.0.get_mut(idx.0).unwrap()
			}
		}

		impl $AddrType {
			pub fn new(addr: Addr) -> $AddrType {
				$AddrType { 0: addr }
			}
		}
	)
}

impl_inst_store!(FuncInstStore, FuncInst, FuncAddr);
impl_inst_store!(TableInstStore, TableInst, TableAddr);
impl_inst_store!(GlobalInstStore, GlobalInst, GlobalAddr);
impl_inst_store!(MemInstStore, MemInst, MemAddr);

// Per trait functions
impl FuncInstStore {
	pub(crate) fn alloc_module(&mut self, types_map: &mut TypeHashMap, functype: &types::Func, minst: &Rc<ModuleInst>, code: ast::Func) -> FuncAddr {
		self.alloc(types_map,
				   FuncInst::Module(
					   ModuleFuncInst {
						   type_: functype.clone(),
						   module: Rc::clone(minst),
						   code: code,
					   }
				   ),
				   functype
		)
	}

	pub(crate) fn alloc_host(&mut self, types_map: &mut TypeHashMap, functype: &types::Func, hostfunc: HostFunc) -> FuncAddr {
		self.alloc(types_map,
				   FuncInst::Host(
					   HostFuncInst {
						   type_: functype.clone(),
						   hostcode: hostfunc,
					   }
				   ),
				   functype
		)
	}

	fn alloc(&mut self, types_map: &mut TypeHashMap, inst: FuncInst, functype: &types::Func) -> FuncAddr {
		self.0.push(inst);
		let addr = FuncAddr::new(self.len() - 1);
		types_map.insert(TypeKey { extern_val: ExternVal::Func(addr) },
						 types::Extern::Func(functype.clone()));
		addr
	}

}

impl MemInstStore {
	pub(crate) fn alloc(&mut self, types_map: &mut TypeHashMap, memtype: &types::Memory) -> MemAddr {
		self.0.push(MemInst {
			data: vec![0; (memtype.limits.min as usize) * PAGE_SIZE],
			max: memtype.limits.max,
		});
		let addr = MemAddr::new(self.len() - 1);
		types_map.insert(TypeKey { extern_val: ExternVal::Memory(addr) },
						 types::Extern::Memory(memtype.clone()));
		addr
	}

	pub(crate) fn grow(&mut self, memaddr: MemAddr, new: usize) -> Option<usize> {
		let mem = &mut self[memaddr];
		let sz = mem.data.len() / PAGE_SIZE;
		if let Some(max) = mem.max {
			if (max as usize) < sz + new {
				return None
			}
		}
		// Can't allocate more than 4GB since its a 32-bits machine
		if sz + new > (1 << 32) / PAGE_SIZE {
			return None
		}
		mem.data.resize((sz + new) * PAGE_SIZE, 0);
		Some(sz)
	}

	pub(crate) fn size(&self, memaddr: MemAddr) -> usize {
		self[memaddr].data.len() / PAGE_SIZE
	}
}

impl TableInstStore {
	pub(crate) fn alloc(&mut self, types_map: &mut TypeHashMap, tabletype: &types::Table) -> TableAddr {
		self.0.push(TableInst {
			elem: vec![None; tabletype.limits.min as usize],
			max: tabletype.limits.max,
		});
		let addr = TableAddr::new(self.len() - 1);
		types_map.insert(TypeKey { extern_val: ExternVal::Table(addr) },
						 types::Extern::Table(tabletype.clone()));
		addr
	}
}

impl GlobalInstStore {
	pub(crate) fn alloc(&mut self, types_map: &mut TypeHashMap, globaltype: &types::Global, val: values::Value) -> GlobalAddr {
		self.0.push(GlobalInst {
			value: val,
			mutable: globaltype.mutable,
		});
		let addr = GlobalAddr::new(self.len() - 1);
		types_map.insert(TypeKey { extern_val: ExternVal::Global(addr) },
						 types::Extern::Global(globaltype.clone()));
		addr
	}
}
