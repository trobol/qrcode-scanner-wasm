#ifndef MATH_H
#define MATH_H

#include "wasm.h"

int abs(int i);
float fabs(float i);

int max(int i, int j);
float fmax(float i, float j);

import float fsqrt(float num);

inline int round(float d);
#endif