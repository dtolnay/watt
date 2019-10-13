mod parser;
mod run;

use rust_wasm::*;

pub use self::run::*;

#[derive(Debug)]
pub enum Cmd {
	ModuleSource(ModuleSource),
	Register { name: String, mod_ref: Option<String> },
	Action(Action),
	Assertion(Assertion),
}

#[derive(Debug)]
pub enum ModuleSource {
	Binary(Option<String>, Vec<u8>),
	Quoted(Option<String>, Vec<u8>),
}

#[derive(Debug)]
pub enum Assertion {
	Return(Action, Vec<values::Value>),
	ReturnCanonicalNan(Action),
	ReturnArithmeticNan(Action),
	TrapAction(Action, String),
	TrapInstantiate(ModuleSource, String),
	Exhaustion(Action, String),
	Invalid(ModuleSource, String),
	Malformed(ModuleSource, String),
	Unlinkable(ModuleSource, String),
}

#[derive(Debug)]
pub enum Action {
	Invoke { mod_ref: Option<String>, func: String, args: Vec<values::Value> },
	Get { mod_ref: Option<String>, global: String },
}
