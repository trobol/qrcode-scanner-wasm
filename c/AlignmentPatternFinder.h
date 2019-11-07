#ifndef ALIGNMENT_PATTERN_FINDER_H
#define ALIGNMENT_PATTERN_FINDER_H
#include "wasm.h"
#include "AlignmentPattern.h"

extern int AlignmentPatternFinder_startX;
extern int AlignmentPatternFinder_startY;
extern int AlignmentPatternFinder_width;
extern int AlignmentPatternFinder_height;
extern float AlignmentPatternFinder_moduleSize;

struct AlignmentPattern *AlignmentPatternFinder_find();
struct AlignmentPattern *AlignmentPatternFinder_handlePossibleCenter(int stateCount[3], int i, int j);

extern struct AlignmentPattern AlignmentPatternFinder_possibleCenters[4];
extern int AlignmentPatternFinder_possibleCentersSize;

#endif