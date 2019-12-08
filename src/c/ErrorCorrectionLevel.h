#ifndef ERROR_CORRECTION_LEVEL_H
#define ERROR_CORRECTION_LEVEL_H

#define N_LEVELS 4

struct ErrorCorrectionLevel
{
	const int ordinal;
	const int bits;
	const char name;
};

extern struct ErrorCorrectionLevel FOR_BITS[4];

struct ErrorCorrectionLevel *ErrorCorrectionLevel_forBits(int bits);

#endif