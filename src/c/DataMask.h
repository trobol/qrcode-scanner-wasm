#ifndef DATA_MASK_H
#define DATA_MASK_H
#include "wasm.h"
#include "BitMatrix.h"

extern bool (*DATA_MASKS[8])(unsigned int x, unsigned int y);
void DataMask_unmaskBitMatrix(struct BitMatrix bits, unsigned int dimension, unsigned int refrence);

#endif