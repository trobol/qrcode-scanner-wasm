#include "qrcode.h"
#include "FinderPatternFinder.h"
#include "wasm.h"
#include "Detector.h"
#include "BitMatrix.h"
#include "Memory.h"

unsigned int imageWidth = 0;
unsigned int imageHeight = 0;

unsigned int imageSize = 0;
unsigned char *image;
bool *bitMap;

export int get_int(int *i)
{
	return *i;
}
export unsigned char* getImage() {
	return image;
}

export void *setImageSize(unsigned int x, unsigned int y)
{
	

	imageWidth = x;
	imageHeight = y;

	imageSize = x * y * 4;



	return (void *)image;
}

void *allocateImage() {
	bitMap = Memory_allocate(imageHeight * imageHeight * SIZEOF_BOOL);
	image = Memory_allocate(imageSize * SIZEOF_CHAR);
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
					target = (areaWidth * areaX + imageX) + (imageWidth * (areaHeight * areaY + imageY));
					if (image[target] > middle)
					{
						bitMap[target] = false;
					}
					else
					{
						bitMap[target] = true;
					}
				}
			}
		}
	}
}


bool getBitmapPixel(unsigned int x, unsigned int y)
{
	return bitMap[x  + (imageWidth * y)] != 0 ? 0 : 1;
}


export void decode()
{
	
	//process data
	//imageToBitmap();
	//detect findpatterns
	Memory_clear(imageSize);
	possibleCentersSize = 0;
	findFinderPatterns();

	//detector results
	struct BitMatrix matrix;
	processFinderPatternInfo(&matrix);
	Decoder_decode(matrix);
	printNum(matrix.bitSize);
	printNum(matrix.pointSize);
	//create detector
	//detect
	//decode
	Memory_clear();
	allocateImage();
}
