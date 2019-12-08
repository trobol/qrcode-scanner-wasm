#include "DecodedBitStreamParser.h"

#define MODE_NUMBER 1
#define MODE_ROMAN_AND_NUMBER 2
#define MODE_8BIT_BYTE 4
#define MODE_KANJI 8

void DecodedBitStreamParser_parse(char *resultBytes, int totalBytes, struct Version version, struct ErrorCorrectionLevel ecLevel)
{
	int blockPointer = 0;
	int bitPointer = 7;
	int dataLength = 0;
	char *blocks = resultBytes;
	int vn = version.versionNumber;
	int dataLengthMode;
	if (vn <= 9)
		dataLengthMode = 0;
	else if (vn >= 10 && vn <= 26)
		dataLengthMode = 1;
	else if (vn >= 27 && vn <= 40)
		dataLengthMode = 2;
}