#ifndef MEMORY_H
#define MEMORY_H

/*"dynamic" memory
because we know how many dynamic objects we will have we can create it before hand
*/
#define MEMORY_ITEM_COUNT 5

#define MEMORY_ITEM_IMAGE 0
#define MEMORY_ITEM_BITMATRIX 1
#define MEMORY_ITEM_POINTS 2

extern void *Memory_pointers[MEMORY_ITEM_COUNT];
extern int Memory_sizes[MEMORY_ITEM_COUNT];

void *Memory_allocate(unsigned int index, unsigned int size);

void *Memory_get(unsigned int index);

void Memory_delete(unsigned int index);

#endif