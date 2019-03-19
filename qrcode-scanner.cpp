#include "wasm.h"
#include "qrcode-scanner.h"

u8 *imageData;
i8 *imageCaptureData;
i32 length;
i32 width;
i32 height;


export u8 *decode(i32 w, i32 h)
{
	length = w * h;
	width = w;
	height = h;
	grayscale();
	grayScaleToBitmap();

	return imageData;
}

export u8 *setImageData(i32 l)
{
	_free(imageData);
	imageData = (u8 *)_malloc(l * sizeof(u8));
	return imageData;
}
export u8 *getImageData()
{
	return imageData;
}

u8 getPixel(i32 x, i32 y)
{
	i32 point = (x * 4) + (y * width * 4);
	u8 p = (imageData[point] * 33 + imageData[point + 1] * 34 + imageData[point + 2] * 33) / 100;
	return p;
}

void grayscale()
{
	u8 *rect = (u8 *)_malloc(sizeof(u8[width * height]));

	for (i32 y = 0; y < height; y++)
	{
		for (i32 x = 0; x < width; x++)
		{
			u8 gray = getPixel(x, y);

			rect[x + y * width] = gray;
		}
	}
	imageData = rect;
}

u8 **getMiddleBrightnessPerArea()
{
	u8 numSqrtArea = 4;
	//obtain middle brightness((min + max) / 2) per area
	i32 areaWidth = width / numSqrtArea;
	i32 areaHeight = height / numSqrtArea;
	u8 minmax[numSqrtArea][numSqrtArea][2];

	for (i32 ay = 0; ay < numSqrtArea; ay++)
	{
		for (i32 ax = 0; ax < numSqrtArea; ax++)
		{
			minmax[ax][ay][0] = 0xFF;
			for (i32 dy = 0; dy < areaHeight; dy++)
			{
				for (i32 dx = 0; dx < areaWidth; dx++)
				{
					i32 target = imageData[areaWidth * ax + dx + (areaHeight * ay + dy) * width];
					if (target < minmax[ax][ay][0])
						minmax[ax][ay][0] = target;
					if (target > minmax[ax][ay][1])
						minmax[ax][ay][1] = target;
				}
			}
			//minmax[ax][ay][0] = (minmax[ax][ay][0] + minmax[ax][ay][1]) / 2;
		}
	}
	u8 **middle = (u8 **)_malloc(numSqrtArea * sizeof(u8 *));

	for (i32 i3 = 0; i3 < numSqrtArea; i3++)
	{
		middle[i3] = (u8 *)_malloc(numSqrtArea * sizeof(u8 *));
	}
	for (i32 ay = 0; ay < numSqrtArea; ay++)
	{
		for (i32 ax = 0; ax < numSqrtArea; ax++)
		{
			middle[ax][ay] = (minmax[ax][ay][0] + minmax[ax][ay][1]) / 2;
		}
	}

	return middle;
}
void grayScaleToBitmap()
{
	u8 **middle = getMiddleBrightnessPerArea();
	i32 sqrtNumArea = 4;
	i32 areaWidth = width / sqrtNumArea;
	i32 areaHeight = height / sqrtNumArea;

	for (i32 ay = 0; ay < sqrtNumArea; ay++)
	{
		for (i32 ax = 0; ax < sqrtNumArea; ax++)
		{
			for (i32 dy = 0; dy < areaHeight; dy++)
			{
				for (i32 dx = 0; dx < areaWidth; dx++)
				{
					imageData[areaWidth * ax + dx + (areaHeight * ay + dy) * width] = (imageData[areaWidth * ax + dx + (areaHeight * ay + dy) * width] < middle[ax][ay]) ? 1 : 0;
				}
			}
		}
	}
}