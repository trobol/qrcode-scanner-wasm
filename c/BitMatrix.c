#include "BitMatrix.h"
#include "qrcode.h"

bool getBitmapPixel(unsigned int x, unsigned int y)
{
	return image[x * 4 + (imageWidth * y) * 4] != 0 ? 0 : 1;
}

void new_BitMatrix(struct BitMatrix *matrix, int dimension, enum Memory_Item index)
{
	matrix->width = dimension;
	matrix->height = dimension;
	matrix->rowSize = dimension >> 5;
	if ((dimension & 0x1f) != 0)
	{
		matrix->rowSize++;
	}
	matrix->bitSize = matrix->rowSize * matrix->height;

	matrix->bits = Memory_allocate(index, matrix->bitSize, 4);
	for (unsigned int i = 0; i < matrix->bitSize; i++)
	{
		matrix->bits[i] = 0;
	}
}

void BitMatrix_set(struct BitMatrix *matrix, int x, int y)
{
	unsigned int offset = y * matrix->rowSize + (x >> 5);
	matrix->bits[offset] |= 1 << (x & 0x1f);
}

bool BitMatrix_get(struct BitMatrix *matrix, int x, int y)
{
	int offset = y * matrix->rowSize + (x >> 5);
	return ((((unsigned)matrix->bits[offset]) >> (x & 0x1f)) & 1) != 0;
}
void BitMatrix_flip(struct BitMatrix *matrix, int x, int y)
{
	int offset = y * matrix->rowSize + (x >> 5);
	matrix->bits[offset] ^= 1 << (x & 0x1f);
}

void BitMatrix_setRegion(struct BitMatrix *matrix, int left, int top, int width, int height)
{
	if (top < 0 || left < 0)
	{
		//ERROR
	}
	if (height < 1 || width < 1)
	{
		//ERROR
	}
	int right = left + width;
	int bottom = top + height;
	if (bottom > matrix->height || right > matrix->width)
	{
		//ERROR
	}
	for (int y = top; y < bottom; y++)
	{
		int offset = y * matrix->rowSize;
		for (int x = left; x < right; x++)
		{
			matrix->bits[offset + (x >> 5)] |= 1 << (x & 0x1f);
		}
	}
}