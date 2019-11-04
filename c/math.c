#include "./math.h"

int abs(int i)
{
	return i < 0 ? -i : i;
}

float fabs(float i)
{
	return i < 0 ? -i : i;
}

int max(int i, int j)
{
	return i > j ? i : j;
}

float fmax(float i, float j)
{
	return i > j ? i : j;
}

//src: https://rajesh38.wordpress.com/2013/10/04/sqrt-implementation-in-c/
int sqrt(int num)
{
	int guess, e, upperbound;
	guess = 1;
	e = 0.001;
	do
	{
		upperbound = num / guess;
		guess = (upperbound + guess) / 2;
	} while (!(guess * guess >= num - e &&
			   guess * guess <= num + e));
	return guess;
}

float fsqrt(float num)
{
	float guess, e, upperbound;
	guess = 1;
	e = 0.001;
	do
	{
		upperbound = num / guess;
		guess = (upperbound + guess) / 2;
	} while (!(guess * guess >= num - e &&
			   guess * guess <= num + e));
	return guess;
}