#ifndef FORMAT_INFORMATION_H
#define FORMAT_INFORMATION_H

#define FORMAT_INFO_MASK_QR 0x5412
#define N_FORMAT_INFO_DECODE_LOOKUPS 32

struct FormatInformation
{
	struct ErrorCorrectionLevel *errorCorrectionLevel;
	char dataMask;
};

extern int BITS_SET_IN_HALF_BYTE[];
extern int FormatInformation_FORMAT_INFO_DECODE_LOOKUP[][2];

struct FormatInformation *FormatInformation_decodeFormatInformation(int maskedFormatInfo1, int maskedFormatInfo2);
void FormatInformation_doDecodeFormatInformation(struct FormatInformation *result, int maskedFormatInfo1, int maskedFormatInfo2);

new_FormatInformation(struct FormatInformation *result)
#endif