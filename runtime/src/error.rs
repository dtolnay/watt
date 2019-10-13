use crate::interpreter::Trap;

#[cfg(not(feature = "test"))]
#[derive(Debug, PartialEq)]
pub struct Error(pub(crate) E);

#[cfg(feature = "test")]
#[allow(non_snake_case)]
pub(crate) fn Error(error: E) -> Error {
    error
}

#[cfg(feature = "test")]
pub use self::E as Error;

#[derive(Debug, PartialEq)]
pub enum E {
    DecodeModuleFailed,
    NotEnoughExternVal,
    UnknownImport,
    ImportTypeMismatch,
    ElemOffsetTooLarge(usize),
    DataOffsetTooLarge(usize),
    NotEnoughArgument,
    ArgumentTypeMismatch,
    CodeTrapped(Trap),
    InvalidModule,
    ExportNotFound,
    #[cfg(feature = "test")]
    InvalidTableRead,
    #[cfg(feature = "test")]
    InvalidTableWrite,
    #[cfg(feature = "test")]
    InvalidMemoryRead,
    #[cfg(feature = "test")]
    InvalidMemoryWrite,
    #[cfg(feature = "test")]
    GlobalImmutable,
    #[cfg(feature = "test")]
    GrowMemoryFailed,
    StackOverflow,
}
