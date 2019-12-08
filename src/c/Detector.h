#ifndef DETECTOR_H
#define DETECTOR_H

#include "FinderPattern.h"
#include "AlignmentPattern.h"
#include "PerspectiveTransform.h"
#include "BitMatrix.h"

struct struct_DetectorResult
{
	float points[8];
};
extern struct struct_DetectorResult DetectorResult;
bool processFinderPatternInfo(struct BitMatrix *matrix);
float calculateModuleSize(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft);

float calculateModuleSizeOneWay(struct FinderPattern *pattern, struct FinderPattern *otherPattern);
int computeDimension(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft,
					 float moduleSize);

struct AlignmentPattern *findAlignmentInRegion(float overallEstModuleSize, int estAlignmentX, int estAlignmentY,
											   float allowanceFactor);
float sizeOfBlackWhiteBlackRunBothWays(int fromX, int fromY, int toX, int toY);
float sizeOfBlackWhiteBlackRun(int fromX, int fromY, int toX, int toY);

float Detector_distance(float, float);
struct PerspectiveTransform Detector_createTransform(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft, struct AlignmentPattern *alignmentPattern, int dimension);
void Detector_sampleGrid(int dimension, struct PerspectiveTransform transform);
#endif