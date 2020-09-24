mod diagnostic;
mod ffi;
mod freefunctions;
mod group;
mod ident;
mod literal;
mod multispan;
mod punct;
mod sourcefile;
mod span;
mod string;
mod tokenstream;
mod tokenstreamiter;

pub use diagnostic::*;
pub use freefunctions::*;
pub use group::*;
pub use ident::*;
pub use literal::*;
pub use multispan::*;
pub use punct::*;
pub use sourcefile::*;
pub use span::*;
pub use string::*;
pub use tokenstream::*;
pub use tokenstreamiter::*;

use crate::data::{Data, Handle};

pub fn print_panic(string: Handle<String>) {
    Data::with(|d| panic!("{}", d.string[string]))
}

pub fn hint_panic(string: Handle<String>, line: u32) {
    Data::with(|d| eprintln!("panicked at {}:{}", d.string[string], line))
}
