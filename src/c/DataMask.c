#include "DataMask.h"

void DataMask_unmaskBitMatrix(struct BitMatrix bits, unsigned int dimension, unsigned int refrence)
{
	bool (*isMasked)(unsigned int x, unsigned int y) = DATA_MASKS[refrence];
	for (unsigned int y = 0; y < dimension; y++)
	{
		for (unsigned int x = 0; x < dimension; x++)
		{
			// TODO: check why the coordinates have to be swapped
			if (isMasked(y, x))
			{
				BitMatrix_flip(&bits, x, y);
			}
		}
	}
}

bool DataMask_isMasked000(unsigned int x, unsigned int y)
{
	return ((x + y) % 2) == 0;
}

bool DataMask_isMasked001(unsigned int x, unsigned int y)
{
	return (x % 2) == 0;
}

bool DataMask_isMasked010(unsigned int x, unsigned int y)
{
	return y % 3 == 0;
}

bool DataMask_isMasked011(unsigned int x, unsigned int y)
{
	return (x + y) % 3 == 0;
}
bool DataMask_isMasked100(unsigned int x, unsigned int y)
{
	return (((x >> 1) + (y / 3)) % 2) == 0;
}
bool DataMask_isMasked101(unsigned int x, unsigned int y)
{
	return ((x * y) % 6) == 0;
}
bool DataMask_isMasked110(unsigned int x, unsigned int y)
{
	return ((x * y) % 6) < 3;
}
bool DataMask_isMasked111(unsigned int x, unsigned int y)
{
	return ((x + y + ((x * y) % 3)) & 0x01) == 0;
}

bool (*DATA_MASKS[8])(unsigned int x, unsigned int y) = {
	DataMask_isMasked000,
	DataMask_isMasked001,
	DataMask_isMasked010,
	DataMask_isMasked011,
	DataMask_isMasked100,
	DataMask_isMasked101,
	DataMask_isMasked110,
	DataMask_isMasked111};
