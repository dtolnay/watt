use crate::runtime::Module;

#[cfg(jit)]
pub fn print_module(_module: &Module) {
    // let mut imports: Vec<_> = module_imports(module).collect();
    // imports.sort_by_key(|entry| entry.1);
    // for (_env, name, sig) in imports {
    //     eprintln!("IMPORT {:?}: {:?}", name, sig);
    // }
    //
    // let mut exports: Vec<_> = module_exports(module).collect();
    // exports.sort_by_key(|entry| entry.0);
    // for (name, sig) in exports {
    //     eprintln!("EXPORT {:?}: {:?}", name, sig);
    // }
}

#[cfg(not(jit))]
pub fn print_module(module: &Module) {
    use crate::runtime::{module_exports, module_imports};

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
