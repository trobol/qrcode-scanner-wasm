#ifndef ALIGNMENT_PATTERN_H
#define ALIGNMENT_PATTERN_H
struct AlignmentPattern
{
	float posX, posY;
	float estimatedModuleSize;
};

struct AlignmentPattern *AlignmentPattern_combineEstimate(struct AlignmentPattern *pat, float i, float j,
														  float newModuleSize);
bool AlignmentPattern_aboutEquals(struct AlignmentPattern *pat, float moduleSize, float i, float j);
#endif