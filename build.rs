fn main() {
    println!("cargo:rerun-if-env-changed=WATT_JIT");

    if std::env::var_os("WATT_JIT").is_some() {
        println!("cargo:rustc-cfg=jit");
    }
}
