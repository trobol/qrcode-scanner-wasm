#ifndef GENERIC_GF_H
#define GENERIC_GF_H
#include "GenericGFPoly.h"

struct GenericGF
{
	
	int primitive;
	int size;
	int generatorBase;

	int expTable[256];
	int logTable[256];
	struct GenericGFPoly zero;
	struct GenericGFPoly one;
	
	
	
	bool initialized;
};

int GenericGF_multiply(int a, int b);

struct GenericGFPoly GenericGF_buildMonomial(int degree, int coefficient);

int GenericGF_inverse(int a);
extern struct GenericGF QR_CODE_FIELD_256;

#endif