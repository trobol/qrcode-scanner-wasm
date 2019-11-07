#include "FinderPatternFinder.h"
#include "Detector.h"
#include "Version.h"
#include "math.h"
#include "AlignmentPatternFinder.h"
#include "qrcode.h"

struct DetectorResult *processFinderPatternInfo()
{
	struct FinderPattern bottomLeft = possibleCenters[0];
	struct FinderPattern topLeft = possibleCenters[1];
	struct FinderPattern topRight = possibleCenters[2];

	float moduleSize = calculateModuleSize(&topLeft, &topRight, &bottomLeft);
	if (moduleSize < 1.0f)
	{
		//TODO: EXIT
		throw(); // zxing::ReaderException("bad module size");
	}
	int dimension = computeDimension(&topLeft, &topRight, &bottomLeft, moduleSize);
	printNum(dimension);
	struct Version *provisionalVersion = getProvisionalVersionForDimension(dimension);
	int modulesBetweenFPCenters = getDimensionForVersion(provisionalVersion) - 7;

	struct AlignmentPattern *alignmentPattern;
	// Anything above version 1 has an alignment pattern
	if (provisionalVersion->alignmentPatternCount > 0)
	{

		// Guess where a "bottom right" finder pattern would have been
		float bottomRightX = topRight.posX - topLeft.posX + bottomLeft.posX;
		float bottomRightY = topRight.posY - topLeft.posY + bottomLeft.posY;

		// Estimate that alignment pattern is closer by 3 modules
		// from "bottom right" to known top left location
		float correctionToTopLeft = 1.0f - 3.0f / (float)modulesBetweenFPCenters;
		int estAlignmentX = (int)(topLeft.posX + correctionToTopLeft * (bottomRightX - topLeft.posX));
		int estAlignmentY = (int)(topLeft.posX + correctionToTopLeft * (bottomRightY - topLeft.posX));

		// Kind of arbitrary -- expand search radius before giving up
		for (int i = 4; i <= 16; i <<= 1)
		{

			alignmentPattern = findAlignmentInRegion(moduleSize, estAlignmentX, estAlignmentY, (float)i);
			if (alignmentPattern == 0)
				break;
		}
		if (alignmentPattern == 0)
		{
			// Try anyway
		}
	}
	/*
	PerspectiveTransform transform = createTransform(topLeft, topRight, bottomLeft, alignmentPattern, dimension);
	Ref<BitMatrix> bits(sampleGrid(image_, dimension, transform));
	ArrayRef<Ref<ResultPoint>> points(new Array<Ref<ResultPoint>>(alignmentPattern == 0 ? 3 : 4));
	points[0].reset(bottomLeft);
	points[1].reset(topLeft);
	points[2].reset(topRight);
	if (alignmentPattern != 0)
	{
		points[3].reset(alignmentPattern);
	}

	Ref<DetectorResult> result(new DetectorResult(bits, points));
	
	return result;
	*/
}

float calculateModuleSize(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft)
{
	return (calculateModuleSizeOneWay(topLeft, topRight) + calculateModuleSizeOneWay(topLeft, bottomLeft)) / 2.0f;
}

float calculateModuleSizeOneWay(struct FinderPattern *pattern, struct FinderPattern *otherPattern)
{
	float moduleSizeEst1 = sizeOfBlackWhiteBlackRunBothWays((int)pattern->posX, (int)pattern->posY,
															(int)otherPattern->posX, (int)otherPattern->posY);
	float moduleSizeEst2 = sizeOfBlackWhiteBlackRunBothWays((int)otherPattern->posX, (int)otherPattern->posY,
															(int)pattern->posX, (int)pattern->posY);
	if (moduleSizeEst1 == NaN)
	{
		return moduleSizeEst2;
	}
	if (moduleSizeEst2 == NaN)
	{
		return moduleSizeEst1;
	}
	// Average them, and divide by 7 since we've counted the width of 3 black modules,
	// and 1 white and 1 black module on either side. Ergo, divide sum by 14.
	return (moduleSizeEst1 + moduleSizeEst2) / 14.0f;
}

int computeDimension(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft,
					 float moduleSize)
{
	int tltrCentersDimension =
		round(FinderPattern_distance(topLeft, topRight) / moduleSize);
	int tlblCentersDimension =
		round(FinderPattern_distance(topLeft, bottomLeft) / moduleSize);
	int dimension = ((tltrCentersDimension + tlblCentersDimension) >> 1) + 7;
	switch (dimension & 0x03)
	{ // mod 4
	case 0:
		dimension++;
		break;
		// 1? do nothing
	case 2:
		dimension--;
		break;
	case 3:
		break;
		//error
	}
	return dimension;
}

struct AlignmentPattern *findAlignmentInRegion(float overallEstModuleSize, int estAlignmentX, int estAlignmentY,
											   float allowanceFactor)
{
	// Look for an alignment pattern (3 modules in size) around where it
	// should be
	int allowance = (int)(allowanceFactor * overallEstModuleSize);
	int alignmentAreaLeftX = max(0, estAlignmentX - allowance);
	int alignmentAreaRightX = min((int)(imageWidth - 1), estAlignmentX + allowance);
	if (alignmentAreaRightX - alignmentAreaLeftX < overallEstModuleSize * 3)
	{
		//region too small to hold alignment pattern
	}
	int alignmentAreaTopY = max(0, estAlignmentY - allowance);
	int alignmentAreaBottomY = min((int)(imageHeight - 1), estAlignmentY + allowance);
	if (alignmentAreaBottomY - alignmentAreaTopY < overallEstModuleSize * 3)
	{
		//region too small to hold alignment pattern
	}

	AlignmentPatternFinder_startX = alignmentAreaLeftX;
	AlignmentPatternFinder_startY = alignmentAreaTopY;
	AlignmentPatternFinder_width = alignmentAreaRightX - alignmentAreaLeftX;
	AlignmentPatternFinder_height = alignmentAreaBottomY - alignmentAreaTopY;
	AlignmentPatternFinder_moduleSize = overallEstModuleSize;
	return AlignmentPatternFinder_find();
}

float sizeOfBlackWhiteBlackRunBothWays(int fromX, int fromY, int toX, int toY)
{

	float result = sizeOfBlackWhiteBlackRun(fromX, fromY, toX, toY);

	// Now count other way -- don't run off image though of course
	float scale = 1.0f;
	int otherToX = fromX - (toX - fromX);
	if (otherToX < 0)
	{
		scale = (float)fromX / (float)(fromX - otherToX);
		otherToX = 0;
	}
	else if (otherToX >= (int)imageWidth)
	{
		scale = (float)(imageWidth - 1 - fromX) / (float)(otherToX - fromX);
		otherToX = imageWidth - 1;
	}
	int otherToY = (int)(fromY - (toY - fromY) * scale);

	scale = 1.0f;
	if (otherToY < 0)
	{
		scale = (float)fromY / (float)(fromY - otherToY);
		otherToY = 0;
	}
	else if (otherToY >= (int)imageHeight)
	{
		scale = (float)(imageHeight - 1 - fromY) / (float)(otherToY - fromY);
		otherToY = imageHeight - 1;
	}
	otherToX = (int)(fromX + (otherToX - fromX) * scale);

	result += sizeOfBlackWhiteBlackRun(fromX, fromY, otherToX, otherToY);

	// Middle pixel is double-counted this way; subtract 1
	return result - 1.0f;
}

float sizeOfBlackWhiteBlackRun(int fromX, int fromY, int toX, int toY)
{
	// Mild variant of Bresenham's algorithm;
	// see http://en.wikipedia.org/wiki/Bresenham's_line_algorithm
	bool steep = abs(toY - fromY) > abs(toX - fromX);
	if (steep)
	{
		int temp = fromX;
		fromX = fromY;
		fromY = temp;
		temp = toX;
		toX = toY;
		toY = temp;
	}

	int dx = abs(toX - fromX);
	int dy = abs(toY - fromY);
	int error = -dx >> 1;
	int xstep = fromX < toX ? 1 : -1;
	int ystep = fromY < toY ? 1 : -1;

	// In black pixels, looking for white, first or second time.
	int state = 0;
	// Loop up until x == toX, but not beyond
	int xLimit = toX + xstep;
	for (int x = fromX, y = fromY; x != xLimit; x += xstep)
	{
		int realX = steep ? y : x;
		int realY = steep ? x : y;

		// Does current pixel mean we have moved white to black or vice versa?
		if (!((state == 1) ^ getBitmapPixel(realX, realY)))
		{
			if (state == 2)
			{
				return distance(x, y, fromX, fromY);
			}
			state++;
		}

		error += dy;
		if (error > 0)
		{
			if (y == toY)
			{
				break;
			}
			y += ystep;
			error -= dx;
		}
	}
	// Found black-white-black; give the benefit of the doubt that the next pixel outside the image
	// is "white" so this last point at (toX+xStep,toY) is the right ending. This is really a
	// small approximation; (toX+xStep,toY+yStep) might be really correct. Ignore this.
	if (state == 2)
	{
		return distance(toX + xstep, toY, fromX, fromY);
	}
	// else we didn't find even black-white-black; no estimate is really possible
	return NaN;
}
