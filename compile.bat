@echo off

wsl /mnt/c/wasmception/dist/bin/clang++ --sysroot=/mnt/c/wasmception/sysroot/ "%1" -o "build/%~n1.wasm" -nostartfiles -Wl,--no-entry,--export-dynamic -Wl,--allow-undefined-file=main.syms,--import-memory,--demangle,--no-entry,--no-threads -fno-exceptions

wasm2wat "build/%~n1.wasm" -o "build/%~n1.wat"