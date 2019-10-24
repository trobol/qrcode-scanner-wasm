#include "../c/qrcode.h"

void findFinderPattern()
{
	unsigned int tryHarder = 0; //boolean
	//image

	unsigned int maxI = imageHeight;
	unsigned int maxJ = imageWidth;

	unsigned int iSkip = (3*maxI) / (4*MAX_MODULES));
	if (iSkip < MIN_SKIP || tryHarder > 0)
	{
		}
}