use std::{f32, f64};
use std::fs::File;
use std::path::Path;
use std::io::{Cursor, Read};
use std::collections::HashMap;
use rust_wasm::*;
use script::*;

type Exports = HashMap<String, ExternVal>;

struct Registry {
	mod_exports: HashMap<Option<String>, Exports>,
	last_key: Option<String>,
}

pub fn run<P: AsRef<Path>>(path: P) {
	let mut f = File::open(path).unwrap();
	let mut src = String::new();
	f.read_to_string(&mut src).unwrap();
	let parser = parser::Parser::new(&src);

	let mut store = init_store();
	let mut registry = Registry {
		mod_exports: HashMap::new(),
		last_key: None,
	};

	// Special test host module
	init_spectest(&mut store, &mut registry);

	for cmd in parser {
		match cmd {
			Cmd::ModuleSource(src) => {
				let (opt_name, m) = decode_module_src(&src);

				let imports = resolve_imports(&m, &mut registry).unwrap();
				let export_names: Vec<String> = module_exports(&m).map(|(name, _)| name.to_owned()).collect();

				let inst = instantiate_module(&mut store, m, &imports[..]).unwrap();

				let exports = export_names.into_iter().map(|name| {
					let export = get_export(&inst, &name).unwrap();
					(name, export)
				}).collect();

				registry.last_key = opt_name.clone();
				registry.mod_exports.insert(opt_name, exports);
			}
			Cmd::Assertion(a) => {
				run_assertion(&mut store, &registry, a);
			}
			Cmd::Action(a) => {
				let _ = run_action(&mut store, &registry, &a);
			}
			Cmd::Register { name, mod_ref } => {
				let mod_name = if mod_ref.is_some() { &mod_ref } else { &registry.last_key };
				let inst = registry.mod_exports[mod_name].clone();
				registry.mod_exports.insert(Some(name), inst);
			}
		}
	}
}

fn decode_module_src(module: &ModuleSource) -> (Option<String>, ast::Module) {
	match *module {
		ModuleSource::Binary(ref name, ref bytes) => (name.clone(), decode_module(Cursor::new(bytes)).unwrap()),
		ModuleSource::Quoted(_, _) => unimplemented!("quoted modules are not supported"),
	}
}

fn run_assertion(store: &mut Store, registry: &Registry, assertion: Assertion) {
	use self::Assertion::*;

	println!("run assertion {:?}", assertion);
	match assertion {
		Return(action, expected) => {
			let result = run_action(store, registry, &action);
			match result {
				Ok(ref actual) if *actual == expected => {}
				_ => {
					panic!(
						"the result of the action `{:?}` is `{:?}` but should be `{:?}`",
						action, result, expected,
					);
				}
			}
		}
		ReturnCanonicalNan(action) => {
			let result = run_action(store, registry, &action).unwrap();
			assert!(result.len() == 1);
			let val = result[0];
			match val {
				values::Value::F32(f) if f.to_bits() == f32::NAN.to_bits() || f.to_bits() == (-f32::NAN).to_bits() => {},
				values::Value::F64(f) if f.to_bits() == f64::NAN.to_bits() || f.to_bits() == (-f64::NAN).to_bits() => {},
				_ => {
					panic!(
						"the result of the action `{:?}` is `{:?}` but should be a canonical NaN",
						action, result,
					);
				}
			};
		}
		ReturnArithmeticNan(action) => {
			let result = run_action(store, registry, &action).unwrap();
			assert!(result.len() == 1);
			let val = result[0];
			match val {
				values::Value::F32(f) if f.to_bits() & f32::NAN.to_bits() == f32::NAN.to_bits() => {},
				values::Value::F64(f) if f.to_bits() & f64::NAN.to_bits() == f64::NAN.to_bits() => {},
				_ => {
					panic!(
						"the result of the action `{:?}` is `{:?}` but should be an arithmetic NaN",
						action, result,
					);
				}
			};
		}
		TrapAction(action, _) => {
			if let Err(Error::CodeTrapped(_)) = run_action(store, registry, &action) {
				// There is no if let != in Rust?
			} else {
				panic!("the action `{:?}` should cause a trap", action);
			}
		}
		TrapInstantiate(module, _) => {
			let (_, m) = decode_module_src(&module);
			let imports = resolve_imports(&m, registry).unwrap();
			if let Err(Error::CodeTrapped(_)) = instantiate_module(store, m, &imports[..]) {
			} else {
				panic!("instantiating module `{:?}` should cause a trap", module);
			}
		}
		Exhaustion(action, reason) => {
			match (reason.as_ref(), run_action(store, registry, &action)) {
				("call stack exhausted", Err(Error::StackOverflow)) => (),
				(reason, err) => panic!("the action `{:?}` should cause a stack overflow (reason = {}, err = {:?})", action, reason, err),
			};
		}
		Invalid(module, reason) => {
			let (_, m) = decode_module_src(&module);
			// Do not resolve the imports for invalid modules
			match (reason, instantiate_module(store, m, &[]).err()) {
				(_, Some(Error::InvalidModule)) => (),
				(reason, err) => panic!("instantiating module `{:?}` should not be valid (reason = {}, err = {:?})", module, reason, err),
			}
		}
		Malformed(mod_src, _) => {
			match mod_src {
				ModuleSource::Binary(_, bytes) => {
					assert_eq!(decode_module(Cursor::new(bytes)).unwrap_err(), Error::DecodeModuleFailed);
				},
				ModuleSource::Quoted(_, _) => {
					// NB: quoted sources use text format, which we do not support
				}
			}
		}
		Unlinkable(module, reason) => {
			let (_, m) = decode_module_src(&module);

			let imports = match (reason.as_ref(), resolve_imports(&m, registry)) {
				("unknown import", Err(_)) => return,
				(_, Err(err)) => panic!("failed to resolve import: `{:?}`", err),
				(_, Ok(imports)) => imports,
			};

			match (reason.as_ref(), instantiate_module(store, m, &imports[..]).err()) {
				("incompatible import type", Some(Error::ImportTypeMismatch)) => (),
				("elements segment does not fit", Some(Error::ElemOffsetTooLarge(_))) => (),
				("data segment does not fit", Some(Error::DataOffsetTooLarge(_))) => (),
				(reason, err) => panic!("instantiating module `{:?}` should not link (reason = {}, err = {:?})", module, reason, err),
			}
		}
	}
}

fn run_action(store: &mut Store, registry: &Registry, action: &Action) -> Result<Vec<values::Value>, Error> {
	match *action {
		Action::Invoke { mod_ref: ref mod_name, ref func, ref args } => {
			let mod_name = if mod_name.is_some() { mod_name } else { &registry.last_key };
			match registry.mod_exports[mod_name][func] {
				ExternVal::Func(addr) => {
					invoke_func(store, addr, args.clone())
				}
				_ => panic!("extern val should be a function"),
			}
		}
		Action::Get { mod_ref: ref mod_name, ref global } => {
			let mod_name = if mod_name.is_some() { mod_name } else { &registry.last_key };
			match registry.mod_exports[mod_name][global] {
				ExternVal::Global(addr) => {
					Ok(vec![read_global(store, addr)])
				}
				_ => panic!("extern val should be a global"),
			}
		}
	}
}

fn init_spectest(store: &mut Store, registry: &mut Registry) {
	let mut symbols = HashMap::new();

	symbols.insert("table".to_owned(), ExternVal::Table(
		alloc_table(
			store,
			&types::Table { limits: types::Limits { min: 10, max: Some(20) }, elem: types::Elem::AnyFunc }
		)
	));

	symbols.insert("memory".to_owned(), ExternVal::Memory(
		alloc_mem(
			store,
			&types::Memory { limits: types::Limits { min: 1, max: Some(2) } }
		)
	));

	fn print(store: &mut Store, args_types: Vec<types::Value>) -> ExternVal {
		let args_len = args_types.len();
		let func = move |stack: &mut Vec<values::Value>| {
			for val in &stack[(stack.len() - args_len)..stack.len()] {
				println!("{:?}", val);
			}
			None
		};

		ExternVal::Func(
			alloc_func(
				store,
				&types::Func { args: args_types, result: Vec::new() },
				Box::new(func)
			)
		)
	}

	fn global(store: &mut Store, val: values::Value) -> ExternVal {
		ExternVal::Global(
			alloc_global(
				store,
				&types::Global { value: val.type_(), mutable: false },
				val
			)
		)
	}

	symbols.insert("print".to_owned(), print(store, vec![]));
	symbols.insert("print_i32".to_owned(), print(store, vec![types::I32]));
	symbols.insert("print_i32_f32".to_owned(), print(store, vec![types::I32, types::F32]));
	symbols.insert("print_f32".to_owned(), print(store, vec![types::F32]));
	symbols.insert("print_f64".to_owned(), print(store, vec![types::F64]));
	symbols.insert("print_f64_f64".to_owned(), print(store, vec![types::F64, types::F64]));
	symbols.insert("global_i32".to_owned(), global(store, values::Value::I32(666)));
	symbols.insert("global_f32".to_owned(), global(store, values::Value::F32(666.0)));
	symbols.insert("global_f64".to_owned(), global(store, values::Value::F64(666.0)));

	registry.mod_exports.insert(Some(String::from("spectest")), symbols);
}

#[derive(Debug)]
enum UnknownImport {
	UnknownModule { mod_name: String },
	UnknownSymbol { mod_name: String, symbol_name: String },
}

fn resolve_imports(m: &ast::Module, registry: &Registry) -> Result<Vec<ExternVal>, UnknownImport> {
	module_imports(m).map(|(mod_name, import_name, _)| {
		match registry.mod_exports.get(&Some(mod_name.to_owned())) {
			Some(ref mod_exports) => {
				match mod_exports.get(import_name) {
					Some(val) => Ok(val.clone()),
					None => Err(UnknownImport::UnknownSymbol {
						mod_name: mod_name.to_owned(),
						symbol_name: import_name.to_owned()
					}),
				}
			},
			None => Err(UnknownImport::UnknownModule { mod_name: mod_name.to_owned() }),
		}
	}).collect()
}
