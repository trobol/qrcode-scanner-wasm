#ifndef BIT_MATRIX_PARSER_H
#define BIT_MATRIX_PARSER_H

#include "Version.h"
#include "FormatInformation.h"
#include "BitMatrix.h"

struct BitMatrix BitMatrixParser_bitMatrix;
void BitMatrixParser_setBitMatrix(struct BitMatrix bitMatrix);

struct Version *BitMatrixParser_readVersion();
struct FormatInformation *BitMatrixParser_readFormatInformation();
char *BitMatrixParser_readCodewords();

int BitMatrixParser_copyBit(unsigned int x, unsigned int y, int versionBits);

extern struct Version *BitMatrixParser_parsedVersion;
extern struct FormatInformation *BitMatrixParser_parsedFormatInfo;

#endif