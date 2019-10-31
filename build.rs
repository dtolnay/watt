fn main() {
    println!("cargo:rerun-if-env-changed=WATT_JIT");

    if std::env::var("WATT_JIT").is_ok() {
        println!("cargo:rustc-cfg=jit");
    }
}
