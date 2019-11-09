#ifndef GRID_SAMPLER_H
#define GRID_SAMPLER_H
#include "PerspectiveTransform.h"
#include "wasm.h"

void GridSampler_sampleGrid(int dimension, struct PerspectiveTransform transform);
void GridSampler_checkAndNudgePoints();
import void drawDot(float x, float y);
#endif