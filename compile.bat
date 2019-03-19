@echo off

wsl /mnt/c/wasmception/dist/bin/clang++ --sysroot=/mnt/c/wasmception/sysroot/ "%1" -o "%~n1.wasm" -nostartfiles -Wl,--no-entry,--export-dynamic -Wl,--allow-undefined-file=main.syms,--import-memory,--demangle,--no-entry,--no-threads -fno-exceptions

wasm2wat "%~n1.wasm" -o "%~n1.wat"