
#ifndef REED_SOLOMON_DECODER_H
#define REED_SOLOMON_DECODER_H
#include "GenericGFPoly.h"

void ReedSolomonDecoder_runEuclideanAlgorithm(struct GenericGFPoly result[2], struct GenericGFPoly a,
                                              struct GenericGFPoly b,
                                              int R);
void ReedSolomonDecoder_decode(int *received, int size, int twoS);

struct ArrayRef ReedSolomonDecoder_findErrorLocations(struct GenericGFPoly errorLocator);
int *ReedSolomonDecoder_findErrorMagnitudes(struct GenericGFPoly errorEvaluator, int *errorLocations, int size);
#endif