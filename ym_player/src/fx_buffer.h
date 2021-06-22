#ifndef FX_BUFFER_H_   
#define FX_BUFFER_H_

/* BUFFER UTILITY */

#include <stddef.h>
#include <sys/types.h>


typedef struct Buffer Buffer;
struct Buffer
{
    __uint8_t* data;
    size_t size;
};

struct Buffer* mallocBuffer(size_t size);
void freeBuffer(Buffer* buffer);
struct Buffer* loadFile(char* fileName);

#endif