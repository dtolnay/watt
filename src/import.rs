use crate::{
    runtime::{
        func::{func0, func2, func3},
        func1, mem_func2, HostFunc, Store,
    },
    sym,
};

pub fn host_func(name: &str, store: &Store) -> HostFunc {
    let f = match name {
        "drop_diagnostic_handle" => func1(sym::drop_diagnostic_handle, store),

        "clone_group_handle" => func1(sym::clone_group_handle, store),
        "drop_group_handle" => func1(sym::drop_group_handle, store),
        "group_new" => func2(sym::group_new, store),

        "clone_literal_handle" => func1(sym::clone_literal_handle, store),
        "drop_literal_handle" => func1(sym::drop_literal_handle, store),
        "literal_string" => func1(sym::literal_string, store),

        "clone_source_file_handle" => func1(sym::clone_source_file_handle, store),
        "drop_source_file_handle" => func1(sym::drop_source_file_handle, store),

        "clone_token_stream_handle" => func1(sym::clone_token_stream_handle, store),
        "drop_token_stream_handle" => func1(sym::drop_token_stream_handle, store),
        "token_stream_new" => func0(sym::token_stream_new, store),
        "token_stream_from_str" => func1(sym::token_stream_from_str, store),
        "token_stream_to_string" => func1(sym::token_stream_to_string, store),
        "token_stream_from_token_tree" => func1(sym::token_stream_from_token_tree, store),
        "token_stream_into_iter" => func1(sym::token_stream_into_iter, store),
        "token_stream_push" => func2(sym::token_stream_push, store),

        "clone_token_stream_iter_handle" => func1(sym::clone_token_stream_iter_handle, store),
        "drop_token_stream_iter_handle" => func1(sym::drop_token_stream_iter_handle, store),
        "token_stream_iter_next" => func1(sym::token_stream_iter_next, store),

        "drop_multi_span_handle" => func1(sym::drop_multi_span_handle, store),

        "punct_new" => func2(sym::punct_new, store),
        "punct_as_char" => func1(sym::punct_as_char, store),
        "punct_spacing" => func1(sym::punct_spacing, store),
        "punct_span" => func1(sym::punct_span, store),
        "punct_with_span" => func2(sym::punct_with_span, store),

        "ident_new" => func3(sym::ident_new, store),
        "ident_span" => func1(sym::ident_span, store),

        "span_debug" => func1(sym::span_debug, store),
        "span_call_site" => func0(sym::span_call_site, store),

        "string_new" => mem_func2(sym::string_new, store),
        "string_len" => func1(sym::string_len, store),
        "string_copy" => mem_func2(sym::string_copy, store),
        "drop_string" => func1(sym::drop_string, store),

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
