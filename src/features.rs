#[macro_export]
macro_rules! wasm_macro_features {
    ($wasm:expr; $($feature:expr),* $(,)?) => {
        $crate::WasmMacro::new_with_features(
            $wasm,
            &[$(
                #[cfg(feature = $feature)] $feature,
            )*]
        )
    };
}
