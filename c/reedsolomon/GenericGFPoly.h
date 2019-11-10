
struct GenericGFPoly
{
	int degree = 0;
	int *coefficients;
};

struct GenericGFPoly new_GenericGFPoly(int *coefficients, int size) {
	if(size == 0) {
		//error	
	}
	struct GenericGFPoly result;
	 int coefficientsLength = coefficients->size();
  if (coefficientsLength > 1 && coefficients[0] == 0) {
    // Leading term must be non-zero for anything except the constant polynomial "0"
    int firstNonZero = 1;
    while (firstNonZero < coefficientsLength && coefficients[firstNonZero] == 0) {
      firstNonZero++;
    }
    if (firstNonZero == coefficientsLength) {
      result.coefficients = field.getZero()->getCoefficients();
    } else {
      result.coefficients = ArrayRef<int>(new Array<int>(coefficientsLength-firstNonZero));
      for (int i = 0; i < (int)coefficients_->size(); i++) {
        result.coefficients[i] = coefficients[i + firstNonZero];
      }
    }
  } else {
    result.coefficients = coefficients;
  }
}