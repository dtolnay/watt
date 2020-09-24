use crate::{
    runtime::{
        func::{func0, func2, func3, func4},
        func1, mem_func2, HostFunc, Store,
    },
    sym,
};

pub fn host_func(name: &str, store: &Store) -> HostFunc {
    let f = match name {
        "drop_diagnostic_handle" => func1(sym::drop_diagnostic_handle, store),
        "diagnostic_new" => func3(sym::diagnostic_new, store),
        "diagnostic_sub" => func4(sym::diagnostic_sub, store),
        "diagnostic_emit" => func1(sym::diagnostic_emit, store),

        "free_functions_track_env_var" => func2(sym::free_functions_track_env_var, store),

        "clone_group_handle" => func1(sym::clone_group_handle, store),
        "drop_group_handle" => func1(sym::drop_group_handle, store),
        "group_new" => func2(sym::group_new, store),
        "group_delimiter" => func1(sym::group_delimiter, store),
        "group_stream" => func1(sym::group_stream, store),
        "group_span" => func1(sym::group_span, store),
        "group_span_open" => func1(sym::group_span_open, store),
        "group_span_close" => func1(sym::group_span_close, store),
        "group_set_span" => func2(sym::group_set_span, store),

        "clone_literal_handle" => func1(sym::clone_literal_handle, store),
        "drop_literal_handle" => func1(sym::drop_literal_handle, store),
        "literal_debug_kind" => func1(sym::literal_debug_kind, store),
        "literal_symbol" => func1(sym::literal_symbol, store),
        "literal_suffix" => func1(sym::literal_suffix, store),
        "literal_integer" => func1(sym::literal_integer, store),
        "literal_typed_integer" => func2(sym::literal_typed_integer, store),
        "literal_float" => func1(sym::literal_float, store),
        "literal_f32" => func1(sym::literal_f32, store),
        "literal_f64" => func1(sym::literal_f64, store),
        "literal_string" => func1(sym::literal_string, store),
        "literal_character" => func1(sym::literal_character, store),
        "literal_byte_string" => func1(sym::literal_byte_string, store),
        "literal_span" => func1(sym::literal_span, store),
        "literal_set_span" => func2(sym::literal_set_span, store),
        "literal_subspan" => func3(sym::literal_subspan, store),

        "clone_source_file_handle" => func1(sym::clone_source_file_handle, store),
        "drop_source_file_handle" => func1(sym::drop_source_file_handle, store),
        "source_file_eq" => func2(sym::source_file_eq, store),
        "source_file_path" => func1(sym::source_file_path, store),
        "source_file_is_real" => func1(sym::source_file_is_real, store),

        "clone_token_stream_handle" => func1(sym::clone_token_stream_handle, store),
        "drop_token_stream_handle" => func1(sym::drop_token_stream_handle, store),
        "token_stream_new" => func0(sym::token_stream_new, store),
        "token_stream_is_empty" => func1(sym::token_stream_is_empty, store),
        "token_stream_from_str" => func1(sym::token_stream_from_str, store),
        "token_stream_to_string" => func1(sym::token_stream_to_string, store),
        "token_stream_from_token_tree" => func1(sym::token_stream_from_token_tree, store),
        "token_stream_into_iter" => func1(sym::token_stream_into_iter, store),
        "token_stream_push" => func2(sym::token_stream_push, store),

        "clone_token_stream_iter_handle" => func1(sym::clone_token_stream_iter_handle, store),
        "drop_token_stream_iter_handle" => func1(sym::drop_token_stream_iter_handle, store),
        "token_stream_iter_next" => func1(sym::token_stream_iter_next, store),

        "drop_multi_span_handle" => func1(sym::drop_multi_span_handle, store),
        "multi_span_new" => func0(sym::multi_span_new, store),
        "multi_span_push" => func2(sym::multi_span_push, store),

        "punct_new" => func2(sym::punct_new, store),
        "punct_as_char" => func1(sym::punct_as_char, store),
        "punct_spacing" => func1(sym::punct_spacing, store),
        "punct_span" => func1(sym::punct_span, store),
        "punct_with_span" => func2(sym::punct_with_span, store),

        "ident_new" => func3(sym::ident_new, store),
        "ident_span" => func1(sym::ident_span, store),
        "ident_with_span" => func2(sym::ident_with_span, store),

        "span_debug" => func1(sym::span_debug, store),
        "span_def_site" => func0(sym::span_def_site, store),
        "span_call_site" => func0(sym::span_call_site, store),
        "span_mixed_site" => func0(sym::span_mixed_site, store),
        "span_source_file" => func1(sym::span_source_file, store),
        "span_parent" => func1(sym::span_parent, store),
        "span_source" => func1(sym::span_source, store),
        "span_start" => func1(sym::span_start, store),
        "span_end" => func1(sym::span_end, store),
        "span_join" => func2(sym::span_join, store),
        "span_resolved_at" => func2(sym::span_resolved_at, store),
        "span_source_text" => func1(sym::span_source_text, store),

        "string_new" => mem_func2(sym::string_new, store),
        "string_len" => func1(sym::string_len, store),
        "string_copy" => mem_func2(sym::string_copy, store),
        "drop_string" => func1(sym::drop_string, store),

        "bytes_new" => mem_func2(sym::string_new, store),
        "bytes_len" => func1(sym::string_len, store),
        "bytes_copy" => mem_func2(sym::string_copy, store),
        "drop_bytes" => func1(sym::drop_string, store),

        "print_panic" => func1(sym::print_panic, store),
        "hint_panic" => func2(sym::hint_panic, store),

        _ => unreachable!("unresolved import: {:?}", name),
    };

    let name = name.to_owned();
    Box::new(move |i| {
        if cfg!(watt_debug) {
            eprintln!("Executing {:?}", name);
        }
        f(i)
    })
}
