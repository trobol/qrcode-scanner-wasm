#ifndef QRCODE_H
#define QRCODE_H
#include "../c/wasm.h"


extern unsigned int imageWidth;
extern unsigned int imageHeight;

extern unsigned int imageSize;
extern unsigned char *image;

extern unsigned int bitmapSize;
extern unsigned char *bitmapIndex;

bool getBitmapPixel(unsigned int x, unsigned int y);

#endif