SOURCES_DIR=./src
BUILD_DIR=./build
DIST_DIR=./dist

# VASM PARAMETERS
ASM=vasmm68k_mot
ASMFLAGS=-Faout -quiet -x -m68000 -spaces -showopt

# GCC PARAMETERS
LIBCMINI=./libcmini
CC=m68k-atari-mint-gcc
CFLAGS=-c -std=gnu99 -I$(LIBCMINI)/include

# LINKER PARAMETERS
LINKFLAGS=-nostdlib -s -L$(LIBCMINI)/lib -lcmini -lgcc -Wl,--traditional-format

all: prepare dist

prepare: clean
	mkdir -p $(BUILD_DIR)

clean-compile : clean asm_functions.o screen.o main.o

asm_functions.o: prepare
	$(ASM) $(ASMFLAGS) $(SOURCES_DIR)/asm_functions.s -o $(BUILD_DIR)/asm_functions.o

fx_screen.o: prepare
	$(CC) $(CFLAGS) $(SOURCES_DIR)/fx_screen.c -o $(BUILD_DIR)/fx_screen.o

main.o: prepare
	$(CC) $(CFLAGS) $(SOURCES_DIR)/main.c -o $(BUILD_DIR)/main.o

main: main.o asm_functions.o fx_screen.o
	$(CC) $(LIBCMINI)/lib/crt0.o \
	      $(BUILD_DIR)/asm_functions.o \
		  $(BUILD_DIR)/fx_screen.o \
		  $(BUILD_DIR)/main.o \
		  -o $(BUILD_DIR)/MAIN.TOS $(LINKFLAGS);

dist: main
	mkdir -p $(DIST_DIR)
	cp $(BUILD_DIR)/MAIN.TOS $(DIST_DIR) 	

clean:
	rm -rf $(BUILD_DIR)
	rm -rf $(DIST_DIR)

