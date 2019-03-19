#ifndef WASM_H
#define WASM_H

typedef signed char i8;
typedef unsigned char u8;
typedef signed short i16;
typedef unsigned short u16;
typedef signed int i32;
typedef unsigned int u32;
typedef signed long long i64;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;

#define care __attribute__((warn_unused_result))
#define unused __attribute__((unused))
#define unreachable __builtin_unreachable()

#define export extern "C" __attribute__((visibility("default")))
#define import extern "C"
#ifdef DEBUG
#define assume(x) assert(x)
#else
#define assume(x) __builtin_assume(x)
#endif

import void *_malloc(int len);
import void *_free(void *addr);

#endif