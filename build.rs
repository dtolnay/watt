fn main() {
    println!("cargo:rerun-if-env-changed=WATT_JIT");

    if std::env::var("WATT_JIT").is_ok() {
        println!("cargo:rustc-link-search=native=/home/alex/code/wasmtime/target/release");
        println!("cargo:rustc-link-lib=static=wasmtime_api");
        println!("cargo:rustc-cfg=jit");
    }
}
