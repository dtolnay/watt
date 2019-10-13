(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\03\60"
  "\01\7f\01\7f\60\01\7e\01\7e\60\00\01\7f\03\85\80"
  "\80\80\00\04\00\01\00\02\07\9e\80\80\80\00\04\04"
  "\73\74\6d\74\00\00\04\65\78\70\72\00\01\03\61\72"
  "\67\00\02\06\63\6f\72\6e\65\72\00\03\0a\ee\81\80"
  "\80\00\04\d7\80\80\80\00\01\01\7f\41\e4\00\21\01"
  "\02\40\02\40\02\40\02\40\02\40\02\40\02\40\02\40"
  "\02\40\02\40\20\00\0e\08\00\01\02\03\04\05\06\08"
  "\07\0b\20\00\0f\0b\01\0b\0b\41\00\20\00\6b\21\01"
  "\0c\05\0b\0c\04\0b\41\e5\00\21\01\0c\03\0b\41\e5"
  "\00\21\01\0b\41\e6\00\21\01\0b\0b\20\01\0f\0b\cc"
  "\80\80\80\00\01\01\7e\42\e4\00\21\01\02\7e\02\40"
  "\02\40\02\40\02\40\02\40\02\40\02\40\02\40\02\40"
  "\20\00\a7\0e\08\00\01\02\03\06\05\04\08\07\0b\20"
  "\00\0f\0b\01\0b\0b\42\00\20\00\7d\0c\05\0b\42\e5"
  "\00\21\01\0b\0b\0b\20\01\0c\01\0b\42\7b\0b\0f\0b"
  "\aa\80\80\80\00\00\02\7f\41\0a\02\7f\41\e4\00\02"
  "\7f\41\e8\07\02\7f\41\02\20\00\6c\41\03\20\00\71"
  "\0e\03\01\02\03\00\0b\6a\0b\6a\0b\6a\0b\0f\0b\8c"
  "\80\80\80\00\00\02\40\41\00\0e\00\00\0b\41\01\0b"
)
(assert_return (invoke "stmt" (i32.const 0)) (i32.const 0))
(assert_return (invoke "stmt" (i32.const 1)) (i32.const -1))
(assert_return (invoke "stmt" (i32.const 2)) (i32.const -2))
(assert_return (invoke "stmt" (i32.const 3)) (i32.const -3))
(assert_return (invoke "stmt" (i32.const 4)) (i32.const 100))
(assert_return (invoke "stmt" (i32.const 5)) (i32.const 101))
(assert_return (invoke "stmt" (i32.const 6)) (i32.const 102))
(assert_return (invoke "stmt" (i32.const 7)) (i32.const 100))
(assert_return (invoke "stmt" (i32.const -10)) (i32.const 102))
(assert_return (invoke "expr" (i64.const 0)) (i64.const 0))
(assert_return (invoke "expr" (i64.const 1)) (i64.const -1))
(assert_return (invoke "expr" (i64.const 2)) (i64.const -2))
(assert_return (invoke "expr" (i64.const 3)) (i64.const -3))
(assert_return (invoke "expr" (i64.const 6)) (i64.const 101))
(assert_return (invoke "expr" (i64.const 7)) (i64.const -5))
(assert_return (invoke "expr" (i64.const -10)) (i64.const 100))
(assert_return (invoke "arg" (i32.const 0)) (i32.const 110))
(assert_return (invoke "arg" (i32.const 1)) (i32.const 12))
(assert_return (invoke "arg" (i32.const 2)) (i32.const 4))
(assert_return (invoke "arg" (i32.const 3)) (i32.const 1116))
(assert_return (invoke "arg" (i32.const 4)) (i32.const 118))
(assert_return (invoke "arg" (i32.const 5)) (i32.const 20))
(assert_return (invoke "arg" (i32.const 6)) (i32.const 12))
(assert_return (invoke "arg" (i32.const 7)) (i32.const 1124))
(assert_return (invoke "arg" (i32.const 8)) (i32.const 126))
(assert_return (invoke "corner") (i32.const 1))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8d\80\80\80\00"
    "\01\87\80\80\80\00\00\41\00\0e\00\03\0b"
  )
  "unknown label"
)
