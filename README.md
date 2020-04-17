Watt
====

[![Build Status](https://api.travis-ci.com/dtolnay/watt.svg?branch=master)](https://travis-ci.com/dtolnay/watt)
[![Latest Version](https://img.shields.io/crates/v/watt.svg)](https://crates.io/crates/watt)
[![Rust Documentation](https://img.shields.io/badge/api-rustdoc-blue.svg)](https://docs.rs/watt)

Watt is a runtime for executing Rust procedural macros compiled as WebAssembly.

```toml
[dependencies]
watt = "0.3"
```

*Compiler support: requires rustc 1.35+*

<br>

## Rationale

- **Faster compilation.**&emsp;By compiling macros ahead-of-time to Wasm, we
  save all downstream users of the macro from having to compile the macro logic
  or its dependencies themselves.

  Instead, what they compile is a small self-contained Wasm runtime (~3 seconds,
  shared by all macros) and a tiny proc macro shim for each macro crate to hand
  off Wasm bytecode into the Watt runtime (~0.3 seconds per proc-macro crate you
  depend on). This is much less than the 20+ seconds it can take to compile
  complex procedural macros and their dependencies.

- **Isolation.**&emsp;The Watt runtime is 100% safe code with zero dependencies.
  While running in this environment, a macro's *only possible interaction with
  the world* is limited to consuming tokens and producing tokens. This is true
  regardless of how much unsafe code the macro itself might contain! Modulo bugs
  in the Rust compiler or standard library, it is impossible for a macro to do
  anything other than shuffle tokens around.

- **Determinism.**&emsp;From a build system point of view, a macro backed by
  Wasm has the advantage that it can be treated as a purely deterministic
  function from input to output. There is no possibility of implicit
  dependencies, such as via the filesystem, which aren't visible to or taken
  into account by the build system.

<br>

## Getting started

Start by implementing and testing your proc macro as you normally would, using
whatever dependencies you want (syn, quote, etc). Let's say you made a crate
`foo-macros` that exports a proc macro named `bar`, like this:

```toml
# foo-macros/Cargo.toml

[package]
name = "foo-macros"

...

[lib]
proc-macro = true
```

```rust
// foo-macros/src/lib.rs

use proc_macro::TokenStream;

#[proc_macro]
pub fn bar(input: TokenStream) -> TokenStream {
    /* ... */
}
```

(`#[proc_macro_derive]` and `#[proc_macro_attribute]` are supported as well;
everything is analogous to what will be shown here for `#[proc_macro]`.)

When your macro is ready, there are just a few changes you need to make to
the macro function signatures and the `Cargo.toml`.

First, rename your crate to something like `foo-macros-impl`.
This crate will be compiled to Wasm, so change its `Cargo.toml` to make it
a `cdylib` crate instead of a proc macro crate. Also add a dependency on
the `proc-macro2` crate if you didn't already have it, and patch it to
come from this repository instead of crates.io. Your `Cargo.toml` will now
look like this:

```toml
# foo-macros-impl/Cargo.toml

[package]
name = "foo-macros-impl"

[dependencies]
proc-macro2 = "..."

...

[lib]
crate-type = ["cdylib"]

[patch.crates-io]
proc-macro2 = { git = "https://github.com/dtolnay/watt" }
```

Next, in your `lib.rs`, change each of the macro entry points to
a `#[no_mangle] extern "C"` function, and change the `TokenStream` in
the signatures from `proc_macro` to `proc_macro2`:

```rust
// foo-macros-impl/src/lib.rs

use proc_macro2::TokenStream;

#[no_mangle]
pub extern "C" fn bar(input: TokenStream) -> TokenStream {
    /* same as before */
}
```

Compile `foo-macros-impl` by running:

```console
$ cargo build --release --target wasm32-unknown-unknown
```

You will now have a `foo_macros_impl.wasm` file under
`foo-macros-impl/target/wasm32-unknown-unknown/release`

Now make a new proc macro crate named `foo-macros`. This is the crate that
you would publish to crates.io; it will act as a shim around
the `foo-macros-impl` Wasm module by handing the module's bytes to
the Watt runtime. Add a dependency on `watt` to this new crate, and redefine
each of the proc macros that the original `foo-macros` contained.

```toml
# foo-macros/Cargo.toml

[package]
name = "foo-macros"

[dependencies]
watt = "0.3"

[lib]
proc-macro = true
```

```rust
// foo-macros/src/lib.rs

use proc_macro::TokenStream;
use watt::WasmMacro;

static MACRO: WasmMacro = WasmMacro::new(WASM);
static WASM: &[u8] = include_bytes!("foo_macros_impl.wasm");

#[proc_macro]
pub fn bar(input: TokenStream) -> TokenStream {
    MACRO.proc_macro("bar", input)
}
```

Finally, copy the `foo_macros_impl.wasm` file to `foo-macros/src/`,
and verify that `foo-macros` compiles succesfully.

`foo-macros` is now ready to be published!

<br>

## Remaining work

- **Performance.**&emsp;Watt compiles pretty fast, but so far I have not put any
  effort toward optimizing the runtime. That means macro expansion can
  potentially take longer than with a natively compiled proc macro.

  Note that the performance overhead of the Wasm environment is partially offset
  by the fact that our proc macros are compiled to Wasm in release mode, so
  downstream `cargo build` will be running a release-mode macro when it would
  have been running debug-mode for a traditional proc macro.

  A neat approach would be to provide some kind of `cargo install watt-runtime`
  which installs an optimized Wasm runtime locally, which the Watt crate can
  detect and hand off code to if available. That way we avoid running things in
  a debug-mode runtime altogether. The experimental beginnings of this can be
  found under the [jit/](jit) directory.

- **Tooling.**&emsp;The getting started section shows there are a lot of steps
  to building a macro for Watt, and a pretty hacky patching in of proc-macro2.
  Ideally this would all be more straightforward, including easy tooling for
  doing reproducible builds of the Wasm artifact for confirming that it was
  indeed compiled from the publicly available sources.

- **RFCs.**&emsp;The advantages of fast compile time, isolation, and determinism
  may make it worthwhile to build first-class support for Wasm proc macros into
  rustc and Cargo. The toolchain could ship its own high performance Wasm
  runtime, which is an even better outcome than Watt because that runtime can be
  heavily optimized and consumers of macros don't need to compile it.

<br>

## This can't be real

To assist in convincing you that this is real, [here is serde\_derive compiled
to Wasm][wa-serde-derive]. It was compiled from the commit
[serde-rs/serde@37bf6984][commit]. Feel free to try it out as:

[wa-serde-derive]: https://crates.io/crates/wa-serde-derive
[commit]: https://github.com/serde-rs/serde/commit/37bf69847ca5144e1277038be99ec1fcff378cc9

```rust
// [dependencies]
// serde = "1.0"
// serde_json = "1.0"
// wa-serde-derive = "0.1"

use wa_serde_derive::Serialize;

#[derive(Serialize)]
struct Watt {
    msg: &'static str,
}

fn main() {
    let w = Watt { msg: "hello from wasm!" };
    println!("{}", serde_json::to_string(&w).unwrap());
}
```

<br>

## Acknowledgements

The current underlying Wasm runtime is a fork of the [Rust-WASM] project by
Yoann Blein and Hugo Guiroux, a simple and spec-compliant WebAssembly
interpreter.

[Rust-WASM]: https://github.com/yblein/rust-wasm

<br>

#### License

<sup>
Everything outside of the `runtime` directory is licensed under either of <a
href="LICENSE-APACHE">Apache License, Version 2.0</a> or <a
href="LICENSE-MIT">MIT license</a> at your option. The `runtime` directory is
licensed under the <a href="runtime/LICENSE_ISC">ISC license</a>.
</sup>

<br>

<sub>
Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in this crate by you, as defined in the Apache-2.0 license, shall
be dual licensed as above, without any additional terms or conditions.
</sub>
