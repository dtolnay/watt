(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\02\7f\7f\00\60\02\7e\7e\00\03\85\80\80\80\00\04"
  "\00\00\01\01\07\cd\80\80\80\00\04\10\6e\6f\5f\64"
  "\63\65\2e\69\33\32\2e\64\69\76\5f\73\00\00\10\6e"
  "\6f\5f\64\63\65\2e\69\33\32\2e\64\69\76\5f\75\00"
  "\01\10\6e\6f\5f\64\63\65\2e\69\36\34\2e\64\69\76"
  "\5f\73\00\02\10\6e\6f\5f\64\63\65\2e\69\36\34\2e"
  "\64\69\76\5f\75\00\03\0a\b5\80\80\80\00\04\88\80"
  "\80\80\00\00\20\00\20\01\6d\1a\0b\88\80\80\80\00"
  "\00\20\00\20\01\6e\1a\0b\88\80\80\80\00\00\20\00"
  "\20\01\7f\1a\0b\88\80\80\80\00\00\20\00\20\01\80"
  "\1a\0b"
)
(assert_trap
  (invoke "no_dce.i32.div_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i32.div_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.div_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.div_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i32.div_s" (i32.const -2147483648) (i32.const -1))
  "integer overflow"
)
(assert_trap
  (invoke "no_dce.i64.div_s" (i64.const -9223372036854775808) (i64.const -1))
  "integer overflow"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\02\7f\7f\00\60\02\7e\7e\00\03\85\80\80\80\00\04"
  "\00\00\01\01\07\cd\80\80\80\00\04\10\6e\6f\5f\64"
  "\63\65\2e\69\33\32\2e\72\65\6d\5f\73\00\00\10\6e"
  "\6f\5f\64\63\65\2e\69\33\32\2e\72\65\6d\5f\75\00"
  "\01\10\6e\6f\5f\64\63\65\2e\69\36\34\2e\72\65\6d"
  "\5f\73\00\02\10\6e\6f\5f\64\63\65\2e\69\36\34\2e"
  "\72\65\6d\5f\75\00\03\0a\b5\80\80\80\00\04\88\80"
  "\80\80\00\00\20\00\20\01\6f\1a\0b\88\80\80\80\00"
  "\00\20\00\20\01\70\1a\0b\88\80\80\80\00\00\20\00"
  "\20\01\81\1a\0b\88\80\80\80\00\00\20\00\20\01\82"
  "\1a\0b"
)
(assert_trap
  (invoke "no_dce.i32.rem_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i32.rem_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.rem_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.rem_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\01\7d\00\60\01\7c\00\03\89\80\80\80\00\08\00\00"
  "\01\01\00\00\01\01\07\c9\81\80\80\00\08\16\6e\6f"
  "\5f\64\63\65\2e\69\33\32\2e\74\72\75\6e\63\5f\73"
  "\5f\66\33\32\00\00\16\6e\6f\5f\64\63\65\2e\69\33"
  "\32\2e\74\72\75\6e\63\5f\75\5f\66\33\32\00\01\16"
  "\6e\6f\5f\64\63\65\2e\69\33\32\2e\74\72\75\6e\63"
  "\5f\73\5f\66\36\34\00\02\16\6e\6f\5f\64\63\65\2e"
  "\69\33\32\2e\74\72\75\6e\63\5f\75\5f\66\36\34\00"
  "\03\16\6e\6f\5f\64\63\65\2e\69\36\34\2e\74\72\75"
  "\6e\63\5f\73\5f\66\33\32\00\04\16\6e\6f\5f\64\63"
  "\65\2e\69\36\34\2e\74\72\75\6e\63\5f\75\5f\66\33"
  "\32\00\05\16\6e\6f\5f\64\63\65\2e\69\36\34\2e\74"
  "\72\75\6e\63\5f\73\5f\66\36\34\00\06\16\6e\6f\5f"
  "\64\63\65\2e\69\36\34\2e\74\72\75\6e\63\5f\75\5f"
  "\66\36\34\00\07\0a\d9\80\80\80\00\08\86\80\80\80"
  "\00\00\20\00\a8\1a\0b\86\80\80\80\00\00\20\00\a9"
  "\1a\0b\86\80\80\80\00\00\20\00\aa\1a\0b\86\80\80"
  "\80\00\00\20\00\ab\1a\0b\86\80\80\80\00\00\20\00"
  "\ae\1a\0b\86\80\80\80\00\00\20\00\af\1a\0b\86\80"
  "\80\80\00\00\20\00\b0\1a\0b\86\80\80\80\00\00\20"
  "\00\b1\1a\0b"
)
(assert_trap
  (invoke "no_dce.i32.trunc_s_f32" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i32.trunc_u_f32" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i32.trunc_s_f64" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i32.trunc_u_f64" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_s_f32" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_u_f32" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_s_f64" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_u_f64" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\03\8f\80\80\80\00\0e\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\05\83\80\80\80\00\01\00"
  "\01\07\a1\82\80\80\00\0e\0f\6e\6f\5f\64\63\65\2e"
  "\69\33\32\2e\6c\6f\61\64\00\00\13\6e\6f\5f\64\63"
  "\65\2e\69\33\32\2e\6c\6f\61\64\31\36\5f\73\00\01"
  "\13\6e\6f\5f\64\63\65\2e\69\33\32\2e\6c\6f\61\64"
  "\31\36\5f\75\00\02\12\6e\6f\5f\64\63\65\2e\69\33"
  "\32\2e\6c\6f\61\64\38\5f\73\00\03\12\6e\6f\5f\64"
  "\63\65\2e\69\33\32\2e\6c\6f\61\64\38\5f\75\00\04"
  "\0f\6e\6f\5f\64\63\65\2e\69\36\34\2e\6c\6f\61\64"
  "\00\05\13\6e\6f\5f\64\63\65\2e\69\36\34\2e\6c\6f"
  "\61\64\33\32\5f\73\00\06\13\6e\6f\5f\64\63\65\2e"
  "\69\36\34\2e\6c\6f\61\64\33\32\5f\75\00\07\13\6e"
  "\6f\5f\64\63\65\2e\69\36\34\2e\6c\6f\61\64\31\36"
  "\5f\73\00\08\13\6e\6f\5f\64\63\65\2e\69\36\34\2e"
  "\6c\6f\61\64\31\36\5f\75\00\09\12\6e\6f\5f\64\63"
  "\65\2e\69\36\34\2e\6c\6f\61\64\38\5f\73\00\0a\12"
  "\6e\6f\5f\64\63\65\2e\69\36\34\2e\6c\6f\61\64\38"
  "\5f\75\00\0b\0f\6e\6f\5f\64\63\65\2e\66\33\32\2e"
  "\6c\6f\61\64\00\0c\0f\6e\6f\5f\64\63\65\2e\66\36"
  "\34\2e\6c\6f\61\64\00\0d\0a\b7\81\80\80\00\0e\88"
  "\80\80\80\00\00\20\00\28\02\00\1a\0b\88\80\80\80"
  "\00\00\20\00\2e\01\00\1a\0b\88\80\80\80\00\00\20"
  "\00\2f\01\00\1a\0b\88\80\80\80\00\00\20\00\2c\00"
  "\00\1a\0b\88\80\80\80\00\00\20\00\2d\00\00\1a\0b"
  "\88\80\80\80\00\00\20\00\29\03\00\1a\0b\88\80\80"
  "\80\00\00\20\00\34\02\00\1a\0b\88\80\80\80\00\00"
  "\20\00\35\02\00\1a\0b\88\80\80\80\00\00\20\00\32"
  "\01\00\1a\0b\88\80\80\80\00\00\20\00\33\01\00\1a"
  "\0b\88\80\80\80\00\00\20\00\30\00\00\1a\0b\88\80"
  "\80\80\00\00\20\00\31\00\00\1a\0b\88\80\80\80\00"
  "\00\20\00\2a\02\00\1a\0b\88\80\80\80\00\00\20\00"
  "\2b\03\00\1a\0b"
)
(assert_trap
  (invoke "no_dce.i32.load" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load16_s" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load16_u" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load8_s" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load8_u" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load32_s" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load32_u" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load16_s" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load16_u" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load8_s" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load8_u" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.f32.load" (i32.const 65536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.f64.load" (i32.const 65536))
  "out of bounds memory access"
)
