#ifndef MATH_H
#define MATH_H


#include "wasm.h"

int math_abs(int i);
float math_fabs(float i);

int math_max(int i, int j);
float math_fmax(float i, float j);

int math_min(int i, int j);
float math_fmin(float i, float j);

float math_fsqrt(float num);

int math_round(float d);

float math_distance(float aX, float aY, float bX, float bY);

#endif