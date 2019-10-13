use std::fs::{self, File};
use std::io::prelude::*;
use std::env;
use std::path::Path;

fn main() {
	// generate a driver for the test suite
	let out_dir = env::var("OUT_DIR").unwrap();
	let dest_path = Path::new(&out_dir).join("test_suite.rs");
	let mut f = File::create(dest_path).unwrap();

	for entry in fs::read_dir("tests/suite").unwrap() {
		let path = entry.unwrap().path();
		let name = path.file_name().unwrap().to_str().unwrap().split('.').next().unwrap().replace("-", "_");

		write!(f,
"#[test]
fn run_{}() {{
	script::run(\"{}\");
}}\n",
			name,
			path.display(),
		).unwrap();
	}
}
