#include "math.h"

float math_fsqrt(float f)
{
	return __builtin_sqrtf(f);
}

int math_abs(int i)
{
	return __builtin_abs(i);
}

float math_fabs(float f)
{
	return __builtin_fabs(f);
}

int math_max(int i, int j)
{
	return i > j ? i : j;
}

float math_fmax(float i, float j)
{
	return i > j ? i : j;
}

int math_min(int i, int j)
{
	return (int)__builtin_wasm_min_f32(i, j);
}
float math_fmin(float i, float j)
{
	return __builtin_wasm_min_f32(i, j);
}

int math_round(float d)
{

	return (int)(d + 0.5f);
}
float math_distance(float aX, float aY, float bX, float bY)
{
	float xDiff = aX - bX;
	float yDiff = aY - bY;
	return math_fsqrt(xDiff * xDiff + yDiff * yDiff);
}
