#ifndef BIT_MATRIX_PARSER_H
#define BIT_MATRIX_PARSER_H

#include "Version.h"
#include "FormatInformation.h"

void BitMatrixParser_parser();

struct Version *BitMatrixParser_readVersion();
struct FormatInformation *BitMatrixParser_readFormatInformation();
void BitMatrixParser_readCodewords();

int BitMatrixParser_copyBit(unsigned int x, unsigned int y, int versionBits);

extern struct Version *BitMatrixParser_parsedVersion;
extern struct FormatInformation *BitMatrixParser_parsedFormatInfo;

#endif