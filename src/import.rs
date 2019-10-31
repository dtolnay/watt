use crate::runtime::{func1, mem_func2, HostFunc, Module, Store};
use crate::sym;

#[cfg(jit)]
pub fn extern_vals(module: &Module, store: &mut Store) -> crate::runtime::InstanceImports {
    use crate::runtime::{ImportType, InstanceImports};

    let mut imports = InstanceImports::default();
    for import in module.imports().iter() {
        imports.func(mk_host_func(import, store));
    }
    return imports;

    fn mk_host_func(import: &ImportType, store: &Store) -> HostFunc {
        // TODO: assert `import` is a function import
        assert_eq!(
            import.module(),
            "watt-0.2",
            "Wasm import from unknown module"
        );
        host_func(import.name(), store)
    }
}

#[cfg(not(jit))]
pub fn extern_vals(module: &Module, store: &mut Store) -> Vec<crate::runtime::ExternVal> {
    use crate::runtime::{alloc_func, Extern, ExternVal};

    type Import<'a> = (&'a str, &'a str, Extern);

    return crate::runtime::module_imports(module)
        .map(|import| mk_host_func(import, store))
        .collect();

    fn mk_host_func(import: Import, store: &mut Store) -> ExternVal {
        let (module, name, ref sig) = import;
        assert_eq!(module, "watt-0.2", "Wasm import from unknown module");
        let func = match sig {
            Extern::Func(func) => func,
            Extern::Table(_) | Extern::Memory(_) | Extern::Global(_) => {
                unimplemented!("unsupported import")
            }
        };
        let hostfunc = host_func(name, store);
        ExternVal::Func(alloc_func(store, &func, hostfunc))
    }
}

fn host_func(name: &str, store: &Store) -> HostFunc {
    match name {
        "token_stream_serialize" => func1(sym::token_stream_serialize, store),
        "token_stream_deserialize" => mem_func2(sym::token_stream_deserialize, store),
        "token_stream_parse" => mem_func2(sym::token_stream_parse, store),
        "literal_to_string" => func1(sym::literal_to_string, store),

        "string_new" => mem_func2(sym::string_new, store),
        "string_len" => func1(sym::string_len, store),
        "string_read" => mem_func2(sym::string_read, store),
        "bytes_new" => mem_func2(sym::bytes_new, store),
        "bytes_len" => func1(sym::bytes_len, store),
        "bytes_read" => mem_func2(sym::bytes_read, store),
        "print_panic" => func1(sym::print_panic, store),

        _ => unreachable!("unresolved import: {:?}", name),
    }
}
