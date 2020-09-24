#[cfg(feature = "nightly")]
use crate::data::Data;
use crate::data::Handle;
#[cfg(feature = "nightly")]
use proc_macro::SourceFile;

#[cfg(feature = "nightly")]
pub fn clone_source_file_handle(handle: Handle<SourceFile>) -> Handle<SourceFile> {
    Data::with(|d| d.source_file.push(d.source_file[handle].clone()))
}

#[cfg(not(feature = "nightly"))]
pub fn clone_source_file_handle(_: Handle<()>) -> Handle<()> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn drop_source_file_handle(handle: Handle<SourceFile>) {
    Data::with(|d| {
        d.source_file.take(handle);
    })
}

#[cfg(not(feature = "nightly"))]
pub fn drop_source_file_handle(_: Handle<()>) {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn source_file_eq(lhs: Handle<SourceFile>, rhs: Handle<SourceFile>) -> bool {
    Data::with(|d| d.source_file[lhs] == d.source_file[rhs])
}

#[cfg(not(feature = "nightly"))]
pub fn source_file_eq(_: Handle<()>, _: Handle<()>) -> bool {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn source_file_path(handle: Handle<SourceFile>) -> Handle<String> {
    Data::with(|d| {
        let source_file = &d.source_file[handle];
        d.string
            .push(source_file.path().to_str().unwrap().to_string())
    })
}

#[cfg(not(feature = "nightly"))]
pub fn source_file_path(_: Handle<()>) -> Handle<String> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn source_file_is_real(handle: Handle<SourceFile>) -> bool {
    Data::with(|d| d.source_file[handle].is_real())
}

#[cfg(not(feature = "nightly"))]
pub fn source_file_is_real(_: Handle<()>) -> bool {
    unimplemented!()
}
