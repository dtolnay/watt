use crate::runtime::{func1, mem_func2, HostFunc, Store};
use crate::sym;

pub fn host_func(name: &str, store: &Store) -> HostFunc {
    match name {
        "token_stream_serialize" => func1(sym::token_stream_serialize, store),
        "token_stream_deserialize" => mem_func2(sym::token_stream_deserialize, store),
        "token_stream_parse" => mem_func2(sym::token_stream_parse, store),
        "literal_to_string" => func1(sym::literal_to_string, store),

        "string_new" => mem_func2(sym::string_new, store),
        "string_len" => func1(sym::string_len, store),
        "string_read" => mem_func2(sym::string_read, store),
        "bytes_len" => func1(sym::bytes_len, store),
        "bytes_read" => mem_func2(sym::bytes_read, store),
        "print_panic" => func1(sym::print_panic, store),

        _ => unreachable!("unresolved import: {:?}", name),
    }
}
