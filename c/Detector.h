#include "FinderPattern.h"

float calculateModuleSize(struct FinderPattern *topLeft, struct FinderPattern *topRight, struct FinderPattern *bottomLeft);

float calculateModuleSizeOneWay(struct FinderPattern *pattern, struct FinderPattern *otherPattern)