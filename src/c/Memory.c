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

/*
Currently this does't care about memory alignment,
probably something to look into
*/

typedef struct mem_header {
	u32 size_free; // free is the final bit in size
	u32 check;
	char mem[];
} mem_header;

u32 mem_head = (u32)(&__heap_base);
u32 mem_tail = (u32)(&__heap_base);

void  mem_grow(u32 min_size) {
	min_size += sizeof(mem_header);

	puts("grow");
	printNum(mem_tail - mem_head);
	
	u32 page_count = 1;
	while (page_count * PAGE_SIZE < min_size)
		page_count++;

	u32 start_new_mem =  __builtin_wasm_memory_size(0) * PAGE_SIZE;
	i32 err = __builtin_wasm_memory_grow(0, page_count);
	if (err == -1) __builtin_wasm_throw(0, "failed to create new page");

	u32 end_new_mem = __builtin_wasm_memory_size(0) * PAGE_SIZE;

	u32 new_mem_size = end_new_mem - start_new_mem;
	
	mem_header* new_hdr = (mem_header*)mem_tail;
	new_hdr->size_free = new_mem_size - sizeof(mem_header);
	new_hdr->size_free |= 1; // is free
	new_hdr->check = new_hdr->size_free ^ mem_tail;

	mem_tail += new_mem_size;
	
}	



void* malloc(u32 num_bytes) {
	puts("malloc");

	if (num_bytes == 0) return 0;
	
	u32 current_loc = mem_head;

	// round num_bytes up to power of 2
	num_bytes |= num_bytes >> 1;
	num_bytes |= num_bytes >> 2;
	num_bytes |= num_bytes >> 4;
	num_bytes |= num_bytes >> 8;
	num_bytes |= num_bytes >> 16;
	num_bytes++;

	// find the next free block with enough space
	u32 is_free = 0;
	u32 size = 0;
	do {

		current_loc += size;

		if (current_loc > mem_tail) __builtin_wasm_throw(0, 0);
		if (current_loc == mem_tail) mem_grow(num_bytes);

		mem_header* current_hdr = (mem_header*)current_loc;
		u32 check = current_hdr->size_free ^ current_loc; // xor our header with the location of the header as a check
		
		if (check != current_hdr->check) { puts("heap corrupted"); __builtin_wasm_throw(0, 0); return 0; }

		is_free = 1 & current_hdr->size_free;
		size = 0xFFFFFFFE & current_hdr->size_free;

		current_loc += sizeof(mem_header);
	} while ((!is_free || size < num_bytes));


	mem_header* out_hdr = (mem_header*)(current_loc-sizeof(mem_header));

	mem_header* next_hdr = (mem_header*)(current_loc+num_bytes);
	next_hdr->size_free = out_hdr->size_free - num_bytes - sizeof(mem_header);
	next_hdr->size_free |= 1;
	next_hdr->check = next_hdr->size_free ^ (u32)next_hdr;


	out_hdr->size_free = num_bytes;
	out_hdr->size_free &= 0xFFFFFFFE; // not free
	out_hdr->check = out_hdr->size_free ^ (u32)out_hdr;
	
	return out_hdr->mem;
}

void free(void* ptr) {
	puts("free");
	if (ptr == 0) return;
	
	u32 loc = (u32)ptr-sizeof(mem_header);
	mem_header* hdr = (mem_header*)loc;
	
	u32 check = hdr->size_free ^ loc;
	if (check != hdr->check) puts("heap corrupted");

	__builtin_memset(hdr->mem, 0, hdr->size_free);
	hdr->size_free |= 1;
	hdr->check = hdr->size_free ^ loc;

}