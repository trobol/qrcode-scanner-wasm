#include "AlignmentPatternFinder.h"
#include "qrcode.h"
#include "math.h"

int AlignmentPatternFinder_startX;
int AlignmentPatternFinder_startY;
int AlignmentPatternFinder_width;
int AlignmentPatternFinder_height;
float AlignmentPatternFinder_moduleSize;

struct AlignmentPattern AlignmentPatternFinder_possibleCenters[4];
int AlignmentPatternFinder_possibleCentersSize;

float AlignmentPatternFinder_centerFromEnd(int stateCount[5], int end)
{
	return (float)(end - stateCount[2]) - stateCount[1] / 2.0f;
}

bool AlignmentPatternFinder_foundPatternCross(int stateCount[5])
{
	float maxVariance = AlignmentPatternFinder_moduleSize / 2.0f;
	for (int i = 0; i < 3; i++)
	{
		if (abs_f32(AlignmentPatternFinder_moduleSize - stateCount[i]) >= maxVariance)
		{
			return false;
		}
	}
	return true;
}

float AlignmentPatternFinder_crossCheckVertical(int startI, int centerJ, int maxCount,
												int originalStateCountTotal)
{
	int maxI = imageHeight;
	int stateCount[3] = {0, 0, 0};

	// Start counting up from center
	int i = startI;
	while (i >= 0 && getBitmapPixel(centerJ, i) && stateCount[1] <= maxCount)
	{
		stateCount[1]++;
		i--;
	}
	// If already too many modules in this state or ran off the edge:
	if (i < 0 || stateCount[1] > maxCount)
	{
		return NaN;
	}
	while (i >= 0 && !getBitmapPixel(centerJ, i) && stateCount[0] <= maxCount)
	{
		stateCount[0]++;
		i--;
	}
	if (stateCount[0] > maxCount)
	{
		return NaN;
	}

	// Now also count down from center
	i = startI + 1;
	while (i < maxI && getBitmapPixel(centerJ, i) && stateCount[1] <= maxCount)
	{
		stateCount[1]++;
		i++;
	}
	if (i == maxI || stateCount[1] > maxCount)
	{
		return NaN;
	}
	while (i < maxI && !getBitmapPixel(centerJ, i) && stateCount[2] <= maxCount)
	{
		stateCount[2]++;
		i++;
	}
	if (stateCount[2] > maxCount)
	{
		return NaN;
	}

	int stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2];
	if (5 * abs_f32(stateCountTotal - originalStateCountTotal) >= 2 * originalStateCountTotal)
	{
		return NaN;
	}

	return AlignmentPatternFinder_foundPatternCross(stateCount) ? AlignmentPatternFinder_centerFromEnd(stateCount, i) : NaN;
}

struct AlignmentPattern *AlignmentPatternFinder_handlePossibleCenter(int stateCount[5], int i, int j)
{
	int stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2];
	float centerJ = AlignmentPatternFinder_centerFromEnd(stateCount, j);
	float centerI = AlignmentPatternFinder_crossCheckVertical(i, (int)centerJ, 2 * stateCount[1], stateCountTotal);
	if (centerI != NaN)
	{
		float estimatedModuleSize = (float)(stateCount[0] + stateCount[1] + stateCount[2]) / 3.0f;
		int max = AlignmentPatternFinder_possibleCentersSize;
		for (int index = 0; index < max; index++)
		{
			//POSSIBLE OPTIMIZATION
			struct AlignmentPattern *center = &AlignmentPatternFinder_possibleCenters[index];
			// Look for about the same center and module size:
			if (AlignmentPattern_aboutEquals(center, estimatedModuleSize, centerI, centerJ))
			{
				return AlignmentPattern_combineEstimate(center, centerI, centerJ, estimatedModuleSize);
			}
		}

		AlignmentPatternFinder_possibleCenters[AlignmentPatternFinder_possibleCentersSize].posX = centerJ;
		AlignmentPatternFinder_possibleCenters[AlignmentPatternFinder_possibleCentersSize].posY = centerI;
		AlignmentPatternFinder_possibleCenters[AlignmentPatternFinder_possibleCentersSize].estimatedModuleSize = estimatedModuleSize;
		++AlignmentPatternFinder_possibleCentersSize;
	}
	//POSSIBLE ERROR
	return 0;
}

struct AlignmentPattern *AlignmentPatternFinder_find()
{

	AlignmentPatternFinder_possibleCentersSize = 0;
	int maxJ = AlignmentPatternFinder_startX + AlignmentPatternFinder_width;
	int middleI = AlignmentPatternFinder_startY + (AlignmentPatternFinder_height >> 1);
	//      Ref<BitArray> luminanceRow(new BitArray(width_));
	// We are looking for black/white/black modules in 1:1:1 ratio;
	// this tracks the number of black/white/black modules seen so far
	int stateCount[3] = {0, 0, 0};
	for (int iGen = 0; iGen < AlignmentPatternFinder_height; iGen++)
	{
		// Search from middle outwards
		int i = middleI + ((iGen & 0x01) == 0 ? ((iGen + 1) >> 1) : -((iGen + 1) >> 1));
		//        image_->getBlackRow(i, luminanceRow, startX_, width_);
		stateCount[0] = 0;
		stateCount[1] = 0;
		stateCount[2] = 0;
		int j = AlignmentPatternFinder_startX;
		// Burn off leading white pixels before anything else; if we start in the middle of
		// a white run, it doesn't make sense to count its length, since we don't know if the
		// white run continued to the left of the start point
		while (j < maxJ && !getBitmapPixel(j, i))
		{
			j++;
		}
		int currentState = 0;
		while (j < maxJ)
		{
			if (getBitmapPixel(j, i))
			{
				// Black pixel
				if (currentState == 1)
				{ // Counting black pixels
					stateCount[currentState]++;
				}
				else
				{ // Counting white pixels
					if (currentState == 2)
					{ // A winner?
						if (AlignmentPatternFinder_foundPatternCross(stateCount))
						{ // Yes
							struct AlignmentPattern *confirmed = AlignmentPatternFinder_handlePossibleCenter(stateCount, i, j);
							if (confirmed != 0)
							{
								return confirmed;
							}
						}
						stateCount[0] = stateCount[2];
						stateCount[1] = 1;
						stateCount[2] = 0;
						currentState = 1;
					}
					else
					{
						stateCount[++currentState]++;
					}
				}
			}
			else
			{ // White pixel
				if (currentState == 1)
				{ // Counting black pixels
					currentState++;
				}
				stateCount[currentState]++;
			}
			j++;
		}
		if (AlignmentPatternFinder_foundPatternCross(stateCount))
		{
			struct AlignmentPattern *confirmed = AlignmentPatternFinder_handlePossibleCenter(stateCount, i, maxJ);
			if (confirmed != 0)
			{
				return confirmed;
			}
		}
	}

	// Hmm, nothing we saw was observed and confirmed twice. If we had
	// any guess at all, return it.
	if (AlignmentPatternFinder_possibleCentersSize > 0)
	{
		struct AlignmentPattern *center = &AlignmentPatternFinder_possibleCenters[0];
		return center;
	}

	//Could not find alignment pattern
	//THROW
	return 0;
}