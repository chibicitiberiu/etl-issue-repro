export PATH := $(PATH):.toolchain/i686-elf/bin
export CC = i686-elf-gcc
export CXX = i686-elf-g++

all: build/test.o

build/test.o: test.cpp
	mkdir -p build
	$(CXX) -o $@ -c -std=c++17 -fno-exceptions -fno-rtti -g -O0 -ffreestanding -nostdlib -DETL_NO_STL -Ietl/include/etl -Idummy_includes $^
