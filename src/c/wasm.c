#include "wasm.h"

int puts(const char *str)
{
	js_puts(str, strlen(str));
	return 0;
}

unsigned long strlen(const char *str)
{
	unsigned int size = 0;

	while (size < 255 && str[size] != NULL)
	{
		size++;
	}
	return size;
}