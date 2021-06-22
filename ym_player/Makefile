SOURCES_DIR=./src
BUILD_DIR=./build
DIST_DIR=./dist
RSC_DIR=./rsc

CC=m68k-atari-mint-gcc
LIBCMINI=./libcmini
CFLAGS=-c -std=gnu99 -I$(LIBCMINI)/include -g
LINKFLAGS=-nostdlib -s -L$(LIBCMINI)/lib -lcmini -lgcc

# VASM PARAMETERS
ASM=vasmm68k_mot
ASMFLAGS=-Faout -quiet -x -m68000 -spaces -showopt

all: prepare dist

prepare: 
	mkdir -p $(BUILD_DIR)

clean-compile : clean buffer.o screen.o main.o

fx_buffer.o: prepare
	$(CC) $(CFLAGS) $(SOURCES_DIR)/fx_buffer.c -o $(BUILD_DIR)/fx_buffer.o

fx_screen.o: prepare
	$(CC) $(CFLAGS) $(SOURCES_DIR)/fx_screen.c -o $(BUILD_DIR)/fx_screen.o

asm_functions.o: prepare
	$(ASM) $(ASMFLAGS) $(SOURCES_DIR)/asm_functions.s -o $(BUILD_DIR)/asm_functions.o

main.o: prepare
	$(CC) $(CFLAGS) $(SOURCES_DIR)/main.c -o $(BUILD_DIR)/main.o

main: main.o fx_buffer.o fx_screen.o asm_functions.o
	$(CC) $(LIBCMINI)/lib/crt0.o \
	      $(BUILD_DIR)/*.o \
		  -o $(BUILD_DIR)/main.tos $(LINKFLAGS);

dist: main
	mkdir -p $(DIST_DIR)
	cp $(BUILD_DIR)/main.tos $(DIST_DIR) 	
	cp -R $(RSC_DIR)/* $(DIST_DIR)

clean:
	rm -rf $(BUILD_DIR)
	rm -rf $(DIST_DIR)

