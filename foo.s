	.file	"CPL_Assingment4.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d ** %d = %d"
.LC1:
	.string	"Minimum of array [ "
.LC2:
	.string	"%d "
.LC3:
	.string	"] is "
.LC4:
	.string	"%d"
.LC5:
	.string	"This is a DEFAULT message"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -48(%rbp)
	cmpl	$1, -48(%rbp)
	je	.L2
	cmpl	$2, -48(%rbp)
	je	.L3
	jmp	.L15
.L2:
	movl	$4, -40(%rbp)
	movl	$6, -36(%rbp)
	movl	$1, -60(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L5
.L6:
	movl	-60(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	addl	$1, -64(%rbp)
.L5:
	movl	-64(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L6
	movl	-60(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L7
.L3:
	movl	$-2, -32(%rbp)
	movl	$7, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$3, -16(%rbp)
	movl	$0, -56(%rbp)
	movl	$5, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L8
.L10:
	movl	-56(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L9
	movl	-56(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, -52(%rbp)
.L9:
	addl	$1, -56(%rbp)
.L8:
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L10
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -56(%rbp)
	jmp	.L11
.L12:
	movl	-56(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -56(%rbp)
.L11:
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L12
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L7
.L15:
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L7:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
