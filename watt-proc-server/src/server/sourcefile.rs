use crate::{Server, SourceFileHandle};
use proc_macro::bridge::server::SourceFile;

impl SourceFile for Server {
    fn eq(&mut self, _: &SourceFileHandle, _: &SourceFileHandle) -> bool {
        crate::custom_todo!();
    }

    fn path(&mut self, _: &SourceFileHandle) -> std::string::String {
        crate::custom_todo!();
    }

    fn is_real(&mut self, _: &SourceFileHandle) -> bool {
        crate::custom_todo!();
    }
}
