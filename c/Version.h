#ifndef VERSION_H
#define VERSION_H
#include "wasm.h"
#include "qrcode.h"
#include "BitMatrix.h"

#define N_VERSION_DECODE_INFOS 34
struct ECB
{
	int count;
	int dataCodewords;
};

struct ECBlocks
{
	int ecCodewords;
	struct ECB ecBlocks[2];
};

struct Version
{
	int versionNumber;
	int totalCodewords;
	int alignmentPatternCount;
	int *alignmentPatternCenters;
	struct ECBlocks ecBlocks[4];
};

#define N_VERSIONS 40
extern struct Version VERSIONS[40];
extern unsigned int VERSION_DECODE_INFO[];

struct Version *getProvisionalVersionForDimension(int dimension);
struct Version *getVersionForNumber(int versionNumber);
int getDimensionForVersion(struct Version *version);
struct Version *decodeVersionInformation(unsigned int versionBits);

struct BitMatrix Version_buildFunctionPattern(struct Version *version);
#endif