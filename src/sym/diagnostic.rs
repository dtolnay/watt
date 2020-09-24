#[cfg(feature = "nightly")]
use crate::data::Data;
use crate::data::Handle;
#[cfg(feature = "nightly")]
use proc_macro::{Diagnostic, Level, Span};

#[cfg(feature = "nightly")]
pub fn drop_diagnostic_handle(handle: Handle<Diagnostic>) {
    Data::with(|d| {
        d.diagnostic.take(handle);
    })
}

#[cfg(not(feature = "nightly"))]
pub fn drop_diagnostic_handle(_: Handle<()>) {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn diagnostic_new(
    level: Level,
    message: Handle<String>,
    spans: Handle<Vec<Span>>,
) -> Handle<Diagnostic> {
    Data::with(|d| {
        let spans = d.multi_span.take(spans);
        let message = d.string.take(message);
        let diagnostic = Diagnostic::spanned(spans, level, message);
        d.diagnostic.push(diagnostic)
    })
}

#[cfg(not(feature = "nightly"))]
pub fn diagnostic_new(_: u32, _: Handle<String>, _: Handle<()>) -> Handle<()> {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn diagnostic_sub(
    handle: Handle<Diagnostic>,
    level: Level,
    message: Handle<String>,
    spans: Handle<Vec<Span>>,
) {
    Data::with(|d| {
        let spans = d.multi_span.take(spans);
        let message = d.string.take(message);
        let diagnostic = d.diagnostic.take(handle);
        d.diagnostic.insert(
            handle,
            match level {
                Level::Error => diagnostic.span_error(spans, message),
                Level::Warning => diagnostic.span_warning(spans, message),
                Level::Note => diagnostic.span_note(spans, message),
                Level::Help => diagnostic.span_help(spans, message),
                _ => unimplemented!(),
            },
        )
    })
}

#[cfg(not(feature = "nightly"))]
pub fn diagnostic_sub(_: Handle<()>, _: u32, _: Handle<String>, _: Handle<()>) {
    unimplemented!()
}

#[cfg(feature = "nightly")]
pub fn diagnostic_emit(handle: Handle<Diagnostic>) {
    Data::with(|d| {
        d.diagnostic.take(handle).emit();
    })
}

#[cfg(not(feature = "nightly"))]
pub fn diagnostic_emit(_: Handle<()>) {
    unimplemented!()
}
