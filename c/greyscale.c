#include "../c/wasm.h"

unsigned int imageWidth = 0;
unsigned int imageHeight = 0;

unsigned int imageSize = 0;
unsigned char *imageIndex = &__heap_base;

unsigned int bitmapSize = 0;
unsigned char *bitmapIndex;

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
/*


void grayScaleToBitmap(grayScale)
{

	var middle = getMiddleBrightnessPerArea(grayScale);
	var sqrtNumArea = middle.length;
	var areaWidth = Math.floor(canvas.width / sqrtNumArea);
	var areaHeight = Math.floor(canvas.height / sqrtNumArea);
	var bitmap = new Array(canvas.height * canvas.width);

	for (unsigned int ay = 0; ay < sqrtNumArea; ay++)
	{
		for (unsigned int ax = 0; ax < sqrtNumArea; ax++)
		{
			for (unsigned int dy = 0; dy < areaHeight; dy++)
			{
				for (unsigned int dx = 0; dx < areaWidth; dx++)
				{
					bitmap[areaWidth * ax + dx + (areaHeight * ay + dy) * canvas.width] = (grayScale[areaWidth * ax + dx + (areaHeight * ay + dy) * canvas.width] < middle[ax][ay]);
				}
			}
		}
	}

	for (let y = 0; y < canvas.height; y++)
	{
		for (let x = 0; x < canvas.width; x++)
		{
			let v = bitmap[x + y * canvas.width] ? 0 : 255;

			var point = (x * 4) + (y * canvas.width * 4);
			imagedata.data[point] = v;
			imagedata.data[point + 1] = v;
			imagedata.data[point + 2] = v;
		}
	}
	return bitmap;
}

*/