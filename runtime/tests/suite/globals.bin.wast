(module binary
  "\00\61\73\6d\01\00\00\00\01\a1\80\80\80\00\08\60"
  "\00\01\7f\60\00\01\7e\60\01\7f\00\60\01\7e\00\60"
  "\00\01\7d\60\00\01\7c\60\01\7d\00\60\01\7c\00\03"
  "\8d\80\80\80\00\0c\00\01\00\01\02\03\04\05\04\05"
  "\06\07\06\bd\80\80\80\00\08\7f\00\41\7e\0b\7d\00"
  "\43\00\00\40\c0\0b\7c\00\44\00\00\00\00\00\00\10"
  "\c0\0b\7e\00\42\7b\0b\7f\01\41\74\0b\7d\01\43\00"
  "\00\50\c1\0b\7c\01\44\00\00\00\00\00\00\2c\c0\0b"
  "\7e\01\42\71\0b\07\e1\80\80\80\00\0c\05\67\65\74"
  "\2d\61\00\00\05\67\65\74\2d\62\00\01\05\67\65\74"
  "\2d\78\00\02\05\67\65\74\2d\79\00\03\05\73\65\74"
  "\2d\78\00\04\05\73\65\74\2d\79\00\05\05\67\65\74"
  "\2d\31\00\06\05\67\65\74\2d\32\00\07\05\67\65\74"
  "\2d\35\00\08\05\67\65\74\2d\36\00\09\05\73\65\74"
  "\2d\35\00\0a\05\73\65\74\2d\36\00\0b\0a\f5\80\80"
  "\80\00\0c\84\80\80\80\00\00\23\00\0b\84\80\80\80"
  "\00\00\23\03\0b\84\80\80\80\00\00\23\04\0b\84\80"
  "\80\80\00\00\23\07\0b\86\80\80\80\00\00\20\00\24"
  "\04\0b\86\80\80\80\00\00\20\00\24\07\0b\84\80\80"
  "\80\00\00\23\01\0b\84\80\80\80\00\00\23\02\0b\84"
  "\80\80\80\00\00\23\05\0b\84\80\80\80\00\00\23\06"
  "\0b\86\80\80\80\00\00\20\00\24\05\0b\86\80\80\80"
  "\00\00\20\00\24\06\0b"
)
(assert_return (invoke "get-a") (i32.const -2))
(assert_return (invoke "get-b") (i64.const -5))
(assert_return (invoke "get-x") (i32.const -12))
(assert_return (invoke "get-y") (i64.const -15))
(assert_return (invoke "get-1") (f32.const -0x1.8p+1))
(assert_return (invoke "get-2") (f64.const -0x1p+2))
(assert_return (invoke "get-5") (f32.const -0x1.ap+3))
(assert_return (invoke "get-6") (f64.const -0x1.cp+3))
(assert_return (invoke "set-x" (i32.const 6)))
(assert_return (invoke "set-y" (i64.const 7)))
(assert_return (invoke "set-5" (f32.const 0x1p+3)))
(assert_return (invoke "set-6" (f64.const 0x1.2p+3)))
(assert_return (invoke "get-x") (i32.const 6))
(assert_return (invoke "get-y") (i64.const 7))
(assert_return (invoke "get-5") (f32.const 0x1p+3))
(assert_return (invoke "get-6") (f64.const 0x1.2p+3))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\06\89\80\80\80\00"
    "\01\7d\00\43\00\00\00\00\0b\0a\8c\80\80\80\00\01"
    "\86\80\80\80\00\00\41\01\24\00\0b"
  )
  "global is immutable"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\02\88\80\80\80\00\01\01"
    "\6d\01\61\03\7f\01"
  )
  "mutable globals cannot be imported"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\02\88\80\80\80\00\01\01"
    "\6d\01\61\03\7f\01"
  )
  "mutable globals cannot be imported"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\89\80\80\80\00\01\7d"
    "\01\43\00\00\00\00\0b\07\85\80\80\80\00\01\01\61"
    "\03\00"
  )
  "mutable globals cannot be exported"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\89\80\80\80\00\01\7d"
    "\01\43\00\00\00\00\0b\07\85\80\80\80\00\01\01\61"
    "\03\00"
  )
  "mutable globals cannot be exported"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\8a\80\80\80\00\01\7d"
    "\00\43\00\00\00\00\8c\0b"
  )
  "constant expression required"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7d"
    "\00\20\00\0b"
  )
  "constant expression required"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\8a\80\80\80\00\01\7d"
    "\00\43\00\00\80\3f\8c\0b"
  )
  "constant expression required"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\87\80\80\80\00\01\7f"
    "\00\41\00\01\0b"
  )
  "constant expression required"
)
(assert_invalid
  (module binary "\00\61\73\6d\01\00\00\00\06\85\80\80\80\00\01\7f" "\00\01\0b")
  "constant expression required"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\89\80\80\80\00\01\7f"
    "\00\43\00\00\00\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\88\80\80\80\00\01\7f"
    "\00\41\00\41\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary "\00\61\73\6d\01\00\00\00\06\84\80\80\80\00\01\7f" "\00\0b")
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
    "\00\23\00\0b"
  )
  "unknown global"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\06\8b\80\80\80\00\02\7f"
    "\00\23\01\0b\7f\00\41\00\0b"
  )
  "unknown global"
)
(module binary
  "\00\61\73\6d\01\00\00\00\02\98\80\80\80\00\01\08"
  "\73\70\65\63\74\65\73\74\0a\67\6c\6f\62\61\6c\5f"
  "\69\33\32\03\7f\00"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\94\80\80\80\00\01\08"
    "\73\70\65\63\74\65\73\74\0a\67\6c\6f\62\61\6c\5f"
    "\69\33\32\03\7f\02"
  )
  "invalid mutability"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\94\80\80\80\00\01\08"
    "\73\70\65\63\74\65\73\74\0a\67\6c\6f\62\61\6c\5f"
    "\69\33\32\03\7f\ff"
  )
  "invalid mutability"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
  "\00\41\00\0b"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
    "\02\41\00\0b"
  )
  "invalid mutability"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
    "\ff\41\00\0b"
  )
  "invalid mutability"
)
