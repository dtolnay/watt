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
        // assert_eq!(import.module(), "env");
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
        let (_module, name, ref sig) = import;
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
    use crate::runtime::{WasmFunc0, WasmFunc1, WasmFunc2, WasmFunc3};

    match name {
        "token_stream_serialize" => sym::token_stream_serialize.into_host_func(store),
        "token_stream_deserialize" => sym::token_stream_deserialize.into_host_func(store),
        "token_stream_parse" => sym::token_stream_parse.into_host_func(store),
        "token_stream_new" => sym::token_stream_new.into_host_func(store),
        "token_stream_is_empty" => sym::token_stream_is_empty.into_host_func(store),
        "token_stream_from_str" => sym::token_stream_from_str.into_host_func(store),
        "token_stream_into_iter" => sym::token_stream_into_iter.into_host_func(store),
        "token_stream_iter_next" => sym::token_stream_iter_next.into_host_func(store),
        "token_stream_from_group" => sym::token_stream_from_group.into_host_func(store),
        "token_stream_from_ident" => sym::token_stream_from_ident.into_host_func(store),
        "token_stream_from_punct" => sym::token_stream_from_punct.into_host_func(store),
        "token_stream_from_literal" => sym::token_stream_from_literal.into_host_func(store),
        "token_stream_push_group" => sym::token_stream_push_group.into_host_func(store),
        "token_stream_push_ident" => sym::token_stream_push_ident.into_host_func(store),
        "token_stream_push_punct" => sym::token_stream_push_punct.into_host_func(store),
        "token_stream_push_literal" => sym::token_stream_push_literal.into_host_func(store),
        "token_stream_extend" => sym::token_stream_extend.into_host_func(store),

        "token_tree_kind" => sym::token_tree_kind.into_host_func(store),
        "token_tree_unwrap_group" => sym::token_tree_unwrap_group.into_host_func(store),
        "token_tree_unwrap_ident" => sym::token_tree_unwrap_ident.into_host_func(store),
        "token_tree_unwrap_punct" => sym::token_tree_unwrap_punct.into_host_func(store),
        "token_tree_unwrap_literal" => sym::token_tree_unwrap_literal.into_host_func(store),

        "span_call_site" => sym::span_call_site.into_host_func(store),

        "group_new" => sym::group_new.into_host_func(store),
        "group_delimiter" => sym::group_delimiter.into_host_func(store),
        "group_stream" => sym::group_stream.into_host_func(store),
        "group_span" => sym::group_span.into_host_func(store),
        "group_set_span" => sym::group_set_span.into_host_func(store),

        "punct_new" => sym::punct_new.into_host_func(store),
        "punct_as_char" => sym::punct_as_char.into_host_func(store),
        "punct_spacing" => sym::punct_spacing.into_host_func(store),
        "punct_span" => sym::punct_span.into_host_func(store),
        "punct_set_span" => sym::punct_set_span.into_host_func(store),

        "ident_new" => sym::ident_new.into_host_func(store),
        "ident_span" => sym::ident_span.into_host_func(store),
        "ident_set_span" => sym::ident_set_span.into_host_func(store),
        "ident_eq" => sym::ident_eq.into_host_func(store),
        "ident_eq_str" => sym::ident_eq_str.into_host_func(store),
        "ident_cmp" => sym::ident_cmp.into_host_func(store),

        "literal_u8_suffixed" => sym::literal_u8_suffixed.into_host_func(store),
        "literal_u16_suffixed" => sym::literal_u16_suffixed.into_host_func(store),
        "literal_u32_suffixed" => sym::literal_u32_suffixed.into_host_func(store),
        "literal_u64_suffixed" => sym::literal_u64_suffixed.into_host_func(store),
        "literal_u128_suffixed" => sym::literal_u128_suffixed.into_host_func(store),
        "literal_usize_suffixed" => sym::literal_usize_suffixed.into_host_func(store),
        "literal_i8_suffixed" => sym::literal_i8_suffixed.into_host_func(store),
        "literal_i16_suffixed" => sym::literal_i16_suffixed.into_host_func(store),
        "literal_i32_suffixed" => sym::literal_i32_suffixed.into_host_func(store),
        "literal_i64_suffixed" => sym::literal_i64_suffixed.into_host_func(store),
        "literal_i128_suffixed" => sym::literal_i128_suffixed.into_host_func(store),
        "literal_isize_suffixed" => sym::literal_isize_suffixed.into_host_func(store),
        "literal_u8_unsuffixed" => sym::literal_u8_unsuffixed.into_host_func(store),
        "literal_u16_unsuffixed" => sym::literal_u16_unsuffixed.into_host_func(store),
        "literal_u32_unsuffixed" => sym::literal_u32_unsuffixed.into_host_func(store),
        "literal_u64_unsuffixed" => sym::literal_u64_unsuffixed.into_host_func(store),
        "literal_u128_unsuffixed" => sym::literal_u128_unsuffixed.into_host_func(store),
        "literal_usize_unsuffixed" => sym::literal_usize_unsuffixed.into_host_func(store),
        "literal_i8_unsuffixed" => sym::literal_i8_unsuffixed.into_host_func(store),
        "literal_i16_unsuffixed" => sym::literal_i16_unsuffixed.into_host_func(store),
        "literal_i32_unsuffixed" => sym::literal_i32_unsuffixed.into_host_func(store),
        "literal_i64_unsuffixed" => sym::literal_i64_unsuffixed.into_host_func(store),
        "literal_i128_unsuffixed" => sym::literal_i128_unsuffixed.into_host_func(store),
        "literal_isize_unsuffixed" => sym::literal_isize_unsuffixed.into_host_func(store),
        "literal_f64_unsuffixed" => sym::literal_f64_unsuffixed.into_host_func(store),
        "literal_f64_suffixed" => sym::literal_f64_suffixed.into_host_func(store),
        "literal_f32_unsuffixed" => sym::literal_f32_unsuffixed.into_host_func(store),
        "literal_f32_suffixed" => sym::literal_f32_suffixed.into_host_func(store),
        "literal_string" => sym::literal_string.into_host_func(store),
        "literal_character" => sym::literal_character.into_host_func(store),
        "literal_byte_string" => sym::literal_byte_string.into_host_func(store),
        "literal_span" => sym::literal_span.into_host_func(store),
        "literal_set_span" => sym::literal_set_span.into_host_func(store),

        "token_stream_clone" => sym::token_stream_clone.into_host_func(store),
        "group_clone" => sym::group_clone.into_host_func(store),
        "ident_clone" => sym::ident_clone.into_host_func(store),
        "punct_clone" => sym::punct_clone.into_host_func(store),
        "literal_clone" => sym::literal_clone.into_host_func(store),
        "token_stream_iter_clone" => sym::token_stream_iter_clone.into_host_func(store),

        "token_stream_to_string" => sym::token_stream_to_string.into_host_func(store),
        "group_to_string" => sym::group_to_string.into_host_func(store),
        "ident_to_string" => sym::ident_to_string.into_host_func(store),
        "punct_to_string" => sym::punct_to_string.into_host_func(store),
        "literal_to_string" => sym::literal_to_string.into_host_func(store),
        "token_stream_debug" => sym::token_stream_debug.into_host_func(store),
        "group_debug" => sym::group_debug.into_host_func(store),
        "ident_debug" => sym::ident_debug.into_host_func(store),
        "punct_debug" => sym::punct_debug.into_host_func(store),
        "literal_debug" => sym::literal_debug.into_host_func(store),
        "span_debug" => sym::span_debug.into_host_func(store),

        "watt_string_new" => sym::watt_string_new.into_host_func(store),
        "watt_string_len" => sym::watt_string_len.into_host_func(store),
        "watt_string_read" => sym::watt_string_read.into_host_func(store),
        "watt_bytes_new" => sym::watt_bytes_new.into_host_func(store),
        "watt_bytes_len" => sym::watt_bytes_len.into_host_func(store),
        "watt_bytes_read" => sym::watt_bytes_read.into_host_func(store),
        "watt_print_panic" => sym::watt_print_panic.into_host_func(store),

        // to be removed in 0.2
        "watt_string_with_capacity" => sym::watt_string_with_capacity.into_host_func(store),
        "watt_string_push_char" => sym::watt_string_push_char.into_host_func(store),
        "watt_string_char_at" => sym::watt_string_char_at.into_host_func(store),
        "watt_bytes_with_capacity" => sym::watt_bytes_with_capacity.into_host_func(store),
        "watt_bytes_push" => sym::watt_bytes_push.into_host_func(store),

        _ => unreachable!("unresolved import: {:?}", name),
    }
}
