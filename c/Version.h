#include "wasm.h"
struct ECB
{
	int count;
	int dataCodewords;
};

struct ECBlocks
{
	int ecCodewords;
	ECB ecBlocks[2];
};

struct Version
{
	int versionNumber;
	int totalCodewords;
	int alignmentPatternCount;
	int *alignmentPatternCenters;
	struct ECBlocks ecBlocks[4];
};

void new_Version(int vNum, int *alignmentPatternCenters, int ecbCount0, int ecbCodewords0, int ecbCount1, int ecbCodewords1, int ecbCount2, int ecbCodewords2, int ecbCount3, int ecbCodewords3);