#include "Version.h"

struct Version *getProvisionalVersionForDimension(int dimension)
{
	if (dimension % 4 != 1)
	{
		//ERROR
		//throw FormatException();
	}

	return getVersionForNumber((dimension - 17) >> 2);
}
static int N_VERSIONS = buildVersions();

struct Version *getVersionForNumber(int versionNumber)
{
	if (versionNumber < 1 || versionNumber > N_VERSIONS)
	{
		//ERROR
		//throw ReaderException("versionNumber must be between 1 and 40");
	}

	return VERSIONS[versionNumber - 1];
}
int *intArray() {}
struct Version VERSIONS[40] = {
	{1, 0, {0, 0, 0, 0, 0, 0, 0}, {{7, {1, 19}}, {10, {1, 16}}, {13, {1, 13}}, {17, {1, 9}}}},	//1
	{2, 2, {6, 18, 0, 0, 0, 0, 0}, {{10, {1, 34}}, {16, {1, 28}}, {22, {1, 22}}, {28, {1, 16}}}}, //2
	{3, 2, {6, 18, 0, 0, 0, 0, 0}, {{15, {1, 55}}, {26, {1, 44}}, {18, {2, 17}}, {22, {1, 13}}}}, //3
	{4, 2, {6, 18, 0, 0, 0, 0, 0}, {{10, {1, 34}}, {16, {1, 28}}, {22, {1, 22}}, {28, {4, 9}}}}   //4

};

/*
VERSIONS.push_back(Ref<Version>(new Version(1, intArray(0),
											new ECBlocks(7, new ECB(1, 19)),
											new ECBlocks(10, new ECB(1, 16)),
											new ECBlocks(13, new ECB(1, 13)),
											new ECBlocks(17, new ECB(1, 9)))));
VERSIONS.push_back(Ref<Version>(new Version(2, intArray(2, 6, 18),
											new ECBlocks(10, new ECB(1, 34)),
											new ECBlocks(16, new ECB(1, 28)),
											new ECBlocks(22, new ECB(1, 22)),
											new ECBlocks(28, new ECB(1, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(3, intArray(2, 6, 22),
											new ECBlocks(15, new ECB(1, 55)),
											new ECBlocks(26, new ECB(1, 44)),
											new ECBlocks(18, new ECB(2, 17)),
											new ECBlocks(22, new ECB(2, 13)))));
VERSIONS.push_back(Ref<Version>(new Version(4, intArray(2, 6, 26),
											new ECBlocks(20, new ECB(1, 80)),
											new ECBlocks(18, new ECB(2, 32)),
											new ECBlocks(26, new ECB(2, 24)),
											new ECBlocks(16, new ECB(4, 9)))));
VERSIONS.push_back(Ref<Version>(new Version(5, intArray(2, 6, 30),
											new ECBlocks(26, new ECB(1, 108)),
											new ECBlocks(24, new ECB(2, 43)),
											new ECBlocks(18, new ECB(2, 15),
														 new ECB(2, 16)),
											new ECBlocks(22, new ECB(2, 11),
														 new ECB(2, 12)))));
VERSIONS.push_back(Ref<Version>(new Version(6, intArray(2, 6, 34),
											new ECBlocks(18, new ECB(2, 68)),
											new ECBlocks(16, new ECB(4, 27)),
											new ECBlocks(24, new ECB(4, 19)),
											new ECBlocks(28, new ECB(4, 15)))));
VERSIONS.push_back(Ref<Version>(new Version(7, intArray(3, 6, 22, 38),
											new ECBlocks(20, new ECB(2, 78)),
											new ECBlocks(18, new ECB(4, 31)),
											new ECBlocks(18, new ECB(2, 14),
														 new ECB(4, 15)),
											new ECBlocks(26, new ECB(4, 13),
														 new ECB(1, 14)))));
VERSIONS.push_back(Ref<Version>(new Version(8, intArray(3, 6, 24, 42),
											new ECBlocks(24, new ECB(2, 97)),
											new ECBlocks(22, new ECB(2, 38),
														 new ECB(2, 39)),
											new ECBlocks(22, new ECB(4, 18),
														 new ECB(2, 19)),
											new ECBlocks(26, new ECB(4, 14),
														 new ECB(2, 15)))));
VERSIONS.push_back(Ref<Version>(new Version(9, intArray(3, 6, 26, 46),
											new ECBlocks(30, new ECB(2, 116)),
											new ECBlocks(22, new ECB(3, 36),
														 new ECB(2, 37)),
											new ECBlocks(20, new ECB(4, 16),
														 new ECB(4, 17)),
											new ECBlocks(24, new ECB(4, 12),
														 new ECB(4, 13)))));
VERSIONS.push_back(Ref<Version>(new Version(10, intArray(3, 6, 28, 50),
											new ECBlocks(18, new ECB(2, 68),
														 new ECB(2, 69)),
											new ECBlocks(26, new ECB(4, 43),
														 new ECB(1, 44)),
											new ECBlocks(24, new ECB(6, 19),
														 new ECB(2, 20)),
											new ECBlocks(28, new ECB(6, 15),
														 new ECB(2, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(11, intArray(3, 6, 30, 54),
											new ECBlocks(20, new ECB(4, 81)),
											new ECBlocks(30, new ECB(1, 50),
														 new ECB(4, 51)),
											new ECBlocks(28, new ECB(4, 22),
														 new ECB(4, 23)),
											new ECBlocks(24, new ECB(3, 12),
														 new ECB(8, 13)))));
VERSIONS.push_back(Ref<Version>(new Version(12, intArray(3, 6, 32, 58),
											new ECBlocks(24, new ECB(2, 92),
														 new ECB(2, 93)),
											new ECBlocks(22, new ECB(6, 36),
														 new ECB(2, 37)),
											new ECBlocks(26, new ECB(4, 20),
														 new ECB(6, 21)),
											new ECBlocks(28, new ECB(7, 14),
														 new ECB(4, 15)))));
VERSIONS.push_back(Ref<Version>(new Version(13, intArray(3, 6, 34, 62),
											new ECBlocks(26, new ECB(4, 107)),
											new ECBlocks(22, new ECB(8, 37),
														 new ECB(1, 38)),
											new ECBlocks(24, new ECB(8, 20),
														 new ECB(4, 21)),
											new ECBlocks(22, new ECB(12, 11),
														 new ECB(4, 12)))));
VERSIONS.push_back(Ref<Version>(new Version(14, intArray(4, 6, 26, 46, 66),
											new ECBlocks(30, new ECB(3, 115),
														 new ECB(1, 116)),
											new ECBlocks(24, new ECB(4, 40),
														 new ECB(5, 41)),
											new ECBlocks(20, new ECB(11, 16),
														 new ECB(5, 17)),
											new ECBlocks(24, new ECB(11, 12),
														 new ECB(5, 13)))));
VERSIONS.push_back(Ref<Version>(new Version(15, intArray(4, 6, 26, 48, 70),
											new ECBlocks(22, new ECB(5, 87),
														 new ECB(1, 88)),
											new ECBlocks(24, new ECB(5, 41),
														 new ECB(5, 42)),
											new ECBlocks(30, new ECB(5, 24),
														 new ECB(7, 25)),
											new ECBlocks(24, new ECB(11, 12),
														 new ECB(7, 13)))));
VERSIONS.push_back(Ref<Version>(new Version(16, intArray(4, 6, 26, 50, 74),
											new ECBlocks(24, new ECB(5, 98),
														 new ECB(1, 99)),
											new ECBlocks(28, new ECB(7, 45),
														 new ECB(3, 46)),
											new ECBlocks(24, new ECB(15, 19),
														 new ECB(2, 20)),
											new ECBlocks(30, new ECB(3, 15),
														 new ECB(13, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(17, intArray(4, 6, 30, 54, 78),
											new ECBlocks(28, new ECB(1, 107),
														 new ECB(5, 108)),
											new ECBlocks(28, new ECB(10, 46),
														 new ECB(1, 47)),
											new ECBlocks(28, new ECB(1, 22),
														 new ECB(15, 23)),
											new ECBlocks(28, new ECB(2, 14),
														 new ECB(17, 15)))));
VERSIONS.push_back(Ref<Version>(new Version(18, intArray(4, 6, 30, 56, 82),
											new ECBlocks(30, new ECB(5, 120),
														 new ECB(1, 121)),
											new ECBlocks(26, new ECB(9, 43),
														 new ECB(4, 44)),
											new ECBlocks(28, new ECB(17, 22),
														 new ECB(1, 23)),
											new ECBlocks(28, new ECB(2, 14),
														 new ECB(19, 15)))));
VERSIONS.push_back(Ref<Version>(new Version(19, intArray(4, 6, 30, 58, 86),
											new ECBlocks(28, new ECB(3, 113),
														 new ECB(4, 114)),
											new ECBlocks(26, new ECB(3, 44),
														 new ECB(11, 45)),
											new ECBlocks(26, new ECB(17, 21),
														 new ECB(4, 22)),
											new ECBlocks(26, new ECB(9, 13),
														 new ECB(16, 14)))));
VERSIONS.push_back(Ref<Version>(new Version(20, intArray(4, 6, 34, 62, 90),
											new ECBlocks(28, new ECB(3, 107),
														 new ECB(5, 108)),
											new ECBlocks(26, new ECB(3, 41),
														 new ECB(13, 42)),
											new ECBlocks(30, new ECB(15, 24),
														 new ECB(5, 25)),
											new ECBlocks(28, new ECB(15, 15),
														 new ECB(10, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(21, intArray(5, 6, 28, 50, 72, 94),
											new ECBlocks(28, new ECB(4, 116),
														 new ECB(4, 117)),
											new ECBlocks(26, new ECB(17, 42)),
											new ECBlocks(28, new ECB(17, 22),
														 new ECB(6, 23)),
											new ECBlocks(30, new ECB(19, 16),
														 new ECB(6, 17)))));
VERSIONS.push_back(Ref<Version>(new Version(22, intArray(5, 6, 26, 50, 74, 98),
											new ECBlocks(28, new ECB(2, 111),
														 new ECB(7, 112)),
											new ECBlocks(28, new ECB(17, 46)),
											new ECBlocks(30, new ECB(7, 24),
														 new ECB(16, 25)),
											new ECBlocks(24, new ECB(34, 13)))));
VERSIONS.push_back(Ref<Version>(new Version(23, intArray(5, 6, 30, 54, 78, 102),
											new ECBlocks(30, new ECB(4, 121),
														 new ECB(5, 122)),
											new ECBlocks(28, new ECB(4, 47),
														 new ECB(14, 48)),
											new ECBlocks(30, new ECB(11, 24),
														 new ECB(14, 25)),
											new ECBlocks(30, new ECB(16, 15),
														 new ECB(14, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(24, intArray(5, 6, 28, 54, 80, 106),
											new ECBlocks(30, new ECB(6, 117),
														 new ECB(4, 118)),
											new ECBlocks(28, new ECB(6, 45),
														 new ECB(14, 46)),
											new ECBlocks(30, new ECB(11, 24),
														 new ECB(16, 25)),
											new ECBlocks(30, new ECB(30, 16),
														 new ECB(2, 17)))));
VERSIONS.push_back(Ref<Version>(new Version(25, intArray(5, 6, 32, 58, 84, 110),
											new ECBlocks(26, new ECB(8, 106),
														 new ECB(4, 107)),
											new ECBlocks(28, new ECB(8, 47),
														 new ECB(13, 48)),
											new ECBlocks(30, new ECB(7, 24),
														 new ECB(22, 25)),
											new ECBlocks(30, new ECB(22, 15),
														 new ECB(13, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(26, intArray(5, 6, 30, 58, 86, 114),
											new ECBlocks(28, new ECB(10, 114),
														 new ECB(2, 115)),
											new ECBlocks(28, new ECB(19, 46),
														 new ECB(4, 47)),
											new ECBlocks(28, new ECB(28, 22),
														 new ECB(6, 23)),
											new ECBlocks(30, new ECB(33, 16),
														 new ECB(4, 17)))));
VERSIONS.push_back(Ref<Version>(new Version(27, intArray(5, 6, 34, 62, 90, 118),
											new ECBlocks(30, new ECB(8, 122),
														 new ECB(4, 123)),
											new ECBlocks(28, new ECB(22, 45),
														 new ECB(3, 46)),
											new ECBlocks(30, new ECB(8, 23),
														 new ECB(26, 24)),
											new ECBlocks(30, new ECB(12, 15),
														 new ECB(28, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(28, intArray(6, 6, 26, 50, 74, 98, 122),
											new ECBlocks(30, new ECB(3, 117),
														 new ECB(10, 118)),
											new ECBlocks(28, new ECB(3, 45),
														 new ECB(23, 46)),
											new ECBlocks(30, new ECB(4, 24),
														 new ECB(31, 25)),
											new ECBlocks(30, new ECB(11, 15),
														 new ECB(31, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(29, intArray(6, 6, 30, 54, 78, 102, 126),
											new ECBlocks(30, new ECB(7, 116),
														 new ECB(7, 117)),
											new ECBlocks(28, new ECB(21, 45),
														 new ECB(7, 46)),
											new ECBlocks(30, new ECB(1, 23),
														 new ECB(37, 24)),
											new ECBlocks(30, new ECB(19, 15),
														 new ECB(26, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(30, intArray(6, 6, 26, 52, 78, 104, 130),
											new ECBlocks(30, new ECB(5, 115),
														 new ECB(10, 116)),
											new ECBlocks(28, new ECB(19, 47),
														 new ECB(10, 48)),
											new ECBlocks(30, new ECB(15, 24),
														 new ECB(25, 25)),
											new ECBlocks(30, new ECB(23, 15),
														 new ECB(25, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(31, intArray(6, 6, 30, 56, 82, 108, 134),
											new ECBlocks(30, new ECB(13, 115),
														 new ECB(3, 116)),
											new ECBlocks(28, new ECB(2, 46),
														 new ECB(29, 47)),
											new ECBlocks(30, new ECB(42, 24),
														 new ECB(1, 25)),
											new ECBlocks(30, new ECB(23, 15),
														 new ECB(28, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(32, intArray(6, 6, 34, 60, 86, 112, 138),
											new ECBlocks(30, new ECB(17, 115)),
											new ECBlocks(28, new ECB(10, 46),
														 new ECB(23, 47)),
											new ECBlocks(30, new ECB(10, 24),
														 new ECB(35, 25)),
											new ECBlocks(30, new ECB(19, 15),
														 new ECB(35, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(33, intArray(6, 6, 30, 58, 86, 114, 142),
											new ECBlocks(30, new ECB(17, 115),
														 new ECB(1, 116)),
											new ECBlocks(28, new ECB(14, 46),
														 new ECB(21, 47)),
											new ECBlocks(30, new ECB(29, 24),
														 new ECB(19, 25)),
											new ECBlocks(30, new ECB(11, 15),
														 new ECB(46, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(34, intArray(6, 6, 34, 62, 90, 118, 146),
											new ECBlocks(30, new ECB(13, 115),
														 new ECB(6, 116)),
											new ECBlocks(28, new ECB(14, 46),
														 new ECB(23, 47)),
											new ECBlocks(30, new ECB(44, 24),
														 new ECB(7, 25)),
											new ECBlocks(30, new ECB(59, 16),
														 new ECB(1, 17)))));
VERSIONS.push_back(Ref<Version>(new Version(35, intArray(7, 6, 30, 54, 78, 102, 126, 150),
											new ECBlocks(30, new ECB(12, 121),
														 new ECB(7, 122)),
											new ECBlocks(28, new ECB(12, 47),
														 new ECB(26, 48)),
											new ECBlocks(30, new ECB(39, 24),
														 new ECB(14, 25)),
											new ECBlocks(30, new ECB(22, 15),
														 new ECB(41, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(36, intArray(7, 6, 24, 50, 76, 102, 128, 154),
											new ECBlocks(30, new ECB(6, 121),
														 new ECB(14, 122)),
											new ECBlocks(28, new ECB(6, 47),
														 new ECB(34, 48)),
											new ECBlocks(30, new ECB(46, 24),
														 new ECB(10, 25)),
											new ECBlocks(30, new ECB(2, 15),
														 new ECB(64, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(37, intArray(7, 6, 28, 54, 80, 106, 132, 158),
											new ECBlocks(30, new ECB(17, 122),
														 new ECB(4, 123)),
											new ECBlocks(28, new ECB(29, 46),
														 new ECB(14, 47)),
											new ECBlocks(30, new ECB(49, 24),
														 new ECB(10, 25)),
											new ECBlocks(30, new ECB(24, 15),
														 new ECB(46, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(38, intArray(7, 6, 32, 58, 84, 110, 136, 162),
											new ECBlocks(30, new ECB(4, 122),
														 new ECB(18, 123)),
											new ECBlocks(28, new ECB(13, 46),
														 new ECB(32, 47)),
											new ECBlocks(30, new ECB(48, 24),
														 new ECB(14, 25)),
											new ECBlocks(30, new ECB(42, 15),
														 new ECB(32, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(39, intArray(7, 6, 26, 54, 82, 110, 138, 166),
											new ECBlocks(30, new ECB(20, 117),
														 new ECB(4, 118)),
											new ECBlocks(28, new ECB(40, 47),
														 new ECB(7, 48)),
											new ECBlocks(30, new ECB(43, 24),
														 new ECB(22, 25)),
											new ECBlocks(30, new ECB(10, 15),
														 new ECB(67, 16)))));
VERSIONS.push_back(Ref<Version>(new Version(40, intArray(7, 6, 30, 58, 86, 114, 142, 170),
											new ECBlocks(30, new ECB(19, 118),
														 new ECB(6, 119)),
											new ECBlocks(28, new ECB(18, 47),
														 new ECB(31, 48)),
											new ECBlocks(30, new ECB(34, 24),
														 new ECB(34, 25)),
											new ECBlocks(30, new ECB(20, 15),
														 new ECB(61, 16)))));
														*/

struct ECB ERROR_CORRECTION_BLOCKS[] = {
	{1, 19}, //1
	{1, 16},
	{1, 13},
	{1, 9},

	{1, 34}, //2
	{1, 28},
	{1, 22},
	{1, 16},

	{1, 55}, //3
	{1, 44},
	{2, 17},
	{2, 13},

	{1, 80}, //4
	{2, 32},
	{2, 24},
	{4, 9},

	{1, 108}, //5
	{2, 43},
	{2, 15},
	{2, 16},
	{2, 11},
	{2, 12},

	{2, 68}, //6
	{4, 27},
	{4, 19},
	{4, 15},

	{2, 78}, //7
	{4, 31},
	{2, 14},
	{4, 15},
	{4, 13},
	{1, 14},

	{2, 97}, //8
	{2, 38},
	{2, 39},
	{4, 18},
	{2, 19},
	{4, 14},
	{2, 15},

	{2, 116}, //9
	{3, 36},
	{2, 37},
	{4, 16},
	{4, 17},
	{4, 12},
	{4, 13},

	{2, 68}, //10
	{2, 69},
	{4, 43},
	{1, 44},
	{6, 19},
	{2, 20},
	{6, 15},
	{2, 16},

	{4, 81}, //11
	{1, 50},
	{4, 51},
	{4, 22},
	{4, 23},
	{3, 12},
	{8, 13},

	{2, 92}, //12
	{2, 93},
	{6, 36},
	{2, 37},
	{4, 20},
	{6, 21},
	{7, 14},
	{4, 15},

	{4, 107}, //13
	{8, 37},
	{1, 38},
	{8, 20},
	{4, 21},
	{12, 11},
	{4, 12},

	{3, 115}, //14
	{1, 116},
	{4, 40},
	{5, 41},
	{11, 16},
	{5, 17},
	{11, 12},
	{5, 13},

	{5, 87}, //15
	{1, 88},
	{5, 41},
	{5, 42},
	{5, 24},
	{7, 25},
	{11, 12},
	{7, 13},

	{5, 98}, //16
	{1, 99},
	{7, 45},
	{3, 46},
	{15, 19},
	{2, 20},
	{3, 15},
	{13, 16},

	{1, 107}, //17
	{5, 108},
	{10, 46},
	{1, 47},
	{1, 22},
	{15, 23},
	{2, 14},
	{17, 15},

	{5, 120}, //18
	{1, 121},
	{9, 43},
	{4, 44},
	{17, 22},
	{1, 23},
	{2, 14},
	{19, 15},

	{3, 113}, //19
	{4, 114},
	{3, 44},
	{11, 45},
	{17, 21},
	{4, 22},
	{9, 13},
	{16, 14},

	{3, 107}, //20
	{5, 108},
	{3, 41},
	{13, 42},
	{15, 24},
	{5, 25},
	{15, 15},
	{10, 16},

	{4, 116}, //21
	{4, 117},
	{17, 42},
	{17, 22},
	{6, 23},
	{19, 16},
	{6, 17},

	{2, 111}, //22
	{7, 112},
	{17, 46},
	{7, 24},
	{16, 25},
	{34, 13},

	{4, 121}, //23
	{5, 122},
	{4, 47},
	{14, 48},
	{11, 24},
	{14, 25},
	{16, 15},
	{14, 16},

	{6, 117}, //24
	{4, 118},
	{6, 45},
	{14, 46},
	{11, 24},
	{16, 25},
	{30, 16},
	{2, 17},

	{8, 106}, //25
	{4, 107},
	{8, 47},
	{13, 48},
	{7, 24},
	{22, 25},
	{22, 15},
	{13, 16},

	{10, 114}, //26
	{2, 115},
	{19, 46},
	{4, 47},
	{28, 22},
	{6, 23},
	{33, 16},
	{4, 17},

	{8, 122}, //27
	{4, 123},
	{22, 45},
	{3, 46},
	{8, 23},
	{26, 24},
	{12, 15},
	{28, 16},

	{3, 117}, //28
	{10, 118},
	{3, 45},
	{23, 46},
	{4, 24},
	{31, 25},
	{11, 15},
	{31, 16},

	{7, 116}, //29
	{7, 117},
	{21, 45},
	{7, 46},
	{1, 23},
	{37, 24},
	{19, 15},
	{26, 16},

	{5, 115}, //30
	{10, 116},
	{19, 47},
	{10, 48},
	{15, 24},
	{25, 25},
	{23, 15},
	{25, 16},

	{13, 115}, //31
	{3, 116},
	{2, 46},
	{29, 47},
	{42, 24},
	{1, 25},
	{23, 15},
	{28, 16},

	{17, 115}, //32
	{10, 46},
	{23, 47},
	{10, 24},
	{35, 25},
	{19, 15},
	{35, 16},

	{17, 115}, //33
	{1, 116},
	{14, 46},
	{21, 47},
	{29, 24},
	{19, 25},
	{11, 15},
	{46, 16},

	{13, 115}, //34
	{6, 116},
	{14, 46},
	{23, 47},
	{44, 24},
	{7, 25},
	{59, 16},
	{1, 17},

	{12, 121}, //35
	{7, 122},
	{12, 47},
	{26, 48},
	{39, 24},
	{14, 25},
	{22, 15},
	{41, 16},

	{6, 121}, //36
	{14, 122},
	{6, 47},
	{34, 48},
	{46, 24},
	{10, 25},
	{2, 15},
	{64, 16},

	{17, 122}, //37
	{4, 123},
	{29, 46},
	{14, 47},
	{49, 24},
	{10, 25},
	{24, 15},
	{46, 16},

	{4, 122}, //38
	{18, 123},
	{13, 46},
	{32, 47},
	{48, 24},
	{14, 25},
	{42, 15},
	{32, 16},

	{20, 117}, //39
	{4, 118},
	{40, 47},
	{7, 48},
	{43, 24},
	{22, 25},
	{10, 15},
	{67, 16},

	{19, 118}, //40
	{6, 119},
	{18, 47},
	{31, 48},
	{34, 24},
	{34, 25},
	{20, 15},
	{61, 16},
};