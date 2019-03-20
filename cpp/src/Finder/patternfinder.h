#include "../wasm.h"
#include "patterninfo.h"

class PatternFinder
{
public:
	int crossCheckStateCount[5];
	bool hasSkipped = false;
	i32 width, height,
			possibleCentersLength;
	i32 *possibleCenters;
	PatternFinder(i32, i32);

private:
	int *getCrossCheckStateCount();
	bool foundPatternCross(i32 *);
	f32 centerFromEnd(i32 *, f32);
	void crossCheckVertical();
	void crossCheckHorizontal();
	bool handlePossibleCenter(i32[], i32, i32);
	i32 *selectBestPatterns();
	i32 findRowSkip();
	bool haveMultiplyConfirmedCenters();
	PatternInfo *findFinderPattern(u8 *);
	void orderBestPatterns(i32[3]);
};