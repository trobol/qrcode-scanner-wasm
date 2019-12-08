#include "qrcode.h"
#include "FinderPatternFinder.h"
#include "wasm.h"
#include "Detector.h"
#include "BitMatrix.h"
#include "Memory.h"
#include "Decoder.h"

unsigned int imageWidth = 0;
unsigned int imageHeight = 0;

unsigned int imageSize = 0;
unsigned int *image;
unsigned int *bitMap;

struct BitMatrix matrix;

export int get_int(int *i)
{
	return *i;
}

export void *getBitMap()
{
	return bitMap;
}

void *allocateImage()
{
	Memory_clear();
	bitMap = Memory_allocate(imageWidth * imageHeight * SIZEOF_INT);
	image = Memory_allocate(imageSize * SIZEOF_INT);
	return image;
}

export void *setImageSize(unsigned int x, unsigned int y)
{

	imageWidth = x;
	imageHeight = y;

	imageSize = x * y * 4;

	return allocateImage();
}

export unsigned int getImageSize()
{
	return imageSize;
}

export void imageToBitmap()
{
	unsigned int pixel;
	unsigned int numSqrtArea = 4;
	//obtain middle brightness((min + max) / 2) per area
	unsigned int areaWidth = imageWidth / numSqrtArea;
	unsigned int areaHeight = imageHeight / numSqrtArea;

	unsigned int min;
	unsigned int max;
	unsigned int target;

	unsigned int middle;
	unsigned int areaX, areaY, imageX, imageY;
	unsigned int bitTarget;

	for (areaX = 0; areaX < imageWidth; areaX += areaWidth)
	{
		for (areaY = 0; areaY < imageHeight; areaY += areaHeight)
		{
			min = 255;
			max = 0;
			for (imageY = 0; imageY < areaHeight; ++imageY)
			{
				for (imageX = 0; imageX < areaWidth; ++imageX)
				{
					pixel = areaX + imageX + (areaY + imageY) * imageWidth;
					target = (image[pixel] + image[pixel + 1] + image[pixel + 2]);
					if (target < min)
						min = target;
					if (target > max)
						max = target;
				}
			}
			middle = (min + max) / 6;
			for (imageY = 0; imageY < areaHeight; ++imageY)
			{
				for (imageX = 0; imageX < areaWidth; ++imageX)
				{
					unsigned int x = (areaX + imageX);
					unsigned int y = (imageWidth * (areaY + imageY));
					target = x * 4 + y * 4;
					bitTarget = x + y;
					bitMap[bitTarget] = image[target] < middle;
				}
			}
		}
	}
}

bool getBitmapPixel(unsigned int x, unsigned int y)
{
	return bitMap[x + (imageWidth * y)];
}
struct DecoderResult result;
export int get_size()
{
	return result.size;
}

export void *get_bytes()
{
	return result.resultBytes;
}

export int getVersionNumber()
{
	return result.version->versionNumber;
}

export int getECLevelBits()
{
	return result.ecLevel->bits;
}

export void decode()
{
	
	//process data
	imageToBitmap();
	//detect findpatterns
	possibleCentersSize = 0;
	findFinderPatterns();

	//detector results

	processFinderPatternInfo(&matrix);

	result = Decoder_decode(matrix);

	//create detector
	//detect
	//decode
	allocateImage();
}
