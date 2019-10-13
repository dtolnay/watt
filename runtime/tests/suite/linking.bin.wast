(module $Mf binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\83\80\80\80\00\02\00\00\07\88\80\80"
  "\80\00\01\04\63\61\6c\6c\00\00\0a\93\80\80\80\00"
  "\02\84\80\80\80\00\00\10\01\0b\84\80\80\80\00\00"
  "\41\02\0b"
)
(register "Mf" $Mf)
(module $Nf binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\02\8b\80\80\80\00\01\02\4d\66\04\63\61"
  "\6c\6c\00\00\03\84\80\80\80\00\03\00\00\00\07\a1"
  "\80\80\80\00\03\07\4d\66\2e\63\61\6c\6c\00\00\0c"
  "\63\61\6c\6c\20\4d\66\2e\63\61\6c\6c\00\01\04\63"
  "\61\6c\6c\00\02\0a\9c\80\80\80\00\03\84\80\80\80"
  "\00\00\10\00\0b\84\80\80\80\00\00\10\03\0b\84\80"
  "\80\80\00\00\41\03\0b"
)
(assert_return (invoke $Mf "call") (i32.const 2))
(assert_return (invoke $Nf "Mf.call") (i32.const 2))
(assert_return (invoke $Nf "call") (i32.const 3))
(assert_return (invoke $Nf "call Mf.call") (i32.const 2))
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\02\96\80\80\80\00\01\08\73\70\65\63\74"
  "\65\73\74\09\70\72\69\6e\74\5f\69\33\32\00\00\07"
  "\89\80\80\80\00\01\05\70\72\69\6e\74\00\00"
)
(register "reexport_f")
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\01\7e\00\02\94\80\80\80\00\01\0a\72\65\65\78\70"
    "\6f\72\74\5f\66\05\70\72\69\6e\74\00\00"
  )
  "incompatible import type"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
    "\01\7f\01\7f\02\94\80\80\80\00\01\0a\72\65\65\78"
    "\70\6f\72\74\5f\66\05\70\72\69\6e\74\00\00"
  )
  "incompatible import type"
)
(module $Mg binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\06\86\80\80\80"
  "\00\01\7f\00\41\2a\0b\07\8e\80\80\80\00\02\04\67"
  "\6c\6f\62\03\00\03\67\65\74\00\00\0a\8a\80\80\80"
  "\00\01\84\80\80\80\00\00\23\00\0b"
)
(register "Mg" $Mg)
(module $Ng binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\02\95\80\80\80\00\02\02\4d\67\04\67\6c"
  "\6f\62\03\7f\00\02\4d\67\03\67\65\74\00\00\03\82"
  "\80\80\80\00\01\00\06\86\80\80\80\00\01\7f\00\41"
  "\2b\0b\07\a1\80\80\80\00\04\07\4d\67\2e\67\6c\6f"
  "\62\03\00\06\4d\67\2e\67\65\74\00\00\04\67\6c\6f"
  "\62\03\01\03\67\65\74\00\01\0a\8a\80\80\80\00\01"
  "\84\80\80\80\00\00\23\01\0b"
)
(assert_return (get $Mg "glob") (i32.const 42))
(assert_return (get $Ng "Mg.glob") (i32.const 42))
(assert_return (get $Ng "glob") (i32.const 43))
(assert_return (invoke $Mg "get") (i32.const 42))
(assert_return (invoke $Ng "Mg.get") (i32.const 42))
(assert_return (invoke $Ng "get") (i32.const 43))
(module $Mt binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\60"
  "\00\01\7f\60\00\00\60\01\7f\01\7f\03\84\80\80\80"
  "\00\03\00\00\02\04\84\80\80\80\00\01\70\00\0a\07"
  "\92\80\80\80\00\03\03\74\61\62\01\00\01\68\00\01"
  "\04\63\61\6c\6c\00\02\09\8a\80\80\80\00\01\00\41"
  "\02\0b\04\00\00\00\00\0a\9f\80\80\80\00\03\84\80"
  "\80\80\00\00\41\04\0b\84\80\80\80\00\00\41\7c\0b"
  "\87\80\80\80\00\00\20\00\11\00\00\0b"
)
(register "Mt" $Mt)
(module $Nt binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\60"
  "\00\00\60\00\01\7f\60\01\7f\01\7f\02\92\80\80\80"
  "\00\02\02\4d\74\04\63\61\6c\6c\00\02\02\4d\74\01"
  "\68\00\01\03\84\80\80\80\00\03\01\02\02\04\85\80"
  "\80\80\00\01\70\01\05\05\07\a1\80\80\80\00\03\07"
  "\4d\74\2e\63\61\6c\6c\00\00\0c\63\61\6c\6c\20\4d"
  "\74\2e\63\61\6c\6c\00\03\04\63\61\6c\6c\00\04\09"
  "\8b\80\80\80\00\01\00\41\00\0b\05\02\02\02\01\00"
  "\0a\a1\80\80\80\00\03\84\80\80\80\00\00\41\05\0b"
  "\86\80\80\80\00\00\20\00\10\00\0b\87\80\80\80\00"
  "\00\20\00\11\01\00\0b"
)
(assert_return (invoke $Mt "call" (i32.const 2)) (i32.const 4))
(assert_return (invoke $Nt "Mt.call" (i32.const 2)) (i32.const 4))
(assert_return (invoke $Nt "call" (i32.const 2)) (i32.const 5))
(assert_return (invoke $Nt "call Mt.call" (i32.const 2)) (i32.const 4))
(assert_trap (invoke $Mt "call" (i32.const 1)) "uninitialized")
(assert_trap (invoke $Nt "Mt.call" (i32.const 1)) "uninitialized")
(assert_return (invoke $Nt "call" (i32.const 1)) (i32.const 5))
(assert_trap (invoke $Nt "call Mt.call" (i32.const 1)) "uninitialized")
(assert_trap (invoke $Mt "call" (i32.const 0)) "uninitialized")
(assert_trap (invoke $Nt "Mt.call" (i32.const 0)) "uninitialized")
(assert_return (invoke $Nt "call" (i32.const 0)) (i32.const 5))
(assert_trap (invoke $Nt "call Mt.call" (i32.const 0)) "uninitialized")
(assert_trap (invoke $Mt "call" (i32.const 20)) "undefined")
(assert_trap (invoke $Nt "Mt.call" (i32.const 20)) "undefined")
(assert_trap (invoke $Nt "call" (i32.const 7)) "undefined")
(assert_trap (invoke $Nt "call Mt.call" (i32.const 20)) "undefined")
(assert_return (invoke $Nt "call" (i32.const 3)) (i32.const -4))
(assert_trap (invoke $Nt "call" (i32.const 4)) "indirect call")
(module $Ot binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\00\01\7f\60\01\7f\01\7f\02\93\80\80\80\00\02\02"
  "\4d\74\01\68\00\00\02\4d\74\03\74\61\62\01\70\00"
  "\05\03\83\80\80\80\00\02\00\01\07\88\80\80\80\00"
  "\01\04\63\61\6c\6c\00\02\09\88\80\80\80\00\01\00"
  "\41\01\0b\02\01\00\0a\96\80\80\80\00\02\84\80\80"
  "\80\00\00\41\06\0b\87\80\80\80\00\00\20\00\11\00"
  "\00\0b"
)
(assert_return (invoke $Mt "call" (i32.const 3)) (i32.const 4))
(assert_return (invoke $Nt "Mt.call" (i32.const 3)) (i32.const 4))
(assert_return (invoke $Nt "call Mt.call" (i32.const 3)) (i32.const 4))
(assert_return (invoke $Ot "call" (i32.const 3)) (i32.const 4))
(assert_return (invoke $Mt "call" (i32.const 2)) (i32.const -4))
(assert_return (invoke $Nt "Mt.call" (i32.const 2)) (i32.const -4))
(assert_return (invoke $Nt "call" (i32.const 2)) (i32.const 5))
(assert_return (invoke $Nt "call Mt.call" (i32.const 2)) (i32.const -4))
(assert_return (invoke $Ot "call" (i32.const 2)) (i32.const -4))
(assert_return (invoke $Mt "call" (i32.const 1)) (i32.const 6))
(assert_return (invoke $Nt "Mt.call" (i32.const 1)) (i32.const 6))
(assert_return (invoke $Nt "call" (i32.const 1)) (i32.const 5))
(assert_return (invoke $Nt "call Mt.call" (i32.const 1)) (i32.const 6))
(assert_return (invoke $Ot "call" (i32.const 1)) (i32.const 6))
(assert_trap (invoke $Mt "call" (i32.const 0)) "uninitialized")
(assert_trap (invoke $Nt "Mt.call" (i32.const 0)) "uninitialized")
(assert_return (invoke $Nt "call" (i32.const 0)) (i32.const 5))
(assert_trap (invoke $Nt "call Mt.call" (i32.const 0)) "uninitialized")
(assert_trap (invoke $Ot "call" (i32.const 0)) "uninitialized")
(assert_trap (invoke $Ot "call" (i32.const 20)) "undefined")
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\02\8c\80\80\80\00\01\02\4d\74\03\74\61\62"
  "\01\70\00\00\03\82\80\80\80\00\01\00\09\87\80\80"
  "\80\00\01\00\41\09\0b\01\00\0a\88\80\80\80\00\01"
  "\82\80\80\80\00\00\0b"
)
(module $G1 binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
  "\00\41\05\0b\07\85\80\80\80\00\01\01\67\03\00"
)
(register "G1" $G1)
(module $G2 binary
  "\00\61\73\6d\01\00\00\00\02\89\80\80\80\00\01\02"
  "\47\31\01\67\03\7f\00\06\86\80\80\80\00\01\7f\00"
  "\23\00\0b\07\85\80\80\80\00\01\01\67\03\01"
)
(assert_return (get $G2 "g") (i32.const 5))
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\8c\80\80\80\00\01\02\4d\74\03\74\61\62"
    "\01\70\00\00\03\82\80\80\80\00\01\00\09\87\80\80"
    "\80\00\01\00\41\0a\0b\01\00\0a\88\80\80\80\00\01"
    "\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\02\96\80\80\80\00\02\02\4d\74\03\74\61"
    "\62\01\70\00\0a\02\4d\74\03\6d\65\6d\02\00\01\03"
    "\82\80\80\80\00\01\00\09\8d\80\80\80\00\02\00\41"
    "\07\0b\01\00\00\41\09\0b\01\00\0a\8a\80\80\80\00"
    "\01\84\80\80\80\00\00\41\00\0b"
  )
  "unknown import"
)
(assert_trap (invoke $Mt "call" (i32.const 7)) "uninitialized")
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\02\8c\80\80\80\00\01\02\4d\74\03\74\61"
    "\62\01\70\00\0a\03\82\80\80\80\00\01\00\09\8d\80"
    "\80\80\00\02\00\41\07\0b\01\00\00\41\0c\0b\01\00"
    "\0a\8a\80\80\80\00\01\84\80\80\80\00\00\41\00\0b"
  )
  "elements segment does not fit"
)
(assert_trap (invoke $Mt "call" (i32.const 7)) "uninitialized")
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\02\8c\80\80\80\00\01\02\4d\74\03\74\61"
    "\62\01\70\00\0a\03\82\80\80\80\00\01\00\05\83\80"
    "\80\80\00\01\00\01\09\87\80\80\80\00\01\00\41\07"
    "\0b\01\00\0a\8a\80\80\80\00\01\84\80\80\80\00\00"
    "\41\00\0b\0b\89\80\80\80\00\01\00\41\80\80\04\0b"
    "\01\64"
  )
  "data segment does not fit"
)
(assert_trap (invoke $Mt "call" (i32.const 7)) "uninitialized")
(module $Mm binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\84\80\80"
  "\80\00\01\01\01\05\07\8e\80\80\80\00\02\03\6d\65"
  "\6d\02\00\04\6c\6f\61\64\00\00\0a\8d\80\80\80\00"
  "\01\87\80\80\80\00\00\20\00\2d\00\00\0b\0b\90\80"
  "\80\80\00\01\00\41\0a\0b\0a\00\01\02\03\04\05\06"
  "\07\08\09"
)
(register "Mm" $Mm)
(module $Nm binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\8b\80\80\80\00\01\02\4d\6d\04\6c"
  "\6f\61\64\00\00\03\82\80\80\80\00\01\00\05\83\80"
  "\80\80\00\01\00\01\07\92\80\80\80\00\02\07\4d\6d"
  "\2e\6c\6f\61\64\00\00\04\6c\6f\61\64\00\01\0a\8d"
  "\80\80\80\00\01\87\80\80\80\00\00\20\00\2d\00\00"
  "\0b\0b\8c\80\80\80\00\01\00\41\0a\0b\06\f0\f1\f2"
  "\f3\f4\f5"
)
(assert_return (invoke $Mm "load" (i32.const 12)) (i32.const 2))
(assert_return (invoke $Nm "Mm.load" (i32.const 12)) (i32.const 2))
(assert_return (invoke $Nm "load" (i32.const 12)) (i32.const 242))
(module $Om binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\8b\80\80\80\00\01\02\4d\6d\03\6d"
  "\65\6d\02\00\01\03\82\80\80\80\00\01\00\07\88\80"
  "\80\80\00\01\04\6c\6f\61\64\00\00\0a\8d\80\80\80"
  "\00\01\87\80\80\80\00\00\20\00\2d\00\00\0b\0b\8e"
  "\80\80\80\00\01\00\41\05\0b\08\a0\a1\a2\a3\a4\a5"
  "\a6\a7"
)
(assert_return (invoke $Mm "load" (i32.const 12)) (i32.const 167))
(assert_return (invoke $Nm "Mm.load" (i32.const 12)) (i32.const 167))
(assert_return (invoke $Nm "load" (i32.const 12)) (i32.const 242))
(assert_return (invoke $Om "load" (i32.const 12)) (i32.const 167))
(module binary
  "\00\61\73\6d\01\00\00\00\02\8b\80\80\80\00\01\02"
  "\4d\6d\03\6d\65\6d\02\00\00\0b\89\80\80\80\00\01"
  "\00\41\ff\ff\03\0b\01\61"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\02\8b\80\80\80\00\01\02"
    "\4d\6d\03\6d\65\6d\02\00\00\0b\89\80\80\80\00\01"
    "\00\41\80\80\04\0b\01\61"
  )
  "data segment does not fit"
)
(module $Pm binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\8c\80\80\80\00\01\02\4d\6d\03\6d"
  "\65\6d\02\01\01\08\03\82\80\80\80\00\01\00\07\88"
  "\80\80\80\00\01\04\67\72\6f\77\00\00\0a\8c\80\80"
  "\80\00\01\86\80\80\80\00\00\20\00\40\00\0b"
)
(assert_return (invoke $Pm "grow" (i32.const 0)) (i32.const 1))
(assert_return (invoke $Pm "grow" (i32.const 2)) (i32.const 1))
(assert_return (invoke $Pm "grow" (i32.const 0)) (i32.const 3))
(assert_return (invoke $Pm "grow" (i32.const 1)) (i32.const 3))
(assert_return (invoke $Pm "grow" (i32.const 1)) (i32.const 4))
(assert_return (invoke $Pm "grow" (i32.const 0)) (i32.const 5))
(assert_return (invoke $Pm "grow" (i32.const 1)) (i32.const -1))
(assert_return (invoke $Pm "grow" (i32.const 0)) (i32.const 5))
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\a7\80\80\80\00\03\08\73\70\65\63\74\65"
    "\73\74\05\70\72\69\6e\74\00\00\02\4d\6d\03\6d\65"
    "\6d\02\00\01\02\4d\6d\03\74\61\62\01\70\00\00\0b"
    "\89\80\80\80\00\01\00\41\00\0b\03\61\62\63"
  )
  "unknown import"
)
(assert_return (invoke $Mm "load" (i32.const 0)) (i32.const 0))
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\02\8b\80\80\80\00\01\02"
    "\4d\6d\03\6d\65\6d\02\00\01\0b\91\80\80\80\00\02"
    "\00\41\00\0b\03\61\62\63\00\41\80\80\14\0b\01\64"
  )
  "data segment does not fit"
)
(assert_return (invoke $Mm "load" (i32.const 0)) (i32.const 0))
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\8b\80\80\80\00\01\02\4d\6d\03\6d\65\6d"
    "\02\00\01\03\82\80\80\80\00\01\00\04\84\80\80\80"
    "\00\01\70\00\00\09\87\80\80\80\00\01\00\41\00\0b"
    "\01\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
    "\0b\89\80\80\80\00\01\00\41\00\0b\03\61\62\63"
  )
  "elements segment does not fit"
)
(assert_return (invoke $Mm "load" (i32.const 0)) (i32.const 0))
