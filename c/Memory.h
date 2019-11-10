#ifndef MEMORY_H
#define MEMORY_H

/*
Just keep adding items to memory and then delete them all at once
*/

struct ArrayRef {
	unsigned int size;
	void* ptr;
};

extern unsigned char *Memory_head;

//allocate memory at the end of stack
void *Memory_allocate(unsigned int size);

//reset head to the front of stack
void Memory_clear();

//delete item from front of stack
void Memory_delete(unsigned int size);

#endif


/*
image = width * height * 4 * SIZEOF_INT

*/