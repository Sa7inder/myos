ASM=nasm
CC=gcc
LD=ld
CFLAGS=-m32 -ffreestanding -fno-pic -fno-pie -fno-builtin -nostdlib -nostartfiles -nodefaultlibs
LDFLAGS=-m elf_i386

BUILD=build
BOOT=$(BUILD)/boot

all: $(BUILD)/myos.bin

$(BUILD):
	mkdir -p $(BUILD) $(BOOT)

$(BOOT)/boot.bin: boot/boot.asm | $(BUILD)
	$(ASM) -f bin $< -o $@

$(BUILD)/myos.bin: $(BOOT)/boot.bin
	cp $< $@

clean:
	rm -rf $(BUILD)

.PHONY: all clean
