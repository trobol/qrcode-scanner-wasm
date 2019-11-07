#ifndef MATH_H
#define MATH_H

#include "wasm.h"

int abs(int i);
float fabs(float i);

int max(int i, int j);
float fmax(float i, float j);

int min(int i, int j);
float fmin(float i, float j);

import float fsqrt(float num);

int round(float d);

float distance(float aX, float aY, float bX, float bY);

#endif