#ifndef MEMORY_H
#define MEMORY_H

/*"dynamic" memory
because we know how many dynamic objects we will have we can create it before hand
*/
#define MEMORY_ITEM_COUNT 9

enum Memory_Item
{
	IMAGE,
	DETECTOR_BITS,
	POINTS,
	FUNCTION_PATTERN,
	CODEWORDS,
	DATA_BLOCKS,
	CODEWORDS_BUFFER,
	RESULT_BYTES
};

extern void *Memory_pointers[MEMORY_ITEM_COUNT];
extern int Memory_sizes[MEMORY_ITEM_COUNT];

void *Memory_allocate(enum Memory_Item index, unsigned int size, unsigned int dataSize);

void *Memory_get(enum Memory_Item index);

void Memory_delete(enum Memory_Item index);

#endif