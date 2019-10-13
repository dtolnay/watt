use std;
use std::ops::*;

use core;
use core::ptr::copy_nonoverlapping;

pub trait IntOp<S=Self> {
	type FloatType;

	// IUnOp
	fn leading_zeros(self) -> Self;
	fn trailing_zeros(self) -> Self;
	fn count_ones(self) -> Self;

	// IBinOp
	fn add(self, rhs: Self) -> Self;
	fn sub(self, rhs: Self) -> Self;
	fn mul(self, rhs: Self) -> Self;
	fn divs(self, rhs: Self) -> Option<S>;
	fn divu(self, rhs: Self) -> Option<S>;
	fn rems(self, rhs: Self) -> Option<S>;
	fn remu(self, rhs: Self) -> Option<S>;
	fn and(self, rhs: Self) -> Self;
	fn or(self, rhs: Self) -> Self;
	fn xor(self, rhs: Self) -> Self;
	fn shl(self, rhs: Self) -> Self;
	fn shrs(self, rhs: Self) -> Self;
	fn shru(self, rhs: Self) -> Self;
	fn rotr(self, rhs: Self) -> Self;
	fn rotl(self, rhs: Self) -> Self;

	// ITestOp
	fn eqz(self) -> bool;

	// IRelOp
	fn eq(self, rhs: Self) -> bool;
	fn ne(self, rhs: Self) -> bool;
	fn lts(self, rhs: Self) -> bool;
	fn ltu(self, rhs: Self) -> bool;
	fn gts(self, rhs: Self) -> bool;
	fn gtu(self, rhs: Self) -> bool;
	fn les(self, rhs: Self) -> bool;
	fn leu(self, rhs: Self) -> bool;
	fn ges(self, rhs: Self) -> bool;
	fn geu(self, rhs: Self) -> bool;

	// ConvertOp
	fn to_u32(self) -> u32;
	fn to_u64(self) -> u64;
	fn to_i64(self) -> i64;
	fn to_uf32(self) -> f32; // Unsigned convert to f32
	fn to_if32(self) -> f32; // Signed convert to f32
	fn to_uf64(self) -> f64;
	fn to_if64(self) -> f64;
	fn reinterpret(self) -> Self::FloatType;
}

macro_rules! impl_int_op {
	($T:ty, $S:ty, $U:ty, $F:ty) => (
		impl IntOp for $T {
			type FloatType=$F;

			#[inline]
			fn leading_zeros(self) -> $T {
				<$T>::leading_zeros(self) as $T
			}

			#[inline]
			fn trailing_zeros(self) -> $T {
				<$T>::trailing_zeros(self) as $T
			}

			#[inline]
			fn count_ones(self) -> $T {
				<$T>::count_ones(self) as $T
			}

			#[inline]
			fn add(self, rhs: $T) -> $T {
				<$T>::wrapping_add(self, rhs)
			}

			#[inline]
			fn sub(self, rhs: $T) -> $T {
				<$T>::wrapping_sub(self, rhs)
			}

			#[inline]
			fn mul(self, rhs: $T) -> $T {
				<$T>::wrapping_mul(self, rhs)
			}

			#[inline]
			fn divs(self, rhs: $T) -> Option<$T> {
				let s_self = self as $S;
				let s_rhs = rhs as $S;
				match <$S>::checked_div(s_self, s_rhs) {
					Some(c) => Some(c as $T),
					None => None
				}
			}

			#[inline]
			fn divu(self, rhs: $T) -> Option<$T> {
				<$T>::checked_div(self, rhs)
			}

			#[inline]
			fn rems(self, rhs: $T) -> Option<$T> {
				if rhs == 0 {
					return None
				}
				let s_self = self as $S;
				let s_rhs = rhs as $S;
				Some(<$S>::wrapping_rem(s_self, s_rhs) as $T)
			}

			#[inline]
			fn remu(self, rhs: $T) -> Option<$T> {
				<$T>::checked_rem(self, rhs)
			}

			#[inline]
			fn and(self, rhs: $T) -> $T {
				<$T>::bitand(self, rhs)
			}

			#[inline]
			fn or(self, rhs: $T) -> $T {
				<$T>::bitor(self, rhs)
			}

			#[inline]
			fn xor(self, rhs: $T) -> $T {
				<$T>::bitxor(self, rhs)
			}

			#[inline]
			fn shl(self, rhs: $T) -> $T {
				<$T>::wrapping_shl(self, rhs as u32)
			}

			#[inline]
			fn shrs(self, rhs: $T) -> $T {
				let s_self = self as $S;
				<$S>::wrapping_shr(s_self, rhs as u32) as $T
			}

			#[inline]
			fn shru(self, rhs: $T) -> $T {
				<$T>::wrapping_shr(self, rhs as u32)
			}

			#[inline]
			fn rotr(self, rhs: $T) -> $T {
				<$T>::rotate_right(self, rhs as u32)
			}

			#[inline]
			fn rotl(self, rhs: $T) -> $T {
				<$T>::rotate_left(self, rhs as u32)
			}

			#[inline]
			fn eqz(self) -> bool {
				self == 0
			}

			#[inline]
			fn eq(self, rhs: $T) -> bool {
				self == rhs
			}

			#[inline]
			fn ne(self, rhs: $T) -> bool {
				self != rhs
			}

			#[inline]
			fn lts(self, rhs: $T) -> bool {
				(self as $S) < (rhs as $S)
			}

			#[inline]
			fn ltu(self, rhs: $T) -> bool {
				self < rhs
			}

			#[inline]
			fn gts(self, rhs: $T) -> bool {
				(self as $S) > (rhs as $S)
			}

			#[inline]
			fn gtu(self, rhs: $T) -> bool {
				self > rhs
			}

			#[inline]
			fn les(self, rhs: $T) -> bool {
				(self as $S) <= (rhs as $S)
			}

			#[inline]
			fn leu(self, rhs: $T) -> bool {
				self <= rhs
			}

			#[inline]
			fn ges(self, rhs: $T) -> bool {
				(self as $S) >= (rhs as $S)
			}

			#[inline]
			fn geu(self, rhs: $T) -> bool {
				self >= rhs
			}

			#[inline]
			fn to_u32(self) -> u32 {
				self as u32
			}

			#[inline]
			fn to_u64(self) -> u64 {
				self as u64
			}

			#[inline]
			fn to_i64(self) -> i64 {
				(self as $S) as i64
			}

			#[inline]
			fn to_uf32(self) -> f32 {
				self as f32
			}

			#[inline]
			fn to_if32(self) -> f32 {
				(self as $S) as f32
			}

			#[inline]
			fn to_uf64(self) -> f64 {
				self as f64
			}

			#[inline]
			fn to_if64(self) -> f64 {
				(self as $S) as f64
			}

			#[inline]
			fn reinterpret(self) -> $F {
				<$F>::from_bits(self)
			}
		}
	)
}
impl_int_op!(u32, i32, u32, f32);
impl_int_op!(u64, i64, u64, f64);

// From crate byteorder
macro_rules! impl_bits_ops {
	($ty:ty, $size:expr) => {
		impl BitsOp for $ty {

			#[inline]
			fn from_bits(src: &[u8]) -> $ty {
				assert!($size == core::mem::size_of::<$ty>());
				assert!($size <= src.len());
				let mut data: $ty = 0;
				unsafe {
					copy_nonoverlapping(
						src.as_ptr(),
						&mut data as *mut $ty as *mut u8,
						$size);
				}
				data.to_le()
			}

			#[inline]
			fn to_bits(self, dst: &mut [u8]) {
				assert!($size == core::mem::size_of::<$ty>());
				assert_eq!($size, dst.len());

				unsafe {
					copy_nonoverlapping(
						[self].as_ptr() as *const u8,
						dst.as_mut_ptr(),
						dst.len());
				}
			}
		}
	}
}

pub trait BitsOp {
	// MemOp
	fn from_bits(src: &[u8]) -> Self;
	fn to_bits(self, dst: &mut [u8]);
}

impl_bits_ops!(u8,  1);
impl_bits_ops!(i8,  1);
impl_bits_ops!(u16, 2);
impl_bits_ops!(i16, 2);
impl_bits_ops!(u32, 4);
impl_bits_ops!(i32, 4);
impl_bits_ops!(u64, 8);
impl_bits_ops!(i64, 8);

pub trait FloatOp {
	type IntType;

	// FUnOp
	fn neg(self) -> Self;
	fn abs(self) -> Self;
	fn ceil(self) -> Self;
	fn floor(self) -> Self;
	fn trunc(self) -> Self;
	/// round-to-nearest ties-to-even
	fn nearest(self) -> Self;
	fn sqrt(self) -> Self;

	// FBinOp
	fn add(self, rhs: Self) -> Self;
	fn sub(self, rhs: Self) -> Self;
	fn mul(self, rhs: Self) -> Self;
	fn div(self, rhs: Self) -> Self;
	fn min(self, rhs: Self) -> Self;
	fn max(self, rhs: Self) -> Self;
	fn copysign(self, rhs: Self) -> Self;

	// FRelOp
	fn eq(self, rhs: Self) -> bool;
	fn ne(self, rhs: Self) -> bool;
	fn lt(self, rhs: Self) -> bool;
	fn gt(self, rhs: Self) -> bool;
	fn le(self, rhs: Self) -> bool;
	fn ge(self, rhs: Self) -> bool;

	// Convert
	fn to_i32(self) -> Option<i32>;
	fn to_i64(self) -> Option<i64>;
	fn to_u32(self) -> Option<u32>;
	fn to_u64(self) -> Option<u64>;
	fn reinterpret(self) -> Self::IntType;

	// Canonical NaN
	fn is_canonical_nan(self) -> bool;
}

macro_rules! impl_convert_float_s {
	($T:ty, $U:ty, $N:ident) => (
		#[inline]
		fn $N(self) -> Option<$U> {
			if self.is_nan() {
				None
			} else {
				if self >= -(<$U>::min_value() as $T) || self < <$U>::min_value() as $T {
					None
				} else {
					Some(self.trunc() as $U)
				}
			}
		}
	)
}

macro_rules! impl_convert_float_u {
	($T:ty, $U:ty, $S:ty, $N:ident) => (
		#[inline]
		fn $N(self) -> Option<$U> {
			if self.is_nan() {
				None
			} else {
				if self >= -(<$S>::min_value() as $T) * 2.0 || self <= -1.0 {
					None
				} else {
					Some(self.trunc() as $U)
				}
			}
		}
	)
}

macro_rules! impl_float_op {
	($T:ty, $I:ty, $SB:expr, $copysign:ident, $NAN:expr) => (
		impl FloatOp for $T {
			type IntType = $I;

			#[inline]
			fn neg(self) -> $T {
				std::ops::Neg::neg(self)
			}

			#[inline]
			fn abs(self) -> $T {
				<$T>::abs(self)
			}

			#[inline]
			fn ceil(self) -> $T {
				<$T>::ceil(self)
			}

			#[inline]
			fn floor(self) -> $T {
				<$T>::floor(self)
			}

			#[inline]
			fn trunc(self) -> $T {
				<$T>::trunc(self)
			}

			#[inline]
			fn nearest(self) -> $T {
				// Implementation from
				// https://github.com/WebAssembly/spec/blob/fb7e7e1e381ffc283c923a87fdfea5ebbd213737/interpreter/exec/float.ml#L148

				// preserve the sign of 0
				if self == 0.0 {
					return self;
				}
				if self.is_nan() {
					return $NAN
				}
				let u = self.ceil();
				let d = self.floor();
				let um = (self - u).abs();
				let dm = (self - d).abs();
				let half_u = u / 2.0;
				if um < dm || um == dm && half_u.floor() == half_u { u } else { d }
			}

			#[inline]
			fn sqrt(self) -> $T {
				<$T>::sqrt(self)
			}

			#[inline]
			fn add(self, rhs: $T) -> $T {
				self + rhs
			}

			#[inline]
			fn sub(self, rhs: $T) -> $T {
				self - rhs
			}

			#[inline]
			fn mul(self, rhs: $T) -> $T {
				self * rhs
			}

			#[inline]
			fn div(self, rhs: $T) -> $T {
				self / rhs
			}

			#[inline]
			fn min(self, rhs: $T) -> $T {
				// min(-0.0, 0.0) == -0.0
				if self == rhs {
					(self.to_bits() | rhs.to_bits()).reinterpret()
				} else if self < rhs {
					self
				} else if self > rhs {
					rhs
				} else {
					$NAN
				}
			}

			#[inline]
			fn max(self, rhs: $T) -> $T {
				// max(-0.0, 0.0) == 0.0
				if self == rhs {
					(self.to_bits() & rhs.to_bits()).reinterpret()
				} else if self > rhs {
					self
				} else if self < rhs {
					rhs
				} else {
					$NAN
				}
			}

			#[inline]
			fn copysign(self, rhs: $T) -> $T {
				use std::intrinsics;
				unsafe { intrinsics::$copysign(self, rhs) }
			}

			#[inline]
			fn eq(self, rhs: $T) -> bool {
				self == rhs
			}

			#[inline]
			fn ne(self, rhs: $T) -> bool {
				self != rhs
			}

			#[inline]
			fn lt(self, rhs: $T) -> bool {
				self < rhs
			}

			#[inline]
			fn gt(self, rhs: $T) -> bool {
				self > rhs
			}

			#[inline]
			fn le(self, rhs: $T) -> bool {
				self <= rhs
			}

			#[inline]
			fn ge(self, rhs: $T) -> bool {
				self >= rhs
			}

			impl_convert_float_s!($T, i32, to_i32);
			impl_convert_float_s!($T, i64, to_i64);
			impl_convert_float_u!($T, u32, i32, to_u32);
			impl_convert_float_u!($T, u64, i64, to_u64);

			#[inline]
			fn reinterpret(self) -> $I {
				self.to_bits()
			}

			#[inline]
			fn is_canonical_nan(self) -> bool {
				self.to_bits() == $NAN.to_bits() || self.to_bits() == (-$NAN).to_bits()
			}
		}
	)
}

impl_float_op!(f32, u32, 32, copysignf32, std::f32::NAN);
impl_float_op!(f64, u64, 64, copysignf64, std::f64::NAN);

// Promote/Demote are only available in one way
pub trait FloatPromoteOp {
	fn promote(self) -> f64;
}

pub trait FloatDemoteOp {
	fn demote(self) -> f32;
}

impl FloatPromoteOp for f32 {
	#[inline]
	fn promote(self) -> f64 {
		self as f64
	}
}

impl FloatDemoteOp for f64 {
	#[inline]
	fn demote(self) -> f32 {
		self as f32
	}
}
