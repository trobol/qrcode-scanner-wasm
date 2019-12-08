#include "DataBlock.h"

struct ArrayRef DataBlock_getDataBlocks(char *rawCodewords, struct Version *version, struct ErrorCorrectionLevel *ecLevel)
{
	// Figure out the number and size of data blocks used by this version and
	// error correction level
	struct ECBlocks ecBlocks = version->ecBlocks[ecLevel->ordinal];

	// First count the total number of data blocks
	int totalBlocks = 0;

	struct ECB *ecBlockArray = ecBlocks.ecBlocks;
	for (unsigned int i = 0; i < 2; i++)
	{
		totalBlocks += ecBlockArray[i].count;
	}

	// Now establish DataBlocks of the appropriate size and number of data codewords
	//std::vector<Ref<DataBlock>> result(totalBlocks);
	//MIGHT BE ERRORS HERE
	struct DataBlock *result = Memory_allocate(totalBlocks * SIZEOF_DATA_BLOCK);
	char *buffer = Memory_allocate(version->totalCodewords * SIZEOF_CHAR);
	int numResultBlocks = 0;
	int bufferIndex = 0;
	for (unsigned int j = 0; j < 2; j++)
	{
		struct ECB ecBlock = ecBlockArray[j];
		for (int i = 0; i < ecBlock.count; i++)
		{
			if (ecBlock.dataCodewords == 0)
				break;
			int numDataCodewords = ecBlock.dataCodewords;
			int numBlockCodewords = ecBlocks.ecCodewords + numDataCodewords;

			result[numResultBlocks].numDataCodeWords = numDataCodewords;
			result[numResultBlocks].codewords = buffer + bufferIndex;
			numResultBlocks++;
			bufferIndex += numDataCodewords;
		}
	}

	// All blocks have the same amount of data, except that the last n
	// (where n may be 0) have 1 more byte. Figure out where these start.
	int shorterBlocksTotalCodewords = result[0].numDataCodeWords;
	int longerBlocksStartAt = totalBlocks - 1;
	while (longerBlocksStartAt >= 0)
	{
		int numCodewords = result[longerBlocksStartAt].numDataCodeWords;
		if (numCodewords == shorterBlocksTotalCodewords)
		{
			break;
		}
		if (numCodewords != shorterBlocksTotalCodewords + 1)
		{
			printf("Data block sizes differ by more than 1");
			//ERROR "Data block sizes differ by more than 1"
		}
		longerBlocksStartAt--;
	}
	longerBlocksStartAt++;

	int shorterBlocksNumDataCodewords = shorterBlocksTotalCodewords;
	// The last elements of result may be 1 element longer;
	// first fill out as many elements as all of them have
	int rawCodewordsOffset = 0;
	for (int i = 0; i < shorterBlocksNumDataCodewords; i++)
	{
		for (int j = 0; j < numResultBlocks; j++)
		{
			result[j].codewords[i] = rawCodewords[rawCodewordsOffset++];
		}
	}
	// Fill out the last data block in the longer ones
	for (int j = longerBlocksStartAt; j < numResultBlocks; j++)
	{
		result[j].codewords[shorterBlocksNumDataCodewords] = rawCodewords[rawCodewordsOffset++];
	}
	// Now add in error correction blocks
	int max = result[0].numDataCodeWords + ecBlocks.ecCodewords;
	for (int i = shorterBlocksNumDataCodewords; i < max; i++)
	{
		for (int j = 0; j < numResultBlocks; j++)
		{
			int iOffset = j < longerBlocksStartAt ? i : i + 1;
			result[j].codewords[iOffset] = rawCodewords[rawCodewordsOffset++];
		}
	}

	if (rawCodewordsOffset != version->totalCodewords)
	{
		//cant read code
		return (struct ArrayRef){0, 0};
	}

	return (struct ArrayRef){totalBlocks, result};
}