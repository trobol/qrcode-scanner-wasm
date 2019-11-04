#include "../c/qrcode.h"
#include "../c/wasm.h"
#include "../c/FinderPatternFinder.h"
#include "./math.h"
#include "./qrcode.h"

inline bool getBitmapPixel(unsigned int x, unsigned int y)
{
	return image[x * 4 + (imageWidth * y) * 4];
}
float distance(struct FinderPattern *p1, struct FinderPattern *p2)
{
	float dx = p1->posX - p2->posX;
	float dy = p1->posY - p2->posY;
	return (float)sqrt(dx * dx + dy * dy);
}
void orderBestPatterns()
{
	// Find distances between pattern centers
	float abDistance = distance(&possibleCenters[0], &possibleCenters[1]);
	float bcDistance = distance(&possibleCenters[1], &possibleCenters[2]);
	float acDistance = distance(&possibleCenters[0], &possibleCenters[2]);

	struct FinderPattern topLeft;
	struct FinderPattern topRight;
	struct FinderPattern bottomLeft;
	// Assume one closest to other two is top left;
	// topRight and bottomLeft will just be guesses below at first
	if (bcDistance >= abDistance && bcDistance >= acDistance)
	{
		topLeft = possibleCenters[0];
		topRight = possibleCenters[1];
		bottomLeft = possibleCenters[2];
	}
	else if (acDistance >= bcDistance && acDistance >= abDistance)
	{
		topLeft = possibleCenters[1];
		topRight = possibleCenters[0];
		bottomLeft = possibleCenters[2];
	}
	else
	{
		topLeft = possibleCenters[2];
		topRight = possibleCenters[0];
		bottomLeft = possibleCenters[1];
	}

	// Use cross product to figure out which of other1/2 is the bottom left
	// pattern. The vector "top-left -> bottom-left" x "top-left -> top-right"
	// should yield a vector with positive z component
	if ((bottomLeft.posY - topLeft.posY) * (topRight.posX - topLeft.posX) < (bottomLeft.posX - topLeft.posX) * (topRight.posY - topLeft.posY))
	{
		struct FinderPattern temp = topRight;
		topRight = bottomLeft;
		bottomLeft = temp;
	}

	possibleCenters[0] = bottomLeft;
	possibleCenters[1] = topLeft;
	possibleCenters[2] = topRight;
}
void findFinderPattern()
{
	bool tryHarder = false;
	//image

	ui32 maxI = imageHeight;
	ui32 maxJ = imageWidth;

	// We are looking for black/white/black/white/black modules in
	// 1:1:3:1:1 ratio; this tracks the number of such modules seen so far

	i32 stateCount[5];
	bool done = false;

	// Let's assume that the maximum version QR Code we support takes up 1/4
	// the height of the image, and then account for the center being 3
	// modules in size. This gives the smallest number of pixels the center
	// could be, so skip this often. When trying harder, look for all
	// QR versions regardless of how dense they are.
	unsigned int iSkip = (3 * maxI) / (4 * MAX_MODULES);
	if (iSkip < MIN_SKIP || tryHarder)
	{
		iSkip = MIN_SKIP;
	}

	for (ui32 i = iSkip - 1; i < maxI && !done; i += iSkip)
	{
		stateCount[0] = 0;
		stateCount[1] = 0;
		stateCount[2] = 0;
		stateCount[3] = 0;
		stateCount[4] = 0;
		ui32 currentState = 0;
		for (ui32 j = 0; j < maxJ; ++j)
		{

			if (image[j + i * imageWidth])
			{
				// Black pixel
				if ((currentState & 1) == 1)
				{ // Counting white pixels
					++currentState;
				}
				++stateCount[currentState];
			}
			else
			{ // White pixel

				if ((currentState & 1) == 0)
				{ // Counting black pixels
					if (currentState == 4)
					{ // A winner?
						if (foundPatternCross(stateCount))
						{ // Yes
							bool confirmed = handlePossibleCenter(stateCount, i, j);
							if (confirmed)
							{
								// Start examining every other line. Checking each line turned out to be too
								// expensive and didn't improve performance.
								iSkip = 2;
								if (hasSkipped)
								{
									done = haveMultiplyConfirmedCenters();
								}
								else
								{
									ui32 rowSkip = findRowSkip();
									if (rowSkip > stateCount[2])
									{
										// Skip rows between row of lower confirmed center
										// and top of presumed third confirmed center
										// but back up a bit to get a full chance of detecting
										// it, entire width of center of finder pattern

										// Skip by rowSkip, but back off by stateCount[2] (size
										// of last center of pattern we saw) to be conservative,
										// and also back off by iSkip which is about to be
										// re-added
										i += rowSkip - stateCount[2] - iSkip;
										j = maxJ - 1;
									}
								}
							}
							else
							{

								do
								{
									++j;
								} while (j < maxJ && !image[j + i * imageWidth]);
							}

							currentState = 0;
							stateCount[0] = 0;
							stateCount[1] = 0;
							stateCount[2] = 0;
							stateCount[3] = 0;
							stateCount[4] = 0;
						}
						else
						{
							stateCount[0] = stateCount[2];
							stateCount[1] = stateCount[3];
							stateCount[2] = stateCount[4];
							stateCount[3] = 1;
							stateCount[4] = 0;
							currentState = 3;
						}
					}
					else
					{
						++stateCount[++currentState];
					}
				}
			}
			if (foundPatternCross(stateCount))
			{
				bool confirmed = handlePossibleCenter(stateCount, i, maxJ);
				if (confirmed)
				{
					iSkip = stateCount[0];
					if (hasSkipped)
					{
						done = haveMultiplyConfirmedCenters();
					}
				}
			}
		}
	}
	selectBestPatterns();
	orderBestPatterns();
}

int findRowSkip()
{
	unsigned int max = possibleCentersSize;
	if (max <= 1)
	{
		return 0;
	}
	struct FinderPattern *firstConfirmedCenter = 0;
	for (unsigned int i = 0; i < max; i++)
	{
		if (possibleCenters[i].count >= CENTER_QUORUM)
		{
			if (firstConfirmedCenter == 0)
			{
				firstConfirmedCenter = &possibleCenters[i];
			}
			else
			{
				// We have two confirmed centers
				// How far down can we skip before resuming looking for the next
				// pattern? In the worst case, only the difference between the
				// difference in the x / y coordinates of the two centers.
				// This is the case where you find top left first. Draw it out.
				hasSkipped = true;
				return (int)(fabs(firstConfirmedCenter->posX - possibleCenters[i].posX) - fabs(firstConfirmedCenter->posY - possibleCenters[i].posY)) / 2;
			}
		}
	}
	return 0;
}

bool haveMultiplyConfirmedCenters()
{
	int confirmedCount = 0;
	float totalModuleSize = 0.0f;
	unsigned int max = possibleCentersSize;
	for (unsigned int i = 0; i < max; i++)
	{
		if (possibleCenters[i].count >= CENTER_QUORUM)
		{
			confirmedCount++;
			totalModuleSize += possibleCenters[i].estimatedModuleSize;
		}
	}
	if (confirmedCount < 3)
	{
		return false;
	}
	// OK, we have at least 3 confirmed centers, but, it's possible that one is a "false positive"
	// and that we need to keep looking. We detect this by asking if the estimated module sizes
	// vary too much. We arbitrarily say that when the total deviation from average exceeds
	// 5% of the total module size estimates, it's too much.
	float average = totalModuleSize / max;
	float totalDeviation = 0.0f;
	for (unsigned int i = 0; i < max; i++)
	{
		totalDeviation += fabs(possibleCenters[i].estimatedModuleSize - average);
	}
	return totalDeviation <= 0.05f * totalModuleSize;
}

bool foundPatternCross(i32 *stateCount)
{
	i32 totalModuleSize = 0;
	for (ui32 i = 0; i < 5; ++i)
	{
		if (stateCount[i] == 0)
		{
			return false;
		}
		totalModuleSize += stateCount[i];
	}
	if (totalModuleSize < 7)
	{
		return false;
	}
	f32 moduleSize = (f32)totalModuleSize / 7.0f;
	f32 maxVariance = moduleSize / 2.0f;
	// Allow less than 50% variance from 1-1-3-1-1 proportions
	return fabs(moduleSize - stateCount[0]) < maxVariance && fabs(moduleSize - stateCount[1]) < maxVariance && fabs(3.0f * moduleSize - stateCount[2]) < 3.0f * maxVariance && abs(moduleSize - stateCount[3]) < maxVariance && abs(moduleSize - stateCount[4]) < maxVariance;
}

bool handlePossibleCenter(i32 *stateCount, ui32 i, ui32 j)
{
	int stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2] + stateCount[3] + stateCount[4];
	float centerJ = centerFromEnd(stateCount, j);
	float centerI = crossCheckVertical(i, (unsigned int)centerJ, stateCount[2], stateCountTotal);
	if (centerI != NaN)
	{
		// Re-cross check
		centerJ = crossCheckHorizontal((unsigned int)centerJ, (unsigned int)centerI, stateCount[2], stateCountTotal);
		if (centerJ != NaN)
		{
			float estimatedModuleSize = (float)stateCountTotal / 7.0f;
			bool found = false;
			unsigned int max = possibleCentersSize;
			for (unsigned int index = 0; index < max; index++)
			{
				// Look for about the same center and module size:
				if (aboutEquals(possibleCenters + index, estimatedModuleSize, centerI, centerJ))
				{
					combineEstimate(&possibleCenters[index], &possibleCenters[index], centerI, centerJ, estimatedModuleSize);
					found = true;
					break;
				}
			}
			if (!found)
			{
				struct FinderPattern *newPattern = addPossibleCenter(centerJ, centerI, estimatedModuleSize, 0);
			}
			return true;
		}
	}
	return false;
}

float crossCheckVertical(unsigned int startI, unsigned int centerJ, int maxCount,
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
	if (5 * abs(stateCountTotal - originalStateCountTotal) >= 2 * originalStateCountTotal)
	{
		return NaN;
	}

	return foundPatternCross(stateCount) ? centerFromEnd(stateCount, i) : NaN;
}

float crossCheckHorizontal(unsigned int startJ, unsigned int centerI, int maxCount,
						   int originalStateCountTotal)
{

	int maxJ = imageWidth;
	int stateCount[5];
	for (int i = 0; i < 5; i++)
		stateCount[i] = 0;

	int j = startJ;
	while (j >= 0 && getBitmapPixel(j, centerI))
	{
		stateCount[2]++;
		j--;
	}
	if (j < 0)
	{
		return NaN;
	}
	while (j >= 0 && !getBitmapPixel(j, centerI) && stateCount[1] <= maxCount)
	{
		stateCount[1]++;
		j--;
	}
	if (j < 0 || stateCount[1] > maxCount)
	{
		return NaN;
	}
	while (j >= 0 && getBitmapPixel(j, centerI) && stateCount[0] <= maxCount)
	{
		stateCount[0]++;
		j--;
	}
	if (stateCount[0] > maxCount)
	{
		return NaN;
	}

	j = startJ + 1;
	while (j < maxJ && getBitmapPixel(j, centerI))
	{
		stateCount[2]++;
		j++;
	}
	if (j == maxJ)
	{
		return NaN;
	}
	while (j < maxJ && !getBitmapPixel(j, centerI) && stateCount[3] < maxCount)
	{
		stateCount[3]++;
		j++;
	}
	if (j == maxJ || stateCount[3] >= maxCount)
	{
		return NaN;
	}
	while (j < maxJ && getBitmapPixel(j, centerI) && stateCount[4] < maxCount)
	{
		stateCount[4]++;
		j++;
	}
	if (stateCount[4] >= maxCount)
	{
		return NaN;
	}

	// If we found a finder-pattern-like section, but its size is significantly different than
	// the original, assume it's a false positive
	int stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2] + stateCount[3] + stateCount[4];
	if (5 * abs(stateCountTotal - originalStateCountTotal) >= originalStateCountTotal)
	{
		return NaN;
	}

	return foundPatternCross(stateCount) ? centerFromEnd(stateCount, j) : NaN;
}

float centerFromEnd(int *stateCount, int end)
{
	return (float)(end - stateCount[2]) - stateCount[1] / 2.0f;
}

struct FinderPattern *addPossibleCenter(float posX, float posY,
										float estimatedModuleSize,
										unsigned int count)
{
	possibleCenters[possibleCentersSize].posX = posX;
	possibleCenters[possibleCentersSize].posY = posY;
	possibleCenters[possibleCentersSize].estimatedModuleSize = estimatedModuleSize;
	possibleCenters[possibleCentersSize].count = count;
	return &possibleCenters[possibleCentersSize++];
}

void sortPossibleCenters(float average)
{
	struct FinderPattern temp;
	int i, j;
	for (i = 0; i < possibleCentersSize - 1; i++)
		for (j = 0; j < possibleCentersSize - i - 1; j++)
		{
			float dA = fabs(possibleCenters[j].estimatedModuleSize - average);
			float dB = fabs(possibleCenters[j + 1].estimatedModuleSize - average);
			if (dA > dB)
			{
				temp = possibleCenters[j];
				possibleCenters[j] = possibleCenters[j + 1];
				possibleCenters[j + 1] = temp;
			}
		}
}

void sortCenterComparator(float averageModuleSize)
{
	struct FinderPattern temp;
	int i, j;
	bool swap;
	for (i = 0; i < possibleCentersSize - 1; i++)
		for (j = 0; j < possibleCentersSize - i - 1; j++)
		{
			swap = false;
			if (possibleCenters[j].count != possibleCenters[j + 1].count)
			{
				swap = possibleCenters[j].count > possibleCenters[j + 1].count;
			}
			else
			{
				float dA = fabs(possibleCenters[j].estimatedModuleSize - averageModuleSize);
				float dB = fabs(possibleCenters[j].estimatedModuleSize - averageModuleSize);
				swap = dA > dB;
			}
			if (swap)
			{
				temp = possibleCenters[j];
				possibleCenters[j] = possibleCenters[j + 1];
				possibleCenters[j + 1] = temp;
			}
		}
}


//selectBestPatterns
void selectBestPatterns()
{
	unsigned int startSize = possibleCentersSize;

	if (startSize < 3)
	{
		// Couldn't find enough finder patterns
		//throw zxing::ReaderException("Could not find three finder patterns");
	}

	// Filter outlier possibilities whose module size is too different
	if (startSize > 3)
	{
		// But we can only afford to do so if we have at least 4 possibilities to choose from
		float totalModuleSize = 0.0f;
		float square = 0.0f;
		for (unsigned int i = 0; i < startSize; i++)
		{
			float size = possibleCenters[i].estimatedModuleSize;
			totalModuleSize += size;
			square += size * size;
		}
		float average = totalModuleSize / (float)startSize;
		float stdDev = (float)sqrt(square / startSize - average * average);

		sortPossibleCenters(average);

		float limit = max(0.2f * average, stdDev);

		unsigned int readIndex = 0, writeIndex = 0;
		for (unsigned int i = 0; i < possibleCentersSize && possibleCentersSize > 3; i++)
		{
			if (fabs(possibleCenters[i].estimatedModuleSize - average) > limit)
			{
				for (unsigned int j = i; j < possibleCentersSize - 1; j++)
				{
					possibleCenters[j] = possibleCenters[j + 1];
				}
				possibleCentersSize--;
				i--;
			}
		}
	}

	if (possibleCentersSize > 3)
	{
		// Throw away all but those first size candidate points we found.
		float totalModuleSize = 0.0f;
		for (unsigned int i = 0; i < possibleCentersSize; i++)
		{
			float size = possibleCenters[i].estimatedModuleSize;
			totalModuleSize += size;
		}
		float average = totalModuleSize / (float)possibleCentersSize;
		sortCenterComparator(average);
		possibleCentersSize = 3;
	}
}
