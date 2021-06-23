# Assembly Level Translation of Basic C Constructs

- Analysis of how the GCC compiler translates a C code into assembly language.

- A sample C code "foo.c" is made for demontration containing switch-case statement, for-loop, while-loop, if statement, assignment operation.

- Executing the CLI commmand\
`gcc -S foo.c`\
generates a file "foo.s", which contains the assembly level translation of the C code.

- The analysis of the translation has been shown in "Analysis.txt".