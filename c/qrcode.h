#include "../c/wasm.h"

unsigned int imageWidth = 0;
unsigned int imageHeight = 0;

unsigned int imageSize = 0;
unsigned char *imageIndex = &__heap_base;

unsigned int bitmapSize = 0;
unsigned char *bitmapIndex;
