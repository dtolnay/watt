#[cfg(feature = "nightly")]
use crate::data::{Data, Handle};
#[cfg(feature = "nightly")]
use proc_macro::Diagnostic;

#[cfg(feature = "nightly")]
pub fn drop_diagnostic_handle(handle: Handle<Diagnostic>) {
    todo!()
}

#[cfg(not(feature = "nightly"))]
pub fn drop_diagnostic_handle(_: u32) {
    unimplemented!()
}
