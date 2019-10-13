(module binary "\00\61\73\6d\01\00\00\00")
(module binary "\00\61\73\6d\01\00\00\00")
(module $M1 binary "\00\61\73\6d\01\00\00\00")
(module $M2 binary "\00\61\73\6d\01\00\00\00")
(assert_malformed (module binary) "unexpected end")
(assert_malformed (module binary "\01") "unexpected end")
(assert_malformed (module binary "\00\61\73") "unexpected end")
(assert_malformed (module binary "\61\73\6d\00") "magic header not detected")
(assert_malformed (module binary "\6d\73\61\00") "magic header not detected")
(assert_malformed
  (module binary "\6d\73\61\00\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\6d\73\61\00\00\00\00\01")
  "magic header not detected"
)
(assert_malformed
  (module binary "\61\73\6d\01\00\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\77\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\7f\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\80\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\82\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\ff\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\00\00\00\01\6d\73\61\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\61\00\6d\73\00\01\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\73\6d\00\61\00\00\01\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\00\41\53\4d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\00\81\a2\94\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\ef\bb\bf\00\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed (module binary "\00\61\73\6d") "unexpected end")
(assert_malformed (module binary "\00\61\73\6d\01") "unexpected end")
(assert_malformed (module binary "\00\61\73\6d\01\00\00") "unexpected end")
(assert_malformed
  (module binary "\00\61\73\6d\00\00\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\0d\00\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\0e\00\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\00\01\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\00\00\01\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\00\00\00\01")
  "unknown binary version"
)
(module binary "\00\61\73\6d\01\00\00\00\05\04\01\00\82\00")
(module binary "\00\61\73\6d\01\00\00\00\05\07\01\00\82\80\80\80" "\00")
(module binary "\00\61\73\6d\01\00\00\00\06\07\01\7f\00\41\80\00" "\0b")
(module binary "\00\61\73\6d\01\00\00\00\06\07\01\7f\00\41\ff\7f" "\0b")
(module binary
  "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\80\80"
  "\80\80\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\ff\ff"
  "\ff\ff\7f\0b"
)
(module binary "\00\61\73\6d\01\00\00\00\06\07\01\7e\00\42\80\00" "\0b")
(module binary "\00\61\73\6d\01\00\00\00\06\07\01\7e\00\42\ff\7f" "\0b")
(module binary
  "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\80\80"
  "\80\80\80\80\80\80\80\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\ff\ff"
  "\ff\ff\ff\ff\ff\ff\ff\7f\0b"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\08\01\00\82\80\80\80" "\80\00")
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0b\01\7f\00\41\80\80"
    "\80\80\80\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0b\01\7f\00\41\ff\ff"
    "\ff\ff\ff\7f\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\10\01\7e\00\42\80\80"
    "\80\80\80\80\80\80\80\80\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\10\01\7e\00\42\ff\ff"
    "\ff\ff\ff\ff\ff\ff\ff\ff\7f\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\04\01\00\82\80\80\80" "\70")
  "integer too large"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\04\01\00\82\80\80\80" "\40")
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\80\80"
    "\80\80\70\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\ff\ff"
    "\ff\ff\0f\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\80\80"
    "\80\80\1f\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\ff\ff"
    "\ff\ff\4f\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\80\80"
    "\80\80\80\80\80\80\80\7e\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\ff\ff"
    "\ff\ff\ff\ff\ff\ff\ff\01\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\80\80"
    "\80\80\80\80\80\80\80\02\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\ff\ff"
    "\ff\ff\ff\ff\ff\ff\ff\41\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\04\04\01\70\00\00\0a\09\01\07\00\41\00\11"
    "\00\01\0b"
  )
  "zero flag expected"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\00\0a\09\01\07\00\41\00\40\01"
    "\1a\0b"
  )
  "zero flag expected"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\00\0a\07\01\05\00\3f\01\1a\0b"
  )
  "zero flag expected"
)
