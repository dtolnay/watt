(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\01\7d\01\7d\03\8c\80\80\80\00"
  "\0b\00\00\00\00\01\00\00\01\01\01\01\07\cd\80\80"
  "\80\00\0b\03\61\64\64\00\00\03\73\75\62\00\01\03"
  "\6d\75\6c\00\02\03\64\69\76\00\03\04\73\71\72\74"
  "\00\04\03\6d\69\6e\00\05\03\6d\61\78\00\06\04\63"
  "\65\69\6c\00\07\05\66\6c\6f\6f\72\00\08\05\74\72"
  "\75\6e\63\00\09\07\6e\65\61\72\65\73\74\00\0a\0a"
  "\fb\80\80\80\00\0b\87\80\80\80\00\00\20\00\20\01"
  "\92\0b\87\80\80\80\00\00\20\00\20\01\93\0b\87\80"
  "\80\80\00\00\20\00\20\01\94\0b\87\80\80\80\00\00"
  "\20\00\20\01\95\0b\85\80\80\80\00\00\20\00\91\0b"
  "\87\80\80\80\00\00\20\00\20\01\96\0b\87\80\80\80"
  "\00\00\20\00\20\01\97\0b\85\80\80\80\00\00\20\00"
  "\8d\0b\85\80\80\80\00\00\20\00\8e\0b\85\80\80\80"
  "\00\00\20\00\8f\0b\85\80\80\80\00\00\20\00\90\0b"
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x0p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 0x0p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x0p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x0p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -0x0p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const 0x0p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -0x0p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const 0x0p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -0x1p-149))
  (f32.const -0x1p-148)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x1p-148)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -0x1p-126))
  (f32.const -0x1.000002p-126)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const 0x1p-126))
  (f32.const 0x1.fffffcp-127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -0x1p-126))
  (f32.const -0x1.fffffcp-127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const 0x1p-126))
  (f32.const 0x1.000002p-126)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x1p-149) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p-149) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p-149) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p-149) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -0x0p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const 0x0p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -0x0p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const 0x0p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -0x1p-149))
  (f32.const -0x1.000002p-126)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const 0x1p-149))
  (f32.const -0x1.fffffcp-127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -0x1p-149))
  (f32.const 0x1.fffffcp-127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const 0x1p-149))
  (f32.const 0x1.000002p-126)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -0x1p-126))
  (f32.const -0x1p-125)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x1p-125)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x1p-126) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p-126) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p-126) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p-126) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -0x0p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const 0x0p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -0x0p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const 0x0p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -0x1p-149))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const 0x1p-149))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -0x1p-149))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const 0x1p-149))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -0x1p-126))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const 0x1p-126))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -0x1p-126))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const 0x1p-126))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -0x1p-1))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -0x1p+0))
  (f32.const -0x1.8p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const 0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const 0x1p+0))
  (f32.const 0x1.8p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.b21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.721fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.721fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.b21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x1p-1) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p-1) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p-1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p-1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -0x0p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const 0x0p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -0x0p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const 0x0p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const 0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const 0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const 0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const 0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -0x1p-1))
  (f32.const -0x1.8p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const 0x1p-1))
  (f32.const 0x1.8p+0)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+1)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+1)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.d21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.521fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.521fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.d21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x1p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 0x1p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const -0x1.b21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const -0x1.721fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const 0x1.721fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const 0x1.b21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const -0x1.d21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const -0x1.521fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const 0x1.521fb6p+2)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const 0x1.d21fb6p+2)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+3)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+3)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return_canonical_nan (invoke "add" (f32.const -inf) (f32.const inf)))
(assert_return_canonical_nan (invoke "add" (f32.const inf) (f32.const -inf)))
(assert_return (invoke "add" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const 0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const 0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const 0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const 0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -0x0p+0) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x0p+0) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x0p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x0p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -0x0p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const 0x0p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -0x0p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const 0x0p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const 0x1p-149))
  (f32.const -0x1p-148)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -0x1p-149))
  (f32.const 0x1p-148)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -0x1p-126))
  (f32.const 0x1.fffffcp-127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const 0x1p-126))
  (f32.const -0x1.000002p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -0x1p-126))
  (f32.const 0x1.000002p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const 0x1p-126))
  (f32.const -0x1.fffffcp-127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-149) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-149) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p-149) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p-149) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -0x0p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const 0x0p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -0x0p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const 0x0p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -0x1p-149))
  (f32.const -0x1.fffffcp-127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const 0x1p-149))
  (f32.const -0x1.000002p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -0x1p-149))
  (f32.const 0x1.000002p-126)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const 0x1p-149))
  (f32.const 0x1.fffffcp-127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const 0x1p-126))
  (f32.const -0x1p-125)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -0x1p-126))
  (f32.const 0x1p-125)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-126) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-126) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p-126) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p-126) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -0x0p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const 0x0p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -0x0p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const 0x0p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -0x1p-149))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const 0x1p-149))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -0x1p-149))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const 0x1p-149))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -0x1p-126))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const 0x1p-126))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -0x1p-126))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const 0x1p-126))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const 0x1p-1))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -0x1p-1))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const 0x1p+0))
  (f32.const -0x1.8p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -0x1p+0))
  (f32.const 0x1.8p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const 0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.721fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.b21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.b21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.721fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -0x1p-1) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p-1) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p-1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p-1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -0x0p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const 0x0p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -0x0p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const 0x0p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const 0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const 0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const 0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const 0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const 0x1p-1))
  (f32.const -0x1.8p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -0x1p-1))
  (f32.const 0x1.8p+0)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const 0x1p+0))
  (f32.const -0x1p+1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -0x1p+0))
  (f32.const 0x1p+1)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.521fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.d21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.d21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.521fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -0x1p+0) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1p+0) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const -0x1.721fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const -0x1.b21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const 0x1.b21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const 0x1.721fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const -0x1.521fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const -0x1.d21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const 0x1.d21fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const 0x1.521fb6p+2)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+3)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+3)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return_canonical_nan (invoke "sub" (f32.const -inf) (f32.const -inf)))
(assert_return (invoke "sub" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "sub" (f32.const inf) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const 0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const -0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const -0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const 0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const -0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const 0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const -0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const 0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const -0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const 0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const -0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const 0x1p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const -0x1p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const 0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x0p+0) (f32.const -inf))
)
(assert_return_canonical_nan (invoke "mul" (f32.const -0x0p+0) (f32.const inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0x0p+0) (f32.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0x0p+0) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x0p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x0p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const 0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const 0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const 0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const 0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const 0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -0x1p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const 0x1p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -0x1p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const 0x1p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-149) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-149) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p-149) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p-149) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const 0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const 0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -0x1p-1))
  (f32.const 0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const 0x1p-1))
  (f32.const -0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -0x1p-1))
  (f32.const -0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const 0x1p-1))
  (f32.const 0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -0x1p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const 0x1p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -0x1p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const 0x1p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-126) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-126) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p-126) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p-126) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const 0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -0x1p-126))
  (f32.const 0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const 0x1p-126))
  (f32.const -0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -0x1p-126))
  (f32.const -0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const 0x1p-126))
  (f32.const 0x1p-127)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -0x1p-1))
  (f32.const 0x1p-2)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const 0x1p-1))
  (f32.const -0x1p-2)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -0x1p-1))
  (f32.const -0x1p-2)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x1p-2)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const 0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const 0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1p-1) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p-1) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p-1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p-1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const 0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const 0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1p+0) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const 0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const -0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const -0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const 0x1.8p-147)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const 0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const -0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const -0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const 0x1.921fb6p-124)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const 0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const -0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const -0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const 0x1.921fb6p+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.3bd3cep+5)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.3bd3cep+5)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.3bd3cep+5)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.3bd3cep+5)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const 0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const -0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const -0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const 0x1.fffffep-22)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const 0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const -0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const -0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const 0x1.fffffep+1)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const 0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const -0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const -0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const 0x1.fffffep+126)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -inf) (f32.const -0x0p+0))
)
(assert_return_canonical_nan (invoke "mul" (f32.const -inf) (f32.const 0x0p+0)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const -0x0p+0)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const 0x0p+0)))
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return (invoke "mul" (f32.const -inf) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x0p+0) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x0p+0) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x0p+0) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x0p+0) (f32.const 0x0p+0))
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const 0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const -0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const -0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const 0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const -0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const 0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const -0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const 0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const -0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const 0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const -0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const 0x1p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const -0x1p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const 0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x0p+0) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x0p+0) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x0p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x0p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const 0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -0x1p-126))
  (f32.const 0x1p-23)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const 0x1p-126))
  (f32.const -0x1p-23)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -0x1p-126))
  (f32.const -0x1p-23)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const 0x1p-126))
  (f32.const 0x1p-23)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -0x1p-1))
  (f32.const 0x1p-148)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const 0x1p-1))
  (f32.const -0x1p-148)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -0x1p-1))
  (f32.const -0x1p-148)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const 0x1p-1))
  (f32.const 0x1p-148)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -0x1p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const 0x1p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -0x1p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const 0x1p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-149) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-149) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p-149) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p-149) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -0x1p-149))
  (f32.const 0x1p+23)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const 0x1p-149))
  (f32.const -0x1p+23)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -0x1p-149))
  (f32.const -0x1p+23)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const 0x1p-149))
  (f32.const 0x1p+23)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const 0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -0x1p-1))
  (f32.const 0x1p-125)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const 0x1p-1))
  (f32.const -0x1p-125)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -0x1p-1))
  (f32.const -0x1p-125)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const 0x1p-1))
  (f32.const 0x1p-125)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -0x1p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const 0x1p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -0x1p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const 0x1p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.45f3p-129)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.45f3p-129)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.45f3p-129)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.45f3p-129)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-126) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-126) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p-126) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p-126) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -0x1p-126))
  (f32.const 0x1p+125)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const 0x1p-126))
  (f32.const -0x1p+125)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -0x1p-126))
  (f32.const -0x1p+125)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const 0x1p-126))
  (f32.const 0x1p+125)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -0x1p-1))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const 0x1p-1))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -0x1p-1))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const 0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const 0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.45f306p-4)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.45f306p-4)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.45f306p-4)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.45f306p-4)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const 0x1p-129)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const -0x1p-129)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const -0x1p-129)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const 0x1p-129)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p-1) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p-1) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p-1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p-1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -0x1p-126))
  (f32.const 0x1p+126)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const 0x1p-126))
  (f32.const -0x1p+126)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -0x1p-126))
  (f32.const -0x1p+126)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const 0x1p-126))
  (f32.const 0x1p+126)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -0x1p-1))
  (f32.const 0x1p+1)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const 0x1p-1))
  (f32.const -0x1p+1)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -0x1p-1))
  (f32.const -0x1p+1)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const 0x1p-1))
  (f32.const 0x1p+1)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.45f306p-3)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.45f306p-3)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.45f306p-3)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.45f306p-3)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x1p-128)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x1p-128)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1p-128)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1p-128)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1p+0) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1p+0) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const 0x1.921fb6p+3)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const -0x1.921fb6p+3)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const -0x1.921fb6p+3)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const 0x1.921fb6p+3)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.921fb8p-126)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.921fb8p-126)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.921fb8p-126)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.921fb8p-126)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.45f304p+125)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.45f304p+125)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.45f304p+125)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.45f304p+125)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return_canonical_nan (invoke "div" (f32.const -inf) (f32.const -inf)))
(assert_return_canonical_nan (invoke "div" (f32.const -inf) (f32.const inf)))
(assert_return_canonical_nan (invoke "div" (f32.const inf) (f32.const -inf)))
(assert_return_canonical_nan (invoke "div" (f32.const inf) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "div" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const 0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const 0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const 0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const 0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const 0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const 0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const 0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const 0x1p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const 0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -0x0p+0) (f32.const inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 0x0p+0) (f32.const inf))
  (f32.const 0x0p+0)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x0p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x0p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -0x0p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const 0x0p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const 0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const 0x1p-126))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const 0x1p-126))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const 0x1p-1))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const 0x1p-1))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const 0x1p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const 0x1p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -0x1p-149) (f32.const inf))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 0x1p-149) (f32.const inf))
  (f32.const 0x1p-149)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p-149) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p-149) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -0x0p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const 0x0p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -0x1p-149))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const 0x1p-149))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const 0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const 0x1p-1))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const 0x1p-1))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const 0x1p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const 0x1p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -0x1p-126) (f32.const inf))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 0x1p-126) (f32.const inf))
  (f32.const 0x1p-126)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p-126) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p-126) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -0x0p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const 0x0p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -0x1p-149))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const 0x1p-149))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -0x1p-126))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const 0x1p-126))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const 0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const 0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const 0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -0x1p-1) (f32.const inf))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 0x1p-1) (f32.const inf))
  (f32.const 0x1p-1)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p-1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p-1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -0x0p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const 0x0p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const 0x1p-149))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const 0x1p-126))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -0x1p-1))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const 0x1p-1))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const 0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -0x1p+0) (f32.const inf))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 0x1p+0) (f32.const inf))
  (f32.const 0x1p+0)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const inf))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const inf))
  (f32.const 0x1.921fb6p+2)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const inf))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const inf))
  (f32.const 0x1.fffffep+127)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 0x0p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 0x1p-149))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 0x1p-126))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 0x1p-1))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 0x1p+0))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 0x1.921fb6p+2))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 0x1.fffffep+127))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "min" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -0x1p-149))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -0x1p-149))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -0x1p-126))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -0x1p-126))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -0x1p-1))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -0x1p-1))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -0x1p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -0x1p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const -inf))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x0p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const -inf))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x0p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x0p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x0p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x0p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x0p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x0p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -0x0p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const 0x0p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -0x1p-126))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -0x1p-126))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -0x1p-1))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -0x1p-1))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -0x1p+0))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -0x1p+0))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -0x1.fffffep+127))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const -inf))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-149) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const -inf))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-149) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p-149) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p-149) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p-149) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p-149) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p-149) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -0x0p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const 0x0p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -0x1p-149))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const 0x1p-149))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -0x1p-1))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -0x1p-1))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -0x1p+0))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -0x1p+0))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -0x1.fffffep+127))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const -inf))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-126) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const -inf))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-126) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p-126) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p-126) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p-126) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p-126) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p-126) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -0x0p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const 0x0p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -0x1p-149))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const 0x1p-149))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -0x1p-126))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const 0x1p-126))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -0x1p+0))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -0x1p+0))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -0x1.fffffep+127))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const -inf))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p-1) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const -inf))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p-1) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p-1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p-1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p-1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p-1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p-1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -0x0p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const 0x0p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const 0x1p-149))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const 0x1p-126))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -0x1p-1))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const 0x1p-1))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -0x1.fffffep+127))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const -inf))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const -inf))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1p+0) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1p+0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p+0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p+0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1p+0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1p+0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -0x0p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const 0x0p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-149))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-149))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-126))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-126))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -0x1p-1))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const 0x1p-1))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -0x1p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const 0x1p+0))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -inf))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -inf))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1.921fb6p+2) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -0x0p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const 0x0p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -0x1p-149))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const 0x1p-149))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -0x1p-126))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const 0x1p-126))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -0x1p-1))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const 0x1p-1))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const 0x1p+0))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -0x1.921fb6p+2))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -inf))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -inf))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0x1.fffffep+127) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0x0p+0))
  (f32.const -0x0p+0)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 0x0p+0))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0x1p-149))
  (f32.const -0x1p-149)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 0x1p-149))
  (f32.const 0x1p-149)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 0x1p-149))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0x1p-126))
  (f32.const -0x1p-126)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 0x1p-126))
  (f32.const 0x1p-126)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 0x1p-126))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0x1p-1))
  (f32.const -0x1p-1)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 0x1p-1))
  (f32.const 0x1p-1)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 0x1p-1))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0x1p+0))
  (f32.const -0x1p+0)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 0x1p+0))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.921fb6p+2)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 0x1.921fb6p+2))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 0x1.fffffep+127))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "max" (f32.const -inf) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0x0p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0x0p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0x1p-149))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0x1p-149))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0x1p-149))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0x1p-126))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0x1p-126))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0x1p-126))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0x1p-1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0x1p-1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0x1p+0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0x1p+0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0x1.921fb6p+2))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0x1.921fb6p+2))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0x1.fffffep+127))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0x1.fffffep+127))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "sqrt" (f32.const -0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "sqrt" (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0x1p-149)))
(assert_return (invoke "sqrt" (f32.const 0x1p-149)) (f32.const 0x1.6a09e6p-75))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0x1p-126)))
(assert_return (invoke "sqrt" (f32.const 0x1p-126)) (f32.const 0x1p-63))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0x1p-1)))
(assert_return (invoke "sqrt" (f32.const 0x1p-1)) (f32.const 0x1.6a09e6p-1))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0x1p+0)))
(assert_return (invoke "sqrt" (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0x1.921fb6p+2)))
(assert_return
  (invoke "sqrt" (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.40d932p+1)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0x1.fffffep+127)))
(assert_return
  (invoke "sqrt" (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+63)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -inf)))
(assert_return (invoke "sqrt" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "sqrt" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const nan:0x200000)))
(assert_return (invoke "floor" (f32.const -0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "floor" (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "floor" (f32.const -0x1p-149)) (f32.const -0x1p+0))
(assert_return (invoke "floor" (f32.const 0x1p-149)) (f32.const 0x0p+0))
(assert_return (invoke "floor" (f32.const -0x1p-126)) (f32.const -0x1p+0))
(assert_return (invoke "floor" (f32.const 0x1p-126)) (f32.const 0x0p+0))
(assert_return (invoke "floor" (f32.const -0x1p-1)) (f32.const -0x1p+0))
(assert_return (invoke "floor" (f32.const 0x1p-1)) (f32.const 0x0p+0))
(assert_return (invoke "floor" (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return (invoke "floor" (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return
  (invoke "floor" (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.cp+2)
)
(assert_return (invoke "floor" (f32.const 0x1.921fb6p+2)) (f32.const 0x1.8p+2))
(assert_return
  (invoke "floor" (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "floor" (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return (invoke "floor" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "floor" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "floor" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "floor" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const nan:0x200000)))
(assert_return (invoke "ceil" (f32.const -0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "ceil" (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "ceil" (f32.const -0x1p-149)) (f32.const -0x0p+0))
(assert_return (invoke "ceil" (f32.const 0x1p-149)) (f32.const 0x1p+0))
(assert_return (invoke "ceil" (f32.const -0x1p-126)) (f32.const -0x0p+0))
(assert_return (invoke "ceil" (f32.const 0x1p-126)) (f32.const 0x1p+0))
(assert_return (invoke "ceil" (f32.const -0x1p-1)) (f32.const -0x0p+0))
(assert_return (invoke "ceil" (f32.const 0x1p-1)) (f32.const 0x1p+0))
(assert_return (invoke "ceil" (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return (invoke "ceil" (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return (invoke "ceil" (f32.const -0x1.921fb6p+2)) (f32.const -0x1.8p+2))
(assert_return (invoke "ceil" (f32.const 0x1.921fb6p+2)) (f32.const 0x1.cp+2))
(assert_return
  (invoke "ceil" (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "ceil" (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return (invoke "ceil" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "ceil" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "ceil" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "ceil" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const nan:0x200000)))
(assert_return (invoke "trunc" (f32.const -0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "trunc" (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "trunc" (f32.const -0x1p-149)) (f32.const -0x0p+0))
(assert_return (invoke "trunc" (f32.const 0x1p-149)) (f32.const 0x0p+0))
(assert_return (invoke "trunc" (f32.const -0x1p-126)) (f32.const -0x0p+0))
(assert_return (invoke "trunc" (f32.const 0x1p-126)) (f32.const 0x0p+0))
(assert_return (invoke "trunc" (f32.const -0x1p-1)) (f32.const -0x0p+0))
(assert_return (invoke "trunc" (f32.const 0x1p-1)) (f32.const 0x0p+0))
(assert_return (invoke "trunc" (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return (invoke "trunc" (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return
  (invoke "trunc" (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.8p+2)
)
(assert_return (invoke "trunc" (f32.const 0x1.921fb6p+2)) (f32.const 0x1.8p+2))
(assert_return
  (invoke "trunc" (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "trunc" (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return (invoke "trunc" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "trunc" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "trunc" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "trunc" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const nan:0x200000)))
(assert_return (invoke "nearest" (f32.const -0x0p+0)) (f32.const -0x0p+0))
(assert_return (invoke "nearest" (f32.const 0x0p+0)) (f32.const 0x0p+0))
(assert_return (invoke "nearest" (f32.const -0x1p-149)) (f32.const -0x0p+0))
(assert_return (invoke "nearest" (f32.const 0x1p-149)) (f32.const 0x0p+0))
(assert_return (invoke "nearest" (f32.const -0x1p-126)) (f32.const -0x0p+0))
(assert_return (invoke "nearest" (f32.const 0x1p-126)) (f32.const 0x0p+0))
(assert_return (invoke "nearest" (f32.const -0x1p-1)) (f32.const -0x0p+0))
(assert_return (invoke "nearest" (f32.const 0x1p-1)) (f32.const 0x0p+0))
(assert_return (invoke "nearest" (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return (invoke "nearest" (f32.const 0x1p+0)) (f32.const 0x1p+0))
(assert_return
  (invoke "nearest" (f32.const -0x1.921fb6p+2))
  (f32.const -0x1.8p+2)
)
(assert_return
  (invoke "nearest" (f32.const 0x1.921fb6p+2))
  (f32.const 0x1.8p+2)
)
(assert_return
  (invoke "nearest" (f32.const -0x1.fffffep+127))
  (f32.const -0x1.fffffep+127)
)
(assert_return
  (invoke "nearest" (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return (invoke "nearest" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "nearest" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "nearest" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "nearest" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const nan:0x200000)))
