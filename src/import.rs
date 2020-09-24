use crate::{
    runtime::{
        func::{func0, func2, func3, func4},
        func1, mem_func2, HostFunc, Store,
    },
    sym,
};

pub fn host_func(name: &str, store: &Store) -> HostFunc {
    let f = match name {
        #[cfg(feature = "proc-macro-server")]
        "drop_diagnostic_handle" => func1(sym::drop_diagnostic_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "diagnostic_new" => func3(sym::diagnostic_new, store),
        #[cfg(feature = "proc-macro-server")]
        "diagnostic_sub" => func4(sym::diagnostic_sub, store),
        #[cfg(feature = "proc-macro-server")]
        "diagnostic_emit" => func1(sym::diagnostic_emit, store),

        #[cfg(feature = "proc-macro-server")]
        "free_functions_track_env_var" => func2(sym::free_functions_track_env_var, store),

        #[cfg(feature = "proc-macro-server")]
        "clone_group_handle" => func1(sym::clone_group_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "drop_group_handle" => func1(sym::drop_group_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "group_new" => func2(sym::group_new, store),
        #[cfg(feature = "proc-macro-server")]
        "group_delimiter" => func1(sym::group_delimiter, store),
        #[cfg(feature = "proc-macro-server")]
        "group_stream" => func1(sym::group_stream, store),
        #[cfg(feature = "proc-macro-server")]
        "group_span" => func1(sym::group_span, store),
        #[cfg(feature = "proc-macro-server")]
        "group_span_open" => func1(sym::group_span_open, store),
        #[cfg(feature = "proc-macro-server")]
        "group_span_close" => func1(sym::group_span_close, store),
        #[cfg(feature = "proc-macro-server")]
        "group_set_span" => func2(sym::group_set_span, store),

        #[cfg(feature = "proc-macro-server")]
        "clone_literal_handle" => func1(sym::clone_literal_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "drop_literal_handle" => func1(sym::drop_literal_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_debug_kind" => func1(sym::literal_debug_kind, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_symbol" => func1(sym::literal_symbol, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_suffix" => func1(sym::literal_suffix, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_integer" => func1(sym::literal_integer, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_typed_integer" => func2(sym::literal_typed_integer, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_float" => func1(sym::literal_float, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_f32" => func1(sym::literal_f32, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_f64" => func1(sym::literal_f64, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_string" => func1(sym::literal_string, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_character" => func1(sym::literal_character, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_byte_string" => func1(sym::literal_byte_string, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_span" => func1(sym::literal_span, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_set_span" => func2(sym::literal_set_span, store),
        #[cfg(feature = "proc-macro-server")]
        "literal_subspan" => func3(sym::literal_subspan, store),

        #[cfg(feature = "proc-macro-server")]
        "clone_source_file_handle" => func1(sym::clone_source_file_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "drop_source_file_handle" => func1(sym::drop_source_file_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "source_file_eq" => func2(sym::source_file_eq, store),
        #[cfg(feature = "proc-macro-server")]
        "source_file_path" => func1(sym::source_file_path, store),
        #[cfg(feature = "proc-macro-server")]
        "source_file_is_real" => func1(sym::source_file_is_real, store),

        "clone_token_stream_handle" => func1(sym::clone_token_stream_handle, store),
        "drop_token_stream_handle" => func1(sym::drop_token_stream_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "token_stream_new" => func0(sym::token_stream_new, store),
        #[cfg(feature = "proc-macro-server")]
        "token_stream_is_empty" => func1(sym::token_stream_is_empty, store),
        "token_stream_from_str" => func1(sym::token_stream_from_str, store),
        "token_stream_to_string" => func1(sym::token_stream_to_string, store),
        #[cfg(feature = "proc-macro-server")]
        "token_stream_from_token_tree" => func1(sym::token_stream_from_token_tree, store),
        #[cfg(feature = "proc-macro-server")]
        "token_stream_into_iter" => func1(sym::token_stream_into_iter, store),
        #[cfg(feature = "proc-macro-server")]
        "token_stream_push" => func2(sym::token_stream_push, store),

        #[cfg(feature = "proc-macro-server")]
        "clone_token_stream_iter_handle" => func1(sym::clone_token_stream_iter_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "drop_token_stream_iter_handle" => func1(sym::drop_token_stream_iter_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "token_stream_iter_next" => func1(sym::token_stream_iter_next, store),

        #[cfg(feature = "proc-macro-server")]
        "drop_multi_span_handle" => func1(sym::drop_multi_span_handle, store),
        #[cfg(feature = "proc-macro-server")]
        "multi_span_new" => func0(sym::multi_span_new, store),
        #[cfg(feature = "proc-macro-server")]
        "multi_span_push" => func2(sym::multi_span_push, store),

        #[cfg(feature = "proc-macro-server")]
        "punct_new" => func2(sym::punct_new, store),
        #[cfg(feature = "proc-macro-server")]
        "punct_as_char" => func1(sym::punct_as_char, store),
        #[cfg(feature = "proc-macro-server")]
        "punct_spacing" => func1(sym::punct_spacing, store),
        #[cfg(feature = "proc-macro-server")]
        "punct_span" => func1(sym::punct_span, store),
        #[cfg(feature = "proc-macro-server")]
        "punct_with_span" => func2(sym::punct_with_span, store),

        #[cfg(feature = "proc-macro-server")]
        "ident_new" => func3(sym::ident_new, store),
        #[cfg(feature = "proc-macro-server")]
        "ident_span" => func1(sym::ident_span, store),
        #[cfg(feature = "proc-macro-server")]
        "ident_with_span" => func2(sym::ident_with_span, store),

        #[cfg(feature = "proc-macro-server")]
        "span_debug" => func1(sym::span_debug, store),
        #[cfg(feature = "proc-macro-server")]
        "span_def_site" => func0(sym::span_def_site, store),
        #[cfg(feature = "proc-macro-server")]
        "span_call_site" => func0(sym::span_call_site, store),
        #[cfg(feature = "proc-macro-server")]
        "span_mixed_site" => func0(sym::span_mixed_site, store),
        #[cfg(feature = "proc-macro-server")]
        "span_source_file" => func1(sym::span_source_file, store),
        #[cfg(feature = "proc-macro-server")]
        "span_parent" => func1(sym::span_parent, store),
        #[cfg(feature = "proc-macro-server")]
        "span_source" => func1(sym::span_source, store),
        #[cfg(feature = "proc-macro-server")]
        "span_start" => func1(sym::span_start, store),
        #[cfg(feature = "proc-macro-server")]
        "span_end" => func1(sym::span_end, store),
        #[cfg(feature = "proc-macro-server")]
        "span_join" => func2(sym::span_join, store),
        #[cfg(feature = "proc-macro-server")]
        "span_resolved_at" => func2(sym::span_resolved_at, store),
        #[cfg(feature = "proc-macro-server")]
        "span_source_text" => func1(sym::span_source_text, store),

        "string_new" => mem_func2(sym::string_new, store),
        "string_len" => func1(sym::string_len, store),
        "string_copy" => mem_func2(sym::string_copy, store),
        "drop_string" => func1(sym::drop_string, store),

        #[cfg(feature = "proc-macro-server")]
        "bytes_new" => mem_func2(sym::string_new, store),
        #[cfg(feature = "proc-macro-server")]
        "bytes_len" => func1(sym::string_len, store),
        #[cfg(feature = "proc-macro-server")]
        "bytes_copy" => mem_func2(sym::string_copy, store),
        #[cfg(feature = "proc-macro-server")]
        "drop_bytes" => func1(sym::drop_string, store),

        "print_panic" => func1(sym::print_panic, store),
        "hint_panic" => func2(sym::hint_panic, store),

        _ => unreachable!("unresolved import: {:?}", name),
    };

    if cfg!(watt_debug) {
        let name = name.to_owned();
        Box::new(move |i| {
            if cfg!(watt_debug) {
                eprintln!("Executing {:?}", name);
            }
            f(i)
        })
    } else {
        f
    }
}
