#include "Memory.h"
#include "wasm.h"

void *Memory_pointers[MEMORY_ITEM_COUNT] = {
	&__heap_base};

void *Memory_allocate(enum Memory_Item index, unsigned int size, unsigned int dataSize)
{
	Memory_pointers[index + 1] = &Memory_pointers + index + size * dataSize;
	return Memory_pointers[index];
}

void *Memory_get(enum Memory_Item index)
{
	return Memory_pointers[index];
}

//items should be delete before the next one is created or that memory will remain empty
void Memory_delete(enum Memory_Item index)
{
	Memory_pointers[index + 1] = Memory_pointers[index];
}
