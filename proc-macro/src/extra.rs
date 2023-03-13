use crate::Span;

#[derive(Copy, Clone, Debug)]
pub struct DelimSpan {
    pub(crate) join: Span,
    pub(crate) open: Span,
    pub(crate) close: Span,
}

impl DelimSpan {
    pub fn join(&self) -> Span {
        self.join
    }

    pub fn open(&self) -> Span {
        self.open
    }

    pub fn close(&self) -> Span {
        self.close
    }
}
