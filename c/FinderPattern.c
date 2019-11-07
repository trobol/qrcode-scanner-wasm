#include "../c/FinderPattern.h"
#include "./math.h"

float FinderPattern_distance(struct FinderPattern *p1, struct FinderPattern *p2)
{
    float dx = p1->posX - p2->posX;
    float dy = p1->posY - p2->posY;
    return (float)fsqrt(dx * dx + dy * dy);
}

float get_posX(struct FinderPattern *pat)
{
    return pat->posX;
}
float get_posY(struct FinderPattern *pat)
{
    return pat->posY;
}
float get_estimatedModuleSize(struct FinderPattern *pat)
{
    return pat->estimatedModuleSize;
}
int get_count(struct FinderPattern *pat)
{
    return pat->count;
}

void createFinderPattern(struct FinderPattern *pat, f32 posX, f32 posY, float estimatedModuleSize, i32 count)
{
    pat->posX = posX;
    pat->posY = posY;
    pat->estimatedModuleSize = estimatedModuleSize;
    pat->count = count;
}

struct FinderPattern combineEstimate(struct FinderPattern *from, f32 i, f32 j, f32 newModuleSize)
{
    struct FinderPattern to;
    to.count = from->count + 1;
    to.posX = (from->count * from->posX + j) / to.count;
    to.posY = (from->count * from->posY + i) / to.count;
    to.estimatedModuleSize = (from->count * from->estimatedModuleSize + newModuleSize) / to.count;
    return to;
}

bool aboutEquals(struct FinderPattern *pat, f32 moduleSize, f32 i, f32 j)
{
    if (fabs(i - pat->posY) <= moduleSize && fabs(j - pat->posX) <= moduleSize)
    {
        float moduleSizeDiff = fabs(moduleSize - pat->estimatedModuleSize);
        return moduleSizeDiff <= 1.0f || moduleSizeDiff <= pat->estimatedModuleSize;
    }
    return false;
}