(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8e\80\80\80\00\01\88\80\80\80\00\00"
    "\41\00\29\04\00\1a\0b"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store align=0 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store align=5 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8f\80\80\80\00\01\89\80\80\80\00\00"
    "\41\00\42\00\37\04\00\0b"
  )
  "alignment"
)
