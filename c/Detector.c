#include "FinderPatternFinder.h"
#include "Detector.h"
#include "Version.h"
#include "math.h"
#include "AlignmentPattern.h"

void processFinderPatternInfo()
{
	struct FinderPattern bottomLeft = possibleCenters[0];
	struct FinderPattern topLeft = possibleCenters[1];
	struct FinderPattern topRight = possibleCenters[2];

	float moduleSize = calculateModuleSize(&topLeft, &topRight, &bottomLeft);
	if (moduleSize < 1.0f)
	{
		//TODO EXIT
		throw();// zxing::ReaderException("bad module size");
	}
	int dimension = computeDimension(&topLeft, &topRight, &bottomLeft, moduleSize);
	struct Version *provisionalVersion = getProvisionalVersionForDimension(dimension);
	int modulesBetweenFPCenters = getDimensionForVersion(provisionalVersion) - 7;

	struct AlignmentPattern alignmentPattern;
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
			try
			{
				alignmentPattern = findAlignmentInRegion(moduleSize, estAlignmentX, estAlignmentY, (float)i);
				break;
			}
			catch (zxing::ReaderException const &re)
			{
				(void)re;
				// try next round
			}
		}
		if (alignmentPattern == 0)
		{
			// Try anyway
		}
	}

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
		round(distance(topLeft, topRight) / moduleSize);
	int tlblCentersDimension =
		round(distance(topLeft, bottomLeft) / moduleSize);
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
		//error
	}
	return dimension;
}