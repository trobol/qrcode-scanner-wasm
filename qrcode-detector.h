#include "wasm.h"
class QRCodeDectector
{
  public:
	QRCodeDectector(u8 *imageData);
	void detect();

  private:
	i32 sizeOfBlackWhiteBlackRun(i32 fromX, i32 fromY, i32 toX, i32 toY);
	i32 sizeOfBlackWhiteBlackRunBothWays(i32 fromX, i32 fromY, i32 toX, i32 toY);
	void calculateModuleSizeOneWay();
	i32 calculateModuleSize(i32 topLeft, i32 topRight, i32 bottomLeft);
	void distance();
	void computeDimensions();
	void findAlignmentInRegion();
	void createTransform();
	void sampleGrid();
	void processFinderPatternInfo();
};