#![allow(dead_code, non_fmt_panics)]
#![allow(
    clippy::cast_lossless,
    clippy::cast_sign_loss,
    clippy::clone_on_copy,
    clippy::enum_glob_use,
    clippy::expect_fun_call,
    clippy::items_after_statements,
    clippy::manual_assert,
    clippy::match_same_arms,
    clippy::needless_lifetimes,
    clippy::range_plus_one,
    clippy::redundant_field_names,
    clippy::semicolon_if_nothing_returned,
    clippy::single_char_pattern,
    clippy::too_many_lines,
    clippy::uninlined_format_args,
    clippy::unnecessary_mut_passed,
    clippy::unnested_or_patterns,
    clippy::useless_conversion,
    clippy::wildcard_imports
)]

mod script;

include!(concat!(env!("OUT_DIR"), "/test_suite.rs"));
