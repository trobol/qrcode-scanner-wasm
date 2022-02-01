#include "Memory.h"
#include "wasm.h"
#include "qrcode.h"

unsigned int Memory_head = (unsigned int)(&__heap_base);
unsigned int Memory_max = 2 * PAGE_SIZE;

const unsigned char* mem_head;
const unsigned char* mem_tail;

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

typedef struct mem_ctrl_block {
	i32 size_free; // free is the final bit in size
	i32 check;
	char mem[];
} mem_ctrl_block;

void malloc_init() {
	memory_grow(PAGE_SIZE);
	mem_head = &__heap_base;
	mem_tail = mem_head + PAGE_SIZE;
}

void* malloc(long num_bytes) {
	
	if (mem_head == NULL)
		malloc_init();

	mem_ctrl_block* current_block = (mem_ctrl_block*)mem_head;
	while(!current_block->is_free || current_block->size < num_bytes) {
		mem_ctrl_block* next_block;
		if (current_block->is_free) {
			next_block = (mem_ctrl_block*)(current_block->mem + current_block->size); 
			if 
		}
	}
}