#include "DecodedBitStreamParser.h"
#include "Memory.h"
#include "Mode.h"
#include "BitSource.h"

struct DecoderResult DecodedBitStreamParser_decode(char *bytes, int size, struct Version *version, struct ErrorCorrectionLevel &ecLevel, )
{

	BitSource_writeBytes(bytes, size);
	char resultMax = size / 8;
	char *result = Memory_allocate(resultMax * SIZEOF_CHAR);

	int resultIndex = 0;

	//ArrayRef<ArrayRef<char>> byteSegments(0);
	/*
	try
	{
	*/
	//CharacterSetECI *currentCharacterSetECI = 0;
	//bool fc1InEffect = false;
	struct Mode *mode = 0;
	do
	{
		// While still another segment to read...
		if (BitSource_available() < 4)
		{
			// OK, assume we're done. Really, a TERMINATOR mode should have been recorded here
			mode = &MODES[0]; //TERMINATOR
		}
		else
		{
			/*
			try
			{
				*/
			mode = &Mode::forBits(bits.readBits(4)); // mode is encoded by 4 bits
													 /*
			}
			catch (IllegalArgumentException const &iae)
			{
				throw iae;
				// throw FormatException.getFormatInstance();
			}
			*/
		}
		if (mode != &Mode::TERMINATOR)
		{
			if ((mode == &Mode::FNC1_FIRST_POSITION) || (mode == &Mode::FNC1_SECOND_POSITION))
			{
				// We do little with FNC1 except alter the parsed result a bit according to the spec
				fc1InEffect = true;
			}
			else if (mode == &Mode::STRUCTURED_APPEND)
			{
				if (bits.available() < 16)
				{
					throw FormatException();
				}
				// not really supported; all we do is ignore it
				// Read next 8 bits (symbol sequence #) and 8 bits (parity data), then continue
				bits.readBits(16);
			}
			else if (mode == &Mode::ECI)
			{
				// Count doesn't apply to ECI
				int value = parseECIValue(bits);
				currentCharacterSetECI = CharacterSetECI::getCharacterSetECIByValue(value);
				if (currentCharacterSetECI == 0)
				{
					throw FormatException();
				}
			}
			else
			{
				// First handle Hanzi mode which does not start with character count
				if (mode == &Mode::HANZI)
				{
					//chinese mode contains a sub set indicator right after mode indicator
					int subset = bits.readBits(4);
					int countHanzi = bits.readBits(mode->getCharacterCountBits(version));
					if (subset == GB2312_SUBSET)
					{
						decodeHanziSegment(bits_, result, countHanzi);
					}
				}
				else
				{
					// "Normal" QR code modes:
					// How many characters will follow, encoded in this mode?
					int count = bits.readBits(mode->getCharacterCountBits(version));
					if (mode == &Mode::NUMERIC)
					{
						decodeNumericSegment(bits_, result, count);
					}
					else if (mode == &Mode::ALPHANUMERIC)
					{
						decodeAlphanumericSegment(bits_, result, count, fc1InEffect);
					}
					else if (mode == &Mode::BYTE)
					{
						decodeByteSegment(bits_, result, count, currentCharacterSetECI, byteSegments, hints);
					}
					else if (mode == &Mode::KANJI)
					{
						decodeKanjiSegment(bits_, result, count);
					}
					else
					{
						throw FormatException();
					}
				}
			}
		}
	} while (mode != &Mode::TERMINATOR);
}
catch (IllegalArgumentException const &iae)
{
	(void)iae;
	// from readBits() calls
	throw FormatException();
}

return Ref<DecoderResult>(new DecoderResult(bytes, Ref<String>(new String(result)), byteSegments, (string)ecLevel));
}