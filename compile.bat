@echo off

wsl /mnt/c/wasmception/dist/bin/clang++ --sysroot=/mnt/c/wasmception/sysroot/ qrcode-scanner.cpp -o qrcode-scanner.wasm -nostartfiles -Wl,--no-entry,--export-dynamic -fno-exceptions

wasm2wat qrcode-scanner.wasm -o qrcode-scanner.wast