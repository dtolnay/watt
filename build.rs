fn main() {
    println!("cargo:rerun-if-env-changed=WATT_JIT");

    println!("cargo:rustc-check-cfg=cfg(feature, values(\"test\"))");
    println!("cargo:rustc-check-cfg=cfg(jit)");
    println!("cargo:rustc-check-cfg=cfg(watt_debug)");

    if std::env::var_os("WATT_JIT").is_some() {
        println!("cargo:rustc-cfg=jit");
    }
}
