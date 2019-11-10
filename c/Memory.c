#include "Memory.h"
#include "wasm.h"

unsigned char *Memory_head = &__heap_base;

void *Memory_allocate(unsigned int size)
{
	void* ptr = Memory_head;
	Memory_head += size;
	return ptr;
}


void Memory_clear()
{
	Memory_head = &__heap_base;
}

void Memory_delete(unsigned int size) {
	Memory_head -= size;
}
