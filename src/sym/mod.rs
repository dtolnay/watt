mod bytes;
#[cfg(feature = "proc-macro-server")]
mod diagnostic;
#[cfg(feature = "proc-macro-server")]
mod freefunctions;
#[cfg(feature = "proc-macro-server")]
mod group;
#[cfg(feature = "proc-macro-server")]
mod ident;
mod literal;
#[cfg(feature = "proc-macro-server")]
mod multispan;
#[cfg(feature = "proc-macro-server")]
mod punct;
#[cfg(feature = "proc-macro-server")]
mod sourcefile;
#[cfg(feature = "proc-macro-server")]
mod span;
mod string;
mod tokenstream;
#[cfg(feature = "proc-macro-server")]
mod tokenstreamiter;

#[cfg(not(jit))]
mod ffi;
#[cfg(jit)]
mod jit_ffi;

pub use bytes::*;
#[cfg(feature = "proc-macro-server")]
pub use diagnostic::*;
#[cfg(feature = "proc-macro-server")]
pub use freefunctions::*;
#[cfg(feature = "proc-macro-server")]
pub use group::*;
#[cfg(feature = "proc-macro-server")]
pub use ident::*;
pub use literal::*;
#[cfg(feature = "proc-macro-server")]
pub use multispan::*;
#[cfg(feature = "proc-macro-server")]
pub use punct::*;
#[cfg(feature = "proc-macro-server")]
pub use sourcefile::*;
#[cfg(feature = "proc-macro-server")]
pub use span::*;
pub use string::*;
pub use tokenstream::*;
#[cfg(feature = "proc-macro-server")]
pub use tokenstreamiter::*;

use crate::data::{Data, Handle};

pub fn print_panic(string: Handle<String>) {
    Data::with(|d| panic!("{}", d.string[string]))
}

pub fn hint_panic(string: Handle<String>, line: u32) {
    Data::with(|d| eprintln!("panicked at {}:{}", d.string[string], line))
}
