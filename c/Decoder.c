#include "Decoder.h"
#include "BitMatrixParser.h"

void Decoder_decode()
{

	// std::cerr << *bits << std::endl;

	struct Version *version = BitMatrixParser_readVersion();
	struct ErrorCorrectionLevel *ecLevel = BitMatrixParser_readFormatInformation()->errorCorrectionLevel;

	// Read codewords
	ArrayRef<char> codewords(parser.readCodewords());

	// Separate into data blocks
	std::vector<Ref<DataBlock>> dataBlocks(DataBlock::getDataBlocks(codewords, version, ecLevel));

	// Count total number of data bytes
	int totalBytes = 0;
	for (size_t i = 0; i < dataBlocks.size(); i++)
	{
		totalBytes += dataBlocks[i]->getNumDataCodewords();
	}
	ArrayRef<char> resultBytes(totalBytes);
	int resultOffset = 0;

	// Error-correct and copy data blocks together into a stream of bytes
	for (size_t j = 0; j < dataBlocks.size(); j++)
	{
		Ref<DataBlock> dataBlock(dataBlocks[j]);
		ArrayRef<char> codewordBytes = dataBlock->getCodewords();
		int numDataCodewords = dataBlock->getNumDataCodewords();
		correctErrors(codewordBytes, numDataCodewords);
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