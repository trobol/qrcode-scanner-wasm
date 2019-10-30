@echo off
call "compile.bat"
if %errorlevel% == 0 (
	wasm2wat "qrcode.wasm" -o "qrcode.wast"
	echo [92mCompiled qrcode.wasm and qrcode.wast[0m
) else (
	echo [91mFailed to compile[0m
)
