SOURCES_DIR=./src
BUILD_DIR=./build
DIST_DIR=./dist


# GCC PARAMETERS
LIBCMINI=./libcmini
CC=m68k-atari-mint-gcc
CFLAGS=-c -std=gnu99 -I$(LIBCMINI)/include -g

# LINKER PARAMETERS
LINKFLAGS=-nostdlib -s -L$(LIBCMINI)/lib -lcmini -lgcc

all: prepare dist

prepare: clean
	mkdir -p $(BUILD_DIR)

clean-compile : clean asm_functions.o screen.o main.o

main.o: prepare
	$(CC) $(CFLAGS) $(SOURCES_DIR)/main.c -o $(BUILD_DIR)/main.o

main: main.o 
	$(CC) $(LIBCMINI)/lib/crt0.o \
		  $(BUILD_DIR)/main.o \
		  -o $(BUILD_DIR)/MAIN.TOS $(LINKFLAGS);

dist: main
	mkdir -p $(DIST_DIR)
	cp $(BUILD_DIR)/MAIN.TOS $(DIST_DIR) 	

clean:
	rm -rf $(BUILD_DIR)
	rm -rf $(DIST_DIR)

