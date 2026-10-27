use proc_macro2::{Ident, Span};

#[test]
fn non_ascii_ident() {
    // Identifiers that rustc and proc-macro2 accept: XID_Start followed by
    // XID_Continue. zerocopy-derive generates bindings like the first one.
    for name in ["ẕ0", "Café", "δ", "αβγ1"] {
        let ident = Ident::new(name, Span::call_site());
        assert_eq!(ident.to_string(), name);
    }
}

#[test]
#[should_panic(expected = "is not a valid Ident")]
fn combining_mark_cannot_start_ident() {
    // U+0301 combining acute accent is XID_Continue but not XID_Start.
    let _ = Ident::new("\u{301}abc", Span::call_site());
}
