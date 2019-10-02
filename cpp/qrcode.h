#include "wasm.h"
#include "detector.h"
#include "findpat.h"
#include "decoder.h"

class QRCode
{
  public:
	i32 width, height, length;
	u8 *imageData;
	i32 qrCodeSymbol;
	bool debug = false;
	const i32 maxImageSize = 1024 * 1024;
	const u8 sizeOfDataLengthInfo[3][4] = {{10, 9, 8, 8}, {12, 11, 16, 10}, {14, 13, 16, 12}};
	Detector detector();
	Decoder decorder();

	u8 getPixel(i32 x, i32 y);
	void grayScaleToBitmap();
	u8 **getMiddleBrightnessPerArea();
	void grayscale();
	u8 *decode();
	void orderBestPatterns(FinderPattern *patterns);
};