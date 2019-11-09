#include "qrcode.h"
#include "GridSampler.h"

void GridSampler_sampleGrid(int dimension, struct PerspectiveTransform transform)
{
	BitMatrix_setDimension(dimension);

	for (int y = 0; y < dimension; y++)
	{
		int max = BitMatrix.pointSize;
		float yValue = (float)y + 0.5f;
		for (int x = 0; x < max; x += 2)
		{
			BitMatrix.points[x] = (float)(x >> 1) + 0.5f;
			BitMatrix.points[x + 1] = yValue;
		}

		PerspectiveTransform_transformPoints(transform);

		for (unsigned int i = 0; i < max; i += 2)
		{
			drawDot(BitMatrix.points[i], BitMatrix.points[i + 1]);
		}
		GridSampler_checkAndNudgePoints();
		for (int x = 0; x < max; x += 2)
		{
			if ((int)BitMatrix.points[x] * 4 + (imageWidth * (int)BitMatrix.points[x + 1]) * 4 > imageSize)
			{
				printNum(310);
			}
			if (getBitmapPixel((int)BitMatrix.points[x], (int)BitMatrix.points[x + 1]))
			{
				BitMatrix_set(x >> 1, y);
			}
		}
	}
}

void GridSampler_checkAndNudgePoints()
{
	int width = BitMatrix.width;
	int height = BitMatrix.height;

	// The Java code assumes that if the start and end points are in bounds, the rest will also be.
	// However, in some unusual cases points in the middle may also be out of bounds.
	// Since we can't rely on an ArrayIndexOutOfBoundsException like Java, we check every point.

	for (unsigned int offset = 0; offset < BitMatrix.pointSize; offset += 2)
	{
		int x = (int)BitMatrix.points[offset];
		int y = (int)BitMatrix.points[offset + 1];
		if (x < -1 || x > width || y < -1 || y > height)
		{
			//ERROR
		}

		if (x == -1)
		{
			BitMatrix.points[offset] = 0.0f;
		}
		else if (x == width)
		{
			BitMatrix.points[offset] = (float)(width - 1);
		}
		if (y == -1)
		{
			BitMatrix.points[offset + 1] = 0.0f;
		}
		else if (y == height)
		{
			BitMatrix.points[offset + 1] = (float)(height - 1);
		}
	}
}