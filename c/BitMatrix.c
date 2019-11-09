#include "BitMatrix.h"
#include "qrcode.h"
#include "Memory.h"

bool getBitmapPixel(unsigned int x, unsigned int y)
{
	return image[x * 4 + (imageWidth * y) * 4] != 0 ? 0 : 1;
}

struct BitMatrix new_BitMatrix(int dimension, unsigned int index)
{
	struct BitMatrix matrix;
	matrix.width = dimension;
	matrix.height = dimension;
	matrix.rowSize = dimension >> 5;
	if ((dimension & 0x1f) != 0)
	{
		matrix.rowSize++;
	}
	matrix.bitSize = matrix.rowSize * matrix.height;
	/*
	BitMatrix.points = (float *)BitMatrix.bits + BitMatrix.bitSize;
	BitMatrix.pointSize = dimension << 1;
	*/
	matrix.bits = Memory_allocate(index, matrix.bitSize);
	for (unsigned int i = 0; i < matrix.bitSize; i++)
	{
		matrix.bits[i] = 0;
	}
	return matrix;
}

void BitMatrix_set(struct BitMatrix *matrix, int x, int y)
{
	unsigned int offset = y * matrix->rowSize + (x >> 5);
	BitMatrix.bits[offset] |= 1 << (x & 0x1f);
}

int BitMatrix_get(struct BitMatrix *matrix, int x, int y)
{
	int offset = y * matrix->rowSize + (x >> 5);
	return ((((unsigned)matrix->bits[offset]) >> (x & 0x1f)) & 1) != 0;
}