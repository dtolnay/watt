(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7f\7f\01\7f\60\01\7f\01\7f\03\9e\80\80\80\00"
  "\1d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\01\01\01\01\00\00\00\00\00\00\00\00\00\00\07\c5"
  "\81\80\80\00\1d\03\61\64\64\00\00\03\73\75\62\00"
  "\01\03\6d\75\6c\00\02\05\64\69\76\5f\73\00\03\05"
  "\64\69\76\5f\75\00\04\05\72\65\6d\5f\73\00\05\05"
  "\72\65\6d\5f\75\00\06\03\61\6e\64\00\07\02\6f\72"
  "\00\08\03\78\6f\72\00\09\03\73\68\6c\00\0a\05\73"
  "\68\72\5f\73\00\0b\05\73\68\72\5f\75\00\0c\04\72"
  "\6f\74\6c\00\0d\04\72\6f\74\72\00\0e\03\63\6c\7a"
  "\00\0f\03\63\74\7a\00\10\06\70\6f\70\63\6e\74\00"
  "\11\03\65\71\7a\00\12\02\65\71\00\13\02\6e\65\00"
  "\14\04\6c\74\5f\73\00\15\04\6c\74\5f\75\00\16\04"
  "\6c\65\5f\73\00\17\04\6c\65\5f\75\00\18\04\67\74"
  "\5f\73\00\19\04\67\74\5f\75\00\1a\04\67\65\5f\73"
  "\00\1b\04\67\65\5f\75\00\1c\0a\d5\82\80\80\00\1d"
  "\87\80\80\80\00\00\20\00\20\01\6a\0b\87\80\80\80"
  "\00\00\20\00\20\01\6b\0b\87\80\80\80\00\00\20\00"
  "\20\01\6c\0b\87\80\80\80\00\00\20\00\20\01\6d\0b"
  "\87\80\80\80\00\00\20\00\20\01\6e\0b\87\80\80\80"
  "\00\00\20\00\20\01\6f\0b\87\80\80\80\00\00\20\00"
  "\20\01\70\0b\87\80\80\80\00\00\20\00\20\01\71\0b"
  "\87\80\80\80\00\00\20\00\20\01\72\0b\87\80\80\80"
  "\00\00\20\00\20\01\73\0b\87\80\80\80\00\00\20\00"
  "\20\01\74\0b\87\80\80\80\00\00\20\00\20\01\75\0b"
  "\87\80\80\80\00\00\20\00\20\01\76\0b\87\80\80\80"
  "\00\00\20\00\20\01\77\0b\87\80\80\80\00\00\20\00"
  "\20\01\78\0b\85\80\80\80\00\00\20\00\67\0b\85\80"
  "\80\80\00\00\20\00\68\0b\85\80\80\80\00\00\20\00"
  "\69\0b\85\80\80\80\00\00\20\00\45\0b\87\80\80\80"
  "\00\00\20\00\20\01\46\0b\87\80\80\80\00\00\20\00"
  "\20\01\47\0b\87\80\80\80\00\00\20\00\20\01\48\0b"
  "\87\80\80\80\00\00\20\00\20\01\49\0b\87\80\80\80"
  "\00\00\20\00\20\01\4c\0b\87\80\80\80\00\00\20\00"
  "\20\01\4d\0b\87\80\80\80\00\00\20\00\20\01\4a\0b"
  "\87\80\80\80\00\00\20\00\20\01\4b\0b\87\80\80\80"
  "\00\00\20\00\20\01\4e\0b\87\80\80\80\00\00\20\00"
  "\20\01\4f\0b"
)
(assert_return (invoke "add" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "add" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "add" (i32.const -1) (i32.const -1)) (i32.const -2))
(assert_return (invoke "add" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "add" (i32.const 2147483647) (i32.const 1))
  (i32.const -2147483648)
)
(assert_return
  (invoke "add" (i32.const -2147483648) (i32.const -1))
  (i32.const 2147483647)
)
(assert_return
  (invoke "add" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "add" (i32.const 1073741823) (i32.const 1))
  (i32.const 1073741824)
)
(assert_return (invoke "sub" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "sub" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "sub" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "sub" (i32.const 2147483647) (i32.const -1))
  (i32.const -2147483648)
)
(assert_return
  (invoke "sub" (i32.const -2147483648) (i32.const 1))
  (i32.const 2147483647)
)
(assert_return
  (invoke "sub" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "sub" (i32.const 1073741823) (i32.const -1))
  (i32.const 1073741824)
)
(assert_return (invoke "mul" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "mul" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "mul" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "mul" (i32.const 268435456) (i32.const 4096))
  (i32.const 0)
)
(assert_return
  (invoke "mul" (i32.const -2147483648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "mul" (i32.const -2147483648) (i32.const -1))
  (i32.const -2147483648)
)
(assert_return
  (invoke "mul" (i32.const 2147483647) (i32.const -1))
  (i32.const -2147483647)
)
(assert_return
  (invoke "mul" (i32.const 19088743) (i32.const 1985229328))
  (i32.const 898528368)
)
(assert_return
  (invoke "mul" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 1)
)
(assert_trap
  (invoke "div_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i32.const -2147483648) (i32.const -1))
  "integer overflow"
)
(assert_return (invoke "div_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "div_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "div_s" (i32.const 0) (i32.const -1)) (i32.const 0))
(assert_return (invoke "div_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "div_s" (i32.const -2147483648) (i32.const 2))
  (i32.const -1073741824)
)
(assert_return
  (invoke "div_s" (i32.const -2147483647) (i32.const 1000))
  (i32.const -2147483)
)
(assert_return (invoke "div_s" (i32.const 5) (i32.const 2)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const -5) (i32.const 2)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const 5) (i32.const -2)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const -5) (i32.const -2)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 7) (i32.const 3)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const -7) (i32.const 3)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const 7) (i32.const -3)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const -7) (i32.const -3)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 11) (i32.const 5)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 17) (i32.const 7)) (i32.const 2))
(assert_trap
  (invoke "div_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_u" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "div_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "div_u" (i32.const -2147483648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "div_u" (i32.const -2147483648) (i32.const 2))
  (i32.const 1073741824)
)
(assert_return
  (invoke "div_u" (i32.const -1880092688) (i32.const 65537))
  (i32.const 36847)
)
(assert_return
  (invoke "div_u" (i32.const -2147483647) (i32.const 1000))
  (i32.const 2147483)
)
(assert_return (invoke "div_u" (i32.const 5) (i32.const 2)) (i32.const 2))
(assert_return
  (invoke "div_u" (i32.const -5) (i32.const 2))
  (i32.const 2147483645)
)
(assert_return (invoke "div_u" (i32.const 5) (i32.const -2)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const -5) (i32.const -2)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const 7) (i32.const 3)) (i32.const 2))
(assert_return (invoke "div_u" (i32.const 11) (i32.const 5)) (i32.const 2))
(assert_return (invoke "div_u" (i32.const 17) (i32.const 7)) (i32.const 2))
(assert_trap
  (invoke "rem_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_s" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return
  (invoke "rem_s" (i32.const 2147483647) (i32.const -1))
  (i32.const 0)
)
(assert_return (invoke "rem_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const 0) (i32.const -1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "rem_s" (i32.const -2147483648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "rem_s" (i32.const -2147483648) (i32.const 2))
  (i32.const 0)
)
(assert_return
  (invoke "rem_s" (i32.const -2147483647) (i32.const 1000))
  (i32.const -647)
)
(assert_return (invoke "rem_s" (i32.const 5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -5) (i32.const 2)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 5) (i32.const -2)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -5) (i32.const -2)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 7) (i32.const 3)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -7) (i32.const 3)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 7) (i32.const -3)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -7) (i32.const -3)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 11) (i32.const 5)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const 17) (i32.const 7)) (i32.const 3))
(assert_trap
  (invoke "rem_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_u" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "rem_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "rem_u" (i32.const -2147483648) (i32.const -1))
  (i32.const -2147483648)
)
(assert_return
  (invoke "rem_u" (i32.const -2147483648) (i32.const 2))
  (i32.const 0)
)
(assert_return
  (invoke "rem_u" (i32.const -1880092688) (i32.const 65537))
  (i32.const 32769)
)
(assert_return
  (invoke "rem_u" (i32.const -2147483647) (i32.const 1000))
  (i32.const 649)
)
(assert_return (invoke "rem_u" (i32.const 5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const -5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 5) (i32.const -2)) (i32.const 5))
(assert_return (invoke "rem_u" (i32.const -5) (i32.const -2)) (i32.const -5))
(assert_return (invoke "rem_u" (i32.const 7) (i32.const 3)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 11) (i32.const 5)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 17) (i32.const 7)) (i32.const 3))
(assert_return (invoke "and" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "and" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "and" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "and" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "and" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "and" (i32.const 2147483647) (i32.const -1))
  (i32.const 2147483647)
)
(assert_return
  (invoke "and" (i32.const -252641281) (i32.const -3856))
  (i32.const -252645136)
)
(assert_return (invoke "and" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return (invoke "or" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "or" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return (invoke "or" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "or" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "or" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const -1)
)
(assert_return
  (invoke "or" (i32.const -2147483648) (i32.const 0))
  (i32.const -2147483648)
)
(assert_return
  (invoke "or" (i32.const -252641281) (i32.const -3856))
  (i32.const -1)
)
(assert_return (invoke "or" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return (invoke "xor" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "xor" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return (invoke "xor" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "xor" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "xor" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const -1)
)
(assert_return
  (invoke "xor" (i32.const -2147483648) (i32.const 0))
  (i32.const -2147483648)
)
(assert_return
  (invoke "xor" (i32.const -1) (i32.const -2147483648))
  (i32.const 2147483647)
)
(assert_return
  (invoke "xor" (i32.const -1) (i32.const 2147483647))
  (i32.const -2147483648)
)
(assert_return
  (invoke "xor" (i32.const -252641281) (i32.const -3856))
  (i32.const 252645135)
)
(assert_return (invoke "xor" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "shl" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "shl" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return
  (invoke "shl" (i32.const 2147483647) (i32.const 1))
  (i32.const -2)
)
(assert_return (invoke "shl" (i32.const -1) (i32.const 1)) (i32.const -2))
(assert_return
  (invoke "shl" (i32.const -2147483648) (i32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "shl" (i32.const 1073741824) (i32.const 1))
  (i32.const -2147483648)
)
(assert_return
  (invoke "shl" (i32.const 1) (i32.const 31))
  (i32.const -2147483648)
)
(assert_return (invoke "shl" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shl" (i32.const 1) (i32.const 33)) (i32.const 2))
(assert_return
  (invoke "shl" (i32.const 1) (i32.const -1))
  (i32.const -2147483648)
)
(assert_return
  (invoke "shl" (i32.const 1) (i32.const 2147483647))
  (i32.const -2147483648)
)
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return
  (invoke "shr_s" (i32.const 2147483647) (i32.const 1))
  (i32.const 1073741823)
)
(assert_return
  (invoke "shr_s" (i32.const -2147483648) (i32.const 1))
  (i32.const -1073741824)
)
(assert_return
  (invoke "shr_s" (i32.const 1073741824) (i32.const 1))
  (i32.const 536870912)
)
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 33)) (i32.const 0))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "shr_s" (i32.const 1) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return
  (invoke "shr_s" (i32.const 1) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "shr_s" (i32.const -2147483648) (i32.const 31))
  (i32.const -1)
)
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 32)) (i32.const -1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 33)) (i32.const -1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return
  (invoke "shr_s" (i32.const -1) (i32.const 2147483647))
  (i32.const -1)
)
(assert_return
  (invoke "shr_s" (i32.const -1) (i32.const -2147483648))
  (i32.const -1)
)
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 1))
  (i32.const 2147483647)
)
(assert_return
  (invoke "shr_u" (i32.const 2147483647) (i32.const 1))
  (i32.const 1073741823)
)
(assert_return
  (invoke "shr_u" (i32.const -2147483648) (i32.const 1))
  (i32.const 1073741824)
)
(assert_return
  (invoke "shr_u" (i32.const 1073741824) (i32.const 1))
  (i32.const 536870912)
)
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 33)) (i32.const 0))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "shr_u" (i32.const 1) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return
  (invoke "shr_u" (i32.const 1) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "shr_u" (i32.const -2147483648) (i32.const 31))
  (i32.const 1)
)
(assert_return (invoke "shr_u" (i32.const -1) (i32.const 32)) (i32.const -1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 33))
  (i32.const 2147483647)
)
(assert_return (invoke "shr_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const -2147483648))
  (i32.const -1)
)
(assert_return (invoke "rotl" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "rotl" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "rotl" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return (invoke "rotl" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return
  (invoke "rotl" (i32.const -1412589450) (i32.const 1))
  (i32.const 1469788397)
)
(assert_return
  (invoke "rotl" (i32.const -33498112) (i32.const 4))
  (i32.const -535969777)
)
(assert_return
  (invoke "rotl" (i32.const -1329474845) (i32.const 5))
  (i32.const 406477942)
)
(assert_return
  (invoke "rotl" (i32.const 32768) (i32.const 37))
  (i32.const 1048576)
)
(assert_return
  (invoke "rotl" (i32.const -1329474845) (i32.const 65285))
  (i32.const 406477942)
)
(assert_return
  (invoke "rotl" (i32.const 1989852383) (i32.const -19))
  (i32.const 1469837011)
)
(assert_return
  (invoke "rotl" (i32.const 1989852383) (i32.const -2147483635))
  (i32.const 1469837011)
)
(assert_return
  (invoke "rotl" (i32.const 1) (i32.const 31))
  (i32.const -2147483648)
)
(assert_return
  (invoke "rotl" (i32.const -2147483648) (i32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "rotr" (i32.const 1) (i32.const 1))
  (i32.const -2147483648)
)
(assert_return (invoke "rotr" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "rotr" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return (invoke "rotr" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return
  (invoke "rotr" (i32.const -16724992) (i32.const 1))
  (i32.const 2139121152)
)
(assert_return
  (invoke "rotr" (i32.const 524288) (i32.const 4))
  (i32.const 32768)
)
(assert_return
  (invoke "rotr" (i32.const -1329474845) (i32.const 5))
  (i32.const 495324823)
)
(assert_return
  (invoke "rotr" (i32.const 32768) (i32.const 37))
  (i32.const 1024)
)
(assert_return
  (invoke "rotr" (i32.const -1329474845) (i32.const 65285))
  (i32.const 495324823)
)
(assert_return
  (invoke "rotr" (i32.const 1989852383) (i32.const -19))
  (i32.const -419711787)
)
(assert_return
  (invoke "rotr" (i32.const 1989852383) (i32.const -2147483635))
  (i32.const -419711787)
)
(assert_return (invoke "rotr" (i32.const 1) (i32.const 31)) (i32.const 2))
(assert_return
  (invoke "rotr" (i32.const -2147483648) (i32.const 31))
  (i32.const 1)
)
(assert_return (invoke "clz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "clz" (i32.const 0)) (i32.const 32))
(assert_return (invoke "clz" (i32.const 32768)) (i32.const 16))
(assert_return (invoke "clz" (i32.const 255)) (i32.const 24))
(assert_return (invoke "clz" (i32.const -2147483648)) (i32.const 0))
(assert_return (invoke "clz" (i32.const 1)) (i32.const 31))
(assert_return (invoke "clz" (i32.const 2)) (i32.const 30))
(assert_return (invoke "clz" (i32.const 2147483647)) (i32.const 1))
(assert_return (invoke "ctz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "ctz" (i32.const 0)) (i32.const 32))
(assert_return (invoke "ctz" (i32.const 32768)) (i32.const 15))
(assert_return (invoke "ctz" (i32.const 65536)) (i32.const 16))
(assert_return (invoke "ctz" (i32.const -2147483648)) (i32.const 31))
(assert_return (invoke "ctz" (i32.const 2147483647)) (i32.const 0))
(assert_return (invoke "popcnt" (i32.const -1)) (i32.const 32))
(assert_return (invoke "popcnt" (i32.const 0)) (i32.const 0))
(assert_return (invoke "popcnt" (i32.const 32768)) (i32.const 1))
(assert_return (invoke "popcnt" (i32.const -2147450880)) (i32.const 2))
(assert_return (invoke "popcnt" (i32.const 2147483647)) (i32.const 31))
(assert_return (invoke "popcnt" (i32.const -1431655766)) (i32.const 16))
(assert_return (invoke "popcnt" (i32.const 1431655765)) (i32.const 16))
(assert_return (invoke "popcnt" (i32.const -559038737)) (i32.const 24))
(assert_return (invoke "eqz" (i32.const 0)) (i32.const 1))
(assert_return (invoke "eqz" (i32.const 1)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const -2147483648)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const 2147483647)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "eq" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "eq" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return (invoke "eq" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "eq" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "eq" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i32.const -2147483648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const 0) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -2147483648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -1) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return (invoke "ne" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "ne" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "ne" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return (invoke "ne" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "ne" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ne" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i32.const -2147483648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const 0) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -2147483648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -1) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return (invoke "lt_s" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return (invoke "lt_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i32.const -2147483648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const 0) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const -2147483648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const -1) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "lt_u" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_u" (i32.const -2147483648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 0) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i32.const -2147483648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i32.const -1) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return (invoke "le_s" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return (invoke "le_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "le_s" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i32.const -2147483648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 0) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i32.const -2147483648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const -1) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return (invoke "le_u" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "le_u" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return (invoke "le_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "le_u" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_u" (i32.const -2147483648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const 0) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const -2147483648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const -1) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return (invoke "gt_s" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return (invoke "gt_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "gt_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i32.const -2147483648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 0) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i32.const -2147483648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const -1) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return (invoke "gt_u" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "gt_u" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return (invoke "gt_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "gt_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_u" (i32.const -2147483648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const 0) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const -2147483648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const -1) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return (invoke "ge_s" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return (invoke "ge_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i32.const -2147483648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const 0) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const -2147483648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const -1) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ge_u" (i32.const -2147483648) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 2147483647) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_u" (i32.const -2147483648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 0) (i32.const -2147483648))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i32.const -2147483648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i32.const -1) (i32.const -2147483648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const -2147483648) (i32.const 2147483647))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 2147483647) (i32.const -2147483648))
  (i32.const 0)
)
