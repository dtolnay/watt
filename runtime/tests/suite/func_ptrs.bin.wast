(module binary
  "\00\61\73\6d\01\00\00\00\01\9b\80\80\80\00\07\60"
  "\00\00\60\00\00\60\00\00\60\00\01\7f\60\00\01\7f"
  "\60\01\7f\01\7f\60\01\7f\00\02\96\80\80\80\00\01"
  "\08\73\70\65\63\74\65\73\74\09\70\72\69\6e\74\5f"
  "\69\33\32\00\06\03\87\80\80\80\00\06\00\01\04\05"
  "\05\06\07\9c\80\80\80\00\04\03\6f\6e\65\00\03\03"
  "\74\77\6f\00\04\05\74\68\72\65\65\00\05\04\66\6f"
  "\75\72\00\06\0a\bb\80\80\80\00\06\82\80\80\80\00"
  "\00\0b\82\80\80\80\00\00\0b\84\80\80\80\00\00\41"
  "\0d\0b\87\80\80\80\00\00\20\00\41\01\6a\0b\87\80"
  "\80\80\00\00\20\00\41\02\6b\0b\86\80\80\80\00\00"
  "\20\00\10\00\0b"
)
(assert_return (invoke "one") (i32.const 13))
(assert_return (invoke "two" (i32.const 13)) (i32.const 14))
(assert_return (invoke "three" (i32.const 13)) (i32.const 11))
(invoke "four" (i32.const 83))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\09\86\80\80\80\00\01\00"
    "\41\00\0b\00"
  )
  "unknown table"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\09\87\80\80\80\00"
    "\01\00\41\00\0b\01\00\0a\88\80\80\80\00\01\82\80"
    "\80\80\00\00\0b"
  )
  "unknown table"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\04\84\80\80\80\00\01\70"
    "\00\01\09\86\80\80\80\00\01\00\42\00\0b\00"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\04\84\80\80\80\00\01\70"
    "\00\01\09\87\80\80\80\00\01\00\41\00\68\0b\00"
  )
  "constant expression required"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\04\84\80\80\80\00\01\70"
    "\00\01\09\85\80\80\80\00\01\00\01\0b\00"
  )
  "constant expression required"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\03\82\80\80\80\00\01\2a"
    "\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "unknown type"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\02\96\80\80\80\00\01\08"
    "\73\70\65\63\74\65\73\74\09\70\72\69\6e\74\5f\69"
    "\33\32\00\2b"
  )
  "unknown type"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8e\80\80\80\00\03\60"
  "\00\01\7f\60\00\01\7f\60\01\7f\01\7f\03\88\80\80"
  "\80\00\07\00\00\00\01\01\02\02\04\85\80\80\80\00"
  "\01\70\01\07\07\07\91\80\80\80\00\02\05\63\61\6c"
  "\6c\74\00\05\05\63\61\6c\6c\75\00\06\09\8d\80\80"
  "\80\00\01\00\41\00\0b\07\00\01\02\03\04\00\02\0a"
  "\c6\80\80\80\00\07\84\80\80\80\00\00\41\01\0b\84"
  "\80\80\80\00\00\41\02\0b\84\80\80\80\00\00\41\03"
  "\0b\84\80\80\80\00\00\41\04\0b\84\80\80\80\00\00"
  "\41\05\0b\87\80\80\80\00\00\20\00\11\00\00\0b\87"
  "\80\80\80\00\00\20\00\11\01\00\0b"
)
(assert_return (invoke "callt" (i32.const 0)) (i32.const 1))
(assert_return (invoke "callt" (i32.const 1)) (i32.const 2))
(assert_return (invoke "callt" (i32.const 2)) (i32.const 3))
(assert_return (invoke "callt" (i32.const 3)) (i32.const 4))
(assert_return (invoke "callt" (i32.const 4)) (i32.const 5))
(assert_return (invoke "callt" (i32.const 5)) (i32.const 1))
(assert_return (invoke "callt" (i32.const 6)) (i32.const 3))
(assert_trap (invoke "callt" (i32.const 7)) "undefined element")
(assert_trap (invoke "callt" (i32.const 100)) "undefined element")
(assert_trap (invoke "callt" (i32.const -1)) "undefined element")
(assert_return (invoke "callu" (i32.const 0)) (i32.const 1))
(assert_return (invoke "callu" (i32.const 1)) (i32.const 2))
(assert_return (invoke "callu" (i32.const 2)) (i32.const 3))
(assert_return (invoke "callu" (i32.const 3)) (i32.const 4))
(assert_return (invoke "callu" (i32.const 4)) (i32.const 5))
(assert_return (invoke "callu" (i32.const 5)) (i32.const 1))
(assert_return (invoke "callu" (i32.const 6)) (i32.const 3))
(assert_trap (invoke "callu" (i32.const 7)) "undefined element")
(assert_trap (invoke "callu" (i32.const 100)) "undefined element")
(assert_trap (invoke "callu" (i32.const -1)) "undefined element")
(module binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\00\01\7f\60\01\7f\01\7f\03\84\80\80\80\00\03\00"
  "\00\01\04\85\80\80\80\00\01\70\01\02\02\07\89\80"
  "\80\80\00\01\05\63\61\6c\6c\74\00\02\09\88\80\80"
  "\80\00\01\00\41\00\0b\02\00\01\0a\9f\80\80\80\00"
  "\03\84\80\80\80\00\00\41\01\0b\84\80\80\80\00\00"
  "\41\02\0b\87\80\80\80\00\00\20\00\11\00\00\0b"
)
(assert_return (invoke "callt" (i32.const 0)) (i32.const 1))
(assert_return (invoke "callt" (i32.const 1)) (i32.const 2))
