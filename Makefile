CC = clang
BUILD_DIR = build
SOURCE_DIR = src/c

DEBUG_COMPILE_FLAGS = -g \
					-O0 \
					-Wl,--lto-O0 
					

BUILD_COMPILE_FLAGS = -Oz \
					-Wl,--lto-O3 \
					-Wl,--strip-all 

COMPILE_FLAGS = --target=wasm32-unknown-unknown \
				-std=c11 \
				-include ./src/c/wasm.h \
				-flto \
				-nostdlib \
				-Wl,--export=__heap_base \
				-Wl,--no-gc-sections \
				-Wl,--no-entry \
				-Wl,--export-dynamic \
				-Wl,--allow-undefined-file=src/qrcode.syms \
				-Wl,--initial-memory=131072 \
				-nostdlib \

				
 
FILES = $(wildcard $(SOURCE_DIR)/*.c) \
		$(wildcard $(SOURCE_DIR)/decode/reedsolomon/*.c)

$(shell   mkdir $(BUILD_DIR))

.PHONY:

build: .PHONY
	@$(CC) $(BUILD_COMPILE_FLAGS) $(COMPILE_FLAGS) $(FILES) -o $(BUILD_DIR)/qrcode.wasm

debug: .PHONY
	@$(CC) $(DEBUG_COMPILE_FLAGS) $(COMPILE_FLAGS) $(FILES) -o $(BUILD_DIR)/qrcode.wasm

