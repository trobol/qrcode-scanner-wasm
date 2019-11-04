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

#define N_VERSIONS 40;
struct Version VERSIONS[40];

struct Version *getProvisionalVersionForDimension(int dimension);
int getDimensionForVersion(struct Version *version);
