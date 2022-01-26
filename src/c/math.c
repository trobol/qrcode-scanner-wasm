#include "math.h"

i32 sign_i32(i32 c) {
	return c >> 31;
}

i32 min_i32(i32 a, i32 b) {
	i32 c = a-b;
	return b + (c & sign_i32(c));
}

i32 max_i32(i32 a, i32 b) {
	i32 c = b-a;
	return a + (c & ~sign_i32(c));
}

i32 abs_i32(i32 a) {
	return __builtin_abs(a);
}

f32 min_f32(f32 i, f32 j)
{
	return __builtin_wasm_min_f32(i, j);
}

f32 max_f32(f32 i, f32 j) {
	return __builtin_wasm_max_f32(i, j);
}

f32 abs_f32(f32 a) {
	return __builtin_fabsf(a);
}

f32 sqrt_f32(f32 f)
{
	return __builtin_sqrtf(f);
}

i32 round_f32(f32 f) {
	return cast_f32_i32(f + 0.5f);
}

f32 distance_vec2(f32 aX, f32 aY, f32 bX, f32 bY)
{
	f32 xDiff = aX - bX;
	f32 yDiff = aY - bY;
	return sqrt_f32(xDiff * xDiff + yDiff * yDiff);
}

i32 cast_f32_i32(f32 f) {
	//return __builtin_wasm_trunc_saturate_s_i32_f32(f);
	return (int)f;
}