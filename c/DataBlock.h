#ifndef DATA_BLOCK_H
#define DATA_BLOCK_H
#include "Version.h"
#include "ErrorCorrectionLevel.h"

struct DataBlock
{
	int numDataCodeWords;
	char *codewords;
};

int DataBlock_getDataBlocks(char *rawCodewords, struct Version *version, struct ErrorCorrectionLevel *ecLevel);
#endif