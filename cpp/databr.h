#include "wasm.h"
class QRCodeDataBlockReader {
	public:
	  QRCodeDataBlockReader(i8 *blocks, u8 version,u8 numErrorCorrectionCode);
		  u8 *block;
	  i32 dataLength;
	  u8 dataLengthMode;
	  u32 blockPointer;
	  i32 bitPointer;
}