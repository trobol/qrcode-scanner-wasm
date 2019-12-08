#ifndef PERSPECTIVE_TRANSFORM_H
#define PERSPECTIVE_TRANSFORM_H

struct PerspectiveTransform
{
	float a11, a12, a13, a21, a22, a23, a31, a32, a33;
};
struct PerspectiveTransform PerspectiveTransform_quadrilateralToQuadrilateral(float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3,
																			  float x0p, float y0p, float x1p, float y1p, float x2p, float y2p, float x3p, float y3p);

struct PerspectiveTransform PerspectiveTransform_squareToQuadrilateral(float x0, float y0, float x1, float y1, float x2, float y2,
																	   float x3, float y3);
struct PerspectiveTransform PerspectiveTransform_quadrilateralToSquare(float x0, float y0, float x1, float y1, float x2, float y2,
																	   float x3, float y3);
struct PerspectiveTransform PerspectiveTransform_times(struct PerspectiveTransform first, struct PerspectiveTransform other);

struct PerspectiveTransform PerspectiveTransform_buildAjoint(struct PerspectiveTransform first);

void PerspectiveTransform_transformPoints(struct PerspectiveTransform first, float *points, int max);

struct PerspectiveTransform new_PerspectiveTransform(float a11, float a21, float a31, float a12, float a22, float a32, float a13, float a23, float a33);
#endif