use crate::handle::StringHandle;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn string_new(ptr: *const u8, len: u32) -> StringHandle;
    fn string_len(handle: StringHandle) -> u32;
    fn string_copy(handle: StringHandle, ptr: *mut u8);
}

impl<'a> From<&'a str> for StringHandle {
    fn from(s: &'a str) -> Self {
        unsafe { string_new(s.as_ptr(), s.len() as u32) }
    }
}

impl From<String> for StringHandle {
    fn from(s: String) -> Self {
        StringHandle::from(&*s)
    }
}

impl<'a> From<&'a StringHandle> for String {
    fn from(s: &'a StringHandle) -> Self {
        let len = unsafe { string_len(s.to_owned()) };
        let mut vec = vec![0; len as usize];
        unsafe { string_copy(s.to_owned(), vec.as_mut_ptr()) };
        String::from_utf8(vec).unwrap()
    }
}

impl From<StringHandle> for String {
    fn from(s: StringHandle) -> Self {
        String::from(&s)
    }
}
