#include "GenericGFPoly.h"
#include "GenericGF.h"

struct GenericGFPoly new_GenericGFPoly(int *coefficients, int size)
{
	if (size == 0)
	{
		//error
		puts("Size was 0");
	}
	struct GenericGFPoly result;
	int coefficientsLength = size;
	if (coefficientsLength > 1 && coefficients[0] == 0)
	{
		// Leading term must be non-zero for anything except the constant polynomial "0"
		int firstNonZero = 1;
		while (firstNonZero < coefficientsLength && coefficients[firstNonZero] == 0)
		{
			firstNonZero++;
		}
		if (firstNonZero == coefficientsLength)
		{
			result.coefficients = QR_CODE_FIELD_256.zero.coefficients;
			result.coefficientSize = QR_CODE_FIELD_256.zero.coefficientSize;
		}
		else
		{
			result.coefficientSize = coefficientsLength - firstNonZero;
			result.coefficients = (int *)Memory_allocate(result.coefficientSize * SIZEOF_INT);

			for (int i = 0; i < result.coefficientSize; i++)
			{
				result.coefficients[i] = coefficients[i + firstNonZero];
			}
		}
	}
	else
	{
		result.coefficients = coefficients;
		result.coefficientSize = size;
	}
	result.degree = result.coefficientSize - 1;
	return result;
}

int GenericGFPoly_evaluateAt(struct GenericGFPoly poly, int a)
{
	if (a == 0)
	{
		// Just return the x^0 coefficient
		return poly.coefficients[poly.coefficientSize - 1];
	}

	int size = poly.coefficientSize;
	if (a == 1)
	{
		// Just the sum of the coefficients
		int result = 0;
		for (int i = 0; i < size; i++)
		{
			// GenericGF::addOrSubtract
			result = result ^ poly.coefficients[i];
		}
		return result;
	}
	int result = poly.coefficients[0];
	for (int i = 1; i < size; i++)
	{
		// GenericGF::addOrSubtract
		result = GenericGF_multiply(a, result) ^ poly.coefficients[i];
	}
	return result;
}

struct GenericGFPoly GenericGFPoly_addOrSubtract(struct GenericGFPoly poly, struct GenericGFPoly other)
{

	if (poly.coefficients[0] == 0)
	{
		return other;
	}
	if (other.coefficients[0] == 0)
	{
		return poly;
	}
	struct GenericGFPoly smallerPoly = poly;
	struct GenericGFPoly largerPoly = other;

	if (smallerPoly.coefficientSize > largerPoly.coefficientSize)
	{
		struct GenericGFPoly temp = smallerPoly;
		smallerPoly = largerPoly;
		largerPoly = temp;
	}

	int *sumDiff = Memory_allocate(largerPoly.coefficientSize * SIZEOF_INT);
	int lengthDiff = largerPoly.coefficientSize - smallerPoly.coefficientSize;
	// Copy high-order terms only found in higher-degree polynomial's coefficients
	for (int i = 0; i < lengthDiff; i++)
	{
		sumDiff[i] = largerPoly.coefficients[i];
	}

	for (int i = lengthDiff; i < (int)largerPoly.coefficientSize; i++)
	{
		//GenericGF::addOrSubtract
		sumDiff[i] = smallerPoly.coefficients[i - lengthDiff] ^ largerPoly.coefficients[i];
	}

	return new_GenericGFPoly(sumDiff, largerPoly.coefficientSize);
}

struct GenericGFPoly GenericGFPoly_multiplyByMonomial(struct GenericGFPoly poly, int degree, int coefficient)
{
	if (degree < 0)
	{
		puts("degree must not be less then 0");
		//throw IllegalArgumentException("degree must not be less then 0");
	}
	if (coefficient == 0)
	{
		return QR_CODE_FIELD_256.zero;
	}
	int size = poly.coefficientSize;
	int *product = Memory_allocate((size + degree) * SIZEOF_INT);
	for (int i = 0; i < size; i++)
	{
		product[i] = GenericGF_multiply(poly.coefficients[i], coefficient);
	}
	return new_GenericGFPoly(product, size + degree);
}

struct GenericGFPoly GenericGFPoly_multiplyScalar(struct GenericGFPoly poly, int scalar)
{
	if (scalar == 0)
	{
		return QR_CODE_FIELD_256.zero;
	}
	if (scalar == 1)
	{
		return poly;
	}
	int size = poly.coefficientSize;
	int *product = Memory_allocate(size * SIZEOF_INT);
	for (int i = 0; i < size; i++)
	{
		product[i] = GenericGF_multiply(poly.coefficients[i], scalar);
	}
	return new_GenericGFPoly(product, size);
}

struct GenericGFPoly GenericGFPoly_multiplyPoly(struct GenericGFPoly poly, struct GenericGFPoly other)
{

	if (poly.coefficients[0] == 0 || other.coefficients[0] == 0)
	{
		return QR_CODE_FIELD_256.zero;
	}

	int *aCoefficients = poly.coefficients;
	int aLength = poly.coefficientSize;

	int *bCoefficients = other.coefficients;
	int bLength = other.coefficientSize;
	int size = aLength + bLength - 1;
	int *product = Memory_allocate(size * SIZEOF_INT);
	for (int i = 0; i < aLength; i++)
	{
		int aCoeff = aCoefficients[i];
		for (int j = 0; j < bLength; j++)
		{
			//GenericGF::addOrSubtract
			product[i + j] = product[i + j] ^ GenericGF_multiply(aCoeff, bCoefficients[j]);
		}
	}

	return new_GenericGFPoly(product, size);
}