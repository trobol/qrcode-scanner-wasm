#include "../c/wasm.h"
#include "../c/FinderPattern.h"

#define MIN_SKIP  3
#define MAX_MODULES 57
#define INTEGER_MATH_SHIFT 8
#define CENTER_QUORUM 2

bool hasSkipped = false;

struct FinderPattern possibleCenters[4];
ui32 possibleCentersIndex = 0;



//returns pattern finder
void findFinderPattern();

//returns pattern
void selectBestPatterns();

bool handlePossibleCenter(i32* stateCount, ui32 i, ui32 j);