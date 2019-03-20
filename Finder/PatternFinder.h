#include "wasm.h"
class PatternFinder
{
  public:
	int crossCheckStateCount[5];
	bool hasSkipped = false;
	i32 width, height;
	PatternFinder(i32, i32);

  private:
	int *getCrossCheckStateCount();
	bool foundPatternCross(i32 *);
	void centerFromEnd();
	void crossCheckVertical();
	void crossCheckHorizontal();
	bool handlePossibleCenter(i32[], i32, i32);
	void selectBestPatterns();
	void findRowSkip();
	void haveMultiplyConfirmedCenters();
	int findFinderPattern(u8 *);
	void orderBestPatterns();
};