#include "wasm.h"
#include "PatternFinder.h"
const i32 MAX_MODULES = 57,
		  MIN_SKIP = 3;
PatternFinder::PatternFinder(i32 w, i32 h) {
	width = w;
	height = h;
};
int PatternFinder::findFinderPattern(u8 *imageData)
{
	bool tryHarder = false;

	i32 maxI = height;
	i32 maxJ = width;
	i32 iSkip = (3 * maxI) / (4 * MAX_MODULES);
	if (iSkip < MIN_SKIP || tryHarder)
	{
		iSkip = MIN_SKIP;
	}

	bool done = false;
	i32 stateCount[5];
	for (i32 i = iSkip - 1; i < maxI && !done; i += iSkip)
	{
		// Get a row of black/white values
		stateCount[0] = 0;
		stateCount[1] = 0;
		stateCount[2] = 0;
		stateCount[3] = 0;
		stateCount[4] = 0;
		i32 currentState = 0;
		for (int j = 0; j < maxJ; j++)
		{
			if (imageData[j + i * width])
			{
				// Black pixel
				if ((currentState & 1) == 1)
				{
					// Counting white pixels
					currentState++;
				}
				stateCount[currentState]++;
			}
			else
			{
				// White pixel
				if ((currentState & 1) == 0)
				{
					// Counting black pixels
					if (currentState == 4)
					{
						// A winner?
						if (foundPatternCross(stateCount))
						{
							// Yes
							var confirmed = handlePossibleCenter(stateCount, i, j);
							if (confirmed)
							{
								// Start examining every other line. Checking each line turned out to be too
								// expensive and didn't improve performance.
								iSkip = 2;
								if (this.hasSkipped)
								{
									done = this.haveMultiplyConfirmedCenters();
								}
								else
								{
									var rowSkip = this.findRowSkip();
									if (rowSkip > stateCount[2])
									{
										// Skip rows between row of lower confirmed center
										// and top of presumed third confirmed center
										// but back up a bit to get a full chance of detecting
										// it, entire width of center of finder pattern

										// Skip by rowSkip, but back off by stateCount[2] (size of last center
										// of pattern we saw) to be conservative, and also back off by iSkip which
										// is about to be re-added
										i += rowSkip - stateCount[2] - iSkip;
										j = maxJ - 1;
									}
								}
							}
							else
							{
								// Advance to next black pixel
								do
								{
									j++;
								} while (j < maxJ && !image[j + i * qrcode.width]);
								j--; // back up to that last white pixel
							}
							// Clear state to start looking again
							currentState = 0;
							stateCount[0] = 0;
							stateCount[1] = 0;
							stateCount[2] = 0;
							stateCount[3] = 0;
							stateCount[4] = 0;
						}
						else
						{
							// No, shift counts back by two
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
						stateCount[++currentState]++;
					}
				}
				else
				{
					// Counting white pixels
					stateCount[currentState]++;
				}
			}
		}
		if (foundPatternCross(stateCount))
		{
			var confirmed = handlePossibleCenter(stateCount, i, maxJ);
			if (confirmed)
			{
				iSkip = stateCount[0];
				if (hasSkipped)
				{
					// Found a third one
					done = haveMultiplyConfirmedCenters();
				}
			}
		}
	}

	var patternInfo = selectBestPatterns();
	orderBestPatterns(patternInfo);

	return new FinderPatternInfo(patternInfo);
}