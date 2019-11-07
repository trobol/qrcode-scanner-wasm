#include "Version.h"
struct Version *getVersionForNumber(int versionNumber)
{
	if (versionNumber < 1 || versionNumber > N_VERSIONS)
	{
		//ERROR
		throw();// ReaderException("versionNumber must be between 1 and 40");
	}

	return &VERSIONS[versionNumber - 1];
}

struct Version *getProvisionalVersionForDimension(int dimension)
{
	if (dimension % 4 != 1)
	{
		//ERROR
		throw();// FormatException();
	}

	return getVersionForNumber((dimension - 17) >> 2);
}

int getDimensionForVersion(struct Version *version)
{
	return 17 + 4 * version->versionNumber;
}

const struct Version VERSIONS[40] = {
	{
		1,
		26,
		0,
		0,
		{
			{7, {{1, 19}, {0, 0}}}, //1
			{10, {{1, 16}, {0, 0}}},
			{13, {{1, 13}, {0, 0}}},
			{17, {{1, 9}, {0, 0}}},
		},
	},
	{
		2,
		44,
		2,
		(int[2]){6, 18},
		{
			{10, {{1, 34}, {0, 0}}}, //2
			{16, {{1, 28}, {0, 0}}},
			{22, {{1, 22}, {0, 0}}},
			{28, {{1, 16}, {0, 0}}},
		},
	},
	{
		3,
		70,
		2,
		(int[2]){6, 22},
		{
			{15, {{1, 55}, {0, 0}}}, //3
			{26, {{1, 44}, {0, 0}}},
			{36, {{2, 17}, {0, 0}}},
			{44, {{2, 13}, {0, 0}}},
		},
	},
	{
		4,
		100,
		2,
		(int[2]){6, 26},
		{
			{20, {{1, 80}, {0, 0}}}, //4
			{36, {{2, 32}, {0, 0}}},
			{52, {{2, 24}, {0, 0}}},
			{64, {{4, 9}, {0, 0}}},
		},
	},
	{
		5,
		134,
		2,
		(int[2]){6, 30},
		{
			{26, {{1, 108}, {0, 0}}}, //5
			{48, {{2, 43}, {0, 0}}},
			{72, {{2, 15}, {2, 16}}},
			{88, {{2, 11}, {2, 12}}},
		},
	},
	{
		6,
		172,
		2,
		(int[2]){6, 34},
		{
			{36, {{2, 68}, {0, 0}}}, //6
			{64, {{4, 27}, {0, 0}}},
			{96, {{4, 19}, {0, 0}}},
			{112, {{4, 15}, {0, 0}}},

		},
	},
	{
		7,
		196,
		3,
		(int[3]){6, 22, 38},
		{
			{40, {{2, 78}, {0, 0}}}, //7
			{72, {{4, 31}, {0, 0}}},
			{108, {{2, 14}, {4, 15}}},
			{130, {{4, 13}, {1, 14}}},
		},
	},
	{
		8,
		242,
		3,
		(int[3]){6, 24, 42},
		{
			{48, {{2, 97}, {0, 0}}}, //8
			{88, {{2, 38}, {2, 39}}},
			{132, {{4, 18}, {2, 19}}},
			{156, {{4, 14}, {2, 15}}},
		},
	},
	{
		9,
		292,
		3,
		(int[3]){6, 26, 46},
		{
			{60, {{2, 116}, {0, 0}}}, //9
			{110, {{3, 36}, {2, 37}}},
			{160, {{4, 16}, {4, 17}}},
			{192, {{4, 12}, {4, 13}}},
		},
	},
	{
		10,
		346,
		3,
		(int[3]){6, 28, 50},
		{
			{72, {{2, 68}, {2, 69}}}, //10
			{130, {{4, 43}, {1, 44}}},
			{192, {{6, 19}, {2, 20}}},
			{224, {{6, 15}, {2, 16}}},
		},
	},
	{
		11,
		404,
		3,
		(int[3]){6, 30, 54},
		{
			{80, {{4, 81}, {0, 0}}}, //11
			{150, {{1, 50}, {4, 51}}},
			{224, {{4, 22}, {4, 23}}},
			{264, {{3, 12}, {8, 13}}},
		},
	},
	{
		12,
		466,
		3,
		(int[3]){6, 32, 58},
		{
			{96, {{2, 92}, {2, 93}}}, //12
			{176, {{6, 36}, {2, 37}}},
			{260, {{4, 20}, {6, 21}}},
			{308, {{7, 14}, {4, 15}}},
		},
	},
	{
		13,
		532,
		3,
		(int[3]){6, 34, 62},
		{
			{104, {{4, 107}, {0, 0}}}, //13
			{198, {{8, 37}, {1, 38}}},
			{288, {{8, 20}, {4, 21}}},
			{352, {{12, 11}, {4, 12}}},
		},
	},
	{
		14,
		581,
		4,
		(int[4]){6, 26, 46, 66},
		{
			{120, {{3, 115}, {1, 116}}}, //14
			{216, {{4, 40}, {5, 41}}},
			{320, {{11, 16}, {5, 17}}},
			{384, {{11, 12}, {5, 13}}},
		},
	},
	{
		15,
		655,
		4,
		(int[4]){6, 26, 48, 70},
		{
			{132, {{5, 87}, {1, 88}}}, //15
			{240, {{5, 41}, {5, 42}}},
			{360, {{5, 24}, {7, 25}}},
			{432, {{11, 12}, {7, 13}}},
		},
	},
	{
		16,
		733,
		4,
		(int[4]){6, 26, 50, 74},
		{
			{144, {{5, 98}, {1, 99}}}, //16
			{280, {{7, 45}, {3, 46}}},
			{408, {{15, 19}, {2, 20}}},
			{480, {{3, 15}, {13, 16}}},
		},
	},
	{
		17,
		815,
		4,
		(int[4]){6, 30, 54, 78},
		{
			{168, {{1, 107}, {5, 108}}}, //17
			{308, {{10, 46}, {1, 47}}},
			{448, {{1, 22}, {15, 23}}},
			{532, {{2, 14}, {17, 15}}},
		},
	},
	{
		18,
		901,
		4,
		(int[4]){6, 30, 56, 82},
		{
			{168, {{5, 120}, {1, 121}}}, //18
			{308, {{9, 43}, {4, 44}}},
			{448, {{17, 22}, {1, 23}}},
			{532, {{2, 14}, {19, 15}}},
		},
	},
	{
		19,
		991,
		4,
		(int[4]){6, 30, 58, 86},
		{
			{196, {{3, 113}, {4, 114}}}, //19
			{364, {{3, 44}, {11, 45}}},
			{546, {{17, 21}, {4, 22}}},
			{650, {{9, 13}, {16, 14}}},
		},
	},
	{
		20,
		1085,
		4,
		(int[4]){6, 34, 62, 90},
		{
			{224, {{3, 107}, {5, 108}}}, //20
			{416, {{3, 41}, {13, 42}}},
			{600, {{15, 24}, {5, 25}}},
			{700, {{15, 15}, {10, 16}}},
		},
	},
	{
		21,
		1156,
		5,
		(int[5]){6, 28, 50, 72, 94},
		{
			{224, {{4, 116}, {4, 117}}}, //21
			{442, {{17, 42}, {0, 0}}},
			{644, {{17, 22}, {6, 23}}},
			{750, {{19, 16}, {6, 17}}},
		},
	},
	{
		22,
		1258,
		5,
		(int[5]){6, 26, 50, 74, 98},
		{
			{252, {{2, 111}, {7, 112}}}, //22
			{476, {{17, 46}, {0, 0}}},
			{690, {{7, 24}, {16, 25}}},
			{816, {{34, 13}, {0, 0}}},
		},
	},
	{
		23,
		1364,
		5,
		(int[5]){6, 30, 54, 78, 102},
		{
			{270, {{4, 121}, {5, 122}}}, //23
			{504, {{4, 47}, {14, 48}}},
			{750, {{11, 24}, {14, 25}}},
			{900, {{16, 15}, {14, 16}}},
		},
	},
	{
		24,
		1474,
		5,
		(int[5]){6, 28, 54, 80, 106},
		{
			{300, {{6, 117}, {4, 118}}}, //24
			{560, {{6, 45}, {14, 46}}},
			{810, {{11, 24}, {16, 25}}},
			{960, {{30, 16}, {2, 17}}},
		},
	},
	{
		25,
		1588,
		5,
		(int[5]){6, 32, 58, 84, 110},
		{
			{312, {{8, 106}, {4, 107}}}, //25
			{588, {{8, 47}, {13, 48}}},
			{870, {{7, 24}, {22, 25}}},
			{1050, {{22, 15}, {13, 16}}},
		},
	},
	{
		26,
		1706,
		5,
		(int[5]){6, 30, 58, 86, 114},
		{

			{336, {{10, 114}, {2, 115}}}, //26
			{644, {{19, 46}, {4, 47}}},
			{952, {{28, 22}, {6, 23}}},
			{1110, {{33, 16}, {4, 17}}},
		},
	},
	{
		27,
		1828,
		5,
		(int[5]){6, 34, 62, 90, 118},
		{
			{360, {{8, 122}, {4, 123}}}, //27
			{700, {{22, 45}, {3, 46}}},
			{1020, {{8, 23}, {26, 24}}},
			{1200, {{12, 15}, {28, 16}}},
		},
	},
	{
		28,
		1921,
		6,
		(int[6]){6, 26, 50, 74, 98, 122},
		{
			{490, {{3, 117}, {10, 118}}}, //28
			{728, {{3, 45}, {23, 46}}},
			{1050, {{4, 24}, {31, 25}}},
			{1260, {{11, 15}, {31, 16}}},
		},
	},
	{
		29,
		2051,
		6,
		(int[6]){6, 30, 54, 78, 102, 126},
		{
			{420, {{7, 116}, {7, 117}}}, //29
			{784, {{21, 45}, {7, 46}}},
			{1140, {{1, 23}, {37, 24}}},
			{1350, {{19, 15}, {26, 16}}},
		},
	},
	{
		30,
		2185,
		6,
		(int[6]){6, 26, 52, 78, 104, 130},
		{
			{450, {{5, 115}, {10, 116}}}, //30
			{812, {{19, 47}, {10, 48}}},
			{1200, {{15, 24}, {25, 25}}},
			{1440, {{23, 15}, {25, 16}}},
		},
	},
	{
		31,
		2323,
		6,
		(int[6]){6, 30, 56, 82, 108, 134},
		{
			{480, {{13, 115}, {3, 116}}}, //31
			{868, {{2, 46}, {29, 47}}},
			{1290, {{42, 24}, {1, 25}}},
			{1530, {{23, 15}, {28, 16}}},
		},
	},
	{
		32,
		2465,
		6,
		(int[6]){6, 34, 60, 86, 112, 138},
		{
			{510, {{17, 115}, {0, 0}}}, //32
			{924, {{10, 46}, {23, 47}}},
			{1350, {{10, 24}, {35, 25}}},
			{1620, {{19, 15}, {35, 16}}},
		},
	},
	{
		33,
		2611,
		6,
		(int[6]){6, 30, 58, 86, 114, 142},
		{
			{540, {{17, 115}, {1, 116}}}, //33
			{980, {{14, 46}, {21, 47}}},
			{1440, {{29, 24}, {19, 25}}},
			{1710, {{11, 15}, {46, 16}}},
		},
	},
	{
		34,
		2761,
		6,
		(int[6]){6, 34, 62, 90, 118, 146},
		{
			{570, {{13, 115}, {6, 116}}}, //34
			{1036, {{14, 46}, {23, 47}}},
			{1530, {{44, 24}, {7, 25}}},
			{1800, {{59, 16}, {1, 17}}},
		},
	},
	{
		35,
		2876,
		7,
		(int[7]){6, 30, 54, 78, 102, 126, 150},
		{
			{570, {{12, 121}, {7, 122}}}, //35
			{1064, {{12, 47}, {26, 48}}},
			{1590, {{39, 24}, {14, 25}}},
			{1890, {{22, 15}, {41, 16}}},
		},
	},
	{
		36,
		3034,
		7,
		(int[7]){6, 24, 50, 76, 102, 128, 154},
		{
			{600, {{6, 121}, {14, 122}}}, //36
			{1120, {{6, 47}, {34, 48}}},
			{1680, {{46, 24}, {10, 25}}},
			{1980, {{2, 15}, {64, 16}}},
		},
	},
	{
		37,
		3196,
		7,
		(int[7]){6, 28, 54, 80, 106, 132, 158},
		{
			{630, {{17, 122}, {4, 123}}}, //37
			{1204, {{29, 46}, {14, 47}}},
			{1770, {{49, 24}, {10, 25}}},
			{2100, {{24, 15}, {46, 16}}},
		},
	},
	{
		38,
		3362,
		7,
		(int[7]){6, 32, 58, 84, 110, 136, 162},
		{
			{660, {{4, 122}, {18, 123}}}, //38
			{1260, {{13, 46}, {32, 47}}},
			{1860, {{48, 24}, {14, 25}}},
			{2220, {{42, 15}, {32, 16}}},
		},
	},
	{
		39,
		3532,
		7,
		(int[7]){6, 26, 54, 82, 110, 138, 166},
		{
			{720, {{20, 117}, {4, 118}}}, //39
			{1316, {{40, 47}, {7, 48}}},
			{1950, {{43, 24}, {22, 25}}},
			{2310, {{10, 15}, {67, 16}}},
		},
	},
	{
		40,
		3706,
		7,
		(int[7]){6, 30, 58, 86, 114, 142, 170},
		{
			{750, {{19, 118}, {6, 119}}}, //40
			{1372, {{18, 47}, {31, 48}}},
			{2040, {{34, 24}, {34, 25}}},
			{2430, {{20, 15}, {61, 16}}},
		},
	},
};