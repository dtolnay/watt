## Enabling JIT compilation (optional, experimental)

This directory implements a JIT compiled runtime for proc macros as an optional
performance improvement over the interpreted runtime that Watt comes with by
default. Installing the JIT is entirely optional; all Watt macros will work
exactly the same whether or not the user has the JIT installed, but will usually
be quite a bit faster on the JIT runtime.

JIT compilation relies on the host to provide a dynamic library which implements
the [proposed Wasm C API][wasm-c-api]. Any conforming implementation of this API
would be fine; a good one is [`wasmtime_api`] which runs on the Wasmtime runtime
based on Cranelift.

```console
$  git clone https://github.com/bytecodealliance/wasmtime
$  cd wasmtime/crates/api
$  cargo build --release
```

Then ensure the following environment variable is defined, and Watt will begin
using the JIT runtime when expanding macros.

```
$  export WATT_JIT=/path/to/wasmtime/target/release/libwasmtime.so
```

Note that `WATT_JIT` would have to be set by users that depend on a Watt-based
macro (as opposed to the author of the macro) since they're the ones that need a
runtime to run the macro on. But again, JIT is optional and Watt-based macros
will work the same even on systems without a JIT installed.

[wasm-c-api]: https://github.com/webassembly/wasm-c-api
[`wasmtime_api`]: https://github.com/bytecodealliance/wasmtime/tree/master/crates/api
