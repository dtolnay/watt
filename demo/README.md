The three subdirectories are:

- **`demo/impl`**:&ensp;implementation of a simple derive macro using syn,
  quote, proc-macro2.

- **`demo/wa`**:&ensp;a Watt-based derive macro that embeds the compiled Wasm
  from the impl directory.

- **`demo/caller`**:&ensp;little binary that uses the derive macro.

<br>

To try the demo yourself, first compile our macro implementation to WebAssembly:

```
demo/impl$  cargo build --release --target wasm32-unknown-unknown
```

Then go ahead and run the caller! Compiling the caller performs macro expansion
which runs our Watt-based macro in a WebAssembly runtime.

```
demo/caller$  cargo run
```
