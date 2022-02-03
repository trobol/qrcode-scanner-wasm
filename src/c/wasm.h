#ifndef WASM_H
#define WASM_H

#define memory_size __builtin_wasm_memory_size(0)
#define memory_grow(v) __builtin_wasm_memory_grow(0, v)
#define memory_fill(destination, value, size) __builtin_wasm_memory_fill(0, destination, value, size)
//extern void memory_grow(int pages);

#ifndef __GNUC__
#define __attribute__(x)
#endif
#ifdef __cplusplus
#define export __attribute__((visibility("default"))) extern "C"
#else
#define export __attribute__((visibility("default")))
#endif

#define import extern

//sizes for wasm32

#define SIZEOF_INT 4
#define SIZEOF_CHAR 1
#define SIZEOF_PTR 4
#define SIZEOF_FLOAT 4
#define SIZEOF_BOOL SIZEOF_CHAR

typedef int i32;
typedef float f32;
typedef unsigned int u32;

#define NULL 0

typedef char bool;
#define true 1
#define false 0

#define NaN 0x400000

import unsigned char __data_end;
import unsigned char __heap_base;

unsigned long strlen(const char *str);

int puts(const char *str);

#ifdef DEBUG
#define debug_message(message) js_puts(message, strlen(message))
#else
#define debug_message(message)
#endif

float __builtin_wasm_min_f32(float a, float b);

import void js_puts(const char *str, unsigned int size);

import void printNum(int);
#endif
