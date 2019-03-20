#include "../wasm.h"
#include "patternfinder.h"
#include "patterninfo.h"

const i32 MAX_MODULES = 57,
		  MIN_SKIP = 3,
		  INTEGER_MATH_SHIFT = 8,
		  CENTER_QUORUM = 2;
PatternFinder::PatternFinder(i32 w, i32 h)
{
	width = w;
	height = h;
};
PatternInfo *PatternFinder::findFinderPattern(u8 *imageData)
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
									i32 rowSkip = findRowSkip();
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
								} while (j < maxJ && !imageData[j + i * width]);
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
			bool confirmed = handlePossibleCenter(stateCount, i, maxJ);
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

	i32 *patternInfo = selectBestPatterns();
	orderBestPatterns(patternInfo);

	return new PatternInfo(patternInfo);
}
bool PatternFinder::foundPatternCross(i32 stateCount[5])
{
	i32 totalModuleSize = 0;
	for (i8 i = 0; i < 5; i++)
	{
		i32 count = stateCount[i];
		if (count == 0)
		{
			return false;
		}
		totalModuleSize += count;
	}
	if (totalModuleSize < 7)
	{
		return false;
	}
	i32 moduleSize = (totalModuleSize << INTEGER_MATH_SHIFT) / 7;
	i32 maxVariance = moduleSize / 2;
	// Allow less than 50% variance from 1-1-3-1-1 proportions
	return moduleSize - (stateCount[0] << INTEGER_MATH_SHIFT) < maxVariance && moduleSize - (stateCount[1] << INTEGER_MATH_SHIFT) < maxVariance && 3 * moduleSize - (stateCount[2] << INTEGER_MATH_SHIFT) < 3 * maxVariance && moduleSize - (stateCount[3] << INTEGER_MATH_SHIFT) < maxVariance && moduleSize - (stateCount[4] << INTEGER_MATH_SHIFT) < maxVariance;
}

f32 PatternFinder::centerFromEnd(i32 stateCount[5], f32 end)
{
	return (end - stateCount[4] - stateCount[3]) - stateCount[2] / 2.0;
}

i32 *PatternFinder::selectBestPatterns()
{

	i32 startSize = possibleCentersLength;
	if (startSize < 3)
	{
		// Couldn't find enough finder patterns
		//trow error
	}

	// Filter outlier possibilities whose module size is too different
	if (startSize > 3)
	{
		// But we can only afford to do so if we have at least 4 possibilities to choose from
		f32 totalModuleSize = 0.0;
		f32 square = 0.0;
		for (i32 i = 0; i < startSize; i++)
		{
			//totalModuleSize +=  this.possibleCenters[i].EstimatedModuleSize;
			i32 centerValue = possibleCenters[i].EstimatedModuleSize;
			totalModuleSize += centerValue;
			square += (centerValue * centerValue);
		}
		f32 average = totalModuleSize / startSize;
		this.possibleCenters.sort(function(center1, center2) {
			var dA = Math.abs(center2.EstimatedModuleSize - average);
			var dB = Math.abs(center1.EstimatedModuleSize - average);
			if (dA < dB)
			{
				return (-1);
			}
			else if (dA == dB)
			{
				return 0;
			}
			else
			{
				return 1;
			}
		});

		var stdDev = Math.sqrt(square / startSize - average * average);
		var limit = Math.max(0.2 * average, stdDev);
		for (var i = 0; i<this.possibleCenters.length &&this.possibleCenters.length> 3; i++)
		{
			var pattern = this.possibleCenters[i];
			//if (Math.abs(pattern.EstimatedModuleSize - average) > 0.2 * average)
			if (Math.abs(pattern.EstimatedModuleSize - average) > limit)
			{
				this.possibleCenters.remove(i);
				i--;
			}
		}
	}

	if (this.possibleCenters.length > 3)
	{
		// Throw away all but those first size candidate points we found.
		this.possibleCenters.sort(function(a, b) {
			if (a.count > b.count)
			{
				return -1;
			}
			if (a.count < b.count)
			{
				return 1;
			}
			return 0;
		});
	}

	return new Array(this.possibleCenters[0], this.possibleCenters[1], this.possibleCenters[2]);
}