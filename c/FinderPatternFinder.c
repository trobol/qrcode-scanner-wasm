#include "../c/qrcode.h"
#include "../c/wasm.h"
#include "../c/FinderPatternFinder.h"

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
	return abs(moduleSize - stateCount[0]) < maxVariance && abs(moduleSize - stateCount[1]) < maxVariance && abs(3.0f * moduleSize - stateCount[2]) < 3.0f * maxVariance && abs(moduleSize - stateCount[3]) < maxVariance && abs(moduleSize - stateCount[4]) < maxVariance;
}

bool handlePossibleCenter(i32 *stateCount, ui32 i, ui32 j)
{
	i32 stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2] + stateCount[3] + stateCount[4];
	f32 centerJ = centerFromEnd(stateCount, j);
	f32 centerI = crossCheckVertical(i, (ui32)centerJ, stateCount[2], stateCountTotal);

	if (!isnan(centerI))
	{
		// Re-cross check
		centerJ = crossCheckHorizontal((ui32)centerJ, (ui32)centerI, stateCount[2], stateCountTotal);
		if (!isnan(centerJ))
		{
			ui32 estimatedModuleSize = (float)stateCountTotal / 7.0f;
			bool found = false;
			ui32 max = possibleCentersIndex + 1;
			for (ui32 index = 0; index < max; index++)
			{
				struct FinderPattern center = possibleCenters[index];
				// Look for about the same center and module size:
				if (aboutEquals(&center, estimatedModuleSize, centerI, centerJ))
				{
					combineEstimate(&center, &possibleCenters[index++], centerI, centerJ, estimatedModuleSize);
					found = true;
					break;
				}
			}
			if (!found)
			{
				createFinderPattern(&possibleCenters[possibleCentersIndex], centerJ, centerI, estimatedModuleSize, 0);
			}
			return true;
		}
	}
	return false;
}
