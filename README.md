# x86

## Compilar .asm
```sh
nasm -f elf32 hello.asm -o hello.o
ld -m elf_i386 hello.o -o hello
```
## Compilar arquivo .c para .asm(x86)

```sh
gcc -S arquivo.c -o arquivo.s
```