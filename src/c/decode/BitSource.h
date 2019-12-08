#ifndef BIT_SOURCE_H
#define BIT_SOURCE_H
struct
{
	char *bytes;
	int byteOffset;
	int bitOffset;
	int size;
} BitSource;

void BitSource_writeBytes(char *bytes, int size);

int BitSource_readBits(int numBits);

int BitSource_available();

#endif