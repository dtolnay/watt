# Official Test Suite

Since this implementation of WebAssembly aims for compliance with the official specification, it is tested against the [official test suite](https://github.com/WebAssembly/spec/tree/master/test).
The `script` module handles parsing and execution of the official test script format.
However, this implementation does not support the WebAssembly text format, which used in most of the scripts.
Therefore, test scripts must be converted into the binary format.
This requires two steps.

## Patching the official interpreter

The official interpreter prints floating-point numbers in the decimal format, which results in a loss a precision and break some tests.
Instead, floating-point numbers should be printed in hexadecimal to preserve their precision.
This effect can be obtained by applying the following patch to the official interpreter:

```diff
diff --git a/interpreter/exec/float.ml b/interpreter/exec/float.ml
index 3237959..d4274f7 100644
--- a/interpreter/exec/float.ml
+++ b/interpreter/exec/float.ml
@@ -237,7 +237,8 @@ struct
     (if x < Rep.zero then "-" else "") ^
     if is_nan x then
       "nan:0x" ^ Rep.to_hex_string (Rep.logand (abs x) (Rep.lognot bare_nan))
+    else if is_inf x then
+      "inf"
     else
-      (* TODO: use sprintf "%h" once we have upgraded to OCaml 4.03 *)
-      string_of_float (to_float (abs x))
+      Printf.sprintf "%h" (to_float (abs x))
 end
```

Note that this patch requires at least OCaml 4.03.

## Converting the tests

With the now patched official interpreter, tests can be converted with the following script:

```bash
for f in test/core/*.wast; do
	interpreter/wasm -d $f -o ${f%.wast}.bin.wast
done
```
