#include "AlignmentPattern.h"
#include "math.h"
struct AlignmentPattern *AlignmentPattern_combineEstimate(struct AlignmentPattern *pat, float i, float j,
														  float newModuleSize)
{
	pat->posX = (pat->posX + j) / 2.0f;
	pat->posY = (pat->posY + i) / 2.0f;
	pat->estimatedModuleSize = (pat->estimatedModuleSize + newModuleSize) / 2.0f;
	return pat;
}

bool AlignmentPattern_aboutEquals(struct AlignmentPattern *pat, float moduleSize, float i, float j)
{
	if (math_fabs(i - pat->posY) <= moduleSize && math_fabs(j - pat->posX) <= moduleSize)
	{
		float moduleSizeDiff = math_fabs(moduleSize - pat->estimatedModuleSize);
		return moduleSizeDiff <= 1.0f || moduleSizeDiff <= pat->estimatedModuleSize;
	}
	return false;
}