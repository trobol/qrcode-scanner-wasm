#include "FinderPattern.h"
#include "AlignmentPattern.h"

struct DetectorResult
{
	//struct BitMatrix bits;
	struct ResultPoint *points;
};

struct DetectorResult *processFinderPatternInfo();
float calculateModuleSize(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft);

float calculateModuleSizeOneWay(struct FinderPattern *pattern, struct FinderPattern *otherPattern);
int computeDimension(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft,
					 float moduleSize);

struct AlignmentPattern *findAlignmentInRegion(float overallEstModuleSize, int estAlignmentX, int estAlignmentY,
											   float allowanceFactor);
float sizeOfBlackWhiteBlackRunBothWays(int fromX, int fromY, int toX, int toY);
float sizeOfBlackWhiteBlackRun(int fromX, int fromY, int toX, int toY);

float Detector_distance(float, float);