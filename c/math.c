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

inline int round(float d)
{
	return (int)(d + 0.5f);
}