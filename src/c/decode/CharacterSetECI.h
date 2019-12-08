#ifndef CHARACTER_SET_ECI_H
#define CHARACTER_SET_ECI_H
//TODO
struct CharacterSetECI
{

	int const *const values;
	char const *const *const names;
};
struct CharacterSetECI *CharacterSetECI_getCharacterSetECIByValue(int value);

#endif