(module binary
  "\00\61\73\6d\01\00\00\00\01\a5\80\80\80\00\06\60"
  "\03\7f\7f\7f\01\7f\60\03\7e\7e\7f\01\7e\60\03\7d"
  "\7d\7f\01\7d\60\03\7c\7c\7f\01\7c\60\01\7f\01\7f"
  "\60\00\00\03\88\80\80\80\00\07\00\01\02\03\04\04"
  "\05\07\e8\80\80\80\00\07\0a\73\65\6c\65\63\74\5f"
  "\69\33\32\00\00\0a\73\65\6c\65\63\74\5f\69\36\34"
  "\00\01\0a\73\65\6c\65\63\74\5f\66\33\32\00\02\0a"
  "\73\65\6c\65\63\74\5f\66\36\34\00\03\0d\73\65\6c"
  "\65\63\74\5f\74\72\61\70\5f\6c\00\04\0d\73\65\6c"
  "\65\63\74\5f\74\72\61\70\5f\72\00\05\10\73\65\6c"
  "\65\63\74\5f\75\6e\72\65\61\63\68\65\64\00\06\0a"
  "\f0\80\80\80\00\07\89\80\80\80\00\00\20\00\20\01"
  "\20\02\1b\0b\89\80\80\80\00\00\20\00\20\01\20\02"
  "\1b\0b\89\80\80\80\00\00\20\00\20\01\20\02\1b\0b"
  "\89\80\80\80\00\00\20\00\20\01\20\02\1b\0b\88\80"
  "\80\80\00\00\00\41\00\20\00\1b\0b\88\80\80\80\00"
  "\00\41\00\00\20\00\1b\0b\98\80\80\80\00\00\00\1b"
  "\00\41\00\1b\00\41\00\41\00\1b\00\43\00\00\00\00"
  "\41\00\1b\00\0b"
)
(assert_return
  (invoke "select_i32" (i32.const 1) (i32.const 2) (i32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "select_i64" (i64.const 2) (i64.const 1) (i32.const 1))
  (i64.const 2)
)
(assert_return
  (invoke "select_f32" (f32.const 0x1p+0) (f32.const 0x1p+1) (i32.const 1))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "select_f64" (f64.const 0x1p+0) (f64.const 0x1p+1) (i32.const 1))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "select_i32" (i32.const 1) (i32.const 2) (i32.const 0))
  (i32.const 2)
)
(assert_return
  (invoke "select_i32" (i32.const 2) (i32.const 1) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "select_i64" (i64.const 2) (i64.const 1) (i32.const -1))
  (i64.const 2)
)
(assert_return
  (invoke "select_i64" (i64.const 2) (i64.const 1) (i32.const -252645136))
  (i64.const 2)
)
(assert_return
  (invoke "select_f32"
    (f32.const nan:0x400000)
    (f32.const 0x1p+0)
    (i32.const 1)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "select_f32" (f32.const nan:0x20304) (f32.const 0x1p+0) (i32.const 1))
  (f32.const nan:0x20304)
)
(assert_return
  (invoke "select_f32"
    (f32.const nan:0x400000)
    (f32.const 0x1p+0)
    (i32.const 0)
  )
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "select_f32" (f32.const nan:0x20304) (f32.const 0x1p+0) (i32.const 0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "select_f32"
    (f32.const 0x1p+1)
    (f32.const nan:0x400000)
    (i32.const 1)
  )
  (f32.const 0x1p+1)
)
(assert_return
  (invoke "select_f32" (f32.const 0x1p+1) (f32.const nan:0x20304) (i32.const 1))
  (f32.const 0x1p+1)
)
(assert_return
  (invoke "select_f32"
    (f32.const 0x1p+1)
    (f32.const nan:0x400000)
    (i32.const 0)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "select_f32" (f32.const 0x1p+1) (f32.const nan:0x20304) (i32.const 0))
  (f32.const nan:0x20304)
)
(assert_return
  (invoke "select_f64"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1p+0)
    (i32.const 1)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "select_f64" (f64.const nan:0x20304) (f64.const 0x1p+0) (i32.const 1))
  (f64.const nan:0x20304)
)
(assert_return
  (invoke "select_f64"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1p+0)
    (i32.const 0)
  )
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "select_f64" (f64.const nan:0x20304) (f64.const 0x1p+0) (i32.const 0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "select_f64"
    (f64.const 0x1p+1)
    (f64.const nan:0x8000000000000)
    (i32.const 1)
  )
  (f64.const 0x1p+1)
)
(assert_return
  (invoke "select_f64" (f64.const 0x1p+1) (f64.const nan:0x20304) (i32.const 1))
  (f64.const 0x1p+1)
)
(assert_return
  (invoke "select_f64"
    (f64.const 0x1p+1)
    (f64.const nan:0x8000000000000)
    (i32.const 0)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "select_f64" (f64.const 0x1p+1) (f64.const nan:0x20304) (i32.const 0))
  (f64.const nan:0x20304)
)
(assert_trap (invoke "select_trap_l" (i32.const 1)) "unreachable executed")
(assert_trap (invoke "select_trap_l" (i32.const 0)) "unreachable executed")
(assert_trap (invoke "select_trap_r" (i32.const 1)) "unreachable executed")
(assert_trap (invoke "select_trap_r" (i32.const 0)) "unreachable executed")
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8d\80\80\80\00"
    "\01\87\80\80\80\00\00\01\01\41\01\1b\0b"
  )
  "type mismatch"
)
