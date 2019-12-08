#ifndef DECODER_H
#define DECODER_H
#include "Version.h"
#include "ErrorCorrectionLevel.h"
#include "BitMatrix.h"

struct DecoderResult
{
	char *resultBytes;
	int size;
	struct Version *version;
	struct ErrorCorrectionLevel *ecLevel;
};

struct DecoderResult Decoder_decode(struct BitMatrix matrix);

void Decoder_correctErrors(char *codewordBytes, int ecCodeWords, int numDataCodewords);

#endif