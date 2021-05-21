use crate::{ffi::FFILevel, DiagnosticHandle, MultiSpanHandle, Server, StringHandle};
use proc_macro::{bridge::server::Diagnostic, Level};

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn diagnostic_new(
        level: FFILevel,
        message: StringHandle,
        spans: MultiSpanHandle,
    ) -> DiagnosticHandle;
    fn diagnostic_sub(
        handle: DiagnosticHandle,
        level: FFILevel,
        message: StringHandle,
        spans: MultiSpanHandle,
    );
    fn diagnostic_emit(handle: DiagnosticHandle);
}

impl Diagnostic for Server {
    fn new(&mut self, level: Level, message: &str, spans: MultiSpanHandle) -> DiagnosticHandle {
        unsafe { diagnostic_new(level.into(), message.into(), spans) }
    }

    fn sub(
        &mut self,
        handle: &mut DiagnosticHandle,
        level: Level,
        message: &str,
        spans: MultiSpanHandle,
    ) {
        unsafe { diagnostic_sub(handle.to_owned(), level.into(), message.into(), spans) }
    }

    fn emit(&mut self, handle: DiagnosticHandle) {
        unsafe { diagnostic_emit(handle) }
    }
}
