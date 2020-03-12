#[link(wasm_import_module = "watt-0.3")]
extern "C" {
    #[link_name = "query_feature_flag"]
    fn query_feature_flag_raw(ptr: *const u8, len: u32) -> u32;
}

pub fn query_feature_flag(flag: &str) -> Option<bool> {
    let res = unsafe { query_feature_flag_raw(flag.as_bytes().as_ptr(), flag.len() as u32) };
    match res {
        0 => Some(false),
        1 => Some(true),
        _ => None,
    }
}
