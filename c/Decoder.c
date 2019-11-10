#include "Decoder.h"
#include "BitMatrixParser.h"
#include "DataBlock.h"

void Decoder_decode()
{

	// std::cerr << *bits << std::endl;

	struct Version *version = BitMatrixParser_readVersion();
	struct ErrorCorrectionLevel *ecLevel = BitMatrixParser_readFormatInformation()->errorCorrectionLevel;

	// Read codewords
	char *codewords = BitMatrixParser_readCodewords();

	// Separate into data blocks
	struct ArrayRef blockArray = DataBlock_getDataBlocks(codewords, version, ecLevel);
	struct DataBlock *dataBlocks = blockArray.ptr;
	unsigned int blockCount = blockArray.size;

	// Count total number of data bytes
	int totalBytes = 0;
	for (unsigned int i = 0; i < blockCount; i++)
	{
		totalBytes += dataBlocks[i].numDataCodeWords;
	}
	char *resultBytes = Memory_allocate(totalBytes * SIZEOF_CHAR);

	int resultOffset = 0;

	int ecCodeWords = version->ecBlocks[ecLevel->ordinal].ecCodewords;
	// Error-correct and copy data blocks together into a stream of bytes
	for (unsigned int j = 0; j < blockCount; j++)
	{
		struct DataBlock dataBlock = dataBlocks[j];
		char *codewordBytes = dataBlock.codewords;
		int numDataCodewords = dataBlock.numDataCodeWords;
		Decoder_correctErrors(codewordBytes, ecCodeWords, numDataCodewords);
		for (int i = 0; i < numDataCodewords; i++)
		{
			resultBytes[resultOffset++] = codewordBytes[i];
		}
	}

	return DecodedBitStreamParser::decode(resultBytes,
										  version,
										  ecLevel,
										  DecodedBitStreamParser::Hashtable());
}

void Decoder_correctErrors(char *codewordBytes, int ecCodeWords, int numDataCodewords)
{
	int numCodewords = ecCodeWords + numDataCodewords;
	int *codewordInts = Memory_allocate(numCodewords * SIZEOF_INT);
	for (int i = 0; i < numCodewords; i++)
	{
		codewordInts[i] = codewordBytes[i] & 0xff;
	}
	int numECCodewords = numCodewords - numDataCodewords;

	try
	{
		ReedSolomon_decode(codewordInts, numCodewords, numECCodewords);
	}
	catch (ReedSolomonException const &ignored)
	{
		(void)ignored;
		throw ChecksumException();
	}

	for (int i = 0; i < numDataCodewords; i++)
	{
		codewordBytes[i] = (char)codewordInts[i];
	}
}