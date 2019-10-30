use crate::runtime::{Module, Store};
use crate::sym;

#[cfg(jit)]
use crate::runtime::Func as HostFunc;
#[cfg(not(jit))]
use crate::runtime::HostFunc;

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
            "unknown module to provide import for"
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
        assert_eq!(module, "watt-0.2", "unknown module to provide import for");
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
    use crate::runtime::{WasmFunc1, WasmFunc3};

    match name {
        "token_stream_serialize" => sym::token_stream_serialize.into_host_func(store),
        "token_stream_deserialize" => sym::token_stream_deserialize.into_host_func(store),
        "token_stream_parse" => sym::token_stream_parse.into_host_func(store),
        "literal_to_string" => sym::literal_to_string.into_host_func(store),

        "watt_string_new" => sym::watt_string_new.into_host_func(store),
        "watt_string_len" => sym::watt_string_len.into_host_func(store),
        "watt_string_read" => sym::watt_string_read.into_host_func(store),
        "watt_bytes_new" => sym::watt_bytes_new.into_host_func(store),
        "watt_bytes_len" => sym::watt_bytes_len.into_host_func(store),
        "watt_bytes_read" => sym::watt_bytes_read.into_host_func(store),
        "watt_print_panic" => sym::watt_print_panic.into_host_func(store),

        _ => unreachable!("unresolved import: {:?}", name),
    }
}
