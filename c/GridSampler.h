#ifndef GRID_SAMPLER_H
#define GRID_SAMPLER_H
#include "PerspectiveTransform.h"
#include "wasm.h"
#include "BitMatrix.h"

void GridSampler_sampleGrid(struct BitMatrix *matrix, int dimension, struct PerspectiveTransform transform);
void GridSampler_checkAndNudgePoints(int width, int height, float *points, int max);
import void drawDot(float x, float y);

#endif