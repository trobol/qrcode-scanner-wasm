#include "wasm.h"

class DetectorResults
{
  public:
	DetectorResults(var bits, var points);
};

class Detector
{
  public:
	void detect();

  private:
	i32 sizeOfBlackWhiteBlackRun(i32 fromX, i32 fromY, i32 toX, i32 toY);
	i32 sizeOfBlackWhiteBlackRunBothWays(i32 fromX, i32 fromY, i32 toX, i32 toY);
	i32 calculateModuleSizeOneWay();
	i32 calculateModuleSize(i32 topLeft, i32 topRight, i32 bottomLeft);
	void distance();
	void computeDimensions();
	void findAlignmentInRegion();
	void createTransform();
	void sampleGrid();
	DetectorResults processFinderPatternInfo();
};

class PerspectiveTransform
{
  public:
	PerspectiveTransform(i32 a11, i32 a21, i32 a31, i32 a12, i32 a22, i32 a32, i32 a13, i32 a23, i32 a33);
	i32 a[4][4];
	void transformPoints1(var points);
	void transformPoints2(var xValues, var yValues);
	PerspectiveTransform buildAdjoint();
	PerspectiveTransform times(i32[4][4]);
	PerspectiveTransform quadrilateralToQuadrilateral(var);
	PerspectiveTransform squareToQuadrilateral(i32 x0, i32 y0, i32 x1, i32 y1, i32 x2, i32 y2, i32 x3, i32 y3);
	PerspectiveTransform quadrilateralToSquare(i32 x0, i32 y0, i32 x1, i32 y1, i32 x2, i32 y2, i32 x3, i32 y3);
};