#ifndef WASM_H
#define WASM_H

#ifndef __GNUC__
#define __attribute__(x)
#endif
#ifdef __cplusplus
#define export __attribute__((visibility("default"))) extern "C"
#else
#define export __attribute__((visibility("default")))
#endif

#define import extern

typedef int i32;
typedef long long int i64;

typedef unsigned int ui32;
typedef unsigned long long int ui64;

typedef float f32;
typedef double f64;

typedef int bool;
#define true 1
#define false 0

#define NaN 0x400000

import unsigned char __data_end;
import unsigned char __heap_base;

#endif