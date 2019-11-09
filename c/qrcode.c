#include "../c/qrcode.h"
#include "FinderPatternFinder.h"
#include "../c/wasm.h"
#include "Detector.h"
#include "Bitmatrix.h"
#include "Memory.h"

unsigned int imageWidth = 0;
unsigned int imageHeight = 0;

unsigned int imageSize = 0;
unsigned int *image = (unsigned int *)&__heap_base;

export int get_int(int *i)
{
	return *i;
}
export unsigned int *get_bits()
{
	return BitMatrix.bits;
}
export int get_size()
{
	return BitMatrix.bitSize;
}
export void *setImageSize(unsigned int x, unsigned int y)
{
	imageWidth = x;
	imageHeight = y;

	imageSize = x * y * 4;

	Memory_allocate(MEMORY_ITEM_IMAGE, imageSize);

	return (void *)image;
}

export unsigned int getImageSize()
{
	return imageSize;
}

export void imageToBitmap()
{
	unsigned int pixel;
	for (unsigned int y = 0; y < imageHeight; ++y)
	{
		for (unsigned int x = 0; x < imageWidth; ++x)
		{
			pixel = x * 4 + (imageWidth * y) * 4;
			image[pixel] = (image[pixel] * 33 + image[pixel + 1] * 34 + image[pixel + 2] * 33) / 100;
		}
	}

	unsigned int numSqrtArea = 4;
	//obtain middle brightness((min + max) / 2) per area
	unsigned int areaWidth = imageWidth / numSqrtArea;
	unsigned int areaHeight = imageHeight / numSqrtArea;

	unsigned int min;
	unsigned int max;
	unsigned int target;

	unsigned int middle;
	unsigned int areaX, areaY, imageX, imageY;

	for (areaX = 0; areaX < numSqrtArea; ++areaX)
	{
		for (areaY = 0; areaY < numSqrtArea; ++areaY)
		{
			min = 255;
			max = 0;
			for (imageY = 0; imageY < areaHeight; ++imageY)
			{
				for (imageX = 0; imageX < areaWidth; ++imageX)
				{
					target = image[areaWidth * areaX + imageX + (areaHeight * areaY + imageY) * imageWidth];
					if (target < min)
						min = target;
					if (target > max)
						max = target;
				}
			}
			middle = (min + max) / 2;
			for (imageY = 0; imageY < areaHeight; ++imageY)
			{
				for (imageX = 0; imageX < areaWidth; ++imageX)
				{
					target = (areaWidth * areaX + imageX) * 4 + (imageWidth * (areaHeight * areaY + imageY)) * 4;
					if (image[target] > middle)
					{
						image[target] = 255;
						image[target + 1] = 255;
						image[target + 2] = 255;
					}
					else
					{
						image[target] = 0;
						image[target + 1] = 0;
						image[target + 2] = 0;
					}
				}
			}
		}
	}
}

export void decode()
{
	//process data
	//imageToBitmap();
	//detect findpatterns
	possibleCentersSize = 0;
	findFinderPatterns();

	//detector results
	processFinderPatternInfo();
	printNum(BitMatrix.bitSize);
	printNum(BitMatrix.pointSize);
	//create detector
	//detect
	//decode
}
