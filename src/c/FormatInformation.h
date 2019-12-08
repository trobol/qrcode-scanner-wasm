#ifndef FORMAT_INFORMATION_H
#define FORMAT_INFORMATION_H

#define FORMAT_INFO_MASK_QR 0x5412
#define N_FORMAT_INFO_DECODE_LOOKUPS 32
#include "ErrorCorrectionLevel.h"

struct FormatInformation
{
	struct ErrorCorrectionLevel *errorCorrectionLevel;
	char dataMask;
};

extern int BITS_SET_IN_HALF_BYTE[];
extern int FORMAT_INFO_DECODE_LOOKUP[][2];

struct FormatInformation FormatInformation_decodeFormatInformation(int maskedFormatInfo1, int maskedFormatInfo2);
struct FormatInformation FormatInformation_doDecodeFormatInformation(int maskedFormatInfo1, int maskedFormatInfo2);

struct FormatInformation new_FormatInformation(int formatInfo);
int FormatInformation_numBitsDiffering(int a, int b);
#endif