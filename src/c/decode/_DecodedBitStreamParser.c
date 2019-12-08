#include "DecodedBitStreamParser.h"
#include "Memory.h"
#include "Mode.h"
#include "BitSource.h"
#include "CharacterSetECI.h"

int GB2312_SUBSET = 1;

const char DecodedBitStreamParser_ALPHANUMERIC_CHARS[] =
	{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B',
	 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
	 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
	 'Y', 'Z', ' ', '$', '%', '*', '+', '-', '.', '/', ':'};

struct DecoderResult DecodedBitStreamParser_decode(char *bytes, int size, struct Version *version, struct ErrorCorrectionLevel &ecLevel)
{

	BitSource_writeBytes(bytes, size);
	char resultMax = size / 8;
	DecodedBitStreamParser.result = Memory_allocate(resultMax * SIZEOF_CHAR);
	char* result = DecodedBitStreamParser.result;
	//ArrayRef<ArrayRef<char>> byteSegments(0);
	/*
	try
	{
	*/
	struct CharacterSetECI *currentCharacterSetECI = 0;
	bool fc1InEffect = false;
	struct Mode *mode = 0;
	do
	{
		// While still another segment to read...
		if (BitSource_available() < 4)
		{
			// OK, assume we're done. Really, a TERMINATOR mode should have been recorded here
			mode = &MODE_TERMINATOR; //TERMINATOR
		}
		else
		{
			/*
			try
			{
				*/
			//possible error
			mode = Mode_forBits(BitSource_readBits(4)); // mode is encoded by 4 bits
														/*
			}
			catch (IllegalArgumentException const &iae)
			{
				throw iae;
				// throw FormatException.getFormatInstance();
			}
			*/
		}
		if (mode != &MODE_TERMINATOR)
		{
			if ((mode == &MODE_FNC1_FIRST_POSITION) || (mode == &MODE_FNC1_SECOND_POSITION))
			{
				// We do little with FNC1 except alter the parsed result a bit according to the spec
				fc1InEffect = true;
			}
			else if (mode == &MODE_STRUCTURED_APPEND)
			{
				if (BitSource_available() < 16)
				{
					//throw FormatException();
				}
				// not really supported; all we do is ignore it
				// Read next 8 bits (symbol sequence #) and 8 bits (parity data), then continue
				BitSource_readBits(16);
			}
			else if (mode == &MODE_ECI)
			{
				// Count doesn't apply to ECI
				int value = DecodedBitStreamParser_parseECIValue();
				currentCharacterSetECI = CharacterSetECI_getCharacterSetECIByValue(value);
				if (currentCharacterSetECI == 0)
				{
					//throw FormatException();
				}
			}
			else
			{
				// First handle Hanzi mode which does not start with character count
				if (mode == &MODE_HANZI)
				{
					//chinese mode contains a sub set indicator right after mode indicator
					int subset = BitSource_readBits(4);
					int countHanzi = BitSource_readBits(Mode_getCharacterCountBits(mode, version));
					if (subset == GB2312_SUBSET)
					{
						DecodedBitStreamParser_decodeHanziSegment(result, countHanzi);
					}
				}
				else
				{
					// "Normal" QR code modes:
					// How many characters will follow, encoded in this mode?
					int count = BitSource_readBits(Mode_getCharacterCountBits(mode, version));
					if (mode == &MODE_NUMERIC)
					{
						DecodedBitStreamParser_decodeNumericSegment(result, count);
					}
					else if (mode == &MODE_ALPHANUMERIC)
					{
						DecodedBitStreamParser_decodeAlphanumericSegment(result, count, fc1InEffect);
					}
					else if (mode == &MODE_BYTE)
					{
						//TODO
						//DecodedBitStreamParser_decodeByteSegment(result, count, currentCharacterSetECI, byteSegments, hints);
					}
					else if (mode == &MODE_KANJI)
					{
						DecodedBitStreamParser_decodeKanjiSegment(result, count);
					}
					else
					{
						//throw FormatException();
					}
				}
			}
		}
	} while (mode != &MODE_TERMINATOR);



//return Ref<DecoderResult>(new DecoderResult(bytes, Ref<String>(new String(result)), byteSegments, (string)ecLevel));
}

void DecodedBitStreamParser_append((const char *)bufIn, int nIn)
{
	for (int i = 0; i < nIn; i++)
	{
		DecodedBitStreamParser.result[resultIndex++] = bufIn[i];
	}
}

int DecodedBitStreamParser_parseECIValue()
{
	int firstByte = BitSource_readBits(8);
	if ((firstByte & 0x80) == 0)
	{
		// just one byte
		return firstByte & 0x7F;
	}
	if ((firstByte & 0xC0) == 0x80)
	{
		// two bytes
		int secondByte = BitSource_readBits(8);
		return ((firstByte & 0x3F) << 8) | secondByte;
	}
	if ((firstByte & 0xE0) == 0xC0)
	{
		// three bytes
		int secondThirdBytes = BitSource_readBits(16);
		return ((firstByte & 0x1F) << 16) | secondThirdBytes;
	}
	//throw FormatException();
}

void DecodedBitStreamParser_decodeHanziSegment(string &result,
											   int count)
{

	// Don't crash trying to read more bits than we have available.
	if (count * 13 > BitSource_available())
	{
		//throw FormatException();
	}

	// Each character will require 2 bytes. Read the characters as 2-byte pairs
	// and decode as GB2312 afterwards
	size_t nBytes = 2 * count;
	char *buffer = new char[nBytes];
	int offset = 0;
	while (count > 0)
	{
		// Each 13 bits encodes a 2-byte character
		int twoBytes = BitSource_readBits(13);
		int assembledTwoBytes = ((twoBytes / 0x060) << 8) | (twoBytes % 0x060);
		if (assembledTwoBytes < 0x003BF)
		{
			// In the 0xA1A1 to 0xAAFE range
			assembledTwoBytes += 0x0A1A1;
		}
		else
		{
			// In the 0xB0A1 to 0xFAFE range
			assembledTwoBytes += 0x0A6A1;
		}
		buffer[offset] = (char)((assembledTwoBytes >> 8) & 0xFF);
		buffer[offset + 1] = (char)(assembledTwoBytes & 0xFF);
		offset += 2;
		count--;
	}

	try
	{
		DecodedBitStreamParser_append(result, buffer, nBytes, StringUtils::GB2312);
	}
	catch (ReaderException const &ignored)
	{
		(void)ignored;
		delete[] buffer;
		throw FormatException();
	}

	delete[] buffer;
}

const char DecodedBitStreamParser_ALPHANUMERIC_CHARS[] =
  { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B',
    'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
    'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
    'Y', 'Z', ' ', '$', '%', '*', '+', '-', '.', '/', ':'
  };


void DecodedBitStreamParser_decodeNumericSegment(char* result, int count) {
  int nBytes = count;
  //char* bytes = new char[nBytes];
  char* bytes = Memory_allocate(nBytes * SIZEOF_CHAR);
  int i = 0;
  // Read three digits at a time
  while (count >= 3) {
    // Each 10 bits encodes three digits
    if (BitSource_available() < 10) {
      //delete[] bytes;
      //throw ReaderException("format exception");
    }
    int threeDigitsBits = BitSource_readBits(10);
    if (threeDigitsBits >= 1000) {
     // ostringstream s;
      //s << "Illegal value for 3-digit unit: " << threeDigitsBits;
      //delete[] bytes;
      //throw ReaderException(s.str().c_str());
    }
    bytes[i++] = DecodedBitStreamParser_ALPHANUMERIC_CHARS[threeDigitsBits / 100];
    bytes[i++] = DecodedBitStreamParser_ALPHANUMERIC_CHARS[(threeDigitsBits / 10) % 10];
    bytes[i++] = DecodedBitStreamParser_ALPHANUMERIC_CHARS[threeDigitsBits % 10];
    count -= 3;
  }
  if (count == 2) {
    if (BitSource_available() < 7) {
      //delete[] bytes;
      //throw ReaderException("format exception");
	  
    }
    // Two digits left over to read, encoded in 7 bits
    int twoDigitsBits = BitSource_readBits(7);
    if (twoDigitsBits >= 100) {
      //ostringstream s;
      //s << "Illegal value for 2-digit unit: " << twoDigitsBits;
      //delete[] bytes;
      //throw ReaderException(s.str().c_str());
    }
    bytes[i++] = DecodedBitStreamParser_ALPHANUMERIC_CHARS[twoDigitsBits / 10];
    bytes[i++] = DecodedBitStreamParser_ALPHANUMERIC_CHARS[twoDigitsBits % 10];
  } else if (count == 1) {
    if (BitSource_available() < 4) {
      //delete[] bytes;
      //BitSource_throw ReaderException("format exception");
    }
    // One digit left over to read
    int digitBits = BitSource_readBits(4);
    if (digitBits >= 10) {
      //ostringstream s;
      //s << "Illegal value for digit unit: " << digitBits;
      //delete[] bytes;
      //throw ReaderException(s.str().c_str());
    }
    bytes[i++] = DecodedBitStreamParser_ALPHANUMERIC_CHARS[digitBits];
  }
  append(result, bytes, nBytes, StringUtils::ASCII);
  delete[] bytes;
}