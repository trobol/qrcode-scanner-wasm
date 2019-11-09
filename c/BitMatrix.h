#ifndef BIT_MATRIX_H
#define BIT_MATRIX_H

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

struct BitMatrix new_BitMatrix(int dimension);

void BitMatrix_set(struct BitMatrix *matrix, int x, int y);
int BitMatrix_get(struct BitMatrix *matrix, int x, int y);

#endif