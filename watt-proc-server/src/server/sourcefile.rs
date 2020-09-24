use crate::{Server, SourceFileHandle, StringHandle};
use proc_macro::bridge::server::SourceFile;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn source_file_eq(lhs: SourceFileHandle, rhs: SourceFileHandle) -> bool;
    fn source_file_path(handle: SourceFileHandle) -> StringHandle;
    fn source_file_is_real(handle: SourceFileHandle) -> bool;
}

impl SourceFile for Server {
    fn eq(&mut self, lhs: &SourceFileHandle, rhs: &SourceFileHandle) -> bool {
        unsafe { source_file_eq(lhs.to_owned(), rhs.to_owned()) }
    }

    fn path(&mut self, handle: &SourceFileHandle) -> std::string::String {
        unsafe { source_file_path(handle.to_owned()).into() }
    }

    fn is_real(&mut self, handle: &SourceFileHandle) -> bool {
        unsafe { source_file_is_real(handle.to_owned()) }
    }
}
