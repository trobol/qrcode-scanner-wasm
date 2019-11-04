#ifndef FINDER_PATTERN_FINDER_H
#define FINDER_PATTERN_FINDER_H
#include "../c/wasm.h"
#include "./math.h"
#include "../c/FinderPattern.h"

#define MIN_SKIP 3
#define MAX_MODULES 57
#define INTEGER_MATH_SHIFT 8
#define CENTER_QUORUM 2

bool hasSkipped = false;

struct FinderPattern *addPossibleCenter(float posX, float posY,
										float estimatedModuleSize,
										unsigned int count);
struct FinderPattern possibleCenters[4];
unsigned int possibleCentersSize = 0;

//returns pattern finder
void findFinderPattern();

//returns pattern
void selectBestPatterns();

bool handlePossibleCenter(i32 *stateCount, ui32 i, ui32 j);

float crossCheckVertical(unsigned int startI, unsigned int centerJ, int maxCount,
						 int originalStateCountTotal);

float crossCheckHorizontal(unsigned int startJ, unsigned int centerI, int maxCount,
						   int originalStateCountTotal);

bool foundPatternCross(i32 *stateCount);

float centerFromEnd(int *stateCount, int end);

bool haveMultiplyConfirmedCenters();

int findRowSkip();
#endif