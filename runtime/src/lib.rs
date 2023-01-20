#![allow(
    clippy::cast_lossless,
    clippy::cast_possible_truncation,
    clippy::cast_possible_wrap,
    clippy::cast_sign_loss,
    clippy::cloned_instead_of_copied,
    clippy::cognitive_complexity,
    clippy::doc_markdown,
    clippy::enum_glob_use,
    clippy::float_cmp,
    clippy::if_not_else,
    clippy::len_without_is_empty,
    clippy::let_unit_value,
    clippy::manual_let_else,
    clippy::match_on_vec_items,
    clippy::missing_errors_doc,
    clippy::missing_panics_doc,
    clippy::module_inception,
    clippy::module_name_repetitions,
    clippy::must_use_candidate,
    clippy::needless_lifetimes,
    clippy::new_without_default,
    clippy::ptr_arg,
    clippy::redundant_else,
    clippy::redundant_slicing,
    clippy::return_self_not_must_use,
    clippy::semicolon_if_nothing_returned,
    clippy::too_many_arguments,
    clippy::too_many_lines,
    clippy::unnecessary_cast,
    clippy::unnecessary_wraps,
    clippy::unreadable_literal,
    clippy::unused_self,
    clippy::wildcard_imports,
    clippy::wrong_self_convention
)]

#[macro_use]
pub mod interpreter;
pub mod ast;
mod binary;
pub mod func;
pub mod ops;
pub mod runtime;
pub mod types;
mod valid;
pub mod values;

pub use self::ast::Module;
pub use self::func::{func1, mem_func2};
pub use self::interpreter::Interpreter;
pub use self::runtime::{ExternVal, FuncAddr, HostFunc, ModuleInst};
pub use self::types::Extern;
pub use self::values::Value;

#[cfg(feature = "test")]
pub use self::runtime::{GlobalAddr, MemAddr, TableAddr, PAGE_SIZE};

use self::interpreter::{eval_const_expr, Trap, TrapOrigin};
use self::runtime::*;
use std::collections::HashMap;
use std::io::{Read, Seek};
use std::rc::Rc;

// Do not publish internal fields of the Store struct
pub struct Store {
    funcs: FuncInstStore,
    tables: TableInstStore,
    mems: MemInstStore,
    globals: GlobalInstStore,

    types_map: TypeHashMap,
}

#[derive(Debug, PartialEq)]
pub enum Error {
    DecodeModuleFailed,
    NotEnoughExternVal,
    UnknownImport,
    ImportTypeMismatch,
    ElemOffsetTooLarge(usize),
    DataOffsetTooLarge(usize),
    NotEnoughArgument,
    ArgumentTypeMismatch,
    CodeTrapped(Trap),
    InvalidModule,
    ExportNotFound,
    #[cfg(feature = "test")]
    InvalidTableRead,
    #[cfg(feature = "test")]
    InvalidTableWrite,
    #[cfg(feature = "test")]
    InvalidMemoryRead,
    #[cfg(feature = "test")]
    InvalidMemoryWrite,
    #[cfg(feature = "test")]
    GlobalImmutable,
    #[cfg(feature = "test")]
    GrowMemoryFailed,
    StackOverflow,
}

/// Return the empty store
pub fn init_store() -> Store {
    Store {
        funcs: FuncInstStore::new(),
        tables: TableInstStore::new(),
        mems: MemInstStore::new(),
        globals: GlobalInstStore::new(),

        types_map: HashMap::new(),
    }
}

/// Decode a binary module
pub fn decode_module<R: Read + Seek>(reader: R) -> Result<ast::Module, Error> {
    binary::decode(reader).map_err(|_| Error::DecodeModuleFailed)
}

/// Validate a module
#[cfg(feature = "test")]
pub fn validate_module(module: &ast::Module) -> Option<Error> {
    if valid::is_valid(module) {
        None
    } else {
        Some(Error::InvalidModule)
    }
}

/// List module imports with their types
pub fn module_imports<'a>(
    module: &'a ast::Module,
) -> impl Iterator<Item = (&'a str, &'a str, types::Extern)> + 'a {
    assert!(valid::is_valid(module));

    module.imports.iter().map(move |import| {
        (
            import.module.as_str(),
            import.name.as_str(),
            import.type_(module),
        )
    })
}

/// List module exports with their types
#[cfg(any(feature = "test", watt_debug))]
pub fn module_exports<'a>(
    module: &'a ast::Module,
) -> impl Iterator<Item = (&'a str, types::Extern)> + 'a {
    assert!(valid::is_valid(module));

    // Imports can be exported
    // "The index space for functions, tables, memories and globals includes respective imports declared in the same module."
    // https://webassembly.github.io/spec/syntax/modules.html#indices
    let mut func_import_types = Vec::new();
    let mut table_import_types = Vec::new();
    let mut mem_import_types = Vec::new();
    let mut global_import_types = Vec::new();
    for import in &module.imports {
        use self::ast::*;
        match &import.desc {
            ImportDesc::Func(idx) => func_import_types.push(module.types[*idx as usize].clone()),
            ImportDesc::Table(type_) => table_import_types.push(type_.clone()),
            ImportDesc::Memory(type_) => mem_import_types.push(type_.clone()),
            ImportDesc::Global(type_) => global_import_types.push(type_.clone()),
        };
    }

    module.exports.iter().map(move |export| {
        use self::ast::*;
        use self::types::*;
        let export_type = match export.desc {
            ExportDesc::Func(idx) => {
                let len = func_import_types.len();
                let idx = idx as usize;
                if idx < len {
                    Extern::Func(func_import_types[idx].clone())
                } else {
                    Extern::Func(
                        module.types[module.funcs[(idx - len)].type_index as usize].clone(),
                    )
                }
            }
            ExportDesc::Table(idx) => {
                let len = table_import_types.len();
                let idx = idx as usize;
                if idx < len {
                    Extern::Table(table_import_types[idx].clone())
                } else {
                    Extern::Table(module.tables[idx - len].type_.clone())
                }
            }
            ExportDesc::Memory(idx) => {
                let len = mem_import_types.len();
                let idx = idx as usize;
                if idx < len {
                    Extern::Memory(mem_import_types[idx].clone())
                } else {
                    Extern::Memory(module.memories[idx - len].type_.clone())
                }
            }
            ExportDesc::Global(idx) => {
                let len = global_import_types.len();
                let idx = idx as usize;
                if idx < len {
                    Extern::Global(global_import_types[idx].clone())
                } else {
                    Extern::Global(module.globals[idx - len].type_.clone())
                }
            }
        };
        (export.name.as_ref(), export_type)
    })
}

/// Get an externval value according to the exported name
pub fn get_export(inst: &ModuleInst, name: &str) -> Result<ExternVal, Error> {
    for export in &inst.exports {
        if export.name == name {
            return Ok(export.value);
        }
    }
    Err(Error::ExportNotFound)
}

/// Allocate a host function
pub fn alloc_func(store: &mut Store, functype: &types::Func, hostfunc: HostFunc) -> FuncAddr {
    store
        .funcs
        .alloc_host(&mut store.types_map, functype, hostfunc)
}

/// Get the type of a function
#[cfg(feature = "test")]
pub fn type_func(store: &Store, funcaddr: FuncAddr) -> types::Func {
    assert!(store.funcs.contains(funcaddr));
    match store.types_map.get(&TypeKey {
        extern_val: ExternVal::Func(funcaddr),
    }) {
        Some(types::Extern::Func(type_)) => type_.clone(),
        _ => unreachable!(),
    }
}

/// Invoke a function
pub fn invoke_func(
    store: &mut Store,
    funcaddr: FuncAddr,
    args: Vec<values::Value>,
) -> Result<Vec<values::Value>, Error> {
    assert!(store.funcs.contains(funcaddr));
    let funcinst = &store.funcs[funcaddr];
    let functype = match funcinst {
        FuncInst::Module(f) => &f.type_,
        FuncInst::Host(f) => &f.type_,
    };

    if functype.args.len() != args.len() {
        return Err(Error::NotEnoughArgument);
    }

    // typecheck arguments
    if !args
        .iter()
        .zip(&functype.args)
        .all(|(val, &type_)| val.type_() == type_)
    {
        return Err(Error::ArgumentTypeMismatch);
    }

    let mut int = interpreter::Interpreter::new(
        &store.funcs,
        &store.tables,
        &mut store.globals,
        &mut store.mems,
    );
    int.stack.extend(args);

    match int.call(funcaddr) {
        Err(Trap {
            origin: TrapOrigin::StackOverflow,
        }) => Err(Error::StackOverflow),
        Err(err) => Err(Error::CodeTrapped(err)),
        _ => {
            let end_drain = int.stack.len() - functype.result.len();
            int.stack.drain(0..end_drain);
            Ok(int.stack)
        }
    }
}

/// Allocate a table
#[cfg(feature = "test")]
pub fn alloc_table(store: &mut Store, tabletype: &types::Table) -> TableAddr {
    store.tables.alloc(&mut store.types_map, tabletype)
}

/// Get the type of a table
#[cfg(feature = "test")]
pub fn type_table(store: &Store, tableaddr: TableAddr) -> types::Table {
    assert!(store.tables.contains(tableaddr));
    match store.types_map.get(&TypeKey {
        extern_val: ExternVal::Table(tableaddr),
    }) {
        Some(types::Extern::Table(type_)) => type_.clone(),
        _ => unreachable!(),
    }
}

/// Read the content of a table at a given address
#[cfg(feature = "test")]
pub fn read_table(
    store: &Store,
    tableaddr: TableAddr,
    addr: usize,
) -> Result<Option<FuncAddr>, Error> {
    assert!(store.tables.contains(tableaddr));
    let ti = &store.tables[tableaddr];
    if addr >= ti.elem.len() {
        Err(Error::InvalidTableRead)
    } else {
        Ok(ti.elem[addr])
    }
}

/// Write AnyFunc to a specific table at a given address
#[cfg(feature = "test")]
pub fn write_table(
    store: &mut Store,
    tableaddr: TableAddr,
    addr: usize,
    funcaddr: Option<FuncAddr>,
) -> Option<Error> {
    assert!(store.tables.contains(tableaddr));
    let ti = &mut store.tables[tableaddr];
    if addr >= ti.elem.len() {
        Some(Error::InvalidTableWrite)
    } else {
        ti.elem[addr] = funcaddr;
        None
    }
}

/// Get the size of a table
#[cfg(feature = "test")]
pub fn size_table(store: &Store, tableaddr: TableAddr) -> usize {
    assert!(store.tables.contains(tableaddr));
    store.tables[tableaddr].elem.len()
}

/// Grow a table by new elements
#[cfg(feature = "test")]
pub fn grow_table(store: &mut Store, tableaddr: TableAddr, new: usize) -> Option<Error> {
    assert!(store.tables.contains(tableaddr));
    let table = &mut store.tables[tableaddr].elem;
    let sz = table.len();
    table.resize(sz + new, None);
    None
}

/// Allocate a memory
#[cfg(feature = "test")]
pub fn alloc_mem(store: &mut Store, memtype: &types::Memory) -> MemAddr {
    store.mems.alloc(&mut store.types_map, memtype)
}

/// Get the type of a memory
#[cfg(feature = "test")]
pub fn type_mem(store: &Store, memaddr: MemAddr) -> types::Memory {
    assert!(store.mems.contains(memaddr));
    match store.types_map.get(&TypeKey {
        extern_val: ExternVal::Memory(memaddr),
    }) {
        Some(types::Extern::Memory(type_)) => type_.clone(),
        _ => unreachable!(),
    }
}

/// Read a byte of a memory at a given address
#[cfg(feature = "test")]
pub fn read_mem(store: &Store, memaddr: MemAddr, addr: usize) -> Result<u8, Error> {
    assert!(store.mems.contains(memaddr));
    let mi = &store.mems[memaddr];
    if addr >= mi.data.len() {
        Err(Error::InvalidMemoryRead)
    } else {
        Ok(mi.data[addr])
    }
}

/// Write a byte to a memory at a given address
#[cfg(feature = "test")]
pub fn write_mem(store: &mut Store, memaddr: MemAddr, addr: usize, byte: u8) -> Option<Error> {
    assert!(store.mems.contains(memaddr));
    let mi = &mut store.mems[memaddr];
    if addr >= mi.data.len() {
        Some(Error::InvalidMemoryWrite)
    } else {
        mi.data[addr] = byte;
        None
    }
}

/// Get the size of a memory
#[cfg(feature = "test")]
pub fn size_mem(store: &Store, memaddr: MemAddr) -> usize {
    assert!(store.mems.contains(memaddr));
    store.mems.size(memaddr)
}

/// Grow a memory by new pages
#[cfg(feature = "test")]
pub fn grow_mem(store: &mut Store, memaddr: MemAddr, new: usize) -> Option<Error> {
    assert!(store.mems.contains(memaddr));
    match store.mems.grow(memaddr, new) {
        Some(_) => None,
        None => Some(Error::GrowMemoryFailed),
    }
}

/// Allocate a new global
#[cfg(feature = "test")]
pub fn alloc_global(
    store: &mut Store,
    globaltype: &types::Global,
    val: values::Value,
) -> GlobalAddr {
    store.globals.alloc(&mut store.types_map, globaltype, val)
}

/// Get the type of a global
#[cfg(feature = "test")]
pub fn type_global(store: &Store, globaladdr: GlobalAddr) -> types::Global {
    assert!(store.globals.contains(globaladdr));
    match store.types_map.get(&TypeKey {
        extern_val: ExternVal::Global(globaladdr),
    }) {
        Some(types::Extern::Global(type_)) => type_.clone(),
        _ => unreachable!(),
    }
}

/// Read a global
#[cfg(feature = "test")]
pub fn read_global(store: &Store, globaladdr: GlobalAddr) -> values::Value {
    assert!(store.globals.contains(globaladdr));
    let gi = &store.globals[globaladdr];
    gi.value
}

/// Write a global
#[cfg(feature = "test")]
pub fn write_global(
    store: &mut Store,
    globaladdr: GlobalAddr,
    val: values::Value,
) -> Option<Error> {
    assert!(store.globals.contains(globaladdr));
    let gi = &mut store.globals[globaladdr];
    if !gi.mutable {
        Some(Error::GlobalImmutable)
    } else {
        gi.value = val;
        None
    }
}

/// Instantiate a module
pub fn instantiate_module(
    store: &mut Store,
    module: ast::Module,
    extern_vals: &[ExternVal],
) -> Result<Rc<ModuleInst>, Error> {
    // fail if module is invalid
    if !valid::is_valid(&module) {
        return Err(Error::InvalidModule);
    }

    // ensure that the number of provided exports matches the number of imports
    if extern_vals.len() != module.imports.len() {
        return Err(Error::NotEnoughExternVal);
    }

    // resolve imports, type-cheking them in the process
    let mut imported_funcs = Vec::new();
    let mut imported_tables = Vec::new();
    let mut imported_memories = Vec::new();
    let mut imported_globals = Vec::new();

    for (&extern_val, import) in extern_vals.iter().zip(module.imports.iter()) {
        let ext_type = store
            .types_map
            .get(&TypeKey { extern_val })
            .ok_or(Error::UnknownImport)?;
        if !ext_type.matches_(&import.type_(&module)) {
            return Err(Error::ImportTypeMismatch);
        }
        match extern_val {
            ExternVal::Func(addr) => imported_funcs.push(addr),
            ExternVal::Table(addr) => imported_tables.push(addr),
            ExternVal::Memory(addr) => imported_memories.push(addr),
            ExternVal::Global(addr) => imported_globals.push(addr),
        }
    }

    // compute initial values for globals
    let global_vals = module
        .globals
        .iter()
        .map(|g| eval_const_expr(&store.globals, &imported_globals, &g.value))
        .collect();

    // check that the module does not try to init too many elements
    let mut elem_offsets = Vec::new();
    for elem in &module.elems {
        let offset = match eval_const_expr(&store.globals, &imported_globals, &elem.offset) {
            values::Value::I32(c) => c as usize,
            _ => unreachable!(),
        };
        elem_offsets.push(offset);

        let table_size = {
            let is_imported = (elem.index as usize) < imported_tables.len();
            if is_imported {
                store.tables[imported_tables[elem.index as usize]]
                    .elem
                    .len()
            } else {
                let module_index = elem.index as usize - imported_tables.len();
                module.tables[module_index].type_.limits.min as usize
            }
        };

        if offset + elem.init.len() > table_size {
            return Err(Error::ElemOffsetTooLarge(elem.index as usize));
        }
    }

    // check that the module does not try to init too much memory
    let mut data_offsets = Vec::new();
    for data in &module.data {
        let offset = match eval_const_expr(&store.globals, &imported_globals, &data.offset) {
            values::Value::I32(c) => c as usize,
            _ => unreachable!(),
        };
        data_offsets.push(offset);

        let memory_size = {
            let is_imported = (data.index as usize) < imported_memories.len();
            if is_imported {
                store.mems[imported_memories[data.index as usize]]
                    .data
                    .len()
            } else {
                let module_index = data.index as usize - imported_memories.len();
                module.memories[module_index].type_.limits.min as usize * PAGE_SIZE
            }
        };

        if offset + data.init.len() > memory_size {
            return Err(Error::DataOffsetTooLarge(data.index as usize));
        }
    }

    // everything is correct, allocate and initialize the module
    allocate_and_init_module(
        store,
        module,
        imported_funcs,
        imported_tables,
        imported_memories,
        imported_globals,
        global_vals,
        elem_offsets,
        data_offsets,
    )
}

fn allocate_and_init_module(
    store: &mut Store,
    module: ast::Module,
    extern_funcs: Vec<FuncAddr>,
    extern_tables: Vec<TableAddr>,
    extern_memories: Vec<MemAddr>,
    extern_globals: Vec<GlobalAddr>,
    vals: Vec<values::Value>,
    elem_offsets: Vec<usize>,
    data_offsets: Vec<usize>,
) -> Result<Rc<ModuleInst>, Error> {
    let mut inst = ModuleInst::new();

    // init types
    inst.types = module.types;

    // init imports
    inst.func_addrs.extend(extern_funcs);
    inst.table_addrs.extend(extern_tables);
    inst.mem_addrs.extend(extern_memories);
    inst.global_addrs.extend(extern_globals);

    // functions allocation
    // only allocate indices; initialization comes when the module is fully instantiated
    let fsi_min = store.funcs.len();
    let fsi_max = fsi_min + module.funcs.len();
    for addr in fsi_min..fsi_max {
        inst.func_addrs.push(FuncAddr::new(addr));
    }

    // tables allocation
    for tab in module.tables {
        inst.table_addrs
            .push(store.tables.alloc(&mut store.types_map, &tab.type_));
    }

    // tables initialization with elem segments
    assert_eq!(module.elems.len(), elem_offsets.len());
    for (elem, offset) in module.elems.iter().zip(elem_offsets.into_iter()) {
        for i in 0..elem.init.len() {
            let funcidx = elem.init[i] as usize;
            let funcaddr = inst.func_addrs[funcidx];
            store.tables[inst.table_addrs[elem.index as usize]].elem[offset + i] = Some(funcaddr);
        }
    }

    // memories allocation
    for mem in module.memories {
        inst.mem_addrs
            .push(store.mems.alloc(&mut store.types_map, &mem.type_));
    }

    // memories initialization with data segments
    assert_eq!(module.data.len(), data_offsets.len());
    for (data, offset) in module.data.iter().zip(data_offsets.into_iter()) {
        let mem = &mut store.mems[inst.mem_addrs[data.index as usize]];
        mem.data[offset..offset + data.init.len()].copy_from_slice(&data.init);
    }

    // globals allocation
    assert_eq!(module.globals.len(), vals.len());
    for (global, val) in module.globals.iter().zip(vals.into_iter()) {
        inst.global_addrs.push(
            store
                .globals
                .alloc(&mut store.types_map, &global.type_, val),
        );
    }

    // init exports
    for export in module.exports {
        let extern_val = match export.desc {
            ast::ExportDesc::Func(idx) => ExternVal::Func(inst.func_addrs[idx as usize]),
            ast::ExportDesc::Table(idx) => ExternVal::Table(inst.table_addrs[idx as usize]),
            ast::ExportDesc::Memory(idx) => ExternVal::Memory(inst.mem_addrs[idx as usize]),
            ast::ExportDesc::Global(idx) => ExternVal::Global(inst.global_addrs[idx as usize]),
        };
        inst.exports.push(ExportInst {
            name: export.name,
            value: extern_val,
        });
    }

    // now that the module is fully instantiated, we can initialize the functions and put
    // them into the store
    let inst = Rc::new(inst);
    for func in module.funcs {
        let type_ = &inst.types[func.type_index as usize];
        let _ = store
            .funcs
            .alloc_module(&mut store.types_map, type_, &inst, func);
    }

    // call the start function if it exists
    if let Some(idx) = module.start {
        let func_addr = inst.func_addrs[idx as usize];
        invoke_func(store, func_addr, Vec::new())?;
    }

    Ok(inst)
}
