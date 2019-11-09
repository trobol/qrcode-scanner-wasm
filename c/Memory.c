#include "Memory.h"
#include "wasm.h"

void *Memory_pointers[5] = {
	&__heap_base, 0, 0, 0, 0};

void *Memory_allocate(unsigned int index, unsigned int size)
{
	Memory_pointers[index + 1] = &Memory_pointers + index + size;
	return Memory_pointers[index];
}

void *Memory_get(unsigned int index)
{
	return Memory_pointers[index];
}

//items should be delete before the next one is created or that memory will remain empty
void Memory_delete(unsigned int index)
{
	Memory_pointers[index + 1] = Memory_pointers[index];
}
