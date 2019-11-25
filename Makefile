DEPS = 
OBJ = qrcode.o
NANOLIBC_OBJ = $(patsubst %.cpp,%.o,$(wildcard nanolibc/*.cpp))
OUTPUT = qrcode.wasm
CC = clang \
		-c \
		$(COMPILE_FLAGS) \
		-o $@ \
		$<

COMPILE_FLAGS = -Wall \
		--target=wasm32 \
		-Os \
		-flto \
		-nostdlib \
		-fvisibility=hidden \
		-std=c++14 \
		-ffunction-sections \
		-fdata-sections \
		-DPRINTF_DISABLE_SUPPORT_FLOAT=1 \
		-DPRINTF_DISABLE_SUPPORT_LONG_LONG=1 \
		-DPRINTF_DISABLE_SUPPORT_PTRDIFF_T=1

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


$(OUTPUT): $(OBJ) $(NANOLIBC_OBJ) Makefile
	wasm-ld-$(LLVM_VERSION) \
		-o $(OUTPUT) \
		--no-entry \
		--strip-all \
		--export-dynamic \
		--initial-memory=131072 \
		-error-limit=0 \
		--lto-O3 \
		-O3 \
		--gc-sections \
		$(OBJ) \
		$(LIBCXX_OBJ) \
		$(NANOLIBC_OBJ)


%.o: %.c $(DEPS) Makefile
	clang \
		-c \
		$(COMPILE_FLAGS) \
		-o $@ \
		$<

qrcode.wasm: 

FinderPattern.o:
	$(CC) 


qrcode.wasm: qrcode.o

wat: library.wat

clean:
	rm -f $(OBJ) $(NANOLIBC_OBJ) $(OUTPUT) library.wat
say_hello:
	echo "say_hello"