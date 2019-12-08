#ifndef DATA_BLOCK_H
#define DATA_BLOCK_H
#include "Version.h"
#include "ErrorCorrectionLevel.h"
#include "Memory.h"

#define SIZEOF_DATA_BLOCK SIZEOF_INT + SIZEOF_PTR

struct DataBlock
{
	int numDataCodeWords;
	char *codewords;
};

struct ArrayRef DataBlock_getDataBlocks(char *rawCodewords, struct Version *version, struct ErrorCorrectionLevel *ecLevel);
#endif