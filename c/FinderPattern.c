#include "../c/FinderPattern.h"

void createFinderPattern(struct FinderPattern *pat, f32 posX, f32 posY, float estimatedModuleSize, i32 count) {
    pat->posX = posX;
    pat->posY = posY;
    pat->estimatedModuleSize = estimatedModuleSize;
    pat->count = count;
}
bool aboutEquals(struct FinderPattern *pat, f32 moduleSize, f32 i, f32 j) {
    if (abs(i - getY()) <= moduleSize && abs(j - getX()) <= moduleSize)
    {
        float moduleSizeDiff = abs(moduleSize - pat->estimatedModuleSize);
        return moduleSizeDiff <= 1.0f || moduleSizeDiff <= pat->estimatedModuleSize;
    }
    return false;
}

void combineEstimate(struct FinderPattern *from, struct FinderPattern *to, f32 i, f32 j, f32 newModuleSize) {
    to->count = from->count + 1;
    to->posX = (from->count * from->posX + j) / to->count;
    to->posX = (from->count * from->posY + i) / to->count;
    to->estimatedModuleSize = (from->count * from->estimatedModuleSize + newModuleSize) / to->count;
}

bool aboutEquals(struct FinderPattern *pat, f32 moduleSize, f32 i, f32 j) 
{
    if (abs(i - pat->posY) <= moduleSize && abs(j - pat->posX) <= moduleSize)
    {
        f32 moduleSizeDiff = abs(moduleSize - pat->estimatedModuleSize);
        return moduleSizeDiff <= 1.0f || moduleSizeDiff <= pat->estimatedModuleSize;
    }
    return false;
}