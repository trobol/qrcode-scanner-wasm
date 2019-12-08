#include "ErrorCorrectionLevel.h"
#include "qrcode.h"

struct ErrorCorrectionLevel FOR_BITS[4] = {
	{1, 0x00, 'M'},
	{0, 0x01, 'L'},
	{3, 0x02, 'H'},
	{2, 0x03, 'Q'},
};

struct ErrorCorrectionLevel *ErrorCorrectionLevel_forBits(int bits)
{
	if (bits < 0 || bits >= N_LEVELS)
	{
		return (struct ErrorCorrectionLevel *)NaN;
	}
	return FOR_BITS + bits;
}