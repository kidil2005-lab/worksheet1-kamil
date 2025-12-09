# Tools
NASM = nasm
NASMFLAGS = -f elf
CC = gcc
CFLAGS = -m32 -c
LDFLAGS = -m32

SRC = src

# Default: build everything
all: task1 task1_2 task2_1 task2_2 task2_3

# ---- Task 1 ----
task1: $(SRC)/task1.o $(SRC)/asm_io.o $(SRC)/driver.o
	$(CC) $(LDFLAGS) -o task1 $(SRC)/driver.o $(SRC)/task1.o $(SRC)/asm_io.o

task1_2: $(SRC)/task1_2.o $(SRC)/asm_io.o $(SRC)/driver.o
	$(CC) $(LDFLAGS) -o task1_2 $(SRC)/driver.o $(SRC)/task1_2.o $(SRC)/asm_io.o

# ---- Task 2 ----
task2_1: $(SRC)/task2_1.o $(SRC)/asm_io.o $(SRC)/driver.o
	$(CC) $(LDFLAGS) -o task2_1 $(SRC)/driver.o $(SRC)/task2_1.o $(SRC)/asm_io.o

task2_2: $(SRC)/task2_2.o $(SRC)/asm_io.o $(SRC)/driver.o
	$(CC) $(LDFLAGS) -o task2_2 $(SRC)/driver.o $(SRC)/task2_2.o $(SRC)/asm_io.o

task2_3: $(SRC)/task2_3.o $(SRC)/asm_io.o $(SRC)/driver.o
	$(CC) $(LDFLAGS) -o task2_3 $(SRC)/driver.o $(SRC)/task2_3.o $
