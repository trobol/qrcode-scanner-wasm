#ifndef DECODED_BIT_STREAM_PARSER
#define DECODED_BIT_STREAM_PARSER
#include "../Version.h"
#include "../ErrorCorrectionLevel.h"
struct
{
	char *result;
	int resultIndex;

} DecodedBitStreamParser;

int DecodedBitStreamParser_parseECIValue();
#endif