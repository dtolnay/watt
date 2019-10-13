(module binary
  "\00\61\73\6d\01\00\00\00\01\c5\80\80\80\00\0e\60"
  "\00\00\60\00\00\60\01\7f\00\60\01\7f\00\60\00\01"
  "\7f\60\01\7f\01\7f\60\01\7f\01\7f\60\02\7d\7c\00"
  "\60\02\7d\7c\00\60\02\7d\7c\00\60\02\7d\7c\00\60"
  "\02\7d\7c\00\60\06\7d\7c\7f\7c\7f\7f\00\60\03\7d"
  "\7c\7f\00"
)
(assert_malformed
  (module quote "(type (func (result i32) (param i32)))")
  "result before parameter"
)
(assert_malformed
  (module quote "(type (func (result $x i32)))")
  "unexpected token"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
    "\00\02\7f\7f"
  )
  "invalid result arity"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
    "\00\02\7f\7f"
  )
  "invalid result arity"
)
