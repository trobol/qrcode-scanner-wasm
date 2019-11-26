CC = clang

DEBUG_COMPILE_FLAGS = -g \
					-O0 \
					-Wl,--lto-O0 
					

BUILD_COMPILE_FLAGS = -Oz \
					-Wl,--lto-O3 \
					-Wl,--strip-all 

COMPILE_FLAGS = --target=wasm32-unknown-unknown \
				-std=c11 \
				-include ./c/wasm.h \
				-flto \
				-nostdlib \
				-Wl,--export=__heap_base \
				-Wl,--gc-sections \
				-Wl,--no-entry \
				-Wl,--export-dynamic \
				-Wl,--allow-undefined-file=qrcode.syms \
				-Wl,--initial-memory=131072 \
				-nostdlib \

				
 
FILES = c/FinderPattern.c \
		c/qrcode.c \
		c/FinderPatternFinder.c \
		c/math.c c/Detector.c \
		c/Version.c \
		c/AlignmentPatternFinder.c \
		c/AlignmentPattern.c \
		c/GridSampler.c \
		c/PerspectiveTransform.c \
		c/Memory.c \
		c/FormatInformation.c \
		c/BitMatrix.c \
		c/ErrorCorrectionLevel.c \
		c/Decoder.c \
		c/decode/reedsolomon/ReedSolomonDecoder.c \
		c/decode/reedsolomon/GenericGF.c \
		c/decode/reedsolomon/GenericGFPoly.c \
		c/BitMatrixParser.c \
		c/DataBlock.c \
		c/DataMask.c
empty:

build: 
	@$(CC) $(BUILD_COMPILE_FLAGS) $(COMPILE_FLAGS) $(FILES) -o qrcode.wasm

debug:
	@$(CC) $(DEBUG_COMPILE_FLAGS) $(COMPILE_FLAGS) $(FILES) -o qrcode.wasm
