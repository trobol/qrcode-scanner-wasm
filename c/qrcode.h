#ifndef QRCODE_H
#define QRCODE_H
#include "../c/wasm.h"

extern unsigned int imageWidth;
extern unsigned int imageHeight;

extern unsigned int imageSize;
extern unsigned int *image;

bool getBitmapPixel(unsigned int x, unsigned int y);

struct struct_BitMatrix
{
	unsigned int width;
	unsigned int height;
	unsigned int bitSize;
	unsigned int pointSize;
	unsigned int rowSize;
	unsigned int *bits;
	float *points;
};
extern struct struct_BitMatrix BitMatrix;
void BitMatrix_setDimension(int dimension);

void BitMatrix_set(int x, int y);

import void printNum(int n);
import void drawPoint(int x, int y);

export int get_int(int *i);
#endif