#ifndef FINDER_PATTERN_H
#define FINDER_PATTERN_H
#include "../c/wasm.h"

struct FinderPattern
{
    float posX, posY;
    float estimatedModuleSize;
    unsigned int count;
};

float get_posX(struct FinderPattern *pat);
float get_posY(struct FinderPattern *pat);
float get_estimatedModuleSize(struct FinderPattern *pat);
int get_count(struct FinderPattern *pat);

void createFinderPattern(struct FinderPattern *pat, f32 posX, f32 posY, float estimatedModuleSize, i32 count);

bool aboutEquals(struct FinderPattern *pat, f32 moduleSize, f32 i, f32 j);

void incrementCount();

struct FinderPattern combineEstimate(struct FinderPattern *from, f32 i, f32 j, f32 newModuleSize);

bool aboutEquals(struct FinderPattern *pat, f32 moduleSize, f32 i, f32 j);

float FinderPattern_distance(struct FinderPattern *a, struct FinderPattern *b);

#endif