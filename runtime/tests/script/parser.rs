use std::convert::TryFrom;
use std::iter::Peekable;
use std::str::{FromStr, CharIndices};
use std::{f32, f64};
use hexf_parse::{parse_hexf32, parse_hexf64};
use rust_wasm::values::Value;
use script::*;

struct Lexer<'a> {
	src: &'a str,
	chars: Peekable<CharIndices<'a>>,
}

impl<'a> Lexer<'a> {
	fn new(src: &str) -> Lexer {
		Lexer {
			src: src,
			chars: src.char_indices().peekable(),
		}
	}
}

impl<'a> Iterator for Lexer<'a> {
	type Item = &'a str;

	fn next(&mut self) -> Option<Self::Item> {
		loop {
			match self.chars.next() {
				Some((_, c)) if c.is_whitespace() => {},
				Some((start, '(')) | Some((start, ')')) => return Some(&self.src[start..start+1]),
				Some((start, '"')) => { // string
					loop {
						match self.chars.next() {
							Some((i, '\"')) => {
								return Some(&self.src[start..i+1]);
							}
							Some((_, '\\')) => {
								let _ = self.chars.next();
							}
							Some(_) => {}
							None => panic!("unexpected eof"),
						}
					}

				}
				Some((start, _)) => { // symbol
					loop {
						match self.chars.peek() {
							Some(&(i, c)) if c.is_whitespace() => return Some(&self.src[start..i]),
							Some(&(i, '(')) | Some(&(i, ')')) | Some(&(i, '"')) => {
								return Some(&self.src[start..i]);
							}
							None => return Some(&self.src[start..]),
							_ => {}
						}
						self.chars.next();
					}
				},
				None => return None,
			}
		}
	}
}


pub struct Parser<'a> {
	lexer: Peekable<Lexer<'a>>,
}

impl<'a> Iterator for Parser<'a> {
	type Item = Cmd;

	fn next(&mut self) -> Option<Self::Item> {
		if self.lexer.peek().is_none() {
			None
		} else {
			Some(self.cmd())
		}
	}
}

impl<'a> Parser<'a> {
	pub fn new(src: &'a str) -> Parser {
		Parser { lexer: Lexer::new(src).peekable() }
	}

	fn next_token(&mut self) -> &'a str {
		self.lexer.next().expect("unexpected eof")
	}

	fn open(&mut self) {
		match self.next_token() {
			"(" => {},
			s => panic!(expected(s, &["("]))
		}
	}

	fn close(&mut self) {
		match self.next_token() {
			")" => {},
			s => panic!(expected(s, &[")"]))
		}
	}

	fn cmd(&mut self) -> Cmd {
		use script::Assertion::*;

		self.open();
		let cmd = match self.next_token() {
			"module" => Cmd::ModuleSource(self.module_src()),

			"assert_return" => Cmd::Assertion(Return(self.action(), self.values())),
			"assert_trap" => Cmd::Assertion(self.assert_trap()),
			"assert_return_canonical_nan" => Cmd::Assertion(ReturnCanonicalNan(self.action())),
			"assert_return_arithmetic_nan" => Cmd::Assertion(ReturnArithmeticNan(self.action())),
			"assert_exhaustion" => Cmd::Assertion(Exhaustion(self.action(), self.string())),
			"assert_invalid" => Cmd::Assertion(Invalid(self.module(), self.string())),
			"assert_malformed" => Cmd::Assertion(Malformed(self.module(), self.string())),
			"assert_unlinkable" => Cmd::Assertion(Unlinkable(self.module(), self.string())),

			"register" => Cmd::Register { name: self.string(), mod_ref: self.opt_id() },

			"invoke" => Cmd::Action(self.invoke()),
			"get" => Cmd::Action(self.get()),

			s => panic!("invalid cmd `{}`", s),
		};
		self.close();
		cmd
	}

	fn module(&mut self) -> ModuleSource {
		self.open();
		let s = self.next_token();
		if s != "module" {
			panic!(expected(s, &["module"]));
		}
		let mod_src = self.module_src();
		self.close();
		mod_src
	}

	fn module_src(&mut self) -> ModuleSource {
		let name = self.opt_id();

		match self.next_token() {
			"binary" => ModuleSource::Binary(name, self.bytestrings()),
			"quote" => ModuleSource::Quoted(name, self.bytestrings()),
			s => panic!(expected(s, &["binary", "quote"])),
		}
	}

	fn assert_trap(&mut self) -> Assertion {
		self.open();
		let result = match self.next_token() {
			"invoke" => {
				let action = self.invoke();
				self.close();
				Assertion::TrapAction(action, self.string())
			}
			"get" => {
				let action = self.get();
				self.close();
				Assertion::TrapAction(action, self.string())
			}
			"module" => {
				let mod_src = self.module_src();
				self.close();
				Assertion::TrapInstantiate(mod_src, self.string())
			}
			s => panic!(expected(s, &["invoke", "get", "module"])),
		};
		result
	}

	fn action(&mut self) -> Action {
		self.open();
		let action = match self.next_token() {
			"invoke" => self.invoke(),
			"get" => self.get(),
			s => panic!(expected(s, &["invoke", "get"])),
		};
		self.close();
		action
	}

	fn invoke(&mut self) -> Action {
		Action::Invoke {
			mod_ref: self.opt_id(),
			func: self.string(),
			args: self.values(),
		}
	}

	fn get(&mut self) -> Action {
		Action::Get {
			mod_ref: self.opt_id(),
			global: self.string(),
		}
	}

	fn values(&mut self) -> Vec<Value> {
		let mut values = Vec::new();

		loop {
			match self.lexer.peek() {
				Some(&"(") => {},
				_ => return values
			}
			self.open();
			values.push(match self.next_token() {
				"i32.const" => Value::I32(i32::from_str(self.next_token()).expect("invalid i32 literal") as u32),
				"i64.const" => Value::I64(i64::from_str(self.next_token()).expect("invalid i64 literal") as u64),
				"f32.const" => Value::F32(parse_f32(self.next_token())),
				"f64.const" => Value::F64(parse_f64(self.next_token())),
				s => panic!(expected(s, &["i32.const", "i64.const", "f32.const", "f64.const"]))
			});
			self.close();
		}
	}

	fn opt_id(&mut self) -> Option<String> {
		if &self.lexer.peek()?[0..1] != "$" {
			return None;
		}

		Some(self.next_token()[1..].to_owned())
	}

	fn string(&mut self) -> String {
		let mut vec = Vec::new();
		let s = self.next_token();
		unescape_in(&mut vec, &s[1..s.len()-1]);
		String::from_utf8(vec).expect("invalid UTF-8")
	}

	fn bytestrings(&mut self) -> Vec<u8> {
		let mut vec = Vec::new();
		
		loop {
			match self.lexer.peek() {
				Some(s) if s.starts_with("\"") => {},
				_ => return vec,
			}

			let s = self.next_token();
			unescape_in(&mut vec, &s[1..s.len()-1])
		}
	}
}

fn unescape_in<'a>(vec: &mut Vec<u8>, s: &'a str) {
	enum State {
		Normal,
		Esc,
		Unicode,
		Codepoint(u32),
		Byte(u8),
	}

	let mut state = State::Normal;

	for c in s.bytes() {
		match state {
			State::Normal => match c {
				b'\\' => state = State::Esc,
				_ => vec.push(c),
			},
			State::Byte(h) => {
				if !c.is_ascii_hexdigit() {
					panic!("expected hex digit, found `{}`", c);
				}
				let l = parse_hex_digit(c);
				vec.push(h << 4 | l);
				state = State::Normal;
			},
			State::Esc => match c {
				b't' => {
					vec.push(b'\t');
					state = State::Normal;
				}
				b'n' => {
					vec.push(b'\n');
					state = State::Normal;
				}
				b'r' => {
					vec.push(b'\r');
					state = State::Normal;
				}
				b'\"' | b'\'' | b'\\' => {
					vec.push(c);
					state = State::Normal;
				}
				b'u' => {
					state = State::Unicode;
				}
				c if c.is_ascii_hexdigit() => {
					state = State::Byte(parse_hex_digit(c));
				}
				_ => panic!("unexpected escape `{}`", c),
			},
			State::Unicode => match c {
				b'{' => {
					state = State::Codepoint(0);
				}
				_ => panic!("expected `{{`, found `{}`", c),
			}
			State::Codepoint(v) => match c {
				b'}' => {
					let u: char = char::try_from(v).expect(&format!("invalid unicode point {:x}", v)).into();
					let mut s = [0u8; 4];
					let _ = u.encode_utf8(&mut s);
					vec.extend_from_slice(&s[..u.len_utf8()]);
					state = State::Normal;
				}
				c if c.is_ascii_hexdigit() => {
					let hb = parse_hex_digit(c);
					state = State::Codepoint(v << 4 | hb as u32);
				}
				_ => panic!("expected hex digit"),
			}
		}
	}
}

fn parse_hex_digit(c: u8) -> u8 {
	match c {
		b'0'...b'9' => c - b'0',
		b'a'...b'f' => c - b'a' + 10,
		b'A'...b'F' => c - b'A' + 10,
		_ => unreachable!()
	}
}

macro_rules! define_parse_f {
    ($name:ident, $f:ident, $i:ident, $parse_hex:ident) => (
		fn $name(s: &str) -> $f {
			let (negate, s) = match &s[0..1] {
				"-" => (true, &s[1..]),
				"+" => (false, &s[1..]),
				_ => (false, s),
			};
			let z = match &s[..3] {
				"inf" => $f::INFINITY,
				"nan" => $f::from_bits($f::INFINITY.to_bits() | $i::from_str_radix(&s[6..], 16).unwrap()),
				_ if s.contains('.') => $parse_hex(s, true).unwrap(),
				_ => $parse_hex(&s.replace("p", ".p"), true).unwrap(),
			};
			if negate { -z } else { z }
		}
	)
}

define_parse_f!(parse_f32, f32, u32, parse_hexf32);
define_parse_f!(parse_f64, f64, u64, parse_hexf64);

fn expected(found: &str, options: &[&str]) -> String{
	format!("found: {:?}, expected: {:?}", found, options)
}
