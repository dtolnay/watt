use crate::Server;
use proc_macro::bridge::server::FreeFunctions;

impl FreeFunctions for Server {
    fn track_env_var(&mut self, _: &str, _: Option<&str>) {
        crate::custom_todo!();
    }
}
