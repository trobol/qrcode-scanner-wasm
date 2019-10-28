#include "../c/wasm.h"

struct FinderPattern {
    f32 posX, posY;
    f32 estimatedModuleSize;
    i32 count;

};

void createFinderPattern(struct FinderPattern *pat, f32 posX, f32 posY, float estimatedModuleSize, i32 count);

bool aboutEquals(struct FinderPattern *pat, f32 moduleSize, f32 i, f32 j);

void incrementCount();

void combineEstimate(struct FinderPattern *from, struct FinderPattern *to, f32 i, f32 j, f32 newModuleSize);

bool aboutEquals(struct FinderPattern *pat, f32 moduleSize, f32 i, f32 j);