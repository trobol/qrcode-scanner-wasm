#ifndef GENERIC_GF_POLY_H
#define GENERIC_GF_POLY_H
#include "../../Memory.h"
#include "../../wasm.h"

struct GenericGFPoly
{
	int degree;
	int *coefficients;
	int coefficientSize;
};

struct GenericGFPoly new_GenericGFPoly(int *coefficients, int size);

int GenericGFPoly_evaluateAt(struct GenericGFPoly poly, int a);

int GenericGFPoly_getCoefficient(struct GenericGFPoly *poly, int degree);
struct GenericGFPoly GenericGFPoly_addOrSubtract(struct GenericGFPoly poly, struct GenericGFPoly other);
struct GenericGFPoly GenericGFPoly_multiplyByMonomial(struct GenericGFPoly poly, int degree, int coefficient);
struct GenericGFPoly GenericGFPoly_multiplyScalar(struct GenericGFPoly poly, int scalar);
struct GenericGFPoly GenericGFPoly_multiplyPoly(struct GenericGFPoly poly, struct GenericGFPoly other);

#endif