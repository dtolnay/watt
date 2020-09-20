use std::panic::{set_hook, take_hook, PanicInfo};

use crate::handle::StringHandle;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn hint_panic(file: StringHandle, line: u32);
    fn print_panic(message: StringHandle) -> !;
}

pub fn invoke_hint_panic(message: &str, line: u32) {
    let handle = StringHandle::from(message);
    unsafe { hint_panic(handle, line) }
}

pub struct PanicHook {
    prev_hook: Option<Box<dyn Fn(&PanicInfo<'_>) + 'static + Sync + Send>>,
}

impl PanicHook {
    pub fn hook() -> Self {
        let prev_hook = take_hook();

        set_hook(Box::new(|info: &PanicInfo| {
            invoke_hint_panic(
                info.location().map(|l| l.file()).unwrap_or("unknown"),
                info.location().map(|l| l.line()).unwrap_or(0xFFFFFF),
            );

            let msg = format!("{}", info);
            let handle = StringHandle::from(msg);
            unsafe {
                print_panic(handle);
            }
        }));

        PanicHook {
            prev_hook: Some(prev_hook),
        }
    }
}

impl Drop for PanicHook {
    fn drop(&mut self) {
        drop(take_hook());
        set_hook(self.prev_hook.take().unwrap());
    }
}
