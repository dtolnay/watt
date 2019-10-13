(module binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\04\60"
  "\02\7e\7e\01\7e\60\01\7e\01\7e\60\01\7e\01\7f\60"
  "\02\7e\7e\01\7f\03\9e\80\80\80\00\1d\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\01\01\01\02\03"
  "\03\03\03\03\03\03\03\03\03\07\c5\81\80\80\00\1d"
  "\03\61\64\64\00\00\03\73\75\62\00\01\03\6d\75\6c"
  "\00\02\05\64\69\76\5f\73\00\03\05\64\69\76\5f\75"
  "\00\04\05\72\65\6d\5f\73\00\05\05\72\65\6d\5f\75"
  "\00\06\03\61\6e\64\00\07\02\6f\72\00\08\03\78\6f"
  "\72\00\09\03\73\68\6c\00\0a\05\73\68\72\5f\73\00"
  "\0b\05\73\68\72\5f\75\00\0c\04\72\6f\74\6c\00\0d"
  "\04\72\6f\74\72\00\0e\03\63\6c\7a\00\0f\03\63\74"
  "\7a\00\10\06\70\6f\70\63\6e\74\00\11\03\65\71\7a"
  "\00\12\02\65\71\00\13\02\6e\65\00\14\04\6c\74\5f"
  "\73\00\15\04\6c\74\5f\75\00\16\04\6c\65\5f\73\00"
  "\17\04\6c\65\5f\75\00\18\04\67\74\5f\73\00\19\04"
  "\67\74\5f\75\00\1a\04\67\65\5f\73\00\1b\04\67\65"
  "\5f\75\00\1c\0a\d5\82\80\80\00\1d\87\80\80\80\00"
  "\00\20\00\20\01\7c\0b\87\80\80\80\00\00\20\00\20"
  "\01\7d\0b\87\80\80\80\00\00\20\00\20\01\7e\0b\87"
  "\80\80\80\00\00\20\00\20\01\7f\0b\87\80\80\80\00"
  "\00\20\00\20\01\80\0b\87\80\80\80\00\00\20\00\20"
  "\01\81\0b\87\80\80\80\00\00\20\00\20\01\82\0b\87"
  "\80\80\80\00\00\20\00\20\01\83\0b\87\80\80\80\00"
  "\00\20\00\20\01\84\0b\87\80\80\80\00\00\20\00\20"
  "\01\85\0b\87\80\80\80\00\00\20\00\20\01\86\0b\87"
  "\80\80\80\00\00\20\00\20\01\87\0b\87\80\80\80\00"
  "\00\20\00\20\01\88\0b\87\80\80\80\00\00\20\00\20"
  "\01\89\0b\87\80\80\80\00\00\20\00\20\01\8a\0b\85"
  "\80\80\80\00\00\20\00\79\0b\85\80\80\80\00\00\20"
  "\00\7a\0b\85\80\80\80\00\00\20\00\7b\0b\85\80\80"
  "\80\00\00\20\00\50\0b\87\80\80\80\00\00\20\00\20"
  "\01\51\0b\87\80\80\80\00\00\20\00\20\01\52\0b\87"
  "\80\80\80\00\00\20\00\20\01\53\0b\87\80\80\80\00"
  "\00\20\00\20\01\54\0b\87\80\80\80\00\00\20\00\20"
  "\01\57\0b\87\80\80\80\00\00\20\00\20\01\58\0b\87"
  "\80\80\80\00\00\20\00\20\01\55\0b\87\80\80\80\00"
  "\00\20\00\20\01\56\0b\87\80\80\80\00\00\20\00\20"
  "\01\59\0b\87\80\80\80\00\00\20\00\20\01\5a\0b"
)
(assert_return (invoke "add" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "add" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "add" (i64.const -1) (i64.const -1)) (i64.const -2))
(assert_return (invoke "add" (i64.const -1) (i64.const 1)) (i64.const 0))
(assert_return
  (invoke "add" (i64.const 9223372036854775807) (i64.const 1))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "add" (i64.const -9223372036854775808) (i64.const -1))
  (i64.const 9223372036854775807)
)
(assert_return
  (invoke "add"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "add" (i64.const 1073741823) (i64.const 1))
  (i64.const 1073741824)
)
(assert_return (invoke "sub" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "sub" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "sub" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "sub" (i64.const 9223372036854775807) (i64.const -1))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "sub" (i64.const -9223372036854775808) (i64.const 1))
  (i64.const 9223372036854775807)
)
(assert_return
  (invoke "sub"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "sub" (i64.const 1073741823) (i64.const -1))
  (i64.const 1073741824)
)
(assert_return (invoke "mul" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "mul" (i64.const 1) (i64.const 0)) (i64.const 0))
(assert_return (invoke "mul" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "mul" (i64.const 1152921504606846976) (i64.const 4096))
  (i64.const 0)
)
(assert_return
  (invoke "mul" (i64.const -9223372036854775808) (i64.const 0))
  (i64.const 0)
)
(assert_return
  (invoke "mul" (i64.const -9223372036854775808) (i64.const -1))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "mul" (i64.const 9223372036854775807) (i64.const -1))
  (i64.const -9223372036854775807)
)
(assert_return
  (invoke "mul" (i64.const 81985529216486895) (i64.const -81985529216486896))
  (i64.const 2465395958572223728)
)
(assert_return
  (invoke "mul" (i64.const 9223372036854775807) (i64.const 9223372036854775807))
  (i64.const 1)
)
(assert_trap
  (invoke "div_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i64.const -9223372036854775808) (i64.const -1))
  "integer overflow"
)
(assert_return (invoke "div_s" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "div_s" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "div_s" (i64.const 0) (i64.const -1)) (i64.const 0))
(assert_return (invoke "div_s" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "div_s" (i64.const -9223372036854775808) (i64.const 2))
  (i64.const -4611686018427387904)
)
(assert_return
  (invoke "div_s" (i64.const -9223372036854775807) (i64.const 1000))
  (i64.const -9223372036854775)
)
(assert_return (invoke "div_s" (i64.const 5) (i64.const 2)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const -5) (i64.const 2)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const 5) (i64.const -2)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const -5) (i64.const -2)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 7) (i64.const 3)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const -7) (i64.const 3)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const 7) (i64.const -3)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const -7) (i64.const -3)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 11) (i64.const 5)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 17) (i64.const 7)) (i64.const 2))
(assert_trap
  (invoke "div_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_u" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_u" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "div_u" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "div_u" (i64.const -9223372036854775808) (i64.const -1))
  (i64.const 0)
)
(assert_return
  (invoke "div_u" (i64.const -9223372036854775808) (i64.const 2))
  (i64.const 4611686018427387904)
)
(assert_return
  (invoke "div_u" (i64.const -8074936608141340688) (i64.const 4294967297))
  (i64.const 2414874607)
)
(assert_return
  (invoke "div_u" (i64.const -9223372036854775807) (i64.const 1000))
  (i64.const 9223372036854775)
)
(assert_return (invoke "div_u" (i64.const 5) (i64.const 2)) (i64.const 2))
(assert_return
  (invoke "div_u" (i64.const -5) (i64.const 2))
  (i64.const 9223372036854775805)
)
(assert_return (invoke "div_u" (i64.const 5) (i64.const -2)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const -5) (i64.const -2)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const 7) (i64.const 3)) (i64.const 2))
(assert_return (invoke "div_u" (i64.const 11) (i64.const 5)) (i64.const 2))
(assert_return (invoke "div_u" (i64.const 17) (i64.const 7)) (i64.const 2))
(assert_trap
  (invoke "rem_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_s" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return
  (invoke "rem_s" (i64.const 9223372036854775807) (i64.const -1))
  (i64.const 0)
)
(assert_return (invoke "rem_s" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const 0) (i64.const -1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "rem_s" (i64.const -9223372036854775808) (i64.const -1))
  (i64.const 0)
)
(assert_return
  (invoke "rem_s" (i64.const -9223372036854775808) (i64.const 2))
  (i64.const 0)
)
(assert_return
  (invoke "rem_s" (i64.const -9223372036854775807) (i64.const 1000))
  (i64.const -807)
)
(assert_return (invoke "rem_s" (i64.const 5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -5) (i64.const 2)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 5) (i64.const -2)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -5) (i64.const -2)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 7) (i64.const 3)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -7) (i64.const 3)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 7) (i64.const -3)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -7) (i64.const -3)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 11) (i64.const 5)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const 17) (i64.const 7)) (i64.const 3))
(assert_trap
  (invoke "rem_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_u" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "rem_u" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_u" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_u" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "rem_u" (i64.const -9223372036854775808) (i64.const -1))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "rem_u" (i64.const -9223372036854775808) (i64.const 2))
  (i64.const 0)
)
(assert_return
  (invoke "rem_u" (i64.const -8074936608141340688) (i64.const 4294967297))
  (i64.const 2147483649)
)
(assert_return
  (invoke "rem_u" (i64.const -9223372036854775807) (i64.const 1000))
  (i64.const 809)
)
(assert_return (invoke "rem_u" (i64.const 5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const -5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 5) (i64.const -2)) (i64.const 5))
(assert_return (invoke "rem_u" (i64.const -5) (i64.const -2)) (i64.const -5))
(assert_return (invoke "rem_u" (i64.const 7) (i64.const 3)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 11) (i64.const 5)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 17) (i64.const 7)) (i64.const 3))
(assert_return (invoke "and" (i64.const 1) (i64.const 0)) (i64.const 0))
(assert_return (invoke "and" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "and" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "and" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "and"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "and" (i64.const 9223372036854775807) (i64.const -1))
  (i64.const 9223372036854775807)
)
(assert_return
  (invoke "and" (i64.const 4042326015) (i64.const 4294963440))
  (i64.const 4042322160)
)
(assert_return (invoke "and" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return (invoke "or" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "or" (i64.const 0) (i64.const 1)) (i64.const 1))
(assert_return (invoke "or" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "or" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "or" (i64.const 9223372036854775807) (i64.const -9223372036854775808))
  (i64.const -1)
)
(assert_return
  (invoke "or" (i64.const -9223372036854775808) (i64.const 0))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "or" (i64.const 4042326015) (i64.const 4294963440))
  (i64.const 4294967295)
)
(assert_return (invoke "or" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return (invoke "xor" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "xor" (i64.const 0) (i64.const 1)) (i64.const 1))
(assert_return (invoke "xor" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "xor" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "xor"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i64.const -1)
)
(assert_return
  (invoke "xor" (i64.const -9223372036854775808) (i64.const 0))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "xor" (i64.const -1) (i64.const -9223372036854775808))
  (i64.const 9223372036854775807)
)
(assert_return
  (invoke "xor" (i64.const -1) (i64.const 9223372036854775807))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "xor" (i64.const 4042326015) (i64.const 4294963440))
  (i64.const 252645135)
)
(assert_return (invoke "xor" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return (invoke "shl" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "shl" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return
  (invoke "shl" (i64.const 9223372036854775807) (i64.const 1))
  (i64.const -2)
)
(assert_return (invoke "shl" (i64.const -1) (i64.const 1)) (i64.const -2))
(assert_return
  (invoke "shl" (i64.const -9223372036854775808) (i64.const 1))
  (i64.const 0)
)
(assert_return
  (invoke "shl" (i64.const 4611686018427387904) (i64.const 1))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "shl" (i64.const 1) (i64.const 63))
  (i64.const -9223372036854775808)
)
(assert_return (invoke "shl" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shl" (i64.const 1) (i64.const 65)) (i64.const 2))
(assert_return
  (invoke "shl" (i64.const 1) (i64.const -1))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "shl" (i64.const 1) (i64.const 9223372036854775807))
  (i64.const -9223372036854775808)
)
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return
  (invoke "shr_s" (i64.const 9223372036854775807) (i64.const 1))
  (i64.const 4611686018427387903)
)
(assert_return
  (invoke "shr_s" (i64.const -9223372036854775808) (i64.const 1))
  (i64.const -4611686018427387904)
)
(assert_return
  (invoke "shr_s" (i64.const 4611686018427387904) (i64.const 1))
  (i64.const 2305843009213693952)
)
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 65)) (i64.const 0))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "shr_s" (i64.const 1) (i64.const 9223372036854775807))
  (i64.const 0)
)
(assert_return
  (invoke "shr_s" (i64.const 1) (i64.const -9223372036854775808))
  (i64.const 1)
)
(assert_return
  (invoke "shr_s" (i64.const -9223372036854775808) (i64.const 63))
  (i64.const -1)
)
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 64)) (i64.const -1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 65)) (i64.const -1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return
  (invoke "shr_s" (i64.const -1) (i64.const 9223372036854775807))
  (i64.const -1)
)
(assert_return
  (invoke "shr_s" (i64.const -1) (i64.const -9223372036854775808))
  (i64.const -1)
)
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 1))
  (i64.const 9223372036854775807)
)
(assert_return
  (invoke "shr_u" (i64.const 9223372036854775807) (i64.const 1))
  (i64.const 4611686018427387903)
)
(assert_return
  (invoke "shr_u" (i64.const -9223372036854775808) (i64.const 1))
  (i64.const 4611686018427387904)
)
(assert_return
  (invoke "shr_u" (i64.const 4611686018427387904) (i64.const 1))
  (i64.const 2305843009213693952)
)
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 65)) (i64.const 0))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "shr_u" (i64.const 1) (i64.const 9223372036854775807))
  (i64.const 0)
)
(assert_return
  (invoke "shr_u" (i64.const 1) (i64.const -9223372036854775808))
  (i64.const 1)
)
(assert_return
  (invoke "shr_u" (i64.const -9223372036854775808) (i64.const 63))
  (i64.const 1)
)
(assert_return (invoke "shr_u" (i64.const -1) (i64.const 64)) (i64.const -1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 65))
  (i64.const 9223372036854775807)
)
(assert_return (invoke "shr_u" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 9223372036854775807))
  (i64.const 1)
)
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const -9223372036854775808))
  (i64.const -1)
)
(assert_return (invoke "rotl" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "rotl" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "rotl" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return (invoke "rotl" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return
  (invoke "rotl" (i64.const -6067025490386449714) (i64.const 1))
  (i64.const 6312693092936652189)
)
(assert_return
  (invoke "rotl" (i64.const -144115184384868352) (i64.const 4))
  (i64.const -2305842950157893617)
)
(assert_return
  (invoke "rotl" (i64.const -6067173104435169271) (i64.const 53))
  (i64.const 87109505680009935)
)
(assert_return
  (invoke "rotl" (i64.const -6066028401059725156) (i64.const 63))
  (i64.const 6190357836324913230)
)
(assert_return
  (invoke "rotl" (i64.const -6067173104435169271) (i64.const 245))
  (i64.const 87109505680009935)
)
(assert_return
  (invoke "rotl" (i64.const -6067067139002042359) (i64.const -19))
  (i64.const -3530481836149793302)
)
(assert_return
  (invoke "rotl"
    (i64.const -6066028401059725156)
    (i64.const -9223372036854775745)
  )
  (i64.const 6190357836324913230)
)
(assert_return
  (invoke "rotl" (i64.const 1) (i64.const 63))
  (i64.const -9223372036854775808)
)
(assert_return
  (invoke "rotl" (i64.const -9223372036854775808) (i64.const 1))
  (i64.const 1)
)
(assert_return
  (invoke "rotr" (i64.const 1) (i64.const 1))
  (i64.const -9223372036854775808)
)
(assert_return (invoke "rotr" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "rotr" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return (invoke "rotr" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return
  (invoke "rotr" (i64.const -6067025490386449714) (i64.const 1))
  (i64.const 6189859291661550951)
)
(assert_return
  (invoke "rotr" (i64.const -144115184384868352) (i64.const 4))
  (i64.const 1143914305582792704)
)
(assert_return
  (invoke "rotr" (i64.const -6067173104435169271) (i64.const 53))
  (i64.const 7534987797011123550)
)
(assert_return
  (invoke "rotr" (i64.const -6066028401059725156) (i64.const 63))
  (i64.const 6314687271590101305)
)
(assert_return
  (invoke "rotr" (i64.const -6067173104435169271) (i64.const 245))
  (i64.const 7534987797011123550)
)
(assert_return
  (invoke "rotr" (i64.const -6067067139002042359) (i64.const -19))
  (i64.const -7735078922541506965)
)
(assert_return
  (invoke "rotr"
    (i64.const -6066028401059725156)
    (i64.const -9223372036854775745)
  )
  (i64.const 6314687271590101305)
)
(assert_return (invoke "rotr" (i64.const 1) (i64.const 63)) (i64.const 2))
(assert_return
  (invoke "rotr" (i64.const -9223372036854775808) (i64.const 63))
  (i64.const 1)
)
(assert_return (invoke "clz" (i64.const -1)) (i64.const 0))
(assert_return (invoke "clz" (i64.const 0)) (i64.const 64))
(assert_return (invoke "clz" (i64.const 32768)) (i64.const 48))
(assert_return (invoke "clz" (i64.const 255)) (i64.const 56))
(assert_return (invoke "clz" (i64.const -9223372036854775808)) (i64.const 0))
(assert_return (invoke "clz" (i64.const 1)) (i64.const 63))
(assert_return (invoke "clz" (i64.const 2)) (i64.const 62))
(assert_return (invoke "clz" (i64.const 9223372036854775807)) (i64.const 1))
(assert_return (invoke "ctz" (i64.const -1)) (i64.const 0))
(assert_return (invoke "ctz" (i64.const 0)) (i64.const 64))
(assert_return (invoke "ctz" (i64.const 32768)) (i64.const 15))
(assert_return (invoke "ctz" (i64.const 65536)) (i64.const 16))
(assert_return (invoke "ctz" (i64.const -9223372036854775808)) (i64.const 63))
(assert_return (invoke "ctz" (i64.const 9223372036854775807)) (i64.const 0))
(assert_return (invoke "popcnt" (i64.const -1)) (i64.const 64))
(assert_return (invoke "popcnt" (i64.const 0)) (i64.const 0))
(assert_return (invoke "popcnt" (i64.const 32768)) (i64.const 1))
(assert_return (invoke "popcnt" (i64.const -9223231297218904064)) (i64.const 4))
(assert_return (invoke "popcnt" (i64.const 9223372036854775807)) (i64.const 63))
(assert_return
  (invoke "popcnt" (i64.const -6148914692668172971))
  (i64.const 32)
)
(assert_return
  (invoke "popcnt" (i64.const -7378697629197489494))
  (i64.const 32)
)
(assert_return
  (invoke "popcnt" (i64.const -2401053088876216593))
  (i64.const 48)
)
(assert_return (invoke "eqz" (i64.const 0)) (i32.const 1))
(assert_return (invoke "eqz" (i64.const 1)) (i32.const 0))
(assert_return (invoke "eqz" (i64.const -9223372036854775808)) (i32.const 0))
(assert_return (invoke "eqz" (i64.const 9223372036854775807)) (i32.const 0))
(assert_return (invoke "eqz" (i64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "eq" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "eq" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq" (i64.const 9223372036854775807) (i64.const 9223372036854775807))
  (i32.const 1)
)
(assert_return (invoke "eq" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "eq" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "eq" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const -9223372036854775808) (i64.const 9223372036854775807))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const 9223372036854775807) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return (invoke "ne" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "ne" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "ne" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne" (i64.const 9223372036854775807) (i64.const 9223372036854775807))
  (i32.const 0)
)
(assert_return (invoke "ne" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "ne" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ne" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const -9223372036854775808) (i64.const 9223372036854775807))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const 9223372036854775807) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return (invoke "lt_s" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_s"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_s" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt_s"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "lt_u"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_u" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return (invoke "le_s" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_s"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return (invoke "le_s" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "le_s" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "le_s"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_s"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return (invoke "le_u" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "le_u"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_u"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return (invoke "le_u" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "le_u" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_u" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "le_u"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le_u"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return (invoke "gt_s" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_s"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return (invoke "gt_s" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "gt_s" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_s"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return (invoke "gt_u" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "gt_u"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_u"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return (invoke "gt_u" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "gt_u" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_u" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt_u"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
(assert_return (invoke "ge_s" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_s"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_s" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge_s"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ge_u"
    (i64.const -9223372036854775808)
    (i64.const -9223372036854775808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const 9223372036854775807)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_u" (i64.const -9223372036854775808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i64.const 0) (i64.const -9223372036854775808))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i64.const -9223372036854775808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i64.const -1) (i64.const -9223372036854775808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const -9223372036854775808)
    (i64.const 9223372036854775807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const 9223372036854775807)
    (i64.const -9223372036854775808)
  )
  (i32.const 0)
)
