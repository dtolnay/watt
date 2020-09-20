use crate::{DiagnosticHandle, MultiSpanHandle, Server};
use proc_macro::{bridge::server::Diagnostic, Level};

impl Diagnostic for Server {
    fn new(&mut self, _: Level, _: &str, _: MultiSpanHandle) -> DiagnosticHandle {
        crate::custom_todo!();
    }

    fn sub(&mut self, _: &mut DiagnosticHandle, _: Level, _: &str, _: MultiSpanHandle) {
        crate::custom_todo!();
    }

    fn emit(&mut self, _: DiagnosticHandle) {
        crate::custom_todo!();
    }
}
