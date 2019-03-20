#include "wasm.h"

class FinderPattern
{
  public:
	i32 x, y;
};

class FinderPatternFinder
{
  public:
	void detect();
	bool hasSkipped = false;
	i32 *possibleCenters;
	i32 crossCheckStateCount[5] = {0, 0, 0, 0, 0};

  private:
	i32 *getCrossCheckStateCount();
};

class FinderPatternInfo
{
};