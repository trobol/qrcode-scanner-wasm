#include "wasm.h"

void printf(const char *str)
{
	js_printf(str, strlen(str));
}

unsigned int strlen(const char *str)
{
	unsigned int size = 0;

	while (size < 255 && str[size] != NULL)
	{
		size++;
	}
	return size;
}