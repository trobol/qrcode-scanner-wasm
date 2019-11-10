#include "GenericGFPoly.h"

void ReedSolomonDecoder_decode(int *received, int size, int twoS)
{
	GenericGFPoly poly = (new GenericGFPoly(*field, received));
	ArrayRef<int> syndromeCoefficients(twoS);
	bool noError = true;
	for (int i = 0; i < twoS; i++)
	{
		int eval = poly->evaluateAt(field->exp(i + field->getGeneratorBase()));
		syndromeCoefficients[syndromeCoefficients->size() - 1 - i] = eval;
		if (eval != 0)
		{
			noError = false;
		}
	}
	if (noError)
	{
		return;
	}
	Ref<GenericGFPoly> syndrome(new GenericGFPoly(*field, syndromeCoefficients));
	vector<Ref<GenericGFPoly>> sigmaOmega =
		runEuclideanAlgorithm(field->buildMonomial(twoS, 1), syndrome, twoS);
	Ref<GenericGFPoly> sigma = sigmaOmega[0];
	Ref<GenericGFPoly> omega = sigmaOmega[1];
	ArrayRef<int> errorLocations = findErrorLocations(sigma);
	ArrayRef<int> errorMagitudes = findErrorMagnitudes(omega, errorLocations);
	for (int i = 0; i < errorLocations->size(); i++)
	{
		int position = received->size() - 1 - field->log(errorLocations[i]);
		if (position < 0)
		{
			throw ReedSolomonException("Bad error location");
		}
		received[position] = GenericGF::addOrSubtract(received[position], errorMagitudes[i]);
	}
}
