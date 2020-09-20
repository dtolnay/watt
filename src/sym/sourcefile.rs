#[cfg(feature = "nightly")]
use crate::data::Handle;
#[cfg(feature = "nightly")]
use proc_macro::SourceFile;

#[cfg(feature = "nightly")]
pub fn clone_source_file_handle(_: Handle<SourceFile>) -> Handle<SourceFile> {
    todo!()
}

#[cfg(not(feature = "nightly"))]
pub fn clone_source_file_handle(_: u32) -> u32 {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn drop_source_file_handle(_: Handle<SourceFile>) {
    todo!()
}

#[cfg(not(feature = "nightly"))]
pub fn drop_source_file_handle(_: u32) {
    unimplemented!()
}
