#include "../c/qrcode.h"
#include "../c/wasm.h"

export void *setImageSize(unsigned int x, unsigned int y)
{
	imageWidth = x;
	imageHeight = y;

	imageSize = x * y * 4;

	bitmapIndex = imageIndex + imageSize;
	bitmapSize = x * y;

	return (void *)imageIndex;
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
			imageIndex[pixel] = (imageIndex[pixel] * 33 + imageIndex[pixel + 1] * 34 + imageIndex[pixel + 2] * 33) / 100;
			imageIndex[pixel + 1] = imageIndex[pixel];
			imageIndex[pixel + 2] = imageIndex[pixel];
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
					target = imageIndex[areaWidth * areaX + imageX + (areaHeight * areaY + imageY) * imageWidth];
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
					if (imageIndex[target] > middle)
					{
						imageIndex[target] = 255;
						imageIndex[target + 1] = 255;
						imageIndex[target + 2] = 255;
					}
					else
					{
						imageIndex[target] = 0;
						imageIndex[target + 1] = 0;
						imageIndex[target + 2] = 0;
					}
				}
			}
		}
	}
}
