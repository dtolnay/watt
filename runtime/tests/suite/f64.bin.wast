(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7c\7c\01\7c\60\01\7c\01\7c\03\8c\80\80\80\00"
  "\0b\00\00\00\00\01\00\00\01\01\01\01\07\cd\80\80"
  "\80\00\0b\03\61\64\64\00\00\03\73\75\62\00\01\03"
  "\6d\75\6c\00\02\03\64\69\76\00\03\04\73\71\72\74"
  "\00\04\03\6d\69\6e\00\05\03\6d\61\78\00\06\04\63"
  "\65\69\6c\00\07\05\66\6c\6f\6f\72\00\08\05\74\72"
  "\75\6e\63\00\09\07\6e\65\61\72\65\73\74\00\0a\0a"
  "\fb\80\80\80\00\0b\87\80\80\80\00\00\20\00\20\01"
  "\a0\0b\87\80\80\80\00\00\20\00\20\01\a1\0b\87\80"
  "\80\80\00\00\20\00\20\01\a2\0b\87\80\80\80\00\00"
  "\20\00\20\01\a3\0b\85\80\80\80\00\00\20\00\9f\0b"
  "\87\80\80\80\00\00\20\00\20\01\a4\0b\87\80\80\80"
  "\00\00\20\00\20\01\a5\0b\85\80\80\80\00\00\20\00"
  "\9b\0b\85\80\80\80\00\00\20\00\9c\0b\85\80\80\80"
  "\00\00\20\00\9d\0b\85\80\80\80\00\00\20\00\9e\0b"
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -0x0p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 0x0p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000002p-1022)
)
(assert_return
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000002p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const 0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const -0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1.0000000000001p-1022)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p-1021)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p-1021)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (f64.const -0x1.8p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (f64.const 0x1.8p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -0x1p-1) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 0x1p-1) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (f64.const -0x1.8p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (f64.const 0x1.8p+0)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+1)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+1)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -0x1p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 0x1p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const -0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const -0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const 0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const 0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const -0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const -0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const 0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const 0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return_canonical_nan (invoke "add" (f64.const -inf) (f64.const inf)))
(assert_return_canonical_nan (invoke "add" (f64.const inf) (f64.const -inf)))
(assert_return (invoke "add" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "add" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -0x0p+0) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 0x0p+0) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000002p-1022)
)
(assert_return
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000002p-1022)
)
(assert_return
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const 0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const -0x1.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const 0x1.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const -0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1.0000000000001p-1022)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.fffffffffffffp-1022)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (f64.const -0x1p-1021)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (f64.const 0x1p-1021)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1022) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1022) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (f64.const -0x1.8p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (f64.const 0x1.8p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -0x1p-1) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1p-1) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (f64.const -0x1.8p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (f64.const 0x1.8p+0)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (f64.const -0x1p+1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (f64.const 0x1p+1)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -0x1p+0) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1p+0) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const -0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const -0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const 0x1.b21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const 0x1.721fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const -0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const -0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const 0x1.d21fb54442d18p+2)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const 0x1.521fb54442d18p+2)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const inf)
)
(assert_return
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return_canonical_nan (invoke "sub" (f64.const -inf) (f64.const -inf)))
(assert_return (invoke "sub" (f64.const -inf) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "sub" (f64.const inf) (f64.const inf)))
(assert_return_canonical_nan
  (invoke "sub" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x0p+0) (f64.const -inf))
)
(assert_return_canonical_nan (invoke "mul" (f64.const -0x0p+0) (f64.const inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const 0x0p+0) (f64.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const 0x0p+0) (f64.const inf)))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (f64.const 0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (f64.const -0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (f64.const -0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (f64.const 0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1022) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (f64.const 0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (f64.const -0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (f64.const -0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (f64.const 0x0.8p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (f64.const 0x1p-2)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (f64.const -0x1p-2)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (f64.const -0x1p-2)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x1p-2)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x1p-1) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1p-1) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x1p+0) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000006p-1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const 0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const -0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const -0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const 0x1.921fb54442d18p-1020)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const 0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const -0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const -0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const 0x1.921fb54442d18p+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.3bd3cc9be45dep+5)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.3bd3cc9be45dep+5)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.3bd3cc9be45dep+5)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.3bd3cc9be45dep+5)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp-51)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const 0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const -0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const -0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const 0x1.fffffffffffffp+1022)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -inf) (f64.const -0x0p+0))
)
(assert_return_canonical_nan (invoke "mul" (f64.const -inf) (f64.const 0x0p+0)))
(assert_return_canonical_nan (invoke "mul" (f64.const inf) (f64.const -0x0p+0)))
(assert_return_canonical_nan (invoke "mul" (f64.const inf) (f64.const 0x0p+0)))
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return (invoke "mul" (f64.const -inf) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x0p+0) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x0p+0) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x0p+0) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x0p+0) (f64.const 0x0p+0))
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0p+0) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0p+0) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const 0x1p-52)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const -0x1p-52)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p-52)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p-52)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const 0x0.0000000000002p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const -0x0.0000000000002p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const -0x0.0000000000002p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const 0x0.0000000000002p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p+52)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p+52)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p+52)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p+52)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (f64.const 0x1p-1021)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (f64.const -0x1p-1021)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1021)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1021)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x0.28be60db9391p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x0.28be60db9391p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x0.28be60db9391p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x0.28be60db9391p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1022) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1022) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (f64.const 0x1p+1021)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (f64.const -0x1p+1021)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (f64.const -0x1p+1021)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (f64.const 0x1p+1021)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.45f306dc9c883p-4)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.45f306dc9c883p-4)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.45f306dc9c883p-4)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.45f306dc9c883p-4)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x0.2p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x0.2p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x0.2p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x0.2p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p-1) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p-1) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (f64.const 0x1p+1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (f64.const -0x1p+1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p+1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p+1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (f64.const 0x1p+1)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (f64.const -0x1p+1)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (f64.const -0x1p+1)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (f64.const 0x1p+1)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1.45f306dc9c883p-3)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1.45f306dc9c883p-3)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.45f306dc9c883p-3)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.45f306dc9c883p-3)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x0.4p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x0.4p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x0.4p-1022)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x0.4p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1p+0) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1p+0) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const 0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const -0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const -0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const 0x1.921fb54442d18p+3)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.921fb54442d19p-1022)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.921fb54442d19p-1022)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.921fb54442d19p-1022)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.921fb54442d19p-1022)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.45f306dc9c882p+1021)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.45f306dc9c882p+1021)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.45f306dc9c882p+1021)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.45f306dc9c882p+1021)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "div" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "div" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return_canonical_nan (invoke "div" (f64.const -inf) (f64.const -inf)))
(assert_return_canonical_nan (invoke "div" (f64.const -inf) (f64.const inf)))
(assert_return_canonical_nan (invoke "div" (f64.const inf) (f64.const -inf)))
(assert_return_canonical_nan (invoke "div" (f64.const inf) (f64.const inf)))
(assert_return_canonical_nan
  (invoke "div" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -0x0p+0) (f64.const inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 0x0p+0) (f64.const inf))
  (f64.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1022) (f64.const inf))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1022) (f64.const inf))
  (f64.const 0x1p-1022)
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -0x1p-1) (f64.const inf))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 0x1p-1) (f64.const inf))
  (f64.const 0x1p-1)
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -0x1p+0) (f64.const inf))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 0x1p+0) (f64.const inf))
  (f64.const 0x1p+0)
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 0x0p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 0x1p-1022))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 0x1p-1))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 0x1p+0))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return (invoke "min" (f64.const -inf) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "min" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -0x1p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -0x1p-1022))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -0x1p-1))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -0x1p-1))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -0x1p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -0x1p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const -inf))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const -inf))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x0p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x0p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x0p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x0p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x0.0000000000001p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const -inf))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x0.0000000000001p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 0x0.0000000000001p-1022)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -0x0p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const 0x0p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -0x1p-1))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -0x1p-1))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -0x1p+0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -0x1p+0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const -inf))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const -inf))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1022) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x1p-1022) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x1p-1022) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x1p-1022) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x1p-1022) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -0x0p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const 0x0p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -0x1p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const 0x1p-1022))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -0x1p+0))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -0x1p+0))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const -inf))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p-1) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const -inf))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p-1) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x1p-1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x1p-1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x1p-1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x1p-1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -0x0p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const 0x0p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const 0x1p-1022))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -0x1p-1))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const 0x1p-1))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const -inf))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const -inf))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1p+0) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x1p+0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x1p+0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0x1p+0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0x1p+0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const 0x1.921fb54442d18p+2) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 0x1.921fb54442d18p+2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x0.0000000000001p-1022)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.921fb54442d18p+2)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const 0x1.fffffffffffffp+1023)
  )
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 0x1.fffffffffffffp+1023)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0x0p+0))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 0x0p+0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 0x0p+0))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0.0000000000001p-1022)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 0x0.0000000000001p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0x1p-1022))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 0x1p-1022))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 0x1p-1022))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0x1p-1))
  (f64.const -0x1p-1)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 0x1p-1))
  (f64.const 0x1p-1)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 0x1p-1))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0x1p+0))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 0x1p+0))
  (f64.const 0x1p+0)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 0x1p+0))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.921fb54442d18p+2)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 0x1.921fb54442d18p+2))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return (invoke "max" (f64.const -inf) (f64.const inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "max" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const 0x0.0000000000001p-1022)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 0x1p-1022))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 0x1p-1022))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.921fb54442d18p+2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const 0x1.fffffffffffffp+1023)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "sqrt" (f64.const -0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "sqrt" (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return_canonical_nan
  (invoke "sqrt" (f64.const -0x0.0000000000001p-1022))
)
(assert_return
  (invoke "sqrt" (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p-537)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -0x1p-1022)))
(assert_return (invoke "sqrt" (f64.const 0x1p-1022)) (f64.const 0x1p-511))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -0x1p-1)))
(assert_return
  (invoke "sqrt" (f64.const 0x1p-1))
  (f64.const 0x1.6a09e667f3bcdp-1)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -0x1p+0)))
(assert_return (invoke "sqrt" (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -0x1.921fb54442d18p+2)))
(assert_return
  (invoke "sqrt" (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.40d931ff62705p+1)
)
(assert_return_canonical_nan
  (invoke "sqrt" (f64.const -0x1.fffffffffffffp+1023))
)
(assert_return
  (invoke "sqrt" (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+511)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -inf)))
(assert_return (invoke "sqrt" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "sqrt" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f64.const nan:0x4000000000000)))
(assert_return (invoke "floor" (f64.const -0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "floor" (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return
  (invoke "floor" (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x1p+0)
)
(assert_return
  (invoke "floor" (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return (invoke "floor" (f64.const -0x1p-1022)) (f64.const -0x1p+0))
(assert_return (invoke "floor" (f64.const 0x1p-1022)) (f64.const 0x0p+0))
(assert_return (invoke "floor" (f64.const -0x1p-1)) (f64.const -0x1p+0))
(assert_return (invoke "floor" (f64.const 0x1p-1)) (f64.const 0x0p+0))
(assert_return (invoke "floor" (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return (invoke "floor" (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return
  (invoke "floor" (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.cp+2)
)
(assert_return
  (invoke "floor" (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.8p+2)
)
(assert_return
  (invoke "floor" (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "floor" (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return (invoke "floor" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "floor" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "floor" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "floor" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "floor" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "floor" (f64.const nan:0x4000000000000)))
(assert_return (invoke "ceil" (f64.const -0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "ceil" (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return
  (invoke "ceil" (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "ceil" (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x1p+0)
)
(assert_return (invoke "ceil" (f64.const -0x1p-1022)) (f64.const -0x0p+0))
(assert_return (invoke "ceil" (f64.const 0x1p-1022)) (f64.const 0x1p+0))
(assert_return (invoke "ceil" (f64.const -0x1p-1)) (f64.const -0x0p+0))
(assert_return (invoke "ceil" (f64.const 0x1p-1)) (f64.const 0x1p+0))
(assert_return (invoke "ceil" (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return (invoke "ceil" (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return
  (invoke "ceil" (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.8p+2)
)
(assert_return
  (invoke "ceil" (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.cp+2)
)
(assert_return
  (invoke "ceil" (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "ceil" (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return (invoke "ceil" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "ceil" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "ceil" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "ceil" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "ceil" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "ceil" (f64.const nan:0x4000000000000)))
(assert_return (invoke "trunc" (f64.const -0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "trunc" (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return
  (invoke "trunc" (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "trunc" (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return (invoke "trunc" (f64.const -0x1p-1022)) (f64.const -0x0p+0))
(assert_return (invoke "trunc" (f64.const 0x1p-1022)) (f64.const 0x0p+0))
(assert_return (invoke "trunc" (f64.const -0x1p-1)) (f64.const -0x0p+0))
(assert_return (invoke "trunc" (f64.const 0x1p-1)) (f64.const 0x0p+0))
(assert_return (invoke "trunc" (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return (invoke "trunc" (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return
  (invoke "trunc" (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.8p+2)
)
(assert_return
  (invoke "trunc" (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.8p+2)
)
(assert_return
  (invoke "trunc" (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "trunc" (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return (invoke "trunc" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "trunc" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "trunc" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "trunc" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "trunc" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "trunc" (f64.const nan:0x4000000000000)))
(assert_return (invoke "nearest" (f64.const -0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "nearest" (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return
  (invoke "nearest" (f64.const -0x0.0000000000001p-1022))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "nearest" (f64.const 0x0.0000000000001p-1022))
  (f64.const 0x0p+0)
)
(assert_return (invoke "nearest" (f64.const -0x1p-1022)) (f64.const -0x0p+0))
(assert_return (invoke "nearest" (f64.const 0x1p-1022)) (f64.const 0x0p+0))
(assert_return (invoke "nearest" (f64.const -0x1p-1)) (f64.const -0x0p+0))
(assert_return (invoke "nearest" (f64.const 0x1p-1)) (f64.const 0x0p+0))
(assert_return (invoke "nearest" (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return (invoke "nearest" (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return
  (invoke "nearest" (f64.const -0x1.921fb54442d18p+2))
  (f64.const -0x1.8p+2)
)
(assert_return
  (invoke "nearest" (f64.const 0x1.921fb54442d18p+2))
  (f64.const 0x1.8p+2)
)
(assert_return
  (invoke "nearest" (f64.const -0x1.fffffffffffffp+1023))
  (f64.const -0x1.fffffffffffffp+1023)
)
(assert_return
  (invoke "nearest" (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return (invoke "nearest" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "nearest" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "nearest" (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "nearest" (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan (invoke "nearest" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan
  (invoke "nearest" (f64.const nan:0x4000000000000))
)
