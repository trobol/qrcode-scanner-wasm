#include "qrcode.h"

QRCode qrcode;

export u8 *decode()
{

	qrcode.grayscale();
	qrcode.grayScaleToBitmap();

	Detector detector;
	Decoder decoder;

	DetectorResults qrCodeMatrix = detector.detect();
	var result = decoder.decode(qrCodeMatrix.bits);

	return qrcode.imageData;
}
export void getPos()
{
}
export u32 getQRX()
{
}
export u32 getQRY()
{
}
export u8 *setImageData(i32 w, i32 h)
{
	_free(qrcode.imageData);

	qrcode.width = w;
	qrcode.height = h;
	qrcode.length = w * h;

	qrcode.imageData = (u8 *)_malloc(qrcode.length * sizeof(u8));

	return qrcode.imageData;
}
export u8 *getImageData()
{
	return qrcode.imageData;
}

u8 QRCode::getPixel(i32 x, i32 y)
{
	i32 point = (x * 4) + (y * width * 4);
	u8 p = (imageData[point] * 33 + imageData[point + 1] * 34 + imageData[point + 2] * 33) / 100;
	return p;
}

void QRCode::grayscale()
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

u8 **QRCode::getMiddleBrightnessPerArea()
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

void QRCode::grayScaleToBitmap()
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
f32 distance(FinderPattern pattern1, FinderPattern pattern2)
{
	i32 xDiff = pattern1.x - pattern2.x;
	i32 yDiff = pattern1.y - pattern2.y;
	return Math.sqrt((xDiff * xDiff + yDiff * yDiff));
}
/// <summary> Returns the z component of the cross product between vectors BC and BA.</summary>
f32 crossProductZ(FinderPattern pointA, FinderPattern pointB, FinderPattern pointC)
{
	i32 bX = pointB.x;
	i32 bY = pointB.y;
	return ((pointC.x - bX) * (pointA.y - bY)) - ((pointC.y - bY) * (pointA.x - bX));
}

void QRCode::orderBestPatterns(FinderPattern *patterns)
{

	// Find distances between pattern centers
	f32 zeroOneDistance = distance(patterns[0], patterns[1]);
	f32 oneTwoDistance = distance(patterns[1], patterns[2]);
	f32 zeroTwoDistance = distance(patterns[0], patterns[2]);

	FinderPattern pointA, pointB, pointC;
	// Assume one closest to other two is B; A and C will just be guesses at first
	if (oneTwoDistance >= zeroOneDistance && oneTwoDistance >= zeroTwoDistance)
	{
		pointB = patterns[0];
		pointA = patterns[1];
		pointC = patterns[2];
	}
	else if (zeroTwoDistance >= oneTwoDistance && zeroTwoDistance >= zeroOneDistance)
	{
		pointB = patterns[1];
		pointA = patterns[0];
		pointC = patterns[2];
	}
	else
	{
		pointB = patterns[2];
		pointA = patterns[0];
		pointC = patterns[1];
	}

	// Use cross product to figure out whether A and C are correct or flipped.
	// This asks whether BC x BA has a positive z component, which is the arrangement
	// we want for A, B, C. If it's negative, then we've got it flipped around and
	// should swap A and C.
	if (crossProductZ(pointA, pointB, pointC) < 0.0)
	{
		FinderPattern temp = pointA;
		pointA = pointC;
		pointC = temp;
	}

	patterns[0] = pointA;
	patterns[1] = pointB;
	patterns[2] = pointC;
}
