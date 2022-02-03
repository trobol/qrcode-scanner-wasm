#include "ReedSolomonDecoder.h"
#include "GenericGF.h"
#include "../../Memory.h"

void ReedSolomonDecoder_decode(int *received, int size, int twoS)
{
  struct GenericGFPoly poly = new_GenericGFPoly(received, size);
  int *syndromeCoefficients = malloc(twoS * SIZEOF_INT);
  bool noError = true;
  for (int i = 0; i < twoS; i++)
  {
    int eval = GenericGFPoly_evaluateAt(poly, QR_CODE_FIELD_256.expTable[i]);
    syndromeCoefficients[twoS - 1 - i] = eval;
    if (eval != 0)
    {
      noError = false;
    }
  }
  if (noError)
  {
    return;
  }

  // This whole section is broken
  // there were errors in the scan, correct them
  struct GenericGFPoly syndrome = new_GenericGFPoly(syndromeCoefficients, twoS);
  struct GenericGFPoly sigmaOmega[2];

  ReedSolomonDecoder_runEuclideanAlgorithm(sigmaOmega, GenericGF_buildMonomial(twoS, 1), syndrome, twoS);
  struct GenericGFPoly sigma = sigmaOmega[0];
  struct GenericGFPoly omega = sigmaOmega[1];
  struct ArrayRef errArray = ReedSolomonDecoder_findErrorLocations(sigma);
  int *errorLocations = errArray.ptr;
  int errorSize = errArray.size;
  int *errorMagitudes = ReedSolomonDecoder_findErrorMagnitudes(omega, errorLocations, errorSize);
  for (int i = 0; i < errorSize; i++)
  {
    int position = size - 1 - QR_CODE_FIELD_256.logTable[errorLocations[i]];
    if (position < 0)
    {
      puts("Bad error location");
      //throw ReedSolomonException("Bad error location");
    }
    // GenericGF::addOrSubtract
    received[position] = received[position] ^ errorMagitudes[i];
  }
}

void ReedSolomonDecoder_runEuclideanAlgorithm(struct GenericGFPoly result[2], struct GenericGFPoly a,
                                              struct GenericGFPoly b,
                                              int R)
{
  // Assume a's degree is >= b's
  if (a.degree < b.degree)
  {
    struct GenericGFPoly tmp = a;
    a = b;
    b = tmp;
  }

  struct GenericGFPoly rLast = a;
  struct GenericGFPoly r = b;
  struct GenericGFPoly tLast = QR_CODE_FIELD_256.zero;
  struct GenericGFPoly t = QR_CODE_FIELD_256.one;

  // Run Euclidean algorithm until r's degree is less than R/2
  while (r.coefficientSize - 1 >= R / 2)
  {
    struct GenericGFPoly rLastLast = rLast;
    struct GenericGFPoly tLastLast = tLast;
    rLast = r;
    tLast = t;

    // Divide rLastLast by rLast, with quotient q and remainder r
    if (rLast.coefficients[0] == 0)
    {
      // Oops, Euclidean algorithm already terminated?
      // r_{i-1} was zero
      puts("Oops, Euclidean algorithm already terminated?");
    }
    r = rLastLast;
    struct GenericGFPoly q = QR_CODE_FIELD_256.zero;
    int denominatorLeadingTerm = rLast.coefficients[rLast.coefficientSize - 1 - rLast.degree];
    int dltInverse = GenericGF_inverse(denominatorLeadingTerm);

    //while (r.degree >= rLast.degree && r.coefficients[0] != 0)
    //{
      int degreeDiff = r.degree - rLast.degree;
      //potential error getCoefficient(degree)
	  printNum(r.degree);
      int scale = GenericGF_multiply(r.coefficients[0], dltInverse);

      q = GenericGFPoly_addOrSubtract(q, GenericGF_buildMonomial(degreeDiff, scale));
      r = GenericGFPoly_addOrSubtract(r, GenericGFPoly_multiplyByMonomial(rLast, degreeDiff, scale));
    //}

    t = GenericGFPoly_addOrSubtract(GenericGFPoly_multiplyPoly(q, tLast), tLastLast);

    if (r.degree >= rLast.degree)
    {
      puts("Division algorithm failed to reduce polynomial?");
      //throw IllegalStateException("Division algorithm failed to reduce polynomial?");
    }
  }

  int sigmaTildeAtZero = t.coefficients[t.coefficientSize - 1];
  if (sigmaTildeAtZero == 0)
  {
    puts("sigmaTilde(0) was zero");
    //throw ReedSolomonException("sigmaTilde(0) was zero");
  }

  int inverse = GenericGF_inverse(sigmaTildeAtZero);
  result[0] = GenericGFPoly_multiplyScalar(t, inverse);
  result[1] = GenericGFPoly_multiplyScalar(r, inverse);
}

struct ArrayRef ReedSolomonDecoder_findErrorLocations(struct GenericGFPoly errorLocator)
{
  // This is a direct application of Chien's search
  struct ArrayRef result;
  int numErrors = errorLocator.degree;
  if (numErrors == 1)
  { // shortcut
    result.ptr = malloc(SIZEOF_INT);
    ((int *)result.ptr)[0] = errorLocator.coefficients[0];
    result.size = 1;
    return result;
  }
  result.ptr = malloc(numErrors * SIZEOF_INT);
  result.size = numErrors;
  int e = 0;
  for (int i = 1; i < QR_CODE_FIELD_256.size && e < numErrors; i++)
  {
    if (GenericGFPoly_evaluateAt(errorLocator, i) == 0)
    {
      ((int *)result.ptr)[e] = GenericGF_inverse(i);
      e++;
    }
  }
  if (e != numErrors)
  {
    puts("Error locator degree does not match number of roots");
    //throw ReedSolomonException("Error locator degree does not match number of roots");
  }
  return result;
}

int *ReedSolomonDecoder_findErrorMagnitudes(struct GenericGFPoly errorEvaluator, int *errorLocations, int size)
{
  // This is directly applying Forney's Formula
  int s = size;
  int *result = malloc(s * SIZEOF_INT);
  for (int i = 0; i < s; i++)
  {
    int xiInverse = GenericGF_inverse(errorLocations[i]);
    int denominator = 1;
    for (int j = 0; j < s; j++)
    {
      if (i != j)
      {
        int term = GenericGF_multiply(errorLocations[j], xiInverse);
        int termPlus1 = (term & 0x1) == 0 ? term | 1 : term & ~1;
        denominator = GenericGF_multiply(denominator, termPlus1);
      }
    }
    result[i] = GenericGF_multiply(GenericGFPoly_evaluateAt(errorEvaluator, xiInverse),
                                   GenericGF_inverse(denominator));
  }
  return result;
}
