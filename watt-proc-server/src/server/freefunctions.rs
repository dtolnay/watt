use crate::{Server, StringHandle};
use proc_macro::bridge::server::FreeFunctions;

#[link(wasm_import_module = "watt-0.4")]
extern "C" {
    fn free_functions_track_env_var(name: StringHandle, value: Option<StringHandle>);
}

impl FreeFunctions for Server {
    fn track_env_var(&mut self, name: &str, value: Option<&str>) {
        unsafe { free_functions_track_env_var(name.into(), value.map(Into::into)) }
    }
}
