#ifndef BIT_MATRIX_H
#define BIT_MATRIX_H
#include "Memory.h"

struct BitMatrix
{
	unsigned int width;
	unsigned int height;
	unsigned int bitSize;
	unsigned int pointSize;
	unsigned int rowSize;
	unsigned int *bits;
	float *points;
};

void new_BitMatrix(struct BitMatrix *matrix, int dimension, enum Memory_Item index);

void BitMatrix_set(struct BitMatrix *matrix, int x, int y);
bool BitMatrix_get(struct BitMatrix *matrix, int x, int y);

void BitMatrix_flip(struct BitMatrix *matrix, int x, int y);

void BitMatrix_setRegion(struct BitMatrix *matrix, int left, int top, int width, int height);
#endif