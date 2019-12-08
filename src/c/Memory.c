#include "Memory.h"
#include "wasm.h"
#include "qrcode.h"

unsigned int Memory_head = (unsigned int)(&__heap_base);
unsigned int Memory_max = 2 * PAGE_SIZE;

void *Memory_allocate(unsigned int size)
{
	
	unsigned int ptr = Memory_head;
	Memory_head += size;
	Memory_size(Memory_head-(unsigned int)(__heap_base));
	
	return (void *)ptr;
}

void Memory_clear()
{

	Memory_head = (unsigned int)(&__heap_base);
}

void Memory_delete(unsigned int size)
{
	Memory_head -= size;
}

void Memory_size(unsigned int i)
{
	if (Memory_max < i)
	{
		float size = (float)(i - Memory_max) / PAGE_SIZE;
		int isize = (int) size;
		
		if ((float)isize != size)
			isize++;
		memory_grow(isize);
		Memory_max += isize*PAGE_SIZE;
	}
}