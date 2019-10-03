#include "wasm.h"

/*

MEMORY LAYOUT

imageData  outputString  bitmap

*/

unsigned int imageWidth = 0;
unsigned int imageHeight = 0;

unsigned int dataSize = 0;

unsigned char *imageData = &__heap_base;

export void *setImageSize(unsigned int x, unsigned int y)
{
	imageWidth = x;
	imageHeight = y;

	dataSize = x * y * 4;
	return (void *)data;
}

unsigned int outputSize = 0;
unsigned char *outputString = &__heap_base;

export void *getOutputIndex()
{
	return (void *)(outputString);
}

unsigned int export getOutputSize()
{
	return outputSize;
}

//get a single pixel in grayscale
unsigned char getPixel(unsigned int x, unsigned int y)
{
	unsigned int point = (x * 4) + (y * imageWidth * 4);
	unsigned char p = (imageData[point] * 33 + imageData[point + 1] * 34 + imageData[point + 2] * 33) / 100;
	return p;
}

void ToBitMap()
{
}
