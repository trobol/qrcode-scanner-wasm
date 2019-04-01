#include "wasm.h"


class GF256 {
	public:
		GF256(u16);
		static GF256 QR_CODE_FIELD;
		static GF256 DATA_MATRIX_FIELD;
		static var addOrSubtract(var, var);
}