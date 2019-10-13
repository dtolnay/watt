(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7c\7c\01\7f\03\87\80\80\80\00\06\00\00\00\00"
  "\00\00\07\9f\80\80\80\00\06\02\65\71\00\00\02\6e"
  "\65\00\01\02\6c\74\00\02\02\6c\65\00\03\02\67\74"
  "\00\04\02\67\65\00\05\0a\c9\80\80\80\00\06\87\80"
  "\80\80\00\00\20\00\20\01\61\0b\87\80\80\80\00\00"
  "\20\00\20\01\62\0b\87\80\80\80\00\00\20\00\20\01"
  "\63\0b\87\80\80\80\00\00\20\00\20\01\65\0b\87\80"
  "\80\80\00\00\20\00\20\01\64\0b\87\80\80\80\00\00"
  "\20\00\20\01\66\0b"
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0x0p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0x0p+0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0x0p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0x0p+0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0x1p-1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0x1p-1) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0x1p-1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0x1p-1) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0x1p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0x1p+0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0x1p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0x1p+0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -inf) (f64.const -0x0p+0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const 0x0p+0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -0x0p+0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const 0x0p+0)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -inf) (f64.const -0x1p-1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const 0x1p-1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -0x1p-1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const 0x1p-1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const -0x1p+0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const 0x1p+0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -0x1p+0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const 0x1p+0)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "eq" (f64.const -inf) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0x0p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0x0p+0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0x0p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0x0p+0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0x1p-1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0x1p-1) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0x1p-1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0x1p-1) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0x1p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0x1p+0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0x1p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0x1p+0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -inf) (f64.const -0x0p+0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const 0x0p+0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -0x0p+0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const 0x0p+0)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -inf) (f64.const -0x1p-1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const 0x1p-1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -0x1p-1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const 0x1p-1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const -0x1p+0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const 0x1p+0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -0x1p+0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const 0x1p+0)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "ne" (f64.const -inf) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -0x0p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0x0p+0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0x0p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0x0p+0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -0x1p-1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0x1p-1) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0x1p-1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0x1p-1) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -0x1p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0x1p+0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0x1p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0x1p+0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -inf) (f64.const -0x0p+0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -inf) (f64.const 0x0p+0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -0x0p+0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const 0x0p+0)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -inf) (f64.const -0x1p-1)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -inf) (f64.const 0x1p-1)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -0x1p-1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const 0x1p-1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -inf) (f64.const -0x1p+0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -inf) (f64.const 0x1p+0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -0x1p+0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const 0x1p+0)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -inf) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "le" (f64.const -0x0p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0x0p+0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0x0p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0x0p+0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "le" (f64.const -0x1p-1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0x1p-1) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0x1p-1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0x1p-1) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "le" (f64.const -0x1p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0x1p+0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0x1p+0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0x1p+0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -inf) (f64.const -0x0p+0)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const 0x0p+0)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -0x0p+0)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const 0x0p+0)) (i32.const 0))
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -inf) (f64.const -0x1p-1)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const 0x1p-1)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -0x1p-1)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const 0x1p-1)) (i32.const 0))
(assert_return (invoke "le" (f64.const -inf) (f64.const -0x1p+0)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const 0x1p+0)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -0x1p+0)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const 0x1p+0)) (i32.const 0))
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0x0p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0x0p+0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0x0p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0x0p+0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0x1p-1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0x1p-1) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0x1p-1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0x1p-1) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0x1p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0x1p+0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0x1p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0x1p+0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -inf) (f64.const -0x0p+0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const 0x0p+0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -0x0p+0)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const 0x0p+0)) (i32.const 1))
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return (invoke "gt" (f64.const -inf) (f64.const -0x1p-1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const 0x1p-1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -0x1p-1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const 0x1p-1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -inf) (f64.const -0x1p+0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const 0x1p+0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -0x1p+0)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const 0x1p+0)) (i32.const 1))
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "gt" (f64.const -inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0x0p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0x0p+0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0x0p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0x0p+0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0x1p-1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0x1p-1) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0x1p-1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0x1p-1) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0x1p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0x1p+0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0x1p+0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0x1p+0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.921fb54442d18p+2) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -inf) (f64.const -0x0p+0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -inf) (f64.const 0x0p+0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -0x0p+0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const 0x0p+0)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -0x1p-1022))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 0x1p-1022))
  (i32.const 1)
)
(assert_return (invoke "ge" (f64.const -inf) (f64.const -0x1p-1)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -inf) (f64.const 0x1p-1)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -0x1p-1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const 0x1p-1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -inf) (f64.const -0x1p+0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -inf) (f64.const 0x1p+0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -0x1p+0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const 0x1p+0)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (i32.const 1)
)
(assert_return (invoke "ge" (f64.const -inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -inf) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 0x1.921fb54442d18p+2))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
