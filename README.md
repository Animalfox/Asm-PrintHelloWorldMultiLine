# Asm-PrintHelloWorldMultiLine

This repository contains an x86 assembly program that prints 'Hello World' on
multiple lines using the Linux syscall interface.

## How to Run

### Prerequisites

- Linux operating system
- NASM (Netwide Assembler) installed

### Build and Run

1. Clone this repository:

```bash
git clone https://github.com/Animalfox/Asm-PrintHelloWorldMultiLine.git
```

2. Navigate to the repository source directory:

```bash
cd Asm-PrintHelloWorldMultiLine/src
```

3. Assemble the program:

```bash
nasm -f elf32 -o hello.o hello.asm
```

4. Link the object file:

```bash
ld -m elf_i386 -o hello hello.o
```

5. Run the program:

```bash
./hello
```

You should see the output "Hello World" printed to the console on multiple
lines.
