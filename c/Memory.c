#include "Memory.h"
#include "wasm.h"
#include "qrcode.h"

unsigned int Memory_head = (unsigned int)(&__heap_base);

void *Memory_allocate(unsigned int size)
{
	unsigned int ptr = Memory_head;
	Memory_head += size;
	printNum(size);
	printNum(Memory_head-ptr);
	return (void*)ptr;
}


void Memory_clear()
{
	Memory_head = (unsigned int)(&__heap_base);
}

void Memory_delete(unsigned int size) {
	Memory_head -= size;
}
