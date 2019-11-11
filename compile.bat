@echo off
clang -include ./c/wasm.h --target=wasm32 -O3 -flto -fno-builtin -nostdlib^
 -Wl,--strip-all -Wl,--export=__heap_base -Wl,--no-gc-sections -Wl,--import-memory -Wl,--no-entry -Wl,--export-dynamic -Wl,--lto-O3 -Wl,--allow-undefined-file=qrcode.syms -o qrcode.wasm^
 c/FinderPattern.c^
 c/qrcode.c^
 c/FinderPatternFinder.c^
 c/math.c c/Detector.c^
 c/Version.c^
 c/AlignmentPatternFinder.c^
 c/AlignmentPattern.c^
 c/GridSampler.c^
 c/PerspectiveTransform.c^
 c/Memory.c^
 c/FormatInformation.c^
 c/BitMatrix.c^
 c/ErrorCorrectionLevel.c^
 c/Decoder.c^
 c/decode/reedsolomon/ReedSolomonDecoder.c^
 c/decode/reedsolomon/GenericGF.c^
 c/decode/reedsolomon/GenericGFPoly.c^
 c/BitMatrixParser.c^
 c/DataBlock.c^
 c/DataMask.c

