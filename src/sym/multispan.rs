#[cfg(feature = "nightly")]
use crate::data::Handle;
#[cfg(feature = "nightly")]
use proc_macro::MultiSpan;

#[cfg(feature = "nightly")]
pub fn drop_multi_span_handle(handle: Handle<MultiSpan>) {
    todo!()
}

#[cfg(not(feature = "nightly"))]
pub fn drop_multi_span_handle(_: u32) {
    unimplemented!()
}
