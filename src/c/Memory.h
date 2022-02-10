#ifndef MEMORY_H
#define MEMORY_H

#define PAGE_SIZE 65536 
/*
Just keep adding items to memory and then delete them all at once
*/

struct ArrayRef
{
	unsigned int size;
	void *ptr;
};

extern unsigned int Memory_head;

//allocate memory at the end of heap
void *Memory_allocate(unsigned int size);

//reset head to the front of heap
void Memory_clear();

//delete item from front of heap
void Memory_delete(unsigned int size);

void Memory_size(unsigned int i);


void* malloc(u32 num_bytes);
void free(void* ptr);
void memcpy();
static inline void memset(void* ptr, i32 val, u32 len) { __builtin_memset(ptr, val, len); }

#endif