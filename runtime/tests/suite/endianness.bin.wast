(module binary
  "\00\61\73\6d\01\00\00\00\01\a4\80\80\80\00\07\60"
  "\02\7f\7f\00\60\02\7f\7e\00\60\01\7f\01\7f\60\01"
  "\7f\01\7e\60\01\7e\01\7e\60\01\7d\01\7d\60\01\7c"
  "\01\7c\03\98\80\80\80\00\17\00\00\01\02\02\03\02"
  "\02\02\04\04\04\04\04\05\06\02\02\04\04\04\05\06"
  "\05\83\80\80\80\00\01\00\01\07\e1\81\80\80\00\11"
  "\0c\69\33\32\5f\6c\6f\61\64\31\36\5f\73\00\06\0c"
  "\69\33\32\5f\6c\6f\61\64\31\36\5f\75\00\07\08\69"
  "\33\32\5f\6c\6f\61\64\00\08\0c\69\36\34\5f\6c\6f"
  "\61\64\31\36\5f\73\00\09\0c\69\36\34\5f\6c\6f\61"
  "\64\31\36\5f\75\00\0a\0c\69\36\34\5f\6c\6f\61\64"
  "\33\32\5f\73\00\0b\0c\69\36\34\5f\6c\6f\61\64\33"
  "\32\5f\75\00\0c\08\69\36\34\5f\6c\6f\61\64\00\0d"
  "\08\66\33\32\5f\6c\6f\61\64\00\0e\08\66\36\34\5f"
  "\6c\6f\61\64\00\0f\0b\69\33\32\5f\73\74\6f\72\65"
  "\31\36\00\10\09\69\33\32\5f\73\74\6f\72\65\00\11"
  "\0b\69\36\34\5f\73\74\6f\72\65\31\36\00\12\0b\69"
  "\36\34\5f\73\74\6f\72\65\33\32\00\13\09\69\36\34"
  "\5f\73\74\6f\72\65\00\14\09\66\33\32\5f\73\74\6f"
  "\72\65\00\15\09\66\36\34\5f\73\74\6f\72\65\00\16"
  "\0a\d2\83\80\80\00\17\96\80\80\80\00\00\20\00\20"
  "\01\3a\00\00\20\00\41\01\6a\20\01\41\08\76\3a\00"
  "\00\0b\94\80\80\80\00\00\20\00\20\01\10\00\20\00"
  "\41\02\6a\20\01\41\10\76\10\00\0b\96\80\80\80\00"
  "\00\20\00\20\01\a7\10\01\20\00\41\04\6a\20\01\42"
  "\20\88\a7\10\01\0b\93\80\80\80\00\00\20\00\2d\00"
  "\00\20\00\41\01\6a\2d\00\00\41\08\74\72\0b\91\80"
  "\80\80\00\00\20\00\10\03\20\00\41\02\6a\10\03\41"
  "\10\74\72\0b\93\80\80\80\00\00\20\00\10\04\ad\20"
  "\00\41\04\6a\10\04\ad\42\20\86\84\0b\8d\80\80\80"
  "\00\00\41\00\20\00\10\00\41\00\2e\01\00\0b\8d\80"
  "\80\80\00\00\41\00\20\00\10\00\41\00\2f\01\00\0b"
  "\8d\80\80\80\00\00\41\00\20\00\10\01\41\00\28\02"
  "\00\0b\8e\80\80\80\00\00\41\00\20\00\a7\10\00\41"
  "\00\32\01\00\0b\8e\80\80\80\00\00\41\00\20\00\a7"
  "\10\00\41\00\33\01\00\0b\8e\80\80\80\00\00\41\00"
  "\20\00\a7\10\01\41\00\34\02\00\0b\8e\80\80\80\00"
  "\00\41\00\20\00\a7\10\01\41\00\35\02\00\0b\8d\80"
  "\80\80\00\00\41\00\20\00\10\02\41\00\29\03\00\0b"
  "\8e\80\80\80\00\00\41\00\20\00\bc\10\01\41\00\2a"
  "\02\00\0b\8e\80\80\80\00\00\41\00\20\00\bd\10\02"
  "\41\00\2b\03\00\0b\8d\80\80\80\00\00\41\00\20\00"
  "\3b\01\00\41\00\10\03\0b\8d\80\80\80\00\00\41\00"
  "\20\00\36\02\00\41\00\10\04\0b\8e\80\80\80\00\00"
  "\41\00\20\00\3d\01\00\41\00\10\03\ad\0b\8e\80\80"
  "\80\00\00\41\00\20\00\3e\02\00\41\00\10\04\ad\0b"
  "\8d\80\80\80\00\00\41\00\20\00\37\03\00\41\00\10"
  "\05\0b\8e\80\80\80\00\00\41\00\20\00\38\02\00\41"
  "\00\10\04\be\0b\8e\80\80\80\00\00\41\00\20\00\39"
  "\03\00\41\00\10\05\bf\0b"
)
(assert_return (invoke "i32_load16_s" (i32.const -1)) (i32.const -1))
(assert_return (invoke "i32_load16_s" (i32.const -4242)) (i32.const -4242))
(assert_return (invoke "i32_load16_s" (i32.const 42)) (i32.const 42))
(assert_return (invoke "i32_load16_s" (i32.const 12816)) (i32.const 12816))
(assert_return (invoke "i32_load16_u" (i32.const -1)) (i32.const 65535))
(assert_return (invoke "i32_load16_u" (i32.const -4242)) (i32.const 61294))
(assert_return (invoke "i32_load16_u" (i32.const 42)) (i32.const 42))
(assert_return (invoke "i32_load16_u" (i32.const 51966)) (i32.const 51966))
(assert_return (invoke "i32_load" (i32.const -1)) (i32.const -1))
(assert_return (invoke "i32_load" (i32.const -42424242)) (i32.const -42424242))
(assert_return (invoke "i32_load" (i32.const 42424242)) (i32.const 42424242))
(assert_return
  (invoke "i32_load" (i32.const -1414717974))
  (i32.const -1414717974)
)
(assert_return (invoke "i64_load16_s" (i64.const -1)) (i64.const -1))
(assert_return (invoke "i64_load16_s" (i64.const -4242)) (i64.const -4242))
(assert_return (invoke "i64_load16_s" (i64.const 42)) (i64.const 42))
(assert_return (invoke "i64_load16_s" (i64.const 12816)) (i64.const 12816))
(assert_return (invoke "i64_load16_u" (i64.const -1)) (i64.const 65535))
(assert_return (invoke "i64_load16_u" (i64.const -4242)) (i64.const 61294))
(assert_return (invoke "i64_load16_u" (i64.const 42)) (i64.const 42))
(assert_return (invoke "i64_load16_u" (i64.const 51966)) (i64.const 51966))
(assert_return (invoke "i64_load32_s" (i64.const -1)) (i64.const -1))
(assert_return
  (invoke "i64_load32_s" (i64.const -42424242))
  (i64.const -42424242)
)
(assert_return
  (invoke "i64_load32_s" (i64.const 42424242))
  (i64.const 42424242)
)
(assert_return
  (invoke "i64_load32_s" (i64.const 305419896))
  (i64.const 305419896)
)
(assert_return (invoke "i64_load32_u" (i64.const -1)) (i64.const 4294967295))
(assert_return
  (invoke "i64_load32_u" (i64.const -42424242))
  (i64.const 4252543054)
)
(assert_return
  (invoke "i64_load32_u" (i64.const 42424242))
  (i64.const 42424242)
)
(assert_return
  (invoke "i64_load32_u" (i64.const 2880249322))
  (i64.const 2880249322)
)
(assert_return (invoke "i64_load" (i64.const -1)) (i64.const -1))
(assert_return (invoke "i64_load" (i64.const -42424242)) (i64.const -42424242))
(assert_return
  (invoke "i64_load" (i64.const 2880249322))
  (i64.const 2880249322)
)
(assert_return
  (invoke "i64_load" (i64.const -6075977126246539798))
  (i64.const -6075977126246539798)
)
(assert_return (invoke "f32_load" (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return
  (invoke "f32_load" (f32.const 0x1.945b6cp-7))
  (f32.const 0x1.945b6cp-7)
)
(assert_return
  (invoke "f32_load" (f32.const 0x1.0926cap+12))
  (f32.const 0x1.0926cap+12)
)
(assert_return
  (invoke "f32_load" (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return (invoke "f64_load" (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return
  (invoke "f64_load" (f64.const 0x1.34a4584f4c6e7p+10))
  (f64.const 0x1.34a4584f4c6e7p+10)
)
(assert_return
  (invoke "f64_load" (f64.const 0x1.9e4c9b26c7eaep+18))
  (f64.const 0x1.9e4c9b26c7eaep+18)
)
(assert_return
  (invoke "f64_load" (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
(assert_return (invoke "i32_store16" (i32.const -1)) (i32.const 65535))
(assert_return (invoke "i32_store16" (i32.const -4242)) (i32.const 61294))
(assert_return (invoke "i32_store16" (i32.const 42)) (i32.const 42))
(assert_return (invoke "i32_store16" (i32.const 51966)) (i32.const 51966))
(assert_return (invoke "i32_store" (i32.const -1)) (i32.const -1))
(assert_return (invoke "i32_store" (i32.const -4242)) (i32.const -4242))
(assert_return (invoke "i32_store" (i32.const 42424242)) (i32.const 42424242))
(assert_return
  (invoke "i32_store" (i32.const -559035650))
  (i32.const -559035650)
)
(assert_return (invoke "i64_store16" (i64.const -1)) (i64.const 65535))
(assert_return (invoke "i64_store16" (i64.const -4242)) (i64.const 61294))
(assert_return (invoke "i64_store16" (i64.const 42)) (i64.const 42))
(assert_return (invoke "i64_store16" (i64.const 51966)) (i64.const 51966))
(assert_return (invoke "i64_store32" (i64.const -1)) (i64.const 4294967295))
(assert_return (invoke "i64_store32" (i64.const -4242)) (i64.const 4294963054))
(assert_return (invoke "i64_store32" (i64.const 42424242)) (i64.const 42424242))
(assert_return
  (invoke "i64_store32" (i64.const 3735931646))
  (i64.const 3735931646)
)
(assert_return (invoke "i64_store" (i64.const -1)) (i64.const -1))
(assert_return (invoke "i64_store" (i64.const -42424242)) (i64.const -42424242))
(assert_return
  (invoke "i64_store" (i64.const 2880249322))
  (i64.const 2880249322)
)
(assert_return
  (invoke "i64_store" (i64.const -6075977126246539798))
  (i64.const -6075977126246539798)
)
(assert_return (invoke "f32_store" (f32.const -0x1p+0)) (f32.const -0x1p+0))
(assert_return
  (invoke "f32_store" (f32.const 0x1.945b6cp-7))
  (f32.const 0x1.945b6cp-7)
)
(assert_return
  (invoke "f32_store" (f32.const 0x1.0926cap+12))
  (f32.const 0x1.0926cap+12)
)
(assert_return
  (invoke "f32_store" (f32.const 0x1.fffffep+127))
  (f32.const 0x1.fffffep+127)
)
(assert_return (invoke "f64_store" (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return
  (invoke "f64_store" (f64.const 0x1.34a4584f4c6e7p+10))
  (f64.const 0x1.34a4584f4c6e7p+10)
)
(assert_return
  (invoke "f64_store" (f64.const 0x1.9e4c9b26c7eaep+18))
  (f64.const 0x1.9e4c9b26c7eaep+18)
)
(assert_return
  (invoke "f64_store" (f64.const 0x1.fffffffffffffp+1023))
  (f64.const 0x1.fffffffffffffp+1023)
)
