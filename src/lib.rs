//! # Watt
//!
//! Watt<sup>*</sup> is a runtime for executing Rust procedural macros compiled
//! as WebAssembly.
//!
//! <sub><b>*</b><i>optional but entertaining pronunciation:
//! <u>wahteetee</u></i></sub>
//!
//! <br>
//!
//! # Rationale
//!
//! - **Faster compilation.**&emsp;By compiling macros ahead-of-time to Wasm, we
//!   save all downstream users of the macro from having to compile the macro
//!   logic or its dependencies themselves.
//!
//!   Instead, what they compile is a small self-contained Wasm runtime (~3
//!   seconds, shared by all macros) and a tiny proc macro shim for each macro
//!   crate to hand off Wasm bytecode into the Watt runtime (~0.3 seconds per
//!   proc-macro crate you depend on). This is much less than the 20+ seconds it
//!   can take to compile complex procedural macros and their dependencies.
//!
//! - **Isolation.**&emsp;The Watt runtime is 100% safe code with zero
//!   dependencies. While running in this environment, a macro's *only possible
//!   interaction with the world* is limited to consuming tokens and producing
//!   tokens. This is true regardless of how much unsafe code the macro itself
//!   might contain! Modulo bugs in the Rust compiler or standard library, it is
//!   impossible for a macro to do anything other than shuffle tokens around.
//!
//! - **Determinism.**&emsp;From a build system point of view, a macro backed by
//!   Wasm has the advantage that it can be treated as a purely deterministic
//!   function from input to output. There is no possibility of implicit
//!   dependencies, such as via the filesystem, which aren't visible to or taken
//!   into account by the build system.
//!
//! <br>
//!
//! # Getting started
//!
//! Start by implementing and testing your proc macro as you normally would,
//! using whatever dependencies you want (syn, quote, etc). You will end up with
//! something that looks like:
//!
//! ```
//! # const IGNORE: &str = stringify! {
//! extern crate proc_macro;
//!
//! use proc_macro::TokenStream;
//!
//! #[proc_macro]
//! pub fn my_macro(input: TokenStream) -> TokenStream {
//!     /* ... */
//! }
//! # };
//! ```
//!
//! `#[proc_macro_derive]` and `#[proc_macro_attribute]` are supported as well;
//! everything is analogous to what will be shown here for `#[proc_macro]`.
//!
//! When your macro is ready, there are just a few changes we need to make to
//! the signature and the Cargo.toml. In your lib.rs, change each of your macro
//! entry points to a no\_mangle extern "C" function, and change the TokenStream
//! in the signature from proc\_macro to proc\_macro2. Finally, add a call to
//! `proc_macro2::set_wasm_panic_hook()` at the top of your macro to ensure
//! panics get printed to the console; this is optional but helpful!
//!
//! It will look like:
//!
//! ```
//! # const IGNORE: &str = stringify! {
//! use proc_macro2::TokenStream;
//!
//! #[no_mangle]
//! pub extern "C" fn my_macro(input: TokenStream) -> TokenStream {
//!     proc_macro2::set_wasm_panic_hook();
//!
//!     /* same as before */
//! }
//! # };
//! ```
//!
//! Now in your macro's Cargo.toml which used to contain this:
//!
//! ```toml
//! [lib]
//! proc-macro = true
//! ```
//!
//! change it instead to say:
//!
//! ```toml
//! [lib]
//! crate-type = ["cdylib", "rlib"]
//!
//! [patch.crates-io]
//! proc-macro2 = { git = "https://github.com/dtolnay/watt" }
//! ```
//!
//! This crate will be the binary that we compile to Wasm. Compile it by
//! running:
//!
//! ```console
//! $ cargo build --release --target wasm32-unknown-unknown
//! ```
//!
//! Next we need to make a small proc-macro shim crate to hand off the compiled
//! Wasm bytes into the Watt runtime. In a new Cargo.toml, put:
//!
//! ```toml
//! [lib]
//! proc-macro = true
//!
//! [dependencies]
//! watt = "0.2"
//! ```
//!
//! And in its src/lib.rs put:
//!
//! ```
//! # const IGNORE: &str = stringify! {
//! extern crate proc_macro;
//!
//! use proc_macro::TokenStream;
//!
//! static WASM: &[u8] = include_bytes!("my_macro.wasm");
//!
//! #[proc_macro]
//! pub fn my_macro(input: TokenStream) -> TokenStream {
//!     watt::proc_macro("my_macro", input, WASM)
//! }
//! # };
//! ```
//!
//! Finally, copy the compiled Wasm binary from
//! target/wasm32-unknown-unknown/release/my_macro.wasm under your
//! implementation crate, to the src directory of your shim crate, and it's
//! ready to publish!
//!
//! <br>
//!
//! # Remaining work
//!
//! - **Performance.**&emsp;Watt compiles pretty fast, but so far I have not put
//!   any effort toward optimizing the runtime. That means macro expansion can
//!   potentially take longer than with a natively compiled proc macro.
//!
//!   Note that the performance overhead of the Wasm environment is partially
//!   offset by the fact that our proc macros are compiled to Wasm in release
//!   mode, so downstream `cargo build` will be running a release-mode macro
//!   when it would have been running debug-mode for a traditional proc macro.
//!
//!   A neat approach would be to provide some kind of `cargo install
//!   watt-runtime` which installs an optimized Wasm runtime locally, which the
//!   Watt crate can detect and hand off code to if available. That way we avoid
//!   running things in a debug-mode runtime altogether.
//!
//! - **Tooling.**&emsp;The getting started section shows there are a lot of
//!   steps to building a macro for Watt, and a pretty hacky patching in of
//!   proc-macro2. Ideally this would all be more straightforward, including
//!   easy tooling for doing reproducible builds of the Wasm artifact for
//!   confirming that it was indeed compiled from the publicly available
//!   sources.
//!
//! - **RFCs.**&emsp;The advantages of fast compile time, isolation, and
//!   determinism may make it worthwhile to build first-class support for Wasm
//!   proc macros into rustc and Cargo. The toolchain could ship its own high
//!   performance Wasm runtime, which is an even better outcome than Watt
//!   because that runtime can be heavily optimized and consumers of macros
//!   don't need to compile it.
//!
//! <br>
//!
//! # Acknowledgements
//!
//! The current underlying Wasm runtime is a fork of the [Rust-WASM] project by
//! Yoann Blein and Hugo Guiroux, a simple and spec-compliant WebAssembly
//! interpreter.
//!
//! [Rust-WASM]: https://github.com/yblein/rust-wasm

extern crate proc_macro;

#[cfg(not(jit))]
#[path = "../runtime/src/lib.rs"]
mod runtime;
#[cfg(jit)]
#[path = "../jit/src/lib.rs"]
mod runtime;

mod data;
mod decode;
mod encode;
mod exec;
mod import;
mod sym;

#[cfg(all(watt_debug, not(jit)))]
mod debug;

use proc_macro::TokenStream;
use std::sync::atomic::{AtomicUsize, Ordering::SeqCst};

/// An instantiation of a WebAssembly module used to invoke procedural macro
/// methods on the wasm module.
///
///
/// # Examples
///
/// ```
/// # const IGNORE: &str = stringify! {
/// static WASM: watt::Instance = watt::Instance::new(include_bytes!("my_macro.wasm"));
/// # };
/// ```
pub struct Instance {
    wasm: &'static [u8],
    id: AtomicUsize,
}

impl Instance {
    /// Creates a new `Instance` from the statically included blob of wasm bytes.
    ///
    /// # Examples
    ///
    /// ```
    /// # const IGNORE: &str = stringify! {
    /// static WASM: watt::Instance = watt::Instance::new(include_bytes!("my_macro.wasm"));
    /// # };
    /// ```
    pub const fn new(wasm: &'static [u8]) -> Instance {
        Instance {
            wasm,
            id: AtomicUsize::new(0),
        }
    }

    /// A #\[proc_macro\] implemented in wasm!
    ///
    /// # Canonical macro implementation:
    ///
    /// ```
    /// # const IGNORE: &str = stringify! {
    /// use proc_macro2::TokenStream;
    ///
    /// #[proc_macro2::proc_macro]
    /// pub fn my_macro(input: TokenStream) -> TokenStream {
    ///     ...
    /// }
    /// # };
    /// ```
    ///
    /// # Canonical entry point:
    ///
    /// ```
    /// # const IGNORE: &str = stringify! {
    /// extern crate proc_macro;
    ///
    /// use proc_macro::TokenStream;
    ///
    /// static WASM: watt::Instance = watt::Instance::new(include_bytes!("my_macro.wasm"));
    ///
    /// #[proc_macro]
    /// pub fn my_macro(input: TokenStream) -> TokenStream {
    ///     WASM.proc_macro("my_macro", input)
    /// }
    /// # };
    /// ```
    pub fn proc_macro(&self, fun: &str, input: TokenStream) -> TokenStream {
        exec::proc_macro(fun, vec![input], self)
    }

    /// A #\[proc_macro_derive\] implemented in wasm!
    ///
    /// # Canonical macro implementation:
    ///
    /// ```
    /// # const IGNORE: &str = stringify! {
    /// use proc_macro2::TokenStream;
    ///
    /// #[proc_macro2::proc_macro_derive(MyTrait)]
    /// pub fn my_macro(input: TokenStream) -> TokenStream {
    ///     ...
    /// }
    /// # };
    /// ```
    ///
    /// # Canonical entry point:
    ///
    /// ```
    /// # const IGNORE: &str = stringify! {
    /// extern crate proc_macro;
    ///
    /// use proc_macro::TokenStream;
    ///
    /// static WASM: watt::Instance = watt::Instance::new(include_bytes!("my_macro.wasm"));
    ///
    /// #[proc_macro_derive(MyDerive)]
    /// pub fn my_macro(input: TokenStream) -> TokenStream {
    ///     WASM.proc_macro_derive("my_macro", input)
    /// }
    /// # };
    /// ```
    pub fn proc_macro_derive(&self, fun: &str, input: TokenStream) -> TokenStream {
        exec::proc_macro(fun, vec![input], self)
    }

    /// A #\[proc_macro_attribute\] implemented in wasm!
    ///
    /// # Canonical macro implementation:
    ///
    /// ```
    /// # const IGNORE: &str = stringify! {
    /// use proc_macro2::TokenStream;
    ///
    /// #[proc_macro2::proc_macro_attribute]
    /// pub fn my_macro(args: TokenStream, input: TokenStream) -> TokenStream {
    ///     ...
    /// }
    /// # };
    /// ```
    ///
    /// # Canonical entry point:
    ///
    /// ```
    /// # const IGNORE: &str = stringify! {
    /// extern crate proc_macro;
    ///
    /// use proc_macro::TokenStream;
    ///
    /// static WASM: watt::Instance = watt::Instance::new(include_bytes!("my_macro.wasm"));
    ///
    /// #[proc_macro_attribute]
    /// pub fn my_macro(args: TokenStream, input: TokenStream) -> TokenStream {
    ///     WASM.proc_macro_attribute("my_macro", args, input)
    /// }
    /// # };
    /// ```
    pub fn proc_macro_attribute(
        &self,
        fun: &str,
        args: TokenStream,
        input: TokenStream,
    ) -> TokenStream {
        exec::proc_macro(fun, vec![args, input], self)
    }

    fn id(&self) -> usize {
        static NEXT_ID: AtomicUsize = AtomicUsize::new(1);
        match self.id.load(SeqCst) {
            0 => {}
            n => return n,
        }
        let id = NEXT_ID.fetch_add(1, SeqCst);
        self.id
            .compare_exchange(0, id, SeqCst, SeqCst)
            .unwrap_or_else(|id| id)
    }
}
