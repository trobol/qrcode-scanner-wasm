#include "AlignmentPattern.h"

struct AlignmentPattern *AlignmentPattern_combineEstimate(struct AlignmentPattern *pat, float i, float j,
														  float newModuleSize)
{
	pat->posX = (pat->posX + j) / 2.0f;
	pat->posY = (pat->posY + i) / 2.0f;
	pat->estimatedModuleSize = (pat->estimatedModuleSize + newModuleSize) / 2.0f;
	return pat;
}