#ifndef MATH_H
#define MATH_H


#include "wasm.h"


i32 min_i32(i32 a, i32 b);
i32 max_i32(i32 a, i32 b);
i32 abs_i32(i32 a);

f32 min_f32(f32 i, f32 j);
f32 max_f32(f32 i, f32 j);
f32 abs_f32(f32 a);
f32 sqrt_f32(f32 f);

i32 round_f32(f32 f);

f32 distance_vec2(f32 aX, f32 aY, f32 bX, f32 bY);

i32 cast_f32_i32(f32 f);

#endif
