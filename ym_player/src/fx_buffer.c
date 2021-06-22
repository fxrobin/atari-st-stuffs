#include <stdio.h>
#include <stdlib.h>
#include "fx_buffer.h"

struct Buffer* mallocBuffer(size_t size)
{
    Buffer* buffer = malloc(sizeof(Buffer));
    buffer->data = malloc(size * sizeof(__uint8_t));
    buffer->size = size;
    return buffer;
}

void freeBuffer(Buffer* buffer)
{
    free(buffer->data);
    free(buffer);
}

struct Buffer* loadFile(char* fileName)
{
    FILE *fp;
    Buffer* buffer;
    size_t fileSize;

    fp = fopen(fileName, "rb");
    fseek(fp,0,SEEK_END);
    fileSize=ftell(fp);
    buffer = mallocBuffer(fileSize);
    rewind(fp);
    fread(buffer->data, 1, fileSize, fp);
    fclose(fp);
    return buffer;
}