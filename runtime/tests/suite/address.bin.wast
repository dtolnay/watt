(module binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\01\7f\01\7f\60\01\7f\00\03\8f\80\80\80\00\0e\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\01\05\83\80"
  "\80\80\00\01\00\01\07\f3\80\80\80\00\0e\05\67\6f"
  "\6f\64\31\00\00\05\67\6f\6f\64\32\00\01\05\67\6f"
  "\6f\64\33\00\02\05\67\6f\6f\64\34\00\03\05\67\6f"
  "\6f\64\35\00\04\05\67\6f\6f\64\36\00\05\05\67\6f"
  "\6f\64\37\00\06\05\67\6f\6f\64\38\00\07\05\67\6f"
  "\6f\64\39\00\08\06\67\6f\6f\64\31\30\00\09\06\67"
  "\6f\6f\64\31\31\00\0a\06\67\6f\6f\64\31\32\00\0b"
  "\06\67\6f\6f\64\31\33\00\0c\03\62\61\64\00\0d\0a"
  "\ae\81\80\80\00\0e\87\80\80\80\00\00\20\00\2d\00"
  "\00\0b\87\80\80\80\00\00\20\00\2d\00\01\0b\87\80"
  "\80\80\00\00\20\00\2d\00\02\0b\87\80\80\80\00\00"
  "\20\00\2d\00\19\0b\87\80\80\80\00\00\20\00\2f\01"
  "\00\0b\87\80\80\80\00\00\20\00\2f\00\00\0b\87\80"
  "\80\80\00\00\20\00\2f\00\01\0b\87\80\80\80\00\00"
  "\20\00\2f\01\02\0b\87\80\80\80\00\00\20\00\2f\00"
  "\19\0b\87\80\80\80\00\00\20\00\28\02\00\0b\87\80"
  "\80\80\00\00\20\00\28\00\01\0b\87\80\80\80\00\00"
  "\20\00\28\01\02\0b\87\80\80\80\00\00\20\00\28\00"
  "\19\0b\8c\80\80\80\00\00\20\00\28\02\ff\ff\ff\ff"
  "\0f\1a\0b\0b\a0\80\80\80\00\01\00\41\00\0b\1a\61"
  "\62\63\64\65\66\67\68\69\6a\6b\6c\6d\6e\6f\70\71"
  "\72\73\74\75\76\77\78\79\7a"
)
(assert_return (invoke "good1" (i32.const 0)) (i32.const 97))
(assert_return (invoke "good2" (i32.const 0)) (i32.const 98))
(assert_return (invoke "good3" (i32.const 0)) (i32.const 99))
(assert_return (invoke "good4" (i32.const 0)) (i32.const 122))
(assert_return (invoke "good5" (i32.const 0)) (i32.const 25185))
(assert_return (invoke "good6" (i32.const 0)) (i32.const 25185))
(assert_return (invoke "good7" (i32.const 0)) (i32.const 25442))
(assert_return (invoke "good8" (i32.const 0)) (i32.const 25699))
(assert_return (invoke "good9" (i32.const 0)) (i32.const 122))
(assert_return (invoke "good10" (i32.const 0)) (i32.const 1684234849))
(assert_return (invoke "good11" (i32.const 0)) (i32.const 1701077858))
(assert_return (invoke "good12" (i32.const 0)) (i32.const 1717920867))
(assert_return (invoke "good13" (i32.const 0)) (i32.const 122))
(assert_return (invoke "good1" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good2" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good3" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good4" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good5" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good6" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good7" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good8" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good9" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good10" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good11" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good12" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good13" (i32.const 65507)) (i32.const 0))
(assert_return (invoke "good1" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good2" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good3" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good4" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good5" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good6" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good7" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good8" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good9" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good10" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good11" (i32.const 65508)) (i32.const 0))
(assert_return (invoke "good12" (i32.const 65508)) (i32.const 0))
(assert_trap (invoke "good13" (i32.const 65508)) "out of bounds memory access")
(assert_trap (invoke "bad" (i32.const 0)) "out of bounds memory access")
(assert_trap (invoke "bad" (i32.const 1)) "out of bounds memory access")
(assert_malformed
  (module quote
    "(memory 1)(func (drop (i32.load offset=4294967296 (i32.const 0))))"
  )
  "i32 constant"
)
