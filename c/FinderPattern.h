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

void createFinderPattern(struct FinderPattern *pat, float posX, float posY, float estimatedModuleSize, int count);

bool aboutEquals(struct FinderPattern *pat, float moduleSize, float i, float j);

void incrementCount();

struct FinderPattern combineEstimate(struct FinderPattern *from, float i, float j, float newModuleSize);

bool aboutEquals(struct FinderPattern *pat, float moduleSize, float i, float j);

float FinderPattern_distance(struct FinderPattern *a, struct FinderPattern *b);

#endif