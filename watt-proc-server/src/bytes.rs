use crate::BytesHandle;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn bytes_new(ptr: *const u8, len: u32) -> BytesHandle;
    fn bytes_len(handle: BytesHandle) -> u32;
    fn bytes_copy(handle: BytesHandle, ptr: *mut u8);
}

impl<'a> From<&'a [u8]> for BytesHandle {
    fn from(s: &'a [u8]) -> Self {
        unsafe { bytes_new(s.as_ptr(), s.len() as u32) }
    }
}

impl From<Vec<u8>> for BytesHandle {
    fn from(s: Vec<u8>) -> Self {
        BytesHandle::from(&*s)
    }
}

impl<'a> From<&'a BytesHandle> for Vec<u8> {
    fn from(s: &'a BytesHandle) -> Self {
        let len = unsafe { bytes_len(s.to_owned()) };
        let mut vec = vec![0; len as usize];
        unsafe { bytes_copy(s.to_owned(), vec.as_mut_ptr()) };
        vec
    }
}

impl From<BytesHandle> for Vec<u8> {
    fn from(s: BytesHandle) -> Self {
        Vec::from(&s)
    }
}
