#ifndef DECODER_H
#define DECODER_H

void Decoder_decode();

void Decoder_correctErrors(char *codewordBytes, int ecCodeWords, int numDataCodewords);

#endif