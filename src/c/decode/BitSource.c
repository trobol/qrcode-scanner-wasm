#include "BitSource.h"
#include "../wasm.h"

void BitSource_writeBytes(char *bytes, int size)
{
	BitSource.bytes = bytes;
	BitSource.size = size;
	BitSource.bitOffset = 0;
	BitSource.byteOffset = 0;
}

int BitSource_readBits(int numBits)
{
	if (numBits < 0 || numBits > 32 || numBits > BitSource_available())
	{
		puts("Bitsource IllegalArgumentException");
		//throw IllegalArgumentException(oss.str().c_str());
	}

	int result = 0;

	// First, read remainder from current byte
	if (BitSource.bitOffset > 0)
	{
		int bitsLeft = 8 - BitSource.bitOffset;
		int toRead = numBits < bitsLeft ? numBits : bitsLeft;
		int bitsToNotRead = bitsLeft - toRead;
		int mask = (0xFF >> (8 - toRead)) << bitsToNotRead;
		result = (BitSource.bytes[BitSource.byteOffset] & mask) >> bitsToNotRead;
		numBits -= toRead;
		BitSource.bitOffset += toRead;
		if (BitSource.bitOffset == 8)
		{
			BitSource.bitOffset = 0;
			BitSource.byteOffset++;
		}
	}

	// Next read whole bytes
	if (numBits > 0)
	{
		while (numBits >= 8)
		{
			result = (result << 8) | (BitSource.bytes[BitSource.byteOffset] & 0xFF);
			BitSource.byteOffset++;
			numBits -= 8;
		}

		// Finally read a partial byte
		if (numBits > 0)
		{
			int bitsToNotRead = 8 - numBits;
			int mask = (0xFF >> bitsToNotRead) << bitsToNotRead;
			result = (result << numBits) | ((BitSource.bytes[BitSource.byteOffset] & mask) >> bitsToNotRead);
			BitSource.bitOffset += numBits;
		}
	}

	return result;
}

int BitSource_available()
{
	return 8 * (BitSource.size - BitSource.byteOffset) - BitSource.bitOffset;
}
