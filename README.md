# WebAssembly QrCode Scanner (waqc)
<img src="docs/img/waqc.png" alt="WAQC Logo" style="max-width:100%;" width="200px">


A rewrite of the QRCode scanning parts of ZXing in C, specifically to be compiled to WebAssembly

The purpose is to make an in browser QRCode scanner as small and fast as possible.
WebAssembly (WASM) features much faster speed and smaller executable size compared to JS making it the obvious candidate.
Currently there tools for compiling C/C++ to WASM without any custom changes and there are other projects that have done that with the ZXing library.

The issue is these tools create a lot of boiler plate code and under utilize the tools that WebAssembly offers, resulting in slower and larger outputs.

In order to avoid this, I have moved/ported the code to C and rewritten large sections in order to be compatible with WASM without a wrapper.


[View the demo here](https://trobol.net/waqc/demo)


# Building

requirements: nodejs, clang v11 or greater

