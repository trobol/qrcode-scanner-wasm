#include "Mode.h"
struct Mode *Mode_forBits(int bits)
{

	switch (bits)
	{
	case 0x0:
		return &MODE_TERMINATOR;
	case 0x1:
		return &MODE_NUMERIC;
	case 0x2:
		return &MODE_ALPHANUMERIC;
	case 0x3:
		return &MODE_STRUCTURED_APPEND;
	case 0x4:
		return &MODE_BYTE;
	case 0x5:
		return &MODE_FNC1_FIRST_POSITION;
	case 0x7:
		return &MODE_ECI;
	case 0x8:
		return &MODE_KANJI;
	case 0x9:
		return &MODE_FNC1_SECOND_POSITION;
	case 0xD:
		// 0xD is defined in GBT 18284-2000, may not be supported in foreign country
		return &MODE_HANZI;
	default:
		/*
		ostringstream s;
		s << "Illegal mode bits: " << bits;
		throw ReaderException(s.str().c_str());
		*/
		//possible error
		return 0;
		break;
	}
}

int Mode_getCharacterCountBits(struct Mode *mode, struct Version *version)
{
	int number = version->versionNumber;
	if (number <= 9)
	{
		return mode->characterCountBitsForVersions0To9;
	}
	else if (number <= 26)
	{
		return mode->characterCountBitsForVersions10To26;
	}
	else
	{
		return mode->characterCountBitsForVersions27AndHigher;
	}
}

struct Mode MODE_TERMINATOR = {0, 0, 0};
struct Mode MODE_NUMERIC = {10, 12, 14};
struct Mode MODE_ALPHANUMERIC = {9, 11, 13};
struct Mode MODE_STRUCTURED_APPEND = {0, 0, 0};
struct Mode MODE_BYTE = {8, 16, 16};

struct Mode MODE_ECI = {0, 0, 0};
struct Mode MODE_KANJI = {8, 10, 12};
struct Mode MODE_FNC1_FIRST_POSITION = {0, 0, 0};
struct Mode MODE_FNC1_SECOND_POSITION = {0, 0, 0};
struct Mode MODE_HANZI = {8, 10, 12};
