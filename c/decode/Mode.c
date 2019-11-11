#include "Mode.h"

struct Mode MODES[10] = {
	{0, 0, 0},	//TERMINATOR
	{10, 12, 14}, //NUMERIC
	{9, 11, 13},  //ALPHANUMERIC
	{0, 0, 0},	//STRUCTURED_APPEND
	{8, 16, 16},  //BYTE
	{0, 0, 0},	//ECI
	{8, 10, 12},  //KANJI
	{0, 0, 0},	//FNC1_FIRST_POSITION
	{0, 0, 0},	//FNC1_SECOND_POSITION
	{8, 10, 12}   //HANZI
};
