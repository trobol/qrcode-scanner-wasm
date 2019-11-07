#ifndef FINDER_PATTERN_FINDER_H
#define FINDER_PATTERN_FINDER_H
#include "../c/wasm.h"
#include "./math.h"
#include "FinderPattern.h"

#define MIN_SKIP 3
#define MAX_MODULES 57
#define INTEGER_MATH_SHIFT 8
#define CENTER_QUORUM 2

extern bool hasSkipped;

struct FinderPattern *addPossibleCenter(float posX, float posY,
										float estimatedModuleSize,
										unsigned int count);
extern struct FinderPattern possibleCenters[12];
extern unsigned int possibleCentersSize;

//returns pattern finder
void findFinderPatterns();

//returns pattern
void selectBestPatterns();

bool handlePossibleCenter(int *stateCount, unsigned int i, unsigned int j);

float crossCheckVertical(unsigned int startI, unsigned int centerJ, int maxCount,
						 int originalStateCountTotal);

float crossCheckHorizontal(unsigned int startJ, unsigned int centerI, int maxCount,
						   int originalStateCountTotal);

bool foundPatternCross(i32 *stateCount);

float centerFromEnd(int *stateCount, int end);

bool haveMultiplyConfirmedCenters();

int findRowSkip();

struct FinderPattern *get_pattern(int i);

bool getBitmapPixel(unsigned int x, unsigned int y);

import void printNum(int n);
import void drawPoint(int x, int y);
#endif