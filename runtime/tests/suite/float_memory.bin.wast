(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7d\60\00\01\7f\60\00\00\03\86\80\80\80\00"
  "\05\00\01\02\02\02\05\84\80\80\80\00\01\01\01\01"
  "\07\b7\80\80\80\00\05\08\66\33\32\2e\6c\6f\61\64"
  "\00\00\08\69\33\32\2e\6c\6f\61\64\00\01\09\66\33"
  "\32\2e\73\74\6f\72\65\00\02\09\69\33\32\2e\73\74"
  "\6f\72\65\00\03\05\72\65\73\65\74\00\04\0a\ca\80"
  "\80\80\00\05\87\80\80\80\00\00\41\00\2a\02\00\0b"
  "\87\80\80\80\00\00\41\00\28\02\00\0b\8c\80\80\80"
  "\00\00\41\00\43\00\00\a0\7f\38\02\00\0b\8d\80\80"
  "\80\00\00\41\00\41\80\80\80\fd\07\36\02\00\0b\89"
  "\80\80\80\00\00\41\00\41\00\36\02\00\0b\0b\8a\80"
  "\80\80\00\01\00\41\00\0b\04\00\00\a0\7f"
)
(assert_return (invoke "i32.load") (i32.const 2141192192))
(assert_return (invoke "f32.load") (f32.const nan:0x200000))
(invoke "reset")
(assert_return (invoke "i32.load") (i32.const 0))
(assert_return (invoke "f32.load") (f32.const 0x0p+0))
(invoke "f32.store")
(assert_return (invoke "i32.load") (i32.const 2141192192))
(assert_return (invoke "f32.load") (f32.const nan:0x200000))
(invoke "reset")
(assert_return (invoke "i32.load") (i32.const 0))
(assert_return (invoke "f32.load") (f32.const 0x0p+0))
(invoke "i32.store")
(assert_return (invoke "i32.load") (i32.const 2141192192))
(assert_return (invoke "f32.load") (f32.const nan:0x200000))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7c\60\00\01\7e\60\00\00\03\86\80\80\80\00"
  "\05\00\01\02\02\02\05\84\80\80\80\00\01\01\01\01"
  "\07\b7\80\80\80\00\05\08\66\36\34\2e\6c\6f\61\64"
  "\00\00\08\69\36\34\2e\6c\6f\61\64\00\01\09\66\36"
  "\34\2e\73\74\6f\72\65\00\02\09\69\36\34\2e\73\74"
  "\6f\72\65\00\03\05\72\65\73\65\74\00\04\0a\d3\80"
  "\80\80\00\05\87\80\80\80\00\00\41\00\2b\03\00\0b"
  "\87\80\80\80\00\00\41\00\29\03\00\0b\90\80\80\80"
  "\00\00\41\00\44\00\00\00\00\00\00\f4\7f\39\03\00"
  "\0b\92\80\80\80\00\00\41\00\42\80\80\80\80\80\80"
  "\80\fa\ff\00\37\03\00\0b\89\80\80\80\00\00\41\00"
  "\42\00\37\03\00\0b\0b\8e\80\80\80\00\01\00\41\00"
  "\0b\08\00\00\00\00\00\00\f4\7f"
)
(assert_return (invoke "i64.load") (i64.const 9219994337134247936))
(assert_return (invoke "f64.load") (f64.const nan:0x4000000000000))
(invoke "reset")
(assert_return (invoke "i64.load") (i64.const 0))
(assert_return (invoke "f64.load") (f64.const 0x0p+0))
(invoke "f64.store")
(assert_return (invoke "i64.load") (i64.const 9219994337134247936))
(assert_return (invoke "f64.load") (f64.const nan:0x4000000000000))
(invoke "reset")
(assert_return (invoke "i64.load") (i64.const 0))
(assert_return (invoke "f64.load") (f64.const 0x0p+0))
(invoke "i64.store")
(assert_return (invoke "i64.load") (i64.const 9219994337134247936))
(assert_return (invoke "f64.load") (f64.const nan:0x4000000000000))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7d\60\00\01\7f\60\00\00\03\86\80\80\80\00"
  "\05\00\01\02\02\02\05\84\80\80\80\00\01\01\01\01"
  "\07\b7\80\80\80\00\05\08\66\33\32\2e\6c\6f\61\64"
  "\00\00\08\69\33\32\2e\6c\6f\61\64\00\01\09\66\33"
  "\32\2e\73\74\6f\72\65\00\02\09\69\33\32\2e\73\74"
  "\6f\72\65\00\03\05\72\65\73\65\74\00\04\0a\ca\80"
  "\80\80\00\05\87\80\80\80\00\00\41\01\2a\02\00\0b"
  "\87\80\80\80\00\00\41\01\28\02\00\0b\8c\80\80\80"
  "\00\00\41\01\43\00\00\a0\7f\38\02\00\0b\8d\80\80"
  "\80\00\00\41\01\41\80\80\80\fd\07\36\02\00\0b\89"
  "\80\80\80\00\00\41\01\41\00\36\02\00\0b\0b\8b\80"
  "\80\80\00\01\00\41\00\0b\05\00\00\00\a0\7f"
)
(assert_return (invoke "i32.load") (i32.const 2141192192))
(assert_return (invoke "f32.load") (f32.const nan:0x200000))
(invoke "reset")
(assert_return (invoke "i32.load") (i32.const 0))
(assert_return (invoke "f32.load") (f32.const 0x0p+0))
(invoke "f32.store")
(assert_return (invoke "i32.load") (i32.const 2141192192))
(assert_return (invoke "f32.load") (f32.const nan:0x200000))
(invoke "reset")
(assert_return (invoke "i32.load") (i32.const 0))
(assert_return (invoke "f32.load") (f32.const 0x0p+0))
(invoke "i32.store")
(assert_return (invoke "i32.load") (i32.const 2141192192))
(assert_return (invoke "f32.load") (f32.const nan:0x200000))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7c\60\00\01\7e\60\00\00\03\86\80\80\80\00"
  "\05\00\01\02\02\02\05\84\80\80\80\00\01\01\01\01"
  "\07\b7\80\80\80\00\05\08\66\36\34\2e\6c\6f\61\64"
  "\00\00\08\69\36\34\2e\6c\6f\61\64\00\01\09\66\36"
  "\34\2e\73\74\6f\72\65\00\02\09\69\36\34\2e\73\74"
  "\6f\72\65\00\03\05\72\65\73\65\74\00\04\0a\d3\80"
  "\80\80\00\05\87\80\80\80\00\00\41\01\2b\03\00\0b"
  "\87\80\80\80\00\00\41\01\29\03\00\0b\90\80\80\80"
  "\00\00\41\01\44\00\00\00\00\00\00\f4\7f\39\03\00"
  "\0b\92\80\80\80\00\00\41\01\42\80\80\80\80\80\80"
  "\80\fa\ff\00\37\03\00\0b\89\80\80\80\00\00\41\01"
  "\42\00\37\03\00\0b\0b\8f\80\80\80\00\01\00\41\00"
  "\0b\09\00\00\00\00\00\00\00\f4\7f"
)
(assert_return (invoke "i64.load") (i64.const 9219994337134247936))
(assert_return (invoke "f64.load") (f64.const nan:0x4000000000000))
(invoke "reset")
(assert_return (invoke "i64.load") (i64.const 0))
(assert_return (invoke "f64.load") (f64.const 0x0p+0))
(invoke "f64.store")
(assert_return (invoke "i64.load") (i64.const 9219994337134247936))
(assert_return (invoke "f64.load") (f64.const nan:0x4000000000000))
(invoke "reset")
(assert_return (invoke "i64.load") (i64.const 0))
(assert_return (invoke "f64.load") (f64.const 0x0p+0))
(invoke "i64.store")
(assert_return (invoke "i64.load") (i64.const 9219994337134247936))
(assert_return (invoke "f64.load") (f64.const nan:0x4000000000000))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7d\60\00\01\7f\60\00\00\03\86\80\80\80\00"
  "\05\00\01\02\02\02\05\84\80\80\80\00\01\01\01\01"
  "\07\b7\80\80\80\00\05\08\66\33\32\2e\6c\6f\61\64"
  "\00\00\08\69\33\32\2e\6c\6f\61\64\00\01\09\66\33"
  "\32\2e\73\74\6f\72\65\00\02\09\69\33\32\2e\73\74"
  "\6f\72\65\00\03\05\72\65\73\65\74\00\04\0a\ca\80"
  "\80\80\00\05\87\80\80\80\00\00\41\00\2a\02\00\0b"
  "\87\80\80\80\00\00\41\00\28\02\00\0b\8c\80\80\80"
  "\00\00\41\00\43\01\00\d0\7f\38\02\00\0b\8d\80\80"
  "\80\00\00\41\00\41\81\80\c0\fe\07\36\02\00\0b\89"
  "\80\80\80\00\00\41\00\41\00\36\02\00\0b\0b\8a\80"
  "\80\80\00\01\00\41\00\0b\04\01\00\d0\7f"
)
(assert_return (invoke "i32.load") (i32.const 2144337921))
(assert_return (invoke "f32.load") (f32.const nan:0x500001))
(invoke "reset")
(assert_return (invoke "i32.load") (i32.const 0))
(assert_return (invoke "f32.load") (f32.const 0x0p+0))
(invoke "f32.store")
(assert_return (invoke "i32.load") (i32.const 2144337921))
(assert_return (invoke "f32.load") (f32.const nan:0x500001))
(invoke "reset")
(assert_return (invoke "i32.load") (i32.const 0))
(assert_return (invoke "f32.load") (f32.const 0x0p+0))
(invoke "i32.store")
(assert_return (invoke "i32.load") (i32.const 2144337921))
(assert_return (invoke "f32.load") (f32.const nan:0x500001))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7c\60\00\01\7e\60\00\00\03\86\80\80\80\00"
  "\05\00\01\02\02\02\05\84\80\80\80\00\01\01\01\01"
  "\07\b7\80\80\80\00\05\08\66\36\34\2e\6c\6f\61\64"
  "\00\00\08\69\36\34\2e\6c\6f\61\64\00\01\09\66\36"
  "\34\2e\73\74\6f\72\65\00\02\09\69\36\34\2e\73\74"
  "\6f\72\65\00\03\05\72\65\73\65\74\00\04\0a\d3\80"
  "\80\80\00\05\87\80\80\80\00\00\41\00\2b\03\00\0b"
  "\87\80\80\80\00\00\41\00\29\03\00\0b\90\80\80\80"
  "\00\00\41\00\44\01\00\00\00\00\00\fc\7f\39\03\00"
  "\0b\92\80\80\80\00\00\41\00\42\81\80\80\80\80\80"
  "\80\fe\ff\00\37\03\00\0b\89\80\80\80\00\00\41\00"
  "\42\00\37\03\00\0b\0b\8e\80\80\80\00\01\00\41\00"
  "\0b\08\01\00\00\00\00\00\fc\7f"
)
(assert_return (invoke "i64.load") (i64.const 9222246136947933185))
(assert_return (invoke "f64.load") (f64.const nan:0xc000000000001))
(invoke "reset")
(assert_return (invoke "i64.load") (i64.const 0))
(assert_return (invoke "f64.load") (f64.const 0x0p+0))
(invoke "f64.store")
(assert_return (invoke "i64.load") (i64.const 9222246136947933185))
(assert_return (invoke "f64.load") (f64.const nan:0xc000000000001))
(invoke "reset")
(assert_return (invoke "i64.load") (i64.const 0))
(assert_return (invoke "f64.load") (f64.const 0x0p+0))
(invoke "i64.store")
(assert_return (invoke "i64.load") (i64.const 9222246136947933185))
(assert_return (invoke "f64.load") (f64.const nan:0xc000000000001))
