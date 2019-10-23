use crate::runtime::{alloc_func, module_imports, Extern, ExternVal, HostFunc, Module, Store};
use crate::sym;

type Import<'a> = (&'a str, &'a str, Extern);

pub fn extern_vals(module: &Module, store: &mut Store) -> Vec<ExternVal> {
    module_imports(module)
        .map(|import| resolve(import, store))
        .collect()
}

fn resolve(import: Import, store: &mut Store) -> ExternVal {
    let (_module, name, sig) = import;
    let func = match sig {
        Extern::Func(func) => func,
        Extern::Table(_) | Extern::Memory(_) | Extern::Global(_) => {
            unimplemented!("unsupported import")
        }
    };
    let hostfunc: HostFunc = match name {
        "token_stream_new" => Box::new(sym::token_stream_new),
        "token_stream_is_empty" => Box::new(sym::token_stream_is_empty),
        "token_stream_from_str" => Box::new(sym::token_stream_from_str),
        "token_stream_into_iter" => Box::new(sym::token_stream_into_iter),
        "token_stream_iter_next" => Box::new(sym::token_stream_iter_next),
        "token_stream_from_group" => Box::new(sym::token_stream_from_group),
        "token_stream_from_ident" => Box::new(sym::token_stream_from_ident),
        "token_stream_from_punct" => Box::new(sym::token_stream_from_punct),
        "token_stream_from_literal" => Box::new(sym::token_stream_from_literal),
        "token_stream_push_group" => Box::new(sym::token_stream_push_group),
        "token_stream_push_ident" => Box::new(sym::token_stream_push_ident),
        "token_stream_push_punct" => Box::new(sym::token_stream_push_punct),
        "token_stream_push_literal" => Box::new(sym::token_stream_push_literal),
        "token_stream_extend" => Box::new(sym::token_stream_extend),

        "token_tree_kind" => Box::new(sym::token_tree_kind),
        "token_tree_unwrap_group" => Box::new(sym::token_tree_unwrap_group),
        "token_tree_unwrap_ident" => Box::new(sym::token_tree_unwrap_ident),
        "token_tree_unwrap_punct" => Box::new(sym::token_tree_unwrap_punct),
        "token_tree_unwrap_literal" => Box::new(sym::token_tree_unwrap_literal),

        "span_call_site" => Box::new(sym::span_call_site),

        "group_new" => Box::new(sym::group_new),
        "group_delimiter" => Box::new(sym::group_delimiter),
        "group_stream" => Box::new(sym::group_stream),
        "group_span" => Box::new(sym::group_span),
        "group_set_span" => Box::new(sym::group_set_span),

        "punct_new" => Box::new(sym::punct_new),
        "punct_as_char" => Box::new(sym::punct_as_char),
        "punct_spacing" => Box::new(sym::punct_spacing),
        "punct_span" => Box::new(sym::punct_span),
        "punct_set_span" => Box::new(sym::punct_set_span),

        "ident_new" => Box::new(sym::ident_new),
        "ident_span" => Box::new(sym::ident_span),
        "ident_set_span" => Box::new(sym::ident_set_span),
        "ident_eq" => Box::new(sym::ident_eq),
        "ident_eq_str" => Box::new(sym::ident_eq_str),
        "ident_cmp" => Box::new(sym::ident_cmp),

        "literal_u8_suffixed" => Box::new(sym::literal_u8_suffixed),
        "literal_u16_suffixed" => Box::new(sym::literal_u16_suffixed),
        "literal_u32_suffixed" => Box::new(sym::literal_u32_suffixed),
        "literal_u64_suffixed" => Box::new(sym::literal_u64_suffixed),
        "literal_u128_suffixed" => Box::new(sym::literal_u128_suffixed),
        "literal_usize_suffixed" => Box::new(sym::literal_usize_suffixed),
        "literal_i8_suffixed" => Box::new(sym::literal_i8_suffixed),
        "literal_i16_suffixed" => Box::new(sym::literal_i16_suffixed),
        "literal_i32_suffixed" => Box::new(sym::literal_i32_suffixed),
        "literal_i64_suffixed" => Box::new(sym::literal_i64_suffixed),
        "literal_i128_suffixed" => Box::new(sym::literal_i128_suffixed),
        "literal_isize_suffixed" => Box::new(sym::literal_isize_suffixed),
        "literal_u8_unsuffixed" => Box::new(sym::literal_u8_unsuffixed),
        "literal_u16_unsuffixed" => Box::new(sym::literal_u16_unsuffixed),
        "literal_u32_unsuffixed" => Box::new(sym::literal_u32_unsuffixed),
        "literal_u64_unsuffixed" => Box::new(sym::literal_u64_unsuffixed),
        "literal_u128_unsuffixed" => Box::new(sym::literal_u128_unsuffixed),
        "literal_usize_unsuffixed" => Box::new(sym::literal_usize_unsuffixed),
        "literal_i8_unsuffixed" => Box::new(sym::literal_i8_unsuffixed),
        "literal_i16_unsuffixed" => Box::new(sym::literal_i16_unsuffixed),
        "literal_i32_unsuffixed" => Box::new(sym::literal_i32_unsuffixed),
        "literal_i64_unsuffixed" => Box::new(sym::literal_i64_unsuffixed),
        "literal_i128_unsuffixed" => Box::new(sym::literal_i128_unsuffixed),
        "literal_isize_unsuffixed" => Box::new(sym::literal_isize_unsuffixed),
        "literal_f64_unsuffixed" => Box::new(sym::literal_f64_unsuffixed),
        "literal_f64_suffixed" => Box::new(sym::literal_f64_suffixed),
        "literal_f32_unsuffixed" => Box::new(sym::literal_f32_unsuffixed),
        "literal_f32_suffixed" => Box::new(sym::literal_f32_suffixed),
        "literal_string" => Box::new(sym::literal_string),
        "literal_character" => Box::new(sym::literal_character),
        "literal_byte_string" => Box::new(sym::literal_byte_string),
        "literal_span" => Box::new(sym::literal_span),
        "literal_set_span" => Box::new(sym::literal_set_span),

        "token_stream_clone" => Box::new(sym::token_stream_clone),
        "group_clone" => Box::new(sym::group_clone),
        "ident_clone" => Box::new(sym::ident_clone),
        "punct_clone" => Box::new(sym::punct_clone),
        "literal_clone" => Box::new(sym::literal_clone),
        "token_stream_iter_clone" => Box::new(sym::token_stream_iter_clone),

        "token_stream_to_string" => Box::new(sym::token_stream_to_string),
        "group_to_string" => Box::new(sym::group_to_string),
        "ident_to_string" => Box::new(sym::ident_to_string),
        "punct_to_string" => Box::new(sym::punct_to_string),
        "literal_to_string" => Box::new(sym::literal_to_string),
        "token_stream_debug" => Box::new(sym::token_stream_debug),
        "group_debug" => Box::new(sym::group_debug),
        "ident_debug" => Box::new(sym::ident_debug),
        "punct_debug" => Box::new(sym::punct_debug),
        "literal_debug" => Box::new(sym::literal_debug),
        "span_debug" => Box::new(sym::span_debug),

        "watt_string_new" => Box::new(sym::watt_string_new),
        "watt_string_len" => Box::new(sym::watt_string_len),
        "watt_string_read" => Box::new(sym::watt_string_read),
        "watt_bytes_new" => Box::new(sym::watt_bytes_new),
        "watt_print_panic" => Box::new(sym::watt_print_panic),

        // to be removed in 0.2
        "watt_string_with_capacity" => Box::new(sym::watt_string_with_capacity),
        "watt_string_push_char" => Box::new(sym::watt_string_push_char),
        "watt_string_char_at" => Box::new(sym::watt_string_char_at),
        "watt_bytes_with_capacity" => Box::new(sym::watt_bytes_with_capacity),
        "watt_bytes_push" => Box::new(sym::watt_bytes_push),

        _ => unreachable!("unresolved import: {:?}", name),
    };
    ExternVal::Func(alloc_func(store, &func, hostfunc))
}
