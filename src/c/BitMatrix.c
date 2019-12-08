#include "BitMatrix.h"
#include "qrcode.h"

#define bitsMask 0x1f
#define logBits 5

void new_BitMatrix(struct BitMatrix *matrix, int dimension)
{
	matrix->width = dimension;
	matrix->height = dimension;
	matrix->rowSize = dimension >> logBits;
	if ((dimension & 0x1f) != 0)
	{
		matrix->rowSize++;
	}
	matrix->bitSize = matrix->rowSize * matrix->height;

	matrix->bits = Memory_allocate(matrix->bitSize * SIZEOF_INT);
	for (unsigned int i = 0; i < matrix->bitSize; i++)
	{
		matrix->bits[i] = 0;
	}
}

void BitMatrix_set(struct BitMatrix *matrix, int x, int y)
{
	unsigned int offset = y * matrix->rowSize + (x >> logBits);
	matrix->bits[offset] |= 1 << (x & bitsMask);
}

bool BitMatrix_get(struct BitMatrix *matrix, int x, int y)
{
	int offset = y * matrix->rowSize + (x >> logBits);
	return ((((unsigned)matrix->bits[offset]) >> (x & bitsMask)) & 1) != 0;
}
void BitMatrix_flip(struct BitMatrix *matrix, int x, int y)
{
	int offset = y * matrix->rowSize + (x >> logBits);
	matrix->bits[offset] ^= 1 << (x & bitsMask);
}

void BitMatrix_setRegion(struct BitMatrix *matrix, int left, int top, int width, int height)
{
	if (top < 0 || left < 0)
	{
		printf("Left and top must be nonnegative");
	}
	if (height < 1 || width < 1)
	{
		printf("Height and width must be at least 1");
	}
	int right = left + width;
	int bottom = top + height;
	if (bottom > matrix->height || right > matrix->width)
	{
		printf("The region must fit inside the matrix");
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

void delete_BitMatrix(struct BitMatrix *matrix)
{
	Memory_delete(matrix->bitSize * SIZEOF_INT);
}