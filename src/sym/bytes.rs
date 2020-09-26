use crate::data::{Data, Handle};

#[cfg(feature = "proc-macro-server")]
pub fn bytes_new(memory: &mut [u8], ptr: u32, len: u32) -> Handle<Vec<u8>> {
    Data::with(|d| {
        let len = len as usize;
        let ptr = ptr as usize;
        let bytes = memory[ptr..ptr + len].to_owned();
        d.bytes.push(bytes)
    })
}

pub fn bytes_len(bytes: Handle<Vec<u8>>) -> u32 {
    Data::with(|d| {
        let bytes = &d.bytes[bytes];
        bytes.len() as u32
    })
}

pub fn bytes_read(memory: &mut [u8], bytes: Handle<Vec<u8>>, ptr: u32) {
    Data::with(|d| {
        let ptr = ptr as usize;
        let bytes = &d.bytes[bytes];
        memory[ptr..ptr + bytes.len()].copy_from_slice(bytes);
    })
}

#[cfg(feature = "proc-macro-server")]
pub fn drop_bytes(bytes: Handle<Vec<u8>>) {
    Data::with(|d| {
        d.bytes.take(bytes);
    })
}
