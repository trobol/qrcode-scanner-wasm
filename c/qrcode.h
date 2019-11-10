#ifndef QRCODE_H
#define QRCODE_H
#include "../c/wasm.h"

extern unsigned int imageWidth;
extern unsigned int imageHeight;

extern unsigned int imageSize;
extern unsigned char *image;

bool getBitmapPixel(unsigned int x, unsigned int y);

import void printNum(int n);
import void drawPoint(int x, int y);

export int get_int(int *i);
#endif