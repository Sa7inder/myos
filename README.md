# myos

A simple hobby operating system written in **C** and **x86 Assembly**.

## Features (current/target)
- Bootloader (x86 real mode)
- Protected mode switch
- VGA text-mode console (printk-style output)
- Keyboard input (scan codes)
- Port-mapped I/O helpers
- Cursor update

## Build & Run
```bash
# Tooling (Ubuntu/Debian example)
sudo apt update
sudo apt install build-essential nasm qemu-system-x86

# Build
make

# Run in QEMU
qemu-system-i386 -kernel build/myos.bin
