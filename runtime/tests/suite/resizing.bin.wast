(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\60"
  "\00\01\7f\60\00\00\60\01\7f\01\7f\03\87\80\80\80"
  "\00\06\00\01\00\01\02\00\05\83\80\80\80\00\01\00"
  "\00\07\d7\80\80\80\00\06\0c\6c\6f\61\64\5f\61\74"
  "\5f\7a\65\72\6f\00\00\0d\73\74\6f\72\65\5f\61\74"
  "\5f\7a\65\72\6f\00\01\11\6c\6f\61\64\5f\61\74\5f"
  "\70\61\67\65\5f\73\69\7a\65\00\02\12\73\74\6f\72"
  "\65\5f\61\74\5f\70\61\67\65\5f\73\69\7a\65\00\03"
  "\04\67\72\6f\77\00\04\04\73\69\7a\65\00\05\0a\cd"
  "\80\80\80\00\06\87\80\80\80\00\00\41\00\28\02\00"
  "\0b\89\80\80\80\00\00\41\00\41\02\36\02\00\0b\89"
  "\80\80\80\00\00\41\80\80\04\28\02\00\0b\8b\80\80"
  "\80\00\00\41\80\80\04\41\03\36\02\00\0b\86\80\80"
  "\80\00\00\20\00\40\00\0b\84\80\80\80\00\00\3f\00"
  "\0b"
)
(assert_return (invoke "size") (i32.const 0))
(assert_trap (invoke "store_at_zero") "out of bounds memory access")
(assert_trap (invoke "load_at_zero") "out of bounds memory access")
(assert_trap (invoke "store_at_page_size") "out of bounds memory access")
(assert_trap (invoke "load_at_page_size") "out of bounds memory access")
(assert_return (invoke "grow" (i32.const 1)) (i32.const 0))
(assert_return (invoke "size") (i32.const 1))
(assert_return (invoke "load_at_zero") (i32.const 0))
(assert_return (invoke "store_at_zero"))
(assert_return (invoke "load_at_zero") (i32.const 2))
(assert_trap (invoke "store_at_page_size") "out of bounds memory access")
(assert_trap (invoke "load_at_page_size") "out of bounds memory access")
(assert_return (invoke "grow" (i32.const 4)) (i32.const 1))
(assert_return (invoke "size") (i32.const 5))
(assert_return (invoke "load_at_zero") (i32.const 2))
(assert_return (invoke "store_at_zero"))
(assert_return (invoke "load_at_zero") (i32.const 2))
(assert_return (invoke "load_at_page_size") (i32.const 0))
(assert_return (invoke "store_at_page_size"))
(assert_return (invoke "load_at_page_size") (i32.const 3))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\00\07\88\80\80\80\00\01\04\67\72\6f"
  "\77\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00\00"
  "\20\00\40\00\0b"
)
(assert_return (invoke "grow" (i32.const 0)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 0)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 2)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 800)) (i32.const 3))
(assert_return (invoke "grow" (i32.const 65536)) (i32.const -1))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\84\80\80"
  "\80\00\01\01\00\0a\07\88\80\80\80\00\01\04\67\72"
  "\6f\77\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00"
  "\00\20\00\40\00\0b"
)
(assert_return (invoke "grow" (i32.const 0)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 2)) (i32.const 2))
(assert_return (invoke "grow" (i32.const 6)) (i32.const 4))
(assert_return (invoke "grow" (i32.const 0)) (i32.const 10))
(assert_return (invoke "grow" (i32.const 1)) (i32.const -1))
(assert_return (invoke "grow" (i32.const 65536)) (i32.const -1))
