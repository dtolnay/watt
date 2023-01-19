use crate::data::{Data, Handle};

pub fn string_new(memory: &mut [u8], ptr: u32, len: u32) -> Handle<String> {
    Data::with(|d| {
        let len = len as usize;
        let ptr = ptr as usize;
        let bytes = memory[ptr..ptr + len].to_owned();
        let string = String::from_utf8(bytes).expect("non-utf8");
        d.string.push(string)
    })
}

pub fn string_len(string: Handle<String>) -> u32 {
    Data::with(|d| {
        let string = &d.string[string];
        string.len() as u32
    })
}

pub fn string_read(memory: &mut [u8], string: Handle<String>, ptr: u32) {
    Data::with(|d| {
        let ptr = ptr as usize;
        let string = &d.string[string];
        memory[ptr..ptr + string.len()].copy_from_slice(string.as_bytes());
    })
}

pub fn drop_string(string: Handle<String>) {
    Data::with(|d| {
        d.string.take(string);
    })
}
