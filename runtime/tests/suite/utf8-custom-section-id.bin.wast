(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\8f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\9f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\a0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\c2\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\c2")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c2\2e")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c0\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c1\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c1\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c2\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c2\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c2\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\c2\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\df\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\df\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\df\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\df\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\e1\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\e1\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\80\2e")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\e1")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\e1\2e")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\00\a0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\7f\a0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\80\a0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\9f\a0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\9f\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\c0\a0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\fd\a0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\a0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\a0\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\bf\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\bf\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\a0\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\a0\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\a0\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e0\a0\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\e1\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ec\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ed\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ee\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\ef\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\06\05\f1\80\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\f1\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\f1\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\f1\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\f1")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\f1\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\00\90\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\7f\90\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\80\90\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\8f\90\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\8f\bf\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\c0\90\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\fd\90\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\00\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\7f\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\c0\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\fd\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\00\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\7f\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\c0\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\fd\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\00\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\7f\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\90\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\bf\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\c0\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\fd\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f5\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f7\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f7\bf\bf\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\00\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\7f\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\c0\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\fd\90")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\00\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\7f\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\c0\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\fd\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\90\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\90\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\90\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f0\90\90\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f1\80\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f3\80\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\80\00")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\80\7f")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\80\c0")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f4\80\80\fd")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\07\06\f8\80\80\80\80" "\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f8\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\06\05\f8\80\80\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\f8\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\f8\80\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\f8\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\f8\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\f8")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\f8\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\06\05\f8\80\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\06\05\fb\bf\bf\bf\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\08\07\fc\80\80\80\80" "\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\06\05\fc\80\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\07\06\fc\80\80\80\80" "\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\fc\80\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\06\05\fc\80\80\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\fc\80\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\fc\80\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\fc\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\04\03\fc\80\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\fc")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\fc\23")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\07\06\fc\80\80\80\80" "\80")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\07\06\fd\bf\bf\bf\bf" "\bf")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\fe")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\02\01\ff")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\fe\ff")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\00\00\fe\ff")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\03\02\ff\fe")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\05\04\ff\fe\00\00")
  "invalid UTF-8 encoding"
)
