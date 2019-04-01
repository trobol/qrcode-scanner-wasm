#include "wasm.h"
#include "rsdecoder.h"
#include "databr.h"
#include "gf256.h"

class Decoder {
	public:
	  QRCodeDataBlockReader decode(var bits);
	private:
	  ReedSolomonDecoder rsDecoder(GF256.QR_CODE_FIELD)
};