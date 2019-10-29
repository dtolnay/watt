#![allow(bad_style)]
#![allow(dead_code)]

use std::ffi::c_void;

pub type wasm_name_t = wasm_byte_vec_t;
pub type wasm_valkind_t = u8;
pub type wasm_externkind_t = u8;
pub type wasm_message_t = wasm_name_t;
pub type wasm_func_callback_t = Option<
    unsafe extern "C" fn(args: *const wasm_val_t, results: *mut wasm_val_t) -> *mut wasm_trap_t,
>;
pub type wasm_func_callback_with_env_t = Option<
    unsafe extern "C" fn(
        env: *mut c_void,
        args: *const wasm_val_t,
        results: *mut wasm_val_t,
    ) -> *mut wasm_trap_t,
>;
pub type wasm_table_size_t = u32;
pub type wasm_memory_pages_t = u32;
pub type wasm_mutability_t = u8;
pub const WASM_I32: wasm_valkind_t = 0;
pub const WASM_I64: wasm_valkind_t = 1;
pub const WASM_F32: wasm_valkind_t = 2;
pub const WASM_F64: wasm_valkind_t = 3;

pub const WASM_EXTERN_FUNC: wasm_externkind_t = 0;
pub const WASM_EXTERN_GLOBAL: wasm_externkind_t = 1;
pub const WASM_EXTERN_TABLE: wasm_externkind_t = 2;
pub const WASM_EXTERN_MEMORY: wasm_externkind_t = 3;

#[repr(C)]
pub struct wasm_byte_vec_t {
    pub size: usize,
    pub data: *mut u8,
}
#[repr(C)]
pub struct wasm_extern_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_extern_t,
}
#[repr(C)]
pub struct wasm_extern_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_memory_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_table_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_global_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_func_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_shared_module_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_module_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_foreign_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_trap_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_instance_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_frame_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_frame_t,
}
#[repr(C)]
pub struct wasm_frame_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_val_vec_t {
    pub size: usize,
    pub data: *mut wasm_val_t,
}
#[repr(C)]
pub struct wasm_val_t {
    pub kind: wasm_valkind_t,
    pub of: wasm_val_t_union,
}
#[repr(C)]
pub union wasm_val_t_union {
    pub i32: i32,
    pub i64: i64,
    pub f32: f32,
    pub f64: f64,
    pub ref_: *mut wasm_ref_t,
}
#[repr(C)]
pub struct wasm_ref_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_exporttype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_exporttype_t,
}
#[repr(C)]
pub struct wasm_exporttype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_importtype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_importtype_t,
}
#[repr(C)]
pub struct wasm_importtype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_externtype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_externtype_t,
}
#[repr(C)]
pub struct wasm_externtype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_memorytype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_memorytype_t,
}
#[repr(C)]
pub struct wasm_memorytype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_tabletype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_tabletype_t,
}
#[repr(C)]
pub struct wasm_tabletype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_globaltype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_globaltype_t,
}
#[repr(C)]
pub struct wasm_globaltype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_functype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_functype_t,
}
#[repr(C)]
pub struct wasm_functype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_valtype_vec_t {
    pub size: usize,
    pub data: *mut *mut wasm_valtype_t,
}
#[repr(C)]
pub struct wasm_limits_t {
    pub min: u32,
    pub max: u32,
}

#[repr(C)]
pub struct wasm_valtype_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_store_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_engine_t {
    _unused: [u8; 0],
}
#[repr(C)]
pub struct wasm_config_t {
    _unused: [u8; 0],
}

#[link(name = "wasmtime_api")]
extern "C" {
    pub fn wasm_byte_vec_new_empty(out: *mut wasm_byte_vec_t);
    pub fn wasm_byte_vec_new_uninitialized(out: *mut wasm_byte_vec_t, arg1: usize);
    pub fn wasm_byte_vec_new(out: *mut wasm_byte_vec_t, arg1: usize, arg2: *const u8);
    pub fn wasm_byte_vec_copy(out: *mut wasm_byte_vec_t, arg1: *mut wasm_byte_vec_t);
    pub fn wasm_byte_vec_delete(arg1: *mut wasm_byte_vec_t);
    pub fn wasm_config_delete(arg1: *mut wasm_config_t);
    pub fn wasm_config_new() -> *mut wasm_config_t;
    pub fn wasm_engine_delete(arg1: *mut wasm_engine_t);
    pub fn wasm_engine_new() -> *mut wasm_engine_t;
    pub fn wasm_engine_new_with_config(arg1: *mut wasm_config_t) -> *mut wasm_engine_t;
    pub fn wasm_store_delete(arg1: *mut wasm_store_t);
    pub fn wasm_store_new(arg1: *mut wasm_engine_t) -> *mut wasm_store_t;
    pub fn wasm_valtype_delete(arg1: *mut wasm_valtype_t);
    pub fn wasm_valtype_vec_new_empty(out: *mut wasm_valtype_vec_t);
    pub fn wasm_valtype_vec_new_uninitialized(out: *mut wasm_valtype_vec_t, arg1: usize);
    pub fn wasm_valtype_vec_new(
        out: *mut wasm_valtype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_valtype_t,
    );
    pub fn wasm_valtype_vec_copy(out: *mut wasm_valtype_vec_t, arg1: *mut wasm_valtype_vec_t);
    pub fn wasm_valtype_vec_delete(arg1: *mut wasm_valtype_vec_t);
    pub fn wasm_valtype_copy(arg1: *mut wasm_valtype_t) -> *mut wasm_valtype_t;
    pub fn wasm_valtype_new(arg1: wasm_valkind_t) -> *mut wasm_valtype_t;
    pub fn wasm_valtype_kind(arg1: *const wasm_valtype_t) -> wasm_valkind_t;
    pub fn wasm_functype_delete(arg1: *mut wasm_functype_t);
    pub fn wasm_functype_vec_new_empty(out: *mut wasm_functype_vec_t);
    pub fn wasm_functype_vec_new_uninitialized(out: *mut wasm_functype_vec_t, arg1: usize);
    pub fn wasm_functype_vec_new(
        out: *mut wasm_functype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_functype_t,
    );
    pub fn wasm_functype_vec_copy(out: *mut wasm_functype_vec_t, arg1: *mut wasm_functype_vec_t);
    pub fn wasm_functype_vec_delete(arg1: *mut wasm_functype_vec_t);
    pub fn wasm_functype_copy(arg1: *mut wasm_functype_t) -> *mut wasm_functype_t;
    pub fn wasm_functype_new(
        params: *mut wasm_valtype_vec_t,
        results: *mut wasm_valtype_vec_t,
    ) -> *mut wasm_functype_t;
    pub fn wasm_functype_params(arg1: *const wasm_functype_t) -> *const wasm_valtype_vec_t;
    pub fn wasm_functype_results(arg1: *const wasm_functype_t) -> *const wasm_valtype_vec_t;
    pub fn wasm_globaltype_delete(arg1: *mut wasm_globaltype_t);
    pub fn wasm_globaltype_vec_new_empty(out: *mut wasm_globaltype_vec_t);
    pub fn wasm_globaltype_vec_new_uninitialized(out: *mut wasm_globaltype_vec_t, arg1: usize);
    pub fn wasm_globaltype_vec_new(
        out: *mut wasm_globaltype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_globaltype_t,
    );
    pub fn wasm_globaltype_vec_copy(
        out: *mut wasm_globaltype_vec_t,
        arg1: *mut wasm_globaltype_vec_t,
    );
    pub fn wasm_globaltype_vec_delete(arg1: *mut wasm_globaltype_vec_t);
    pub fn wasm_globaltype_copy(arg1: *mut wasm_globaltype_t) -> *mut wasm_globaltype_t;
    pub fn wasm_globaltype_new(
        arg1: *mut wasm_valtype_t,
        arg2: wasm_mutability_t,
    ) -> *mut wasm_globaltype_t;
    pub fn wasm_globaltype_content(arg1: *const wasm_globaltype_t) -> *const wasm_valtype_t;
    pub fn wasm_globaltype_mutability(arg1: *const wasm_globaltype_t) -> wasm_mutability_t;
    pub fn wasm_tabletype_delete(arg1: *mut wasm_tabletype_t);
    pub fn wasm_tabletype_vec_new_empty(out: *mut wasm_tabletype_vec_t);
    pub fn wasm_tabletype_vec_new_uninitialized(out: *mut wasm_tabletype_vec_t, arg1: usize);
    pub fn wasm_tabletype_vec_new(
        out: *mut wasm_tabletype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_tabletype_t,
    );
    pub fn wasm_tabletype_vec_copy(out: *mut wasm_tabletype_vec_t, arg1: *mut wasm_tabletype_vec_t);
    pub fn wasm_tabletype_vec_delete(arg1: *mut wasm_tabletype_vec_t);
    pub fn wasm_tabletype_copy(arg1: *mut wasm_tabletype_t) -> *mut wasm_tabletype_t;
    pub fn wasm_tabletype_new(
        arg1: *mut wasm_valtype_t,
        arg2: *const wasm_limits_t,
    ) -> *mut wasm_tabletype_t;
    pub fn wasm_tabletype_element(arg1: *const wasm_tabletype_t) -> *const wasm_valtype_t;
    pub fn wasm_tabletype_limits(arg1: *const wasm_tabletype_t) -> *const wasm_limits_t;
    pub fn wasm_memorytype_delete(arg1: *mut wasm_memorytype_t);
    pub fn wasm_memorytype_vec_new_empty(out: *mut wasm_memorytype_vec_t);
    pub fn wasm_memorytype_vec_new_uninitialized(out: *mut wasm_memorytype_vec_t, arg1: usize);
    pub fn wasm_memorytype_vec_new(
        out: *mut wasm_memorytype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_memorytype_t,
    );
    pub fn wasm_memorytype_vec_copy(
        out: *mut wasm_memorytype_vec_t,
        arg1: *mut wasm_memorytype_vec_t,
    );
    pub fn wasm_memorytype_vec_delete(arg1: *mut wasm_memorytype_vec_t);
    pub fn wasm_memorytype_copy(arg1: *mut wasm_memorytype_t) -> *mut wasm_memorytype_t;
    pub fn wasm_memorytype_new(arg1: *const wasm_limits_t) -> *mut wasm_memorytype_t;
    pub fn wasm_memorytype_limits(arg1: *const wasm_memorytype_t) -> *const wasm_limits_t;
    pub fn wasm_externtype_delete(arg1: *mut wasm_externtype_t);
    pub fn wasm_externtype_vec_new_empty(out: *mut wasm_externtype_vec_t);
    pub fn wasm_externtype_vec_new_uninitialized(out: *mut wasm_externtype_vec_t, arg1: usize);
    pub fn wasm_externtype_vec_new(
        out: *mut wasm_externtype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_externtype_t,
    );
    pub fn wasm_externtype_vec_copy(
        out: *mut wasm_externtype_vec_t,
        arg1: *mut wasm_externtype_vec_t,
    );
    pub fn wasm_externtype_vec_delete(arg1: *mut wasm_externtype_vec_t);
    pub fn wasm_externtype_copy(arg1: *mut wasm_externtype_t) -> *mut wasm_externtype_t;
    pub fn wasm_externtype_kind(arg1: *const wasm_externtype_t) -> wasm_externkind_t;
    pub fn wasm_functype_as_externtype(arg1: *mut wasm_functype_t) -> *mut wasm_externtype_t;
    pub fn wasm_globaltype_as_externtype(arg1: *mut wasm_globaltype_t) -> *mut wasm_externtype_t;
    pub fn wasm_tabletype_as_externtype(arg1: *mut wasm_tabletype_t) -> *mut wasm_externtype_t;
    pub fn wasm_memorytype_as_externtype(arg1: *mut wasm_memorytype_t) -> *mut wasm_externtype_t;
    pub fn wasm_externtype_as_functype(arg1: *mut wasm_externtype_t) -> *mut wasm_functype_t;
    pub fn wasm_externtype_as_globaltype(arg1: *mut wasm_externtype_t) -> *mut wasm_globaltype_t;
    pub fn wasm_externtype_as_tabletype(arg1: *mut wasm_externtype_t) -> *mut wasm_tabletype_t;
    pub fn wasm_externtype_as_memorytype(arg1: *mut wasm_externtype_t) -> *mut wasm_memorytype_t;
    pub fn wasm_functype_as_externtype_const(
        arg1: *const wasm_functype_t,
    ) -> *const wasm_externtype_t;
    pub fn wasm_globaltype_as_externtype_const(
        arg1: *const wasm_globaltype_t,
    ) -> *const wasm_externtype_t;
    pub fn wasm_tabletype_as_externtype_const(
        arg1: *const wasm_tabletype_t,
    ) -> *const wasm_externtype_t;
    pub fn wasm_memorytype_as_externtype_const(
        arg1: *const wasm_memorytype_t,
    ) -> *const wasm_externtype_t;
    pub fn wasm_externtype_as_functype_const(
        arg1: *const wasm_externtype_t,
    ) -> *const wasm_functype_t;
    pub fn wasm_externtype_as_globaltype_const(
        arg1: *const wasm_externtype_t,
    ) -> *const wasm_globaltype_t;
    pub fn wasm_externtype_as_tabletype_const(
        arg1: *const wasm_externtype_t,
    ) -> *const wasm_tabletype_t;
    pub fn wasm_externtype_as_memorytype_const(
        arg1: *const wasm_externtype_t,
    ) -> *const wasm_memorytype_t;
    pub fn wasm_importtype_delete(arg1: *mut wasm_importtype_t);
    pub fn wasm_importtype_vec_new_empty(out: *mut wasm_importtype_vec_t);
    pub fn wasm_importtype_vec_new_uninitialized(out: *mut wasm_importtype_vec_t, arg1: usize);
    pub fn wasm_importtype_vec_new(
        out: *mut wasm_importtype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_importtype_t,
    );
    pub fn wasm_importtype_vec_copy(
        out: *mut wasm_importtype_vec_t,
        arg1: *mut wasm_importtype_vec_t,
    );
    pub fn wasm_importtype_vec_delete(arg1: *mut wasm_importtype_vec_t);
    pub fn wasm_importtype_copy(arg1: *mut wasm_importtype_t) -> *mut wasm_importtype_t;
    pub fn wasm_importtype_new(
        module: *mut wasm_name_t,
        name: *mut wasm_name_t,
        arg1: *mut wasm_externtype_t,
    ) -> *mut wasm_importtype_t;
    pub fn wasm_importtype_module(arg1: *const wasm_importtype_t) -> *const wasm_name_t;
    pub fn wasm_importtype_name(arg1: *const wasm_importtype_t) -> *const wasm_name_t;
    pub fn wasm_importtype_type(arg1: *const wasm_importtype_t) -> *const wasm_externtype_t;
    pub fn wasm_exporttype_delete(arg1: *mut wasm_exporttype_t);
    pub fn wasm_exporttype_vec_new_empty(out: *mut wasm_exporttype_vec_t);
    pub fn wasm_exporttype_vec_new_uninitialized(out: *mut wasm_exporttype_vec_t, arg1: usize);
    pub fn wasm_exporttype_vec_new(
        out: *mut wasm_exporttype_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_exporttype_t,
    );
    pub fn wasm_exporttype_vec_copy(
        out: *mut wasm_exporttype_vec_t,
        arg1: *mut wasm_exporttype_vec_t,
    );
    pub fn wasm_exporttype_vec_delete(arg1: *mut wasm_exporttype_vec_t);
    pub fn wasm_exporttype_copy(arg1: *mut wasm_exporttype_t) -> *mut wasm_exporttype_t;
    pub fn wasm_exporttype_new(
        arg1: *mut wasm_name_t,
        arg2: *mut wasm_externtype_t,
    ) -> *mut wasm_exporttype_t;
    pub fn wasm_exporttype_name(arg1: *const wasm_exporttype_t) -> *const wasm_name_t;
    pub fn wasm_exporttype_type(arg1: *const wasm_exporttype_t) -> *const wasm_externtype_t;
    pub fn wasm_val_delete(v: *mut wasm_val_t);
    pub fn wasm_val_copy(out: *mut wasm_val_t, arg1: *const wasm_val_t);
    pub fn wasm_val_vec_new_empty(out: *mut wasm_val_vec_t);
    pub fn wasm_val_vec_new_uninitialized(out: *mut wasm_val_vec_t, arg1: usize);
    pub fn wasm_val_vec_new(out: *mut wasm_val_vec_t, arg1: usize, arg2: *const wasm_val_t);
    pub fn wasm_val_vec_copy(out: *mut wasm_val_vec_t, arg1: *mut wasm_val_vec_t);
    pub fn wasm_val_vec_delete(arg1: *mut wasm_val_vec_t);
    pub fn wasm_ref_delete(arg1: *mut wasm_ref_t);
    pub fn wasm_ref_copy(arg1: *const wasm_ref_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_same(arg1: *const wasm_ref_t, arg2: *const wasm_ref_t) -> bool;
    pub fn wasm_ref_get_host_info(arg1: *const wasm_ref_t) -> *mut c_void;
    pub fn wasm_ref_set_host_info(arg1: *mut wasm_ref_t, arg2: *mut c_void);
    pub fn wasm_ref_set_host_info_with_finalizer(
        arg1: *mut wasm_ref_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_frame_delete(arg1: *mut wasm_frame_t);
    pub fn wasm_frame_vec_new_empty(out: *mut wasm_frame_vec_t);
    pub fn wasm_frame_vec_new_uninitialized(out: *mut wasm_frame_vec_t, arg1: usize);
    pub fn wasm_frame_vec_new(
        out: *mut wasm_frame_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_frame_t,
    );
    pub fn wasm_frame_vec_copy(out: *mut wasm_frame_vec_t, arg1: *mut wasm_frame_vec_t);
    pub fn wasm_frame_vec_delete(arg1: *mut wasm_frame_vec_t);
    pub fn wasm_frame_copy(arg1: *const wasm_frame_t) -> *mut wasm_frame_t;
    pub fn wasm_frame_instance(arg1: *const wasm_frame_t) -> *mut wasm_instance_t;
    pub fn wasm_frame_func_index(arg1: *const wasm_frame_t) -> u32;
    pub fn wasm_frame_func_offset(arg1: *const wasm_frame_t) -> usize;
    pub fn wasm_frame_module_offset(arg1: *const wasm_frame_t) -> usize;
    pub fn wasm_trap_delete(arg1: *mut wasm_trap_t);
    pub fn wasm_trap_copy(arg1: *const wasm_trap_t) -> *mut wasm_trap_t;
    pub fn wasm_trap_same(arg1: *const wasm_trap_t, arg2: *const wasm_trap_t) -> bool;
    pub fn wasm_trap_get_host_info(arg1: *const wasm_trap_t) -> *mut c_void;
    pub fn wasm_trap_set_host_info(arg1: *mut wasm_trap_t, arg2: *mut c_void);
    pub fn wasm_trap_set_host_info_with_finalizer(
        arg1: *mut wasm_trap_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_trap_as_ref(arg1: *mut wasm_trap_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_trap(arg1: *mut wasm_ref_t) -> *mut wasm_trap_t;
    pub fn wasm_trap_as_ref_const(arg1: *const wasm_trap_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_trap_const(arg1: *const wasm_ref_t) -> *const wasm_trap_t;
    pub fn wasm_trap_new(store: *mut wasm_store_t, arg1: *const wasm_message_t)
        -> *mut wasm_trap_t;
    pub fn wasm_trap_message(arg1: *const wasm_trap_t, out: *mut wasm_message_t);
    pub fn wasm_trap_origin(arg1: *const wasm_trap_t) -> *mut wasm_frame_t;
    pub fn wasm_trap_trace(arg1: *const wasm_trap_t, out: *mut wasm_frame_vec_t);
    pub fn wasm_foreign_delete(arg1: *mut wasm_foreign_t);
    pub fn wasm_foreign_copy(arg1: *const wasm_foreign_t) -> *mut wasm_foreign_t;
    pub fn wasm_foreign_same(arg1: *const wasm_foreign_t, arg2: *const wasm_foreign_t) -> bool;
    pub fn wasm_foreign_get_host_info(arg1: *const wasm_foreign_t) -> *mut c_void;
    pub fn wasm_foreign_set_host_info(arg1: *mut wasm_foreign_t, arg2: *mut c_void);
    pub fn wasm_foreign_set_host_info_with_finalizer(
        arg1: *mut wasm_foreign_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_foreign_as_ref(arg1: *mut wasm_foreign_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_foreign(arg1: *mut wasm_ref_t) -> *mut wasm_foreign_t;
    pub fn wasm_foreign_as_ref_const(arg1: *const wasm_foreign_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_foreign_const(arg1: *const wasm_ref_t) -> *const wasm_foreign_t;
    pub fn wasm_foreign_new(arg1: *mut wasm_store_t) -> *mut wasm_foreign_t;
    pub fn wasm_module_delete(arg1: *mut wasm_module_t);
    pub fn wasm_module_copy(arg1: *const wasm_module_t) -> *mut wasm_module_t;
    pub fn wasm_module_same(arg1: *const wasm_module_t, arg2: *const wasm_module_t) -> bool;
    pub fn wasm_module_get_host_info(arg1: *const wasm_module_t) -> *mut c_void;
    pub fn wasm_module_set_host_info(arg1: *mut wasm_module_t, arg2: *mut c_void);
    pub fn wasm_module_set_host_info_with_finalizer(
        arg1: *mut wasm_module_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_module_as_ref(arg1: *mut wasm_module_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_module(arg1: *mut wasm_ref_t) -> *mut wasm_module_t;
    pub fn wasm_module_as_ref_const(arg1: *const wasm_module_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_module_const(arg1: *const wasm_ref_t) -> *const wasm_module_t;
    pub fn wasm_shared_module_delete(arg1: *mut wasm_shared_module_t);
    pub fn wasm_module_share(arg1: *const wasm_module_t) -> *mut wasm_shared_module_t;
    pub fn wasm_module_obtain(
        arg1: *mut wasm_store_t,
        arg2: *const wasm_shared_module_t,
    ) -> *mut wasm_module_t;
    pub fn wasm_module_new(
        arg1: *mut wasm_store_t,
        binary: *const wasm_byte_vec_t,
    ) -> *mut wasm_module_t;
    pub fn wasm_module_validate(arg1: *mut wasm_store_t, binary: *const wasm_byte_vec_t) -> bool;
    pub fn wasm_module_imports(arg1: *const wasm_module_t, out: *mut wasm_importtype_vec_t);
    pub fn wasm_module_exports(arg1: *const wasm_module_t, out: *mut wasm_exporttype_vec_t);
    pub fn wasm_module_serialize(arg1: *const wasm_module_t, out: *mut wasm_byte_vec_t);
    pub fn wasm_module_deserialize(
        arg1: *mut wasm_store_t,
        arg2: *const wasm_byte_vec_t,
    ) -> *mut wasm_module_t;
    pub fn wasm_func_delete(arg1: *mut wasm_func_t);
    pub fn wasm_func_copy(arg1: *const wasm_func_t) -> *mut wasm_func_t;
    pub fn wasm_func_same(arg1: *const wasm_func_t, arg2: *const wasm_func_t) -> bool;
    pub fn wasm_func_get_host_info(arg1: *const wasm_func_t) -> *mut c_void;
    pub fn wasm_func_set_host_info(arg1: *mut wasm_func_t, arg2: *mut c_void);
    pub fn wasm_func_set_host_info_with_finalizer(
        arg1: *mut wasm_func_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_func_as_ref(arg1: *mut wasm_func_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_func(arg1: *mut wasm_ref_t) -> *mut wasm_func_t;
    pub fn wasm_func_as_ref_const(arg1: *const wasm_func_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_func_const(arg1: *const wasm_ref_t) -> *const wasm_func_t;
    pub fn wasm_func_new(
        arg1: *mut wasm_store_t,
        arg2: *const wasm_functype_t,
        arg3: wasm_func_callback_t,
    ) -> *mut wasm_func_t;
    pub fn wasm_func_new_with_env(
        arg1: *mut wasm_store_t,
        type_: *const wasm_functype_t,
        arg2: wasm_func_callback_with_env_t,
        env: *mut c_void,
        finalizer: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    ) -> *mut wasm_func_t;
    pub fn wasm_func_type(arg1: *const wasm_func_t) -> *mut wasm_functype_t;
    pub fn wasm_func_param_arity(arg1: *const wasm_func_t) -> usize;
    pub fn wasm_func_result_arity(arg1: *const wasm_func_t) -> usize;
    pub fn wasm_func_call(
        arg1: *const wasm_func_t,
        args: *const wasm_val_t,
        results: *mut wasm_val_t,
    ) -> *mut wasm_trap_t;
    pub fn wasm_global_delete(arg1: *mut wasm_global_t);
    pub fn wasm_global_copy(arg1: *const wasm_global_t) -> *mut wasm_global_t;
    pub fn wasm_global_same(arg1: *const wasm_global_t, arg2: *const wasm_global_t) -> bool;
    pub fn wasm_global_get_host_info(arg1: *const wasm_global_t) -> *mut c_void;
    pub fn wasm_global_set_host_info(arg1: *mut wasm_global_t, arg2: *mut c_void);
    pub fn wasm_global_set_host_info_with_finalizer(
        arg1: *mut wasm_global_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_global_as_ref(arg1: *mut wasm_global_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_global(arg1: *mut wasm_ref_t) -> *mut wasm_global_t;
    pub fn wasm_global_as_ref_const(arg1: *const wasm_global_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_global_const(arg1: *const wasm_ref_t) -> *const wasm_global_t;
    pub fn wasm_global_new(
        arg1: *mut wasm_store_t,
        arg2: *const wasm_globaltype_t,
        arg3: *const wasm_val_t,
    ) -> *mut wasm_global_t;
    pub fn wasm_global_type(arg1: *const wasm_global_t) -> *mut wasm_globaltype_t;
    pub fn wasm_global_get(arg1: *const wasm_global_t, out: *mut wasm_val_t);
    pub fn wasm_global_set(arg1: *mut wasm_global_t, arg2: *const wasm_val_t);
    pub fn wasm_table_delete(arg1: *mut wasm_table_t);
    pub fn wasm_table_copy(arg1: *const wasm_table_t) -> *mut wasm_table_t;
    pub fn wasm_table_same(arg1: *const wasm_table_t, arg2: *const wasm_table_t) -> bool;
    pub fn wasm_table_get_host_info(arg1: *const wasm_table_t) -> *mut c_void;
    pub fn wasm_table_set_host_info(arg1: *mut wasm_table_t, arg2: *mut c_void);
    pub fn wasm_table_set_host_info_with_finalizer(
        arg1: *mut wasm_table_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_table_as_ref(arg1: *mut wasm_table_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_table(arg1: *mut wasm_ref_t) -> *mut wasm_table_t;
    pub fn wasm_table_as_ref_const(arg1: *const wasm_table_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_table_const(arg1: *const wasm_ref_t) -> *const wasm_table_t;
    pub fn wasm_table_new(
        arg1: *mut wasm_store_t,
        arg2: *const wasm_tabletype_t,
        init: *mut wasm_ref_t,
    ) -> *mut wasm_table_t;
    pub fn wasm_table_type(arg1: *const wasm_table_t) -> *mut wasm_tabletype_t;
    pub fn wasm_table_get(arg1: *const wasm_table_t, index: wasm_table_size_t) -> *mut wasm_ref_t;
    pub fn wasm_table_set(
        arg1: *mut wasm_table_t,
        index: wasm_table_size_t,
        arg2: *mut wasm_ref_t,
    ) -> bool;
    pub fn wasm_table_size(arg1: *const wasm_table_t) -> wasm_table_size_t;
    pub fn wasm_table_grow(
        arg1: *mut wasm_table_t,
        delta: wasm_table_size_t,
        init: *mut wasm_ref_t,
    ) -> bool;
    pub fn wasm_memory_delete(arg1: *mut wasm_memory_t);
    pub fn wasm_memory_copy(arg1: *const wasm_memory_t) -> *mut wasm_memory_t;
    pub fn wasm_memory_same(arg1: *const wasm_memory_t, arg2: *const wasm_memory_t) -> bool;
    pub fn wasm_memory_get_host_info(arg1: *const wasm_memory_t) -> *mut c_void;
    pub fn wasm_memory_set_host_info(arg1: *mut wasm_memory_t, arg2: *mut c_void);
    pub fn wasm_memory_set_host_info_with_finalizer(
        arg1: *mut wasm_memory_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_memory_as_ref(arg1: *mut wasm_memory_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_memory(arg1: *mut wasm_ref_t) -> *mut wasm_memory_t;
    pub fn wasm_memory_as_ref_const(arg1: *const wasm_memory_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_memory_const(arg1: *const wasm_ref_t) -> *const wasm_memory_t;
    pub fn wasm_memory_new(
        arg1: *mut wasm_store_t,
        arg2: *const wasm_memorytype_t,
    ) -> *mut wasm_memory_t;
    pub fn wasm_memory_type(arg1: *const wasm_memory_t) -> *mut wasm_memorytype_t;
    pub fn wasm_memory_data(arg1: *mut wasm_memory_t) -> *mut u8;
    pub fn wasm_memory_data_size(arg1: *const wasm_memory_t) -> usize;
    pub fn wasm_memory_size(arg1: *const wasm_memory_t) -> wasm_memory_pages_t;
    pub fn wasm_memory_grow(arg1: *mut wasm_memory_t, delta: wasm_memory_pages_t) -> bool;
    pub fn wasm_extern_delete(arg1: *mut wasm_extern_t);
    pub fn wasm_extern_copy(arg1: *const wasm_extern_t) -> *mut wasm_extern_t;
    pub fn wasm_extern_same(arg1: *const wasm_extern_t, arg2: *const wasm_extern_t) -> bool;
    pub fn wasm_extern_get_host_info(arg1: *const wasm_extern_t) -> *mut c_void;
    pub fn wasm_extern_set_host_info(arg1: *mut wasm_extern_t, arg2: *mut c_void);
    pub fn wasm_extern_set_host_info_with_finalizer(
        arg1: *mut wasm_extern_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_extern_as_ref(arg1: *mut wasm_extern_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_extern(arg1: *mut wasm_ref_t) -> *mut wasm_extern_t;
    pub fn wasm_extern_as_ref_const(arg1: *const wasm_extern_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_extern_const(arg1: *const wasm_ref_t) -> *const wasm_extern_t;
    pub fn wasm_extern_vec_new_empty(out: *mut wasm_extern_vec_t);
    pub fn wasm_extern_vec_new_uninitialized(out: *mut wasm_extern_vec_t, arg1: usize);
    pub fn wasm_extern_vec_new(
        out: *mut wasm_extern_vec_t,
        arg1: usize,
        arg2: *const *mut wasm_extern_t,
    );
    pub fn wasm_extern_vec_copy(out: *mut wasm_extern_vec_t, arg1: *mut wasm_extern_vec_t);
    pub fn wasm_extern_vec_delete(arg1: *mut wasm_extern_vec_t);
    pub fn wasm_extern_kind(arg1: *const wasm_extern_t) -> wasm_externkind_t;
    pub fn wasm_extern_type(arg1: *const wasm_extern_t) -> *mut wasm_externtype_t;
    pub fn wasm_func_as_extern(arg1: *mut wasm_func_t) -> *mut wasm_extern_t;
    pub fn wasm_global_as_extern(arg1: *mut wasm_global_t) -> *mut wasm_extern_t;
    pub fn wasm_table_as_extern(arg1: *mut wasm_table_t) -> *mut wasm_extern_t;
    pub fn wasm_memory_as_extern(arg1: *mut wasm_memory_t) -> *mut wasm_extern_t;
    pub fn wasm_extern_as_func(arg1: *mut wasm_extern_t) -> *mut wasm_func_t;
    pub fn wasm_extern_as_global(arg1: *mut wasm_extern_t) -> *mut wasm_global_t;
    pub fn wasm_extern_as_table(arg1: *mut wasm_extern_t) -> *mut wasm_table_t;
    pub fn wasm_extern_as_memory(arg1: *mut wasm_extern_t) -> *mut wasm_memory_t;
    pub fn wasm_func_as_extern_const(arg1: *const wasm_func_t) -> *const wasm_extern_t;
    pub fn wasm_global_as_extern_const(arg1: *const wasm_global_t) -> *const wasm_extern_t;
    pub fn wasm_table_as_extern_const(arg1: *const wasm_table_t) -> *const wasm_extern_t;
    pub fn wasm_memory_as_extern_const(arg1: *const wasm_memory_t) -> *const wasm_extern_t;
    pub fn wasm_extern_as_func_const(arg1: *const wasm_extern_t) -> *const wasm_func_t;
    pub fn wasm_extern_as_global_const(arg1: *const wasm_extern_t) -> *const wasm_global_t;
    pub fn wasm_extern_as_table_const(arg1: *const wasm_extern_t) -> *const wasm_table_t;
    pub fn wasm_extern_as_memory_const(arg1: *const wasm_extern_t) -> *const wasm_memory_t;
    pub fn wasm_instance_delete(arg1: *mut wasm_instance_t);
    pub fn wasm_instance_copy(arg1: *const wasm_instance_t) -> *mut wasm_instance_t;
    pub fn wasm_instance_same(arg1: *const wasm_instance_t, arg2: *const wasm_instance_t) -> bool;
    pub fn wasm_instance_get_host_info(arg1: *const wasm_instance_t) -> *mut c_void;
    pub fn wasm_instance_set_host_info(arg1: *mut wasm_instance_t, arg2: *mut c_void);
    pub fn wasm_instance_set_host_info_with_finalizer(
        arg1: *mut wasm_instance_t,
        arg2: *mut c_void,
        arg3: Option<unsafe extern "C" fn(arg1: *mut c_void)>,
    );
    pub fn wasm_instance_as_ref(arg1: *mut wasm_instance_t) -> *mut wasm_ref_t;
    pub fn wasm_ref_as_instance(arg1: *mut wasm_ref_t) -> *mut wasm_instance_t;
    pub fn wasm_instance_as_ref_const(arg1: *const wasm_instance_t) -> *const wasm_ref_t;
    pub fn wasm_ref_as_instance_const(arg1: *const wasm_ref_t) -> *const wasm_instance_t;
    pub fn wasm_instance_new(
        arg1: *mut wasm_store_t,
        arg2: *const wasm_module_t,
        imports: *const *const wasm_extern_t,
        arg3: *mut *mut wasm_trap_t,
    ) -> *mut wasm_instance_t;
    pub fn wasm_instance_exports(arg1: *const wasm_instance_t, out: *mut wasm_extern_vec_t);
}
