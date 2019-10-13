#![feature(try_from)]

extern crate rust_wasm;
extern crate hexf_parse;

mod script;

include!(concat!(env!("OUT_DIR"), "/test_suite.rs"));
