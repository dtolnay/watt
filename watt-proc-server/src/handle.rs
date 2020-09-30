use std::{marker::PhantomData, mem::forget, num::NonZeroU32};

macro_rules! define_handle {
    ($id:ident: $clone:ident + $drop:ident) => {
        #[repr(transparent)]
        #[derive(Debug)]
        pub struct $id {
            id: NonZeroU32,
            // make sure the handle isn't sync
            marker: PhantomData<*const ()>,
        }

        impl $id {
            #[doc(hidden)]
            pub fn new(id: u32) -> Self {
                Self {
                    id: NonZeroU32::new(id).unwrap(),
                    marker: PhantomData,
                }
            }

            pub fn into_id(self) -> u32 {
                let id = self.id.into();
                std::mem::forget(self);
                id
            }

            #[doc(hidden)]
            pub fn to_owned(&self) -> Self {
                Self {
                    id: self.id,
                    marker: self.marker,
                }
            }
        }

        impl From<OptionalHandle<$id>> for Option<$id> {
            fn from(val: OptionalHandle<$id>) -> Self {
                let id = val.val;
                forget(val);

                NonZeroU32::new(id).map(|id| $id {
                    id,
                    marker: PhantomData,
                })
            }
        }

        #[link(wasm_import_module = "watt-0.4")]
        extern "C" {
            fn $clone(handle: $id) -> $id;
            fn $drop(handle: $id);
        }

        impl Clone for $id {
            fn clone(&self) -> Self {
                unsafe { $clone(self.to_owned()) }
            }
        }

        impl Drop for $id {
            fn drop(&mut self) {
                unsafe {
                    $drop(self.to_owned());
                }
            }
        }
    };
    ($id:ident) => {
        #[repr(transparent)]
        #[derive(Debug, Copy, Clone, PartialEq, Eq, Hash)]
        pub struct $id {
            id: NonZeroU32,
            // make sure the handle isn't sync
            marker: PhantomData<*const ()>,
        }

        impl $id {
            #[doc(hidden)]
            pub fn new(id: u32) -> Self {
                Self {
                    id: NonZeroU32::new(id).unwrap(),
                    marker: PhantomData,
                }
            }

            pub fn into_id(self) -> u32 {
                self.id.into()
            }

            #[doc(hidden)]
            pub fn to_owned(&self) -> Self {
                Self {
                    id: self.id,
                    marker: self.marker,
                }
            }
        }

        impl From<OptionalHandle<$id>> for Option<$id> {
            fn from(val: OptionalHandle<$id>) -> Self {
                let id = val.val;
                forget(val);

                NonZeroU32::new(id).map(|id| $id {
                    id,
                    marker: PhantomData,
                })
            }
        }
    };
}

macro_rules! define_handles {
    ($($id:ident $(: $clone:ident + $drop:ident)?),*) => {
        $(
            define_handle!($id $(: $clone + $drop)?);
        )*
    };
}

define_handles!(
    DiagnosticHandle: clone_diagnostic_handle + drop_diagnostic_handle,
    GroupHandle: clone_group_handle + drop_group_handle,
    IdentHandle,
    LiteralHandle: clone_literal_handle + drop_literal_handle,
    MultiSpanHandle: clone_multi_span_handle + drop_multi_span_handle,
    PunctHandle,
    SourceFileHandle: clone_source_file_handle + drop_source_file_handle,
    SpanHandle,
    TokenStreamHandle: clone_token_stream_handle + drop_token_stream_handle,
    TokenStreamIterHandle: clone_token_stream_iter_handle + drop_token_stream_iter_handle
);

define_handles!(
    StringHandle: clone_string + drop_string,
    BytesHandle: clone_bytes + drop_bytes
);

pub type TokenStreamBuilderHandle = TokenStreamHandle;

#[repr(transparent)]
pub struct OptionalHandle<T>
where
    Self: Into<Option<T>>,
{
    val: u32,
    marker: PhantomData<T>,
}

impl<T> Drop for OptionalHandle<T>
where
    Self: Into<Option<T>>,
{
    fn drop(&mut self) {
        let copy = OptionalHandle {
            val: self.val,
            marker: self.marker,
        };
        let data: Option<T> = copy.into();
        drop(data);
    }
}
