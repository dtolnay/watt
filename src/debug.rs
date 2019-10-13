use watt_runtime::ast::Module;
use watt_runtime::{module_exports, module_imports};

pub fn print_module(module: &Module) {
    let mut imports: Vec<_> = module_imports(module).collect();
    imports.sort_by_key(|entry| entry.1);
    for (_env, name, sig) in imports {
        eprintln!("IMPORT {:?}: {:?}", name, sig);
    }

    let mut exports: Vec<_> = module_exports(module).collect();
    exports.sort_by_key(|entry| entry.0);
    for (name, sig) in exports {
        eprintln!("EXPORT {:?}: {:?}", name, sig);
    }
}
