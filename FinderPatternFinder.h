#include "wasm.h"
class FinderPatternFinder
{
  public:
	int crossCheckStateCount[5];
	bool hasSkipped = false;
	int width, height;

  private:
	int *getCrossCheckStateCount();
	void foundPatternCross();
	void centerFromEnd();
	void crossCheckVertical();
	void crossCheckHorizontal();
	void handlePossibleCenter();
	void selectBestPatterns();
	void findRowSkip();
	void haveMultiplyConfirmedCenters();
	int findFinderPattern(u8 *);
};