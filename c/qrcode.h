#ifndef QRCODE_H
#define QRCODE_H
#include "../c/wasm.h"

unsigned int imageWidth = 0;
unsigned int imageHeight = 0;

unsigned int imageSize = 0;
unsigned char *image = &__heap_base;

unsigned int bitmapSize = 0;
unsigned char *bitmapIndex;


inline bool getBitmapPixel(ui32 x, ui32 y);
#endif