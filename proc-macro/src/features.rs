static mut ENABLED_FEATURES: Vec<u32> = Vec::new();

#[no_mangle]
#[doc(hidden)]
//  FIXME: This is horribly unsafe (static mut) but should be ok because unthreaded wasm
/// SAFETY: only call this when no other code in the wasm module is running
pub unsafe extern "C" fn __watt_publish_feature(feature: u32) {
    if let Err(i) = ENABLED_FEATURES.binary_search(&feature) {
        ENABLED_FEATURES.insert(i, feature);
    }
}

pub fn check(feature: &'static str) -> bool {
    /// A simple 32 bit FNV hash function. Must be the same one as used on the proc-macro side.
    ///
    /// <https://en.wikipedia.org/wiki/Fowler–Noll–Vo_hash_function>
    /// <http://www.isthe.com/chongo/tech/comp/fnv/index.html#FNV-1a>
    fn fnv1a(bytes: &[u8]) -> u32 {
        const FNV_OFFSET: u32 = 0x811C_9DC5;
        const FNV_PRIME: u32 = 0x100_0193;
        let mut hash = FNV_OFFSET;
        for &byte in bytes {
            hash ^= byte as u32;
            hash = hash.wrapping_mul(FNV_PRIME);
        }
        hash
    }
    let feature_hash = fnv1a(feature.as_bytes());
    unsafe { ENABLED_FEATURES.binary_search(&feature_hash).is_ok() }
}
