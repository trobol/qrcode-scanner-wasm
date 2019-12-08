#include "../Version.h"

struct Mode
{
	int characterCountBitsForVersions0To9;
	int characterCountBitsForVersions10To26;
	int characterCountBitsForVersions27AndHigher;
};

struct Mode *Mode_forBits();
int Mode_getCharacterCountBits(struct Mode *mode, struct Version *version);
extern struct Mode MODE_TERMINATOR;
extern struct Mode MODE_NUMERIC;
extern struct Mode MODE_ALPHANUMERIC;
extern struct Mode MODE_STRUCTURED_APPEND;
extern struct Mode MODE_BYTE;

extern struct Mode MODE_ECI;
extern struct Mode MODE_KANJI;
extern struct Mode MODE_FNC1_FIRST_POSITION;
extern struct Mode MODE_FNC1_SECOND_POSITION;
extern struct Mode MODE_HANZI;
