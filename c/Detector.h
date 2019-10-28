struct Detector {
	
}
class Detector : public Counted
{
private:
	Ref<BitMatrix> image_;
	Ref<ResultPointCallback> callback_;

protected:
	Ref<BitMatrix> getImage() const;
	Ref<ResultPointCallback> getResultPointCallback() const;

	static Ref<BitMatrix> sampleGrid(Ref<BitMatrix> image, int dimension, Ref<PerspectiveTransform>);
	static int computeDimension(Ref<ResultPoint> topLeft, Ref<ResultPoint> topRight, Ref<ResultPoint> bottomLeft,
								float moduleSize);
	float calculateModuleSize(Ref<ResultPoint> topLeft, Ref<ResultPoint> topRight, Ref<ResultPoint> bottomLeft);
	float calculateModuleSizeOneWay(Ref<ResultPoint> pattern, Ref<ResultPoint> otherPattern);
	float sizeOfBlackWhiteBlackRunBothWays(int fromX, int fromY, int toX, int toY);
	float sizeOfBlackWhiteBlackRun(int fromX, int fromY, int toX, int toY);
	Ref<AlignmentPattern> findAlignmentInRegion(float overallEstModuleSize, int estAlignmentX, int estAlignmentY,
												float allowanceFactor);
	Ref<DetectorResult> processFinderPatternInfo(Ref<FinderPatternInfo> info);

public:
	virtual Ref<PerspectiveTransform> createTransform(Ref<ResultPoint> topLeft, Ref<ResultPoint> topRight, Ref<ResultPoint> bottomLeft, Ref<ResultPoint> alignmentPattern, int dimension);

	Detector(Ref<BitMatrix> image);
	Ref<DetectorResult> detect(DecodeHints const &hints);
};