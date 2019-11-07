#ifndef ALIGNMENT_PATTERN_FINDER_H
#define ALIGNMENT_PATTERN_FINDER_H
#include "wasm.h"
#include "AlignmentPattern.h"


int AlignmentPatternFinder_startX;
int AlignmentPatternFinder_startY;
int AlignmentPatternFinder_width;
int AlignmentPatternFinder_height;
float AlignmentPatternFinder_moduleSize;


struct AlignmentPattern *AlignmentPatternFinder_find();
struct AlignmentPattern *AlignmentPatternFinder_handlePossibleCenter(int stateCount[3], int i, int j);

struct AlignmentPattern AlignmentPatternFinder_possibleCenters[4];
int AlignmentPatternFinder_possibleCentersSize;

#endif