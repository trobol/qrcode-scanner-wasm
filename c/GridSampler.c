#include "qrcode.h"
#include "GridSampler.h"
#include "Memory.h"

void GridSampler_sampleGrid(struct BitMatrix *matrix, int dimension, struct PerspectiveTransform transform)
{
	new_BitMatrix(matrix, dimension);

	int max = dimension << 1;
	float *points = Memory_allocate(max * SIZEOF_FLOAT);
	for (int y = 0; y < dimension; y++)
	{
		float yValue = (float)y + 0.5f;
		for (int x = 0; x < max; x += 2)
		{
			points[x] = (float)(x >> 1) + 0.5f;
			points[x + 1] = yValue;
		}

		PerspectiveTransform_transformPoints(transform, points, max);

		for (unsigned int i = 0; i < max; i += 2)
		{
			drawDot(points[i], points[i + 1]);
		}
		GridSampler_checkAndNudgePoints(matrix->width, matrix->height, points, max);
		for (int x = 0; x < max; x += 2)
		{
			if ((int)points[x] * 4 + (imageWidth * (int)points[x + 1]) * 4 > imageSize)
			{
			}
			if (getBitmapPixel((int)points[x], (int)points[x + 1]))
			{
				BitMatrix_set(matrix, x >> 1, y);
			}
		}
	}
	Memory_delete(max * SIZEOF_INT);
}

void GridSampler_checkAndNudgePoints(int width, int height, float *points, int max)
{
	// The Java code assumes that if the start and end points are in bounds, the rest will also be.
	// However, in some unusual cases points in the middle may also be out of bounds.
	// Since we can't rely on an ArrayIndexOutOfBoundsException like Java, we check every point.

	for (unsigned int offset = 0; offset < max; offset += 2)
	{
		int x = (int)points[offset];
		int y = (int)points[offset + 1];
		if (x < -1 || x > width || y < -1 || y > height)
		{
			//ERROR
		}

		if (x == -1)
		{
			points[offset] = 0.0f;
		}
		else if (x == width)
		{
			points[offset] = (float)(width - 1);
		}
		if (y == -1)
		{
			points[offset + 1] = 0.0f;
		}
		else if (y == height)
		{
			points[offset + 1] = (float)(height - 1);
		}
	}
}