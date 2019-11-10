#include "PerspectiveTransform.h"
#include "qrcode.h"

struct PerspectiveTransform PerspectiveTransform_quadrilateralToQuadrilateral(float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3,
																			  float x0p, float y0p, float x1p, float y1p, float x2p, float y2p, float x3p, float y3p)
{
	struct PerspectiveTransform qToS = PerspectiveTransform_quadrilateralToSquare(x0, y0, x1, y1, x2, y2, x3, y3);
	struct PerspectiveTransform sToQ = PerspectiveTransform_squareToQuadrilateral(x0p, y0p, x1p, y1p, x2p, y2p, x3p, y3p);
	return PerspectiveTransform_times(sToQ, qToS);
}

struct PerspectiveTransform PerspectiveTransform_squareToQuadrilateral(float x0, float y0, float x1, float y1, float x2, float y2,
																	   float x3, float y3)
{

	float dx3 = x0 - x1 + x2 - x3;
	float dy3 = y0 - y1 + y2 - y3;
	if (dx3 == 0.0f && dy3 == 0.0f)
	{
		return new_PerspectiveTransform(
			x1 - x0,
			x2 - x1,
			x0,

			y1 - y0,
			y2 - y1,
			y0,

			0.0f,
			0.0f,
			1.0f);
	}
	else
	{
		float dx1 = x1 - x2;
		float dx2 = x3 - x2;
		float dy1 = y1 - y2;
		float dy2 = y3 - y2;
		float denominator = dx1 * dy2 - dx2 * dy1;
		float a13 = (dx3 * dy2 - dx2 * dy3) / denominator;
		float a23 = (dx1 * dy3 - dx3 * dy1) / denominator;
		return new_PerspectiveTransform(
			x1 - x0 + a13 * x1,
			x3 - x0 + a23 * x3,
			x0,

			y1 - y0 + a13 * y1,
			y3 - y0 + a23 * y3,
			y0,

			a13,
			a23,
			1.0f);
	}
}

struct PerspectiveTransform PerspectiveTransform_buildAjoint(struct PerspectiveTransform first)
{
	return new_PerspectiveTransform(first.a22 * first.a33 - first.a23 * first.a32,
									first.a23 * first.a31 - first.a21 * first.a33,
									first.a21 * first.a32 - first.a22 * first.a31,

									first.a13 * first.a32 - first.a12 * first.a33,
									first.a11 * first.a33 - first.a13 * first.a31,
									first.a12 * first.a31 - first.a11 * first.a32,

									first.a12 * first.a23 - first.a13 * first.a22,
									first.a13 * first.a21 - first.a11 * first.a23,
									first.a11 * first.a22 - first.a12 * first.a21);
}
struct PerspectiveTransform PerspectiveTransform_quadrilateralToSquare(float x0, float y0, float x1, float y1, float x2, float y2,
																	   float x3, float y3)
{

	// Here, the adjoint serves as the inverse:
	return PerspectiveTransform_buildAjoint(PerspectiveTransform_squareToQuadrilateral(x0, y0, x1, y1, x2, y2, x3, y3));
}
struct PerspectiveTransform PerspectiveTransform_times(struct PerspectiveTransform first, struct PerspectiveTransform other)
{
	return new_PerspectiveTransform(
		first.a11 * other.a11 + first.a21 * other.a12 + first.a31 * other.a13,
		first.a11 * other.a21 + first.a21 * other.a22 + first.a31 * other.a23,
		first.a11 * other.a31 + first.a21 * other.a32 + first.a31 * other.a33,

		first.a12 * other.a11 + first.a22 * other.a12 + first.a32 * other.a13,
		first.a12 * other.a21 + first.a22 * other.a22 + first.a32 * other.a23,
		first.a12 * other.a31 + first.a22 * other.a32 + first.a32 * other.a33,

		first.a13 * other.a11 + first.a23 * other.a12 + first.a33 * other.a13,
		first.a13 * other.a21 + first.a23 * other.a22 + first.a33 * other.a23,
		first.a13 * other.a31 + first.a23 * other.a32 + first.a33 * other.a33);
}
void PerspectiveTransform_transformPoints(struct PerspectiveTransform first, int *points, int max)
{
	for (int i = 0; i < max; i += 2)
	{
		float x = points[i];
		float y = points[i + 1];
		float denominator = first.a13 * x + first.a23 * y + first.a33;
		points[i] = (first.a11 * x + first.a21 * y + first.a31) / denominator;
		points[i + 1] = (first.a12 * x + first.a22 * y + first.a32) / denominator;
	}
}

struct PerspectiveTransform new_PerspectiveTransform(float a11, float a21, float a31, float a12, float a22, float a32, float a13, float a23, float a33)
{
	struct PerspectiveTransform result;
	result.a11 = a11;
	result.a21 = a21;
	result.a31 = a31;

	result.a12 = a12;
	result.a22 = a22;
	result.a32 = a32;

	result.a13 = a13;
	result.a23 = a23;
	result.a33 = a33;

	return result;
}