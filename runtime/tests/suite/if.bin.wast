(module binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\05\60"
  "\00\00\60\01\7f\00\60\01\7f\01\7f\60\02\7f\7f\01"
  "\7f\60\00\01\7f\03\8d\80\80\80\00\0c\00\01\02\02"
  "\03\02\03\02\03\04\02\02\07\98\81\80\80\00\0b\05"
  "\65\6d\70\74\79\00\01\08\73\69\6e\67\75\6c\61\72"
  "\00\02\05\6d\75\6c\74\69\00\03\06\6e\65\73\74\65"
  "\64\00\04\10\61\73\2d\75\6e\61\72\79\2d\6f\70\65"
  "\72\61\6e\64\00\05\11\61\73\2d\62\69\6e\61\72\79"
  "\2d\6f\70\65\72\61\6e\64\00\06\0f\61\73\2d\74\65"
  "\73\74\2d\6f\70\65\72\61\6e\64\00\07\12\61\73\2d"
  "\63\6f\6d\70\61\72\65\2d\6f\70\65\72\61\6e\64\00"
  "\08\0a\62\72\65\61\6b\2d\62\61\72\65\00\09\0b\62"
  "\72\65\61\6b\2d\76\61\6c\75\65\00\0a\07\65\66\66"
  "\65\63\74\73\00\0b\0a\a4\84\80\80\00\0c\82\80\80"
  "\80\00\00\0b\96\80\80\80\00\00\20\00\04\40\0b\20"
  "\00\04\40\0b\20\00\04\40\0b\20\00\04\40\0b\0b\9a"
  "\80\80\80\00\00\20\00\04\40\01\0b\20\00\04\40\01"
  "\05\01\0b\20\00\04\7f\41\07\05\41\08\0b\0b\ab\80"
  "\80\80\00\00\20\00\04\40\10\00\10\00\10\00\0b\20"
  "\00\04\40\05\10\00\10\00\10\00\0b\20\00\04\7f\10"
  "\00\10\00\41\08\05\10\00\10\00\41\09\0b\0b\d2\80"
  "\80\80\00\00\20\00\04\7f\20\01\04\40\10\00\02\40"
  "\0b\01\0b\20\01\04\40\05\10\00\02\40\0b\01\0b\20"
  "\01\04\7f\10\00\41\09\05\10\00\41\0a\0b\05\20\01"
  "\04\40\10\00\02\40\0b\01\0b\20\01\04\40\05\10\00"
  "\02\40\0b\01\0b\20\01\04\7f\10\00\41\0a\05\10\00"
  "\41\0b\0b\0b\0b\91\80\80\80\00\00\20\00\04\7f\10"
  "\00\41\0d\05\10\00\41\73\0b\68\0b\9f\80\80\80\00"
  "\00\20\00\04\7f\10\00\41\03\05\10\00\41\7d\0b\20"
  "\01\04\7f\10\00\41\04\05\10\00\41\7b\0b\6c\0b\91"
  "\80\80\80\00\00\20\00\04\7f\10\00\41\0d\05\10\00"
  "\41\00\0b\45\0b\ab\80\80\80\00\00\20\00\04\7d\10"
  "\00\43\00\00\40\40\05\10\00\43\00\00\40\c0\0b\20"
  "\01\04\7d\10\00\43\00\00\80\40\05\10\00\43\00\00"
  "\80\c0\0b\5e\0b\e7\80\80\80\00\00\41\01\04\40\0c"
  "\00\00\0b\41\01\04\40\0c\00\00\05\00\0b\41\00\04"
  "\40\00\05\0c\00\00\0b\41\01\04\40\41\01\0d\00\00"
  "\0b\41\01\04\40\41\01\0d\00\00\05\00\0b\41\00\04"
  "\40\00\05\41\01\0d\00\00\0b\41\01\04\40\41\00\0e"
  "\00\00\00\0b\41\01\04\40\41\00\0e\00\00\00\05\00"
  "\0b\41\00\04\40\00\05\41\00\0e\00\00\00\0b\41\13"
  "\0b\94\80\80\80\00\00\20\00\04\7f\41\12\0c\00\41"
  "\13\05\41\15\0c\00\41\14\0b\0b\d1\80\80\80\00\01"
  "\01\7f\02\7f\41\01\21\01\20\00\0b\04\40\20\01\41"
  "\03\6c\21\01\20\01\41\05\6b\21\01\20\01\41\07\6c"
  "\21\01\0c\00\20\01\41\e4\00\6c\21\01\05\20\01\41"
  "\05\6c\21\01\20\01\41\07\6b\21\01\20\01\41\03\6c"
  "\21\01\0c\00\20\01\41\e8\07\6c\21\01\0b\20\01\0b"
)
(assert_return (invoke "empty" (i32.const 0)))
(assert_return (invoke "empty" (i32.const 1)))
(assert_return (invoke "empty" (i32.const 100)))
(assert_return (invoke "empty" (i32.const -2)))
(assert_return (invoke "singular" (i32.const 0)) (i32.const 8))
(assert_return (invoke "singular" (i32.const 1)) (i32.const 7))
(assert_return (invoke "singular" (i32.const 10)) (i32.const 7))
(assert_return (invoke "singular" (i32.const -10)) (i32.const 7))
(assert_return (invoke "multi" (i32.const 0)) (i32.const 9))
(assert_return (invoke "multi" (i32.const 1)) (i32.const 8))
(assert_return (invoke "multi" (i32.const 13)) (i32.const 8))
(assert_return (invoke "multi" (i32.const -5)) (i32.const 8))
(assert_return (invoke "nested" (i32.const 0) (i32.const 0)) (i32.const 11))
(assert_return (invoke "nested" (i32.const 1) (i32.const 0)) (i32.const 10))
(assert_return (invoke "nested" (i32.const 0) (i32.const 1)) (i32.const 10))
(assert_return (invoke "nested" (i32.const 3) (i32.const 2)) (i32.const 9))
(assert_return (invoke "nested" (i32.const 0) (i32.const -100)) (i32.const 10))
(assert_return (invoke "nested" (i32.const 10) (i32.const 10)) (i32.const 9))
(assert_return (invoke "nested" (i32.const 0) (i32.const -1)) (i32.const 10))
(assert_return (invoke "nested" (i32.const -111) (i32.const -2)) (i32.const 9))
(assert_return (invoke "as-unary-operand" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-unary-operand" (i32.const 1)) (i32.const 0))
(assert_return (invoke "as-unary-operand" (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "as-binary-operand" (i32.const 0) (i32.const 0))
  (i32.const 15)
)
(assert_return
  (invoke "as-binary-operand" (i32.const 0) (i32.const 1))
  (i32.const -12)
)
(assert_return
  (invoke "as-binary-operand" (i32.const 1) (i32.const 0))
  (i32.const -15)
)
(assert_return
  (invoke "as-binary-operand" (i32.const 1) (i32.const 1))
  (i32.const 12)
)
(assert_return (invoke "as-test-operand" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-test-operand" (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "as-compare-operand" (i32.const 0) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "as-compare-operand" (i32.const 0) (i32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "as-compare-operand" (i32.const 1) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "as-compare-operand" (i32.const 1) (i32.const 1))
  (i32.const 0)
)
(assert_return (invoke "break-bare") (i32.const 19))
(assert_return (invoke "break-value" (i32.const 1)) (i32.const 18))
(assert_return (invoke "break-value" (i32.const 0)) (i32.const 21))
(assert_return (invoke "effects" (i32.const 1)) (i32.const -14))
(assert_return (invoke "effects" (i32.const 0)) (i32.const -6))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\04\40\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\00\41\01\04\40\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\00\41\01\04\40\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\90\80\80\80\00"
    "\01\8a\80\80\80\00\00\41\01\04\40\05\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\92\80\80\80\00"
    "\01\8c\80\80\80\00\00\41\01\04\40\41\01\05\41\01"
    "\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\01\04\7f\05\41\00\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\01\04\7f\41\00\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\01\04\7f\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\41\01\04\7f\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\01\04\7f\01\05\41\00"
    "\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\00\41\01\04\7f\41\00\05\01"
    "\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\01\04\7f\01\05\01\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\01\04\7f\42\01\05\41"
    "\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\01\04\7f\41\01\05\42"
    "\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\01\04\7f\42\01\05\42"
    "\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\99\80\80\80"
    "\00\01\93\80\80\80\00\00\41\01\04\7f\42\01\05\44"
    "\00\00\00\00\00\00\f0\3f\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\41\00\04\7e\00\00\00\1b"
    "\05\42\00\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\41\01\04\7e\42\00\05\00"
    "\00\00\1b\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\96\80\80\80"
    "\00\01\90\80\80\80\00\00\41\01\04\7e\00\00\00\1b"
    "\05\00\00\00\1b\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\01\04\7f\0c\00\05\41"
    "\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\01\04\7f\41\01\05\0c"
    "\00\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\41\01\04\7f\0c\00\41\01"
    "\05\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\41\01\04\7f\41\01\05\0c"
    "\00\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\95\80\80\80"
    "\00\01\8f\80\80\80\00\00\41\01\04\7f\01\0c\00\41"
    "\01\05\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\95\80\80\80"
    "\00\01\8f\80\80\80\00\00\41\01\04\7f\41\01\05\01"
    "\0c\00\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\96\80\80\80"
    "\00\01\90\80\80\80\00\00\41\01\04\7f\42\01\0c\00"
    "\41\01\05\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\96\80\80\80"
    "\00\01\90\80\80\80\00\00\41\01\04\7f\41\01\05\42"
    "\01\0c\00\41\01\0b\0b"
  )
  "type mismatch"
)
(assert_malformed (module quote "(func if end $l)") "mismatching label")
(assert_malformed (module quote "(func if $a end $l)") "mismatching label")
(assert_malformed (module quote "(func if else $l end)") "mismatching label")
(assert_malformed (module quote "(func if $a else $l end)") "mismatching label")
(assert_malformed (module quote "(func if else end $l)") "mismatching label")
(assert_malformed (module quote "(func if else $l end $l)") "mismatching label")
(assert_malformed
  (module quote "(func if else $l1 end $l2)")
  "mismatching label"
)
(assert_malformed (module quote "(func if $a else end $l)") "mismatching label")
(assert_malformed
  (module quote "(func if $a else $a end $l)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func if $a else $l end $l)")
  "mismatching label"
)
