#include "BitMatrixParser.h"
#include "qrcode.h"
#include "DataMask.h"
#include "Memory.h"

struct Version *BitMatrixParser_parsedVersion = 0;
struct FormatInformation BitMatrixParser_parsedFormatInfo;
extern struct BitMatrix BitMatrixParser_bitMatrix;
struct BitMatrix BitMatrixParser_bitMatrix;

void BitMatrixParser_setBitMatrix(struct BitMatrix bitMatrix)
{
	BitMatrixParser_bitMatrix = bitMatrix;
	BitMatrixParser_parsedVersion = 0;

	unsigned int dimension = bitMatrix.height;
	if ((dimension < 21) || (dimension & 0x03) != 1)
	{
		//ERROR
	}
}

int BitMatrixParser_copyBit(unsigned int x, unsigned int y, int versionBits)
{
	return BitMatrix_get(&BitMatrixParser_bitMatrix, x, y) ? (versionBits << 1) | 0x1 : versionBits << 1;
}

struct FormatInformation BitMatrixParser_readFormatInformation()
{
	// Read top-left format info bits
	int formatInfoBits1 = 0;
	for (int i = 0; i < 6; i++)
	{
		formatInfoBits1 = BitMatrixParser_copyBit(i, 8, formatInfoBits1);
	}
	// .. and skip a bit in the timing pattern ...
	formatInfoBits1 = BitMatrixParser_copyBit(7, 8, formatInfoBits1);
	formatInfoBits1 = BitMatrixParser_copyBit(8, 8, formatInfoBits1);
	formatInfoBits1 = BitMatrixParser_copyBit(8, 7, formatInfoBits1);
	// .. and skip a bit in the timing pattern ...
	for (int j = 5; j >= 0; j--)
	{
		formatInfoBits1 = BitMatrixParser_copyBit(8, j, formatInfoBits1);
	}

	// Read the top-right/bottom-left pattern
	int dimension = BitMatrixParser_bitMatrix.height;
	int formatInfoBits2 = 0;
	int jMin = dimension - 7;
	for (int j = dimension - 1; j >= jMin; j--)
	{
		formatInfoBits2 = BitMatrixParser_copyBit(8, j, formatInfoBits2);
	}
	for (int i = dimension - 8; i < dimension; i++)
	{
		formatInfoBits2 = BitMatrixParser_copyBit(i, 8, formatInfoBits2);
	}

	BitMatrixParser_parsedFormatInfo = FormatInformation_decodeFormatInformation(formatInfoBits1, formatInfoBits2);
	/*
	if (BitMatrixParser_parsedFormatInfo.errorCorrectionLevel != 0)
	{
		return BitMatrixParser_parsedFormatInfo;
	}
	//fail handle missing
	*/
	return BitMatrixParser_parsedFormatInfo;
}

struct Version *BitMatrixParser_readVersion()
{
	if (BitMatrixParser_parsedVersion != 0)
	{
		return BitMatrixParser_parsedVersion;
	}

	int dimension = BitMatrixParser_bitMatrix.height;

	int provisionalVersion = (dimension - 17) >> 2;
	if (provisionalVersion <= 6)
	{
		return getVersionForNumber(provisionalVersion);
	}

	// Read top-right version info: 3 wide by 6 tall
	int versionBits = 0;
	for (int y = 5; y >= 0; y--)
	{
		int xMin = dimension - 11;
		for (int x = dimension - 9; x >= xMin; x--)
		{
			versionBits = BitMatrixParser_copyBit(x, y, versionBits);
		}
	}

	BitMatrixParser_parsedVersion = decodeVersionInformation(versionBits);
	if (BitMatrixParser_parsedVersion != 0 && getDimensionForVersion(BitMatrixParser_parsedVersion) == dimension)
	{
		return BitMatrixParser_parsedVersion;
	}

	// Hmm, failed. Try bottom left: 6 wide by 3 tall
	versionBits = 0;
	for (int x = 5; x >= 0; x--)
	{
		int yMin = dimension - 11;
		for (int y = dimension - 9; y >= yMin; y--)
		{
			versionBits = BitMatrixParser_copyBit(x, y, versionBits);
		}
	}

	BitMatrixParser_parsedVersion = decodeVersionInformation(versionBits);
	if (BitMatrixParser_parsedVersion != 0 && getDimensionForVersion(BitMatrixParser_parsedVersion) == dimension)
	{
		return BitMatrixParser_parsedVersion;
	}
	return (struct Version *)NaN;
}

char *BitMatrixParser_readCodewords()
{
	struct Version *version = BitMatrixParser_readVersion();

	// Get the data mask for the format used in this QR Code. This will exclude
	// some bits from reading as we wind through the bit matrix.

	int dimension = BitMatrixParser_bitMatrix.height;
	DataMask_unmaskBitMatrix(BitMatrixParser_bitMatrix, dimension, BitMatrixParser_parsedFormatInfo.dataMask);

	struct BitMatrix functionPattern = Version_buildFunctionPattern(version);

	bool readingUp = true;

	char *result = Memory_allocate(version->totalCodewords * SIZEOF_CHAR);
	for (int i = 0; i < version->totalCodewords; i++)
	{
		result[i] = 0;
	}
	int resultOffset = 0;
	int currentByte = 0;
	int bitsRead = 0;
	// Read columns in pairs, from right to left
	for (int x = dimension - 1; x > 0; x -= 2)
	{
		if (x == 6)
		{
			// Skip whole column with vertical alignment pattern;
			// saves time and makes the other code proceed more cleanly
			x--;
		}
		// Read alternatingly from bottom to top then top to bottom
		for (int counter = 0; counter < dimension; counter++)
		{
			int y = readingUp ? dimension - 1 - counter : counter;
			for (int col = 0; col < 2; col++)
			{
				// Ignore bits covered by the function pattern
				if (!BitMatrix_get(&functionPattern, x - col, y))
				{
					// Read a bit
					bitsRead++;
					currentByte <<= 1;
					if (BitMatrix_get(&BitMatrixParser_bitMatrix, x - col, y))
					{
						currentByte |= 1;
					}
					// If we've made a whole byte, save it off
					if (bitsRead == 8)
					{
						result[resultOffset++] = (char)currentByte;
						bitsRead = 0;
						currentByte = 0;
					}
				}
			}
		}
		readingUp = !readingUp; // switch directions
	}

	if (resultOffset != version->totalCodewords)
	{
		//ERROR
		return 0;
	}
	return result;
}
