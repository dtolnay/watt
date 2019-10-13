(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\8f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\9f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\a0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\c2\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\c2\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c2\2e\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c0\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c1\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c1\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c2\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c2\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c2\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\c2\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\df\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\df\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\df\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\df\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\e1\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\e1\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\80\2e\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\e1\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\e1\2e\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\00\a0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\7f\a0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\80\a0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\9f\a0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\9f\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\c0\a0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\fd\a0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\a0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\a0\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\bf\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\bf\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\a0\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\a0\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\a0\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e0\a0\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\e1\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ec\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ed\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ee\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\ef\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0f\01\04\74\65\73\74"
    "\05\f1\80\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\f1\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\f1\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\f1\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\f1\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\f1\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\00\90\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\7f\90\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\80\90\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\8f\90\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\8f\bf\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\c0\90\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\fd\90\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\00\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\7f\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\c0\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\fd\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\00\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\7f\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\c0\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\fd\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\00\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\7f\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\90\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\bf\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\c0\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\fd\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f5\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f7\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f7\bf\bf\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\00\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\7f\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\c0\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\fd\90\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\00\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\7f\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\c0\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\fd\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\90\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\90\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\90\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f0\90\90\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f1\80\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f3\80\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\80\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\80\7f\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\80\c0\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f4\80\80\fd\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\10\01\04\74\65\73\74"
    "\06\f8\80\80\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f8\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0f\01\04\74\65\73\74"
    "\05\f8\80\80\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\f8\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\f8\80\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\f8\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\f8\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\f8\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\f8\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0f\01\04\74\65\73\74"
    "\05\f8\80\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0f\01\04\74\65\73\74"
    "\05\fb\bf\bf\bf\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\11\01\04\74\65\73\74"
    "\07\fc\80\80\80\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0f\01\04\74\65\73\74"
    "\05\fc\80\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\10\01\04\74\65\73\74"
    "\06\fc\80\80\80\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\fc\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0f\01\04\74\65\73\74"
    "\05\fc\80\80\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\fc\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\fc\80\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\fc\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0d\01\04\74\65\73\74"
    "\03\fc\80\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\fc\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\fc\23\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\10\01\04\74\65\73\74"
    "\06\fc\80\80\80\80\80\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\10\01\04\74\65\73\74"
    "\06\fd\bf\bf\bf\bf\bf\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\fe\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0b\01\04\74\65\73\74"
    "\01\ff\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\fe\ff\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\00\00\fe\ff\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0c\01\04\74\65\73\74"
    "\02\ff\fe\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\0e\01\04\74\65\73\74"
    "\04\ff\fe\00\00\03\7f\00"
  )
  "invalid UTF-8 encoding"
)
