	.file	"debug.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"== %s ==\n"
	.text
	.globl	disassembleChunk
	.type	disassembleChunk, @function
disassembleChunk:
.LFB0:
	.file 1 "Bytecode/debug/debug.c"
	.loc 1 9 56
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 10 5
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LBB2:
	.loc 1 12 13
	movl	$0, -4(%rbp)
	.loc 1 12 5
	jmp	.L2
.L3:
	.loc 1 13 18
	movl	-4(%rbp), %eax
	movswl	%ax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	disassembleInstruction
	.loc 1 13 16
	cwtl
	movl	%eax, -4(%rbp)
.L2:
	.loc 1 12 39 discriminator 1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	.loc 1 12 5 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L3
.LBE2:
	.loc 1 15 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	disassembleChunk, .-disassembleChunk
	.section	.rodata
.LC1:
	.string	"%04d "
.LC2:
	.string	"   | "
.LC3:
	.string	"%4d "
.LC4:
	.string	"OP_CONSTANT"
.LC5:
	.string	"OP_CONSTANT_LONG"
.LC6:
	.string	"OP_NIL"
.LC7:
	.string	"OP_TRUE"
.LC8:
	.string	"OP_FALSE"
.LC9:
	.string	"OP_POP"
.LC10:
	.string	"OP_DEFINE_GLOBAL"
.LC11:
	.string	"OP_SET_GLOBAL"
.LC12:
	.string	"OP_GET_GLOBAL"
.LC13:
	.string	"OP_SET_LOCAL"
.LC14:
	.string	"OP_GET_LOCAL"
.LC15:
	.string	"OP_EQUAL"
.LC16:
	.string	"OP_LESS"
.LC17:
	.string	"OP_GREATER"
.LC18:
	.string	"OP_ADD"
.LC19:
	.string	"OP_SUBTRACT"
.LC20:
	.string	"OP_MULTIPLY"
.LC21:
	.string	"OP_DIVIDE"
.LC22:
	.string	"OP_MODULATE"
.LC23:
	.string	"OP_EXPONENTIATE"
.LC24:
	.string	"OP_NOT"
.LC25:
	.string	"OP_NEGATE"
.LC26:
	.string	"OP_PUTS"
.LC27:
	.string	"OP_RETURN"
.LC28:
	.string	"Unknown opcode %d\n"
	.text
	.globl	disassembleInstruction
	.type	disassembleInstruction, @function
disassembleInstruction:
.LFB1:
	.loc 1 17 61
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movw	%ax, -28(%rbp)
	.loc 1 18 5
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 19 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	getLine@PLT
	movw	%ax, -2(%rbp)
	.loc 1 20 7
	cmpw	$0, -28(%rbp)
	jle	.L5
	.loc 1 20 52 discriminator 1
	movzwl	-28(%rbp), %eax
	subl	$1, %eax
	.loc 1 20 30 discriminator 1
	movswl	%ax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	getLine@PLT
	.loc 1 20 19 discriminator 1
	cmpw	%ax, -2(%rbp)
	jne	.L5
	.loc 1 21 9
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L6
.L5:
	.loc 1 23 9
	movswl	-2(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	.loc 1 26 32
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 26 38
	movswq	-28(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 26 13
	movzbl	(%rax), %eax
	movb	%al, -3(%rbp)
	.loc 1 27 5
	movzbl	-3(%rbp), %eax
	cmpl	$24, %eax
	ja	.L7
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L9(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L9(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L32-.L9
	.long	.L31-.L9
	.long	.L30-.L9
	.long	.L29-.L9
	.long	.L28-.L9
	.long	.L27-.L9
	.long	.L26-.L9
	.long	.L25-.L9
	.long	.L24-.L9
	.long	.L23-.L9
	.long	.L22-.L9
	.long	.L21-.L9
	.long	.L20-.L9
	.long	.L19-.L9
	.long	.L18-.L9
	.long	.L17-.L9
	.long	.L16-.L9
	.long	.L15-.L9
	.long	.L14-.L9
	.long	.L13-.L9
	.long	.L12-.L9
	.long	.L11-.L9
	.long	.L10-.L9
	.long	.L7-.L9
	.long	.L8-.L9
	.text
.L32:
	.loc 1 29 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	call	constantInstruction
	jmp	.L33
.L31:
	.loc 1 31 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	constantInstruction
	jmp	.L33
.L30:
	.loc 1 33 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L29:
	.loc 1 35 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L28:
	.loc 1 37 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L27:
	.loc 1 39 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L26:
	.loc 1 41 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	call	constantInstruction
	jmp	.L33
.L25:
	.loc 1 43 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	constantInstruction
	jmp	.L33
.L24:
	.loc 1 45 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	call	constantInstruction
	jmp	.L33
.L23:
	.loc 1 47 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	call	byteInstruction
	jmp	.L33
.L22:
	.loc 1 49 20
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	call	byteInstruction
	jmp	.L33
.L21:
	.loc 1 51 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L19:
	.loc 1 53 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L20:
	.loc 1 55 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L18:
	.loc 1 57 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L17:
	.loc 1 59 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L16:
	.loc 1 61 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L15:
	.loc 1 63 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L14:
	.loc 1 65 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC22(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L13:
	.loc 1 67 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L12:
	.loc 1 69 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC24(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L11:
	.loc 1 71 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC25(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L10:
	.loc 1 73 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC26(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L8:
	.loc 1 75 20
	movswl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC27(%rip), %rdi
	call	simpleInstruction
	jmp	.L33
.L7:
	.loc 1 77 13
	movzbl	-3(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 78 27
	movzwl	-28(%rbp), %eax
	addl	$1, %eax
.L33:
	.loc 1 80 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	disassembleInstruction, .-disassembleInstruction
	.section	.rodata
.LC29:
	.string	"%-16s %4d '"
.LC30:
	.string	"NULL"
.LC31:
	.string	"'"
	.text
	.type	constantInstruction, @function
constantInstruction:
.LFB2:
	.loc 1 82 85
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movw	%ax, -36(%rbp)
	.loc 1 83 29
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 83 35
	movswq	-36(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	.loc 1 83 13
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	.loc 1 84 5
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 85 25
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 85 7
	testq	%rax, %rax
	je	.L35
	.loc 1 85 53 discriminator 2
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 85 60 discriminator 2
	movzbl	-1(%rbp), %edx
	salq	$5, %rdx
	.loc 1 85 36 discriminator 2
	addq	%rdx, %rax
	.loc 1 85 33 discriminator 2
	testq	%rax, %rax
	jne	.L36
.L35:
	.loc 1 85 79 discriminator 3
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L37
.L36:
	.loc 1 86 37
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 86 44
	movzbl	-1(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	.loc 1 86 10
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	call	printValue@PLT
	addq	$32, %rsp
.L37:
	.loc 1 87 5
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	.loc 1 88 19
	movzwl	-36(%rbp), %eax
	addl	$2, %eax
	.loc 1 89 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	constantInstruction, .-constantInstruction
	.type	longConstantInstruction, @function
longConstantInstruction:
.LFB3:
	.loc 1 91 89
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movw	%ax, -36(%rbp)
	.loc 1 92 30
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 92 36
	movswq	-36(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 92 57
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 92 63
	movswq	-36(%rbp), %rcx
	addq	$2, %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 92 76
	sall	$8, %eax
	.loc 1 92 49
	movl	%edx, %ecx
	orl	%eax, %ecx
	.loc 1 93 56
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 93 62
	movswq	-36(%rbp), %rdx
	addq	$3, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 93 75
	sall	$16, %eax
	.loc 1 93 48
	orl	%ecx, %eax
	.loc 1 92 14
	movl	%eax, -4(%rbp)
	.loc 1 94 5
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 95 25
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 95 7
	testq	%rax, %rax
	je	.L40
	.loc 1 95 53 discriminator 2
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 95 60 discriminator 2
	movl	-4(%rbp), %edx
	salq	$5, %rdx
	.loc 1 95 36 discriminator 2
	addq	%rdx, %rax
	.loc 1 95 33 discriminator 2
	testq	%rax, %rax
	jne	.L41
.L40:
	.loc 1 95 79 discriminator 3
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L42
.L41:
	.loc 1 96 37
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 96 44
	movl	-4(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	.loc 1 96 10
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	call	printValue@PLT
	addq	$32, %rsp
.L42:
	.loc 1 97 5
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	.loc 1 98 19
	movzwl	-36(%rbp), %eax
	addl	$4, %eax
	.loc 1 99 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	longConstantInstruction, .-longConstantInstruction
	.type	simpleInstruction, @function
simpleInstruction:
.LFB4:
	.loc 1 101 69
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	.loc 1 102 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 103 19
	movzwl	-12(%rbp), %eax
	addl	$2, %eax
	.loc 1 104 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	simpleInstruction, .-simpleInstruction
	.section	.rodata
.LC32:
	.string	"%-16s %4d\n"
	.text
	.type	byteInstruction, @function
byteInstruction:
.LFB5:
	.loc 1 106 81
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movw	%ax, -36(%rbp)
	.loc 1 107 25
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 107 31
	movswq	-36(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	.loc 1 107 13
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	.loc 1 108 5
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 109 19
	movzwl	-36(%rbp), %eax
	addl	$2, %eax
	.loc 1 110 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	byteInstruction, .-byteInstruction
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 6 "Bytecode/debug/../chunk/../value/value.h"
	.file 7 "Bytecode/debug/../chunk/chunk.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8aa
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF932
	.byte	0xc
	.long	.LASF933
	.long	.LASF934
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF794
	.uleb128 0x3
	.long	.LASF799
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x44
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF795
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF796
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF797
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF798
	.uleb128 0x3
	.long	.LASF800
	.byte	0x3
	.byte	0x25
	.byte	0x15
	.long	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF801
	.uleb128 0x3
	.long	.LASF802
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x52
	.uleb128 0x3
	.long	.LASF803
	.byte	0x3
	.byte	0x27
	.byte	0x1a
	.long	0x92
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF804
	.uleb128 0x3
	.long	.LASF805
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x59
	.uleb128 0x3
	.long	.LASF806
	.byte	0x3
	.byte	0x29
	.byte	0x14
	.long	0x4b
	.uleb128 0x3
	.long	.LASF807
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x60
	.uleb128 0x3
	.long	.LASF808
	.byte	0x3
	.byte	0x2c
	.byte	0x19
	.long	0x31
	.uleb128 0x3
	.long	.LASF809
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x44
	.uleb128 0x3
	.long	.LASF810
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x31
	.uleb128 0x3
	.long	.LASF811
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x31
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xf5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF812
	.uleb128 0x3
	.long	.LASF813
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x67
	.uleb128 0x7
	.long	0xfc
	.uleb128 0x3
	.long	.LASF814
	.byte	0x4
	.byte	0x19
	.byte	0x13
	.long	0x86
	.uleb128 0x3
	.long	.LASF815
	.byte	0x4
	.byte	0x1a
	.byte	0x13
	.long	0xa5
	.uleb128 0x3
	.long	.LASF816
	.byte	0x4
	.byte	0x1b
	.byte	0x13
	.long	0xbd
	.uleb128 0x3
	.long	.LASF817
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.long	0x7a
	.uleb128 0x3
	.long	.LASF818
	.byte	0x5
	.byte	0x19
	.byte	0x14
	.long	0x99
	.uleb128 0x3
	.long	.LASF819
	.byte	0x5
	.byte	0x1a
	.byte	0x14
	.long	0xb1
	.uleb128 0x3
	.long	.LASF820
	.byte	0x5
	.byte	0x1b
	.byte	0x14
	.long	0xc9
	.uleb128 0x8
	.string	"Obj"
	.byte	0x6
	.byte	0x9
	.byte	0x14
	.long	0x16d
	.uleb128 0x9
	.string	"Obj"
	.uleb128 0xa
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.long	0x1db
	.uleb128 0xb
	.long	.LASF821
	.byte	0
	.uleb128 0xb
	.long	.LASF822
	.byte	0x1
	.uleb128 0xb
	.long	.LASF823
	.byte	0x2
	.uleb128 0xb
	.long	.LASF824
	.byte	0x3
	.uleb128 0xb
	.long	.LASF825
	.byte	0x4
	.uleb128 0xb
	.long	.LASF826
	.byte	0x5
	.uleb128 0xb
	.long	.LASF827
	.byte	0x6
	.uleb128 0xb
	.long	.LASF828
	.byte	0x7
	.uleb128 0xb
	.long	.LASF829
	.byte	0x8
	.uleb128 0xb
	.long	.LASF830
	.byte	0x9
	.uleb128 0xb
	.long	.LASF831
	.byte	0xa
	.uleb128 0xb
	.long	.LASF832
	.byte	0xb
	.uleb128 0xb
	.long	.LASF833
	.byte	0xc
	.uleb128 0xb
	.long	.LASF834
	.byte	0xd
	.uleb128 0xb
	.long	.LASF835
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF836
	.byte	0x6
	.byte	0x48
	.byte	0x3
	.long	0x172
	.uleb128 0xc
	.byte	0x10
	.byte	0x6
	.byte	0x4c
	.byte	0x5
	.long	0x28b
	.uleb128 0xd
	.long	.LASF837
	.byte	0x6
	.byte	0x4d
	.byte	0xd
	.long	0x28b
	.uleb128 0xe
	.string	"ch"
	.byte	0x6
	.byte	0x4e
	.byte	0x10
	.long	0xfc
	.uleb128 0xe
	.string	"uCh"
	.byte	0x6
	.byte	0x4f
	.byte	0x11
	.long	0x131
	.uleb128 0xe
	.string	"in"
	.byte	0x6
	.byte	0x50
	.byte	0x11
	.long	0x10d
	.uleb128 0xe
	.string	"uIn"
	.byte	0x6
	.byte	0x51
	.byte	0x12
	.long	0x13d
	.uleb128 0xe
	.string	"lng"
	.byte	0x6
	.byte	0x52
	.byte	0x11
	.long	0x119
	.uleb128 0xd
	.long	.LASF838
	.byte	0x6
	.byte	0x53
	.byte	0x12
	.long	0x149
	.uleb128 0xe
	.string	"flt"
	.byte	0x6
	.byte	0x54
	.byte	0xf
	.long	0x292
	.uleb128 0xd
	.long	.LASF839
	.byte	0x6
	.byte	0x55
	.byte	0x11
	.long	0x125
	.uleb128 0xd
	.long	.LASF840
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.long	0x155
	.uleb128 0xe
	.string	"dbl"
	.byte	0x6
	.byte	0x57
	.byte	0x10
	.long	0x299
	.uleb128 0xd
	.long	.LASF841
	.byte	0x6
	.byte	0x58
	.byte	0x15
	.long	0x2a0
	.uleb128 0xe
	.string	"obj"
	.byte	0x6
	.byte	0x59
	.byte	0xe
	.long	0x2a7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF842
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF843
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF844
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF845
	.uleb128 0x6
	.byte	0x8
	.long	0x161
	.uleb128 0xf
	.byte	0x20
	.byte	0x6
	.byte	0x4a
	.byte	0x9
	.long	0x2d0
	.uleb128 0x10
	.long	.LASF846
	.byte	0x6
	.byte	0x4b
	.byte	0xf
	.long	0x1db
	.byte	0
	.uleb128 0x11
	.string	"as"
	.byte	0x6
	.byte	0x5a
	.byte	0x7
	.long	0x1e7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF847
	.byte	0x6
	.byte	0x5b
	.byte	0x3
	.long	0x2ad
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.byte	0x8e
	.byte	0x9
	.long	0x30d
	.uleb128 0x10
	.long	.LASF848
	.byte	0x6
	.byte	0x8f
	.byte	0xd
	.long	0x10d
	.byte	0
	.uleb128 0x10
	.long	.LASF849
	.byte	0x6
	.byte	0x90
	.byte	0xd
	.long	0x10d
	.byte	0x2
	.uleb128 0x10
	.long	.LASF850
	.byte	0x6
	.byte	0x91
	.byte	0xc
	.long	0x30d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d0
	.uleb128 0x3
	.long	.LASF851
	.byte	0x6
	.byte	0x92
	.byte	0x3
	.long	0x2dc
	.uleb128 0xa
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x7
	.byte	0x9
	.byte	0xe
	.long	0x3c4
	.uleb128 0xb
	.long	.LASF852
	.byte	0
	.uleb128 0xb
	.long	.LASF853
	.byte	0x1
	.uleb128 0xb
	.long	.LASF854
	.byte	0x2
	.uleb128 0xb
	.long	.LASF855
	.byte	0x3
	.uleb128 0xb
	.long	.LASF856
	.byte	0x4
	.uleb128 0xb
	.long	.LASF857
	.byte	0x5
	.uleb128 0xb
	.long	.LASF858
	.byte	0x6
	.uleb128 0xb
	.long	.LASF859
	.byte	0x7
	.uleb128 0xb
	.long	.LASF860
	.byte	0x8
	.uleb128 0xb
	.long	.LASF861
	.byte	0x9
	.uleb128 0xb
	.long	.LASF862
	.byte	0xa
	.uleb128 0xb
	.long	.LASF863
	.byte	0xb
	.uleb128 0xb
	.long	.LASF864
	.byte	0xc
	.uleb128 0xb
	.long	.LASF865
	.byte	0xd
	.uleb128 0xb
	.long	.LASF866
	.byte	0xe
	.uleb128 0xb
	.long	.LASF867
	.byte	0xf
	.uleb128 0xb
	.long	.LASF868
	.byte	0x10
	.uleb128 0xb
	.long	.LASF869
	.byte	0x11
	.uleb128 0xb
	.long	.LASF870
	.byte	0x12
	.uleb128 0xb
	.long	.LASF871
	.byte	0x13
	.uleb128 0xb
	.long	.LASF872
	.byte	0x14
	.uleb128 0xb
	.long	.LASF873
	.byte	0x15
	.uleb128 0xb
	.long	.LASF874
	.byte	0x16
	.uleb128 0xb
	.long	.LASF875
	.byte	0x17
	.uleb128 0xb
	.long	.LASF876
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.byte	0x25
	.byte	0x9
	.long	0x3e8
	.uleb128 0x10
	.long	.LASF877
	.byte	0x7
	.byte	0x26
	.byte	0xd
	.long	0x10d
	.byte	0
	.uleb128 0x10
	.long	.LASF878
	.byte	0x7
	.byte	0x27
	.byte	0xe
	.long	0x13d
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF879
	.byte	0x7
	.byte	0x28
	.byte	0x3
	.long	0x3c4
	.uleb128 0xf
	.byte	0x30
	.byte	0x7
	.byte	0x2a
	.byte	0x9
	.long	0x459
	.uleb128 0x10
	.long	.LASF849
	.byte	0x7
	.byte	0x2b
	.byte	0xd
	.long	0x10d
	.byte	0
	.uleb128 0x10
	.long	.LASF848
	.byte	0x7
	.byte	0x2c
	.byte	0xd
	.long	0x10d
	.byte	0x2
	.uleb128 0x10
	.long	.LASF880
	.byte	0x7
	.byte	0x2d
	.byte	0xe
	.long	0x459
	.byte	0x8
	.uleb128 0x10
	.long	.LASF881
	.byte	0x7
	.byte	0x2e
	.byte	0x10
	.long	0x313
	.byte	0x10
	.uleb128 0x10
	.long	.LASF882
	.byte	0x7
	.byte	0x2f
	.byte	0xd
	.long	0x10d
	.byte	0x20
	.uleb128 0x10
	.long	.LASF883
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0x10d
	.byte	0x22
	.uleb128 0x10
	.long	.LASF884
	.byte	0x7
	.byte	0x31
	.byte	0x10
	.long	0x45f
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x131
	.uleb128 0x6
	.byte	0x8
	.long	0x3e8
	.uleb128 0x3
	.long	.LASF885
	.byte	0x7
	.byte	0x32
	.byte	0x3
	.long	0x3f4
	.uleb128 0x12
	.long	.LASF935
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x5f8
	.uleb128 0x10
	.long	.LASF886
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF887
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0xef
	.byte	0x8
	.uleb128 0x10
	.long	.LASF888
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0xef
	.byte	0x10
	.uleb128 0x10
	.long	.LASF889
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0xef
	.byte	0x18
	.uleb128 0x10
	.long	.LASF890
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0xef
	.byte	0x20
	.uleb128 0x10
	.long	.LASF891
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0xef
	.byte	0x28
	.uleb128 0x10
	.long	.LASF892
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0xef
	.byte	0x30
	.uleb128 0x10
	.long	.LASF893
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0xef
	.byte	0x38
	.uleb128 0x10
	.long	.LASF894
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0xef
	.byte	0x40
	.uleb128 0x10
	.long	.LASF895
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0xef
	.byte	0x48
	.uleb128 0x10
	.long	.LASF896
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0xef
	.byte	0x50
	.uleb128 0x10
	.long	.LASF897
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0xef
	.byte	0x58
	.uleb128 0x10
	.long	.LASF898
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x611
	.byte	0x60
	.uleb128 0x10
	.long	.LASF899
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x617
	.byte	0x68
	.uleb128 0x10
	.long	.LASF900
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x4b
	.byte	0x70
	.uleb128 0x10
	.long	.LASF901
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x4b
	.byte	0x74
	.uleb128 0x10
	.long	.LASF902
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0xd5
	.byte	0x78
	.uleb128 0x10
	.long	.LASF903
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0x59
	.byte	0x80
	.uleb128 0x10
	.long	.LASF904
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0x73
	.byte	0x82
	.uleb128 0x10
	.long	.LASF905
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x61d
	.byte	0x83
	.uleb128 0x10
	.long	.LASF906
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x62d
	.byte	0x88
	.uleb128 0x10
	.long	.LASF907
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0xe1
	.byte	0x90
	.uleb128 0x10
	.long	.LASF908
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x638
	.byte	0x98
	.uleb128 0x10
	.long	.LASF909
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x643
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF910
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x617
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF911
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF912
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0x38
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF913
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x4b
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF914
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x649
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF915
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0x471
	.uleb128 0x13
	.long	.LASF936
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0x14
	.long	.LASF916
	.uleb128 0x6
	.byte	0x8
	.long	0x60c
	.uleb128 0x6
	.byte	0x8
	.long	0x471
	.uleb128 0x15
	.long	0xf5
	.long	0x62d
	.uleb128 0x16
	.long	0x44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x604
	.uleb128 0x14
	.long	.LASF917
	.uleb128 0x6
	.byte	0x8
	.long	0x633
	.uleb128 0x14
	.long	.LASF918
	.uleb128 0x6
	.byte	0x8
	.long	0x63e
	.uleb128 0x15
	.long	0xf5
	.long	0x659
	.uleb128 0x16
	.long	0x44
	.byte	0x13
	.byte	0
	.uleb128 0x17
	.long	.LASF919
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x665
	.uleb128 0x6
	.byte	0x8
	.long	0x5f8
	.uleb128 0x17
	.long	.LASF920
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x665
	.uleb128 0x17
	.long	.LASF921
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x665
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF922
	.uleb128 0x18
	.long	.LASF925
	.byte	0x1
	.byte	0x6a
	.byte	0x10
	.long	0x10d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e9
	.uleb128 0x19
	.long	.LASF923
	.byte	0x1
	.byte	0x6a
	.byte	0x2e
	.long	0x6e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF924
	.byte	0x1
	.byte	0x6a
	.byte	0x3b
	.long	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF877
	.byte	0x1
	.byte	0x6a
	.byte	0x4a
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF928
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.long	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x108
	.uleb128 0x6
	.byte	0x8
	.long	0x465
	.uleb128 0x18
	.long	.LASF926
	.byte	0x1
	.byte	0x65
	.byte	0x10
	.long	0x10d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x736
	.uleb128 0x19
	.long	.LASF923
	.byte	0x1
	.byte	0x65
	.byte	0x30
	.long	0x6e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF877
	.byte	0x1
	.byte	0x65
	.byte	0x3e
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.long	.LASF927
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.long	0x10d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x795
	.uleb128 0x19
	.long	.LASF923
	.byte	0x1
	.byte	0x5b
	.byte	0x36
	.long	0x6e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF924
	.byte	0x1
	.byte	0x5b
	.byte	0x43
	.long	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF877
	.byte	0x1
	.byte	0x5b
	.byte	0x52
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF929
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF930
	.byte	0x1
	.byte	0x52
	.byte	0x10
	.long	0x10d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f4
	.uleb128 0x19
	.long	.LASF923
	.byte	0x1
	.byte	0x52
	.byte	0x32
	.long	0x6e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF924
	.byte	0x1
	.byte	0x52
	.byte	0x3f
	.long	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF877
	.byte	0x1
	.byte	0x52
	.byte	0x4e
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF929
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.long	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1b
	.long	.LASF937
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.long	0x10d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x853
	.uleb128 0x19
	.long	.LASF924
	.byte	0x1
	.byte	0x11
	.byte	0x27
	.long	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF877
	.byte	0x1
	.byte	0x11
	.byte	0x36
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF878
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1a
	.long	.LASF931
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.long	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0x1c
	.long	.LASF938
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF924
	.byte	0x1
	.byte	0x9
	.byte	0x1e
	.long	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF923
	.byte	0x1
	.byte	0x9
	.byte	0x33
	.long	0x6e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF877
	.byte	0x1
	.byte	0xc
	.byte	0xd
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1
	.byte	0x5
	.uleb128 0x3
	.long	.LASF2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF3
	.byte	0x5
	.uleb128 0x5
	.long	.LASF4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF5
	.byte	0x5
	.uleb128 0x7
	.long	.LASF6
	.byte	0x5
	.uleb128 0x8
	.long	.LASF7
	.byte	0x5
	.uleb128 0x9
	.long	.LASF8
	.byte	0x5
	.uleb128 0xa
	.long	.LASF9
	.byte	0x5
	.uleb128 0xb
	.long	.LASF10
	.byte	0x5
	.uleb128 0xc
	.long	.LASF11
	.byte	0x5
	.uleb128 0xd
	.long	.LASF12
	.byte	0x5
	.uleb128 0xe
	.long	.LASF13
	.byte	0x5
	.uleb128 0xf
	.long	.LASF14
	.byte	0x5
	.uleb128 0x10
	.long	.LASF15
	.byte	0x5
	.uleb128 0x11
	.long	.LASF16
	.byte	0x5
	.uleb128 0x12
	.long	.LASF17
	.byte	0x5
	.uleb128 0x13
	.long	.LASF18
	.byte	0x5
	.uleb128 0x14
	.long	.LASF19
	.byte	0x5
	.uleb128 0x15
	.long	.LASF20
	.byte	0x5
	.uleb128 0x16
	.long	.LASF21
	.byte	0x5
	.uleb128 0x17
	.long	.LASF22
	.byte	0x5
	.uleb128 0x18
	.long	.LASF23
	.byte	0x5
	.uleb128 0x19
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x5
	.uleb128 0x20
	.long	.LASF31
	.byte	0x5
	.uleb128 0x21
	.long	.LASF32
	.byte	0x5
	.uleb128 0x22
	.long	.LASF33
	.byte	0x5
	.uleb128 0x23
	.long	.LASF34
	.byte	0x5
	.uleb128 0x24
	.long	.LASF35
	.byte	0x5
	.uleb128 0x25
	.long	.LASF36
	.byte	0x5
	.uleb128 0x26
	.long	.LASF37
	.byte	0x5
	.uleb128 0x27
	.long	.LASF38
	.byte	0x5
	.uleb128 0x28
	.long	.LASF39
	.byte	0x5
	.uleb128 0x29
	.long	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF46
	.byte	0x5
	.uleb128 0x30
	.long	.LASF47
	.byte	0x5
	.uleb128 0x31
	.long	.LASF48
	.byte	0x5
	.uleb128 0x32
	.long	.LASF49
	.byte	0x5
	.uleb128 0x33
	.long	.LASF50
	.byte	0x5
	.uleb128 0x34
	.long	.LASF51
	.byte	0x5
	.uleb128 0x35
	.long	.LASF52
	.byte	0x5
	.uleb128 0x36
	.long	.LASF53
	.byte	0x5
	.uleb128 0x37
	.long	.LASF54
	.byte	0x5
	.uleb128 0x38
	.long	.LASF55
	.byte	0x5
	.uleb128 0x39
	.long	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF62
	.byte	0x5
	.uleb128 0x40
	.long	.LASF63
	.byte	0x5
	.uleb128 0x41
	.long	.LASF64
	.byte	0x5
	.uleb128 0x42
	.long	.LASF65
	.byte	0x5
	.uleb128 0x43
	.long	.LASF66
	.byte	0x5
	.uleb128 0x44
	.long	.LASF67
	.byte	0x5
	.uleb128 0x45
	.long	.LASF68
	.byte	0x5
	.uleb128 0x46
	.long	.LASF69
	.byte	0x5
	.uleb128 0x47
	.long	.LASF70
	.byte	0x5
	.uleb128 0x48
	.long	.LASF71
	.byte	0x5
	.uleb128 0x49
	.long	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF78
	.byte	0x5
	.uleb128 0x50
	.long	.LASF79
	.byte	0x5
	.uleb128 0x51
	.long	.LASF80
	.byte	0x5
	.uleb128 0x52
	.long	.LASF81
	.byte	0x5
	.uleb128 0x53
	.long	.LASF82
	.byte	0x5
	.uleb128 0x54
	.long	.LASF83
	.byte	0x5
	.uleb128 0x55
	.long	.LASF84
	.byte	0x5
	.uleb128 0x56
	.long	.LASF85
	.byte	0x5
	.uleb128 0x57
	.long	.LASF86
	.byte	0x5
	.uleb128 0x58
	.long	.LASF87
	.byte	0x5
	.uleb128 0x59
	.long	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF94
	.byte	0x5
	.uleb128 0x60
	.long	.LASF95
	.byte	0x5
	.uleb128 0x61
	.long	.LASF96
	.byte	0x5
	.uleb128 0x62
	.long	.LASF97
	.byte	0x5
	.uleb128 0x63
	.long	.LASF98
	.byte	0x5
	.uleb128 0x64
	.long	.LASF99
	.byte	0x5
	.uleb128 0x65
	.long	.LASF100
	.byte	0x5
	.uleb128 0x66
	.long	.LASF101
	.byte	0x5
	.uleb128 0x67
	.long	.LASF102
	.byte	0x5
	.uleb128 0x68
	.long	.LASF103
	.byte	0x5
	.uleb128 0x69
	.long	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF110
	.byte	0x5
	.uleb128 0x70
	.long	.LASF111
	.byte	0x5
	.uleb128 0x71
	.long	.LASF112
	.byte	0x5
	.uleb128 0x72
	.long	.LASF113
	.byte	0x5
	.uleb128 0x73
	.long	.LASF114
	.byte	0x5
	.uleb128 0x74
	.long	.LASF115
	.byte	0x5
	.uleb128 0x75
	.long	.LASF116
	.byte	0x5
	.uleb128 0x76
	.long	.LASF117
	.byte	0x5
	.uleb128 0x77
	.long	.LASF118
	.byte	0x5
	.uleb128 0x78
	.long	.LASF119
	.byte	0x5
	.uleb128 0x79
	.long	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF126
	.byte	0x5
	.uleb128 0x80
	.long	.LASF127
	.byte	0x5
	.uleb128 0x81
	.long	.LASF128
	.byte	0x5
	.uleb128 0x82
	.long	.LASF129
	.byte	0x5
	.uleb128 0x83
	.long	.LASF130
	.byte	0x5
	.uleb128 0x84
	.long	.LASF131
	.byte	0x5
	.uleb128 0x85
	.long	.LASF132
	.byte	0x5
	.uleb128 0x86
	.long	.LASF133
	.byte	0x5
	.uleb128 0x87
	.long	.LASF134
	.byte	0x5
	.uleb128 0x88
	.long	.LASF135
	.byte	0x5
	.uleb128 0x89
	.long	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF142
	.byte	0x5
	.uleb128 0x90
	.long	.LASF143
	.byte	0x5
	.uleb128 0x91
	.long	.LASF144
	.byte	0x5
	.uleb128 0x92
	.long	.LASF145
	.byte	0x5
	.uleb128 0x93
	.long	.LASF146
	.byte	0x5
	.uleb128 0x94
	.long	.LASF147
	.byte	0x5
	.uleb128 0x95
	.long	.LASF148
	.byte	0x5
	.uleb128 0x96
	.long	.LASF149
	.byte	0x5
	.uleb128 0x97
	.long	.LASF150
	.byte	0x5
	.uleb128 0x98
	.long	.LASF151
	.byte	0x5
	.uleb128 0x99
	.long	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF169
	.byte	0x5
	.uleb128 0xab
	.long	.LASF170
	.byte	0x5
	.uleb128 0xac
	.long	.LASF171
	.byte	0x5
	.uleb128 0xad
	.long	.LASF172
	.byte	0x5
	.uleb128 0xae
	.long	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF184
	.byte	0x5
	.uleb128 0xba
	.long	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF200
	.byte	0x5
	.uleb128 0xca
	.long	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF204
	.byte	0x5
	.uleb128 0xce
	.long	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF216
	.byte	0x5
	.uleb128 0xda
	.long	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF220
	.byte	0x5
	.uleb128 0xde
	.long	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF232
	.byte	0x5
	.uleb128 0xea
	.long	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF234
	.byte	0x5
	.uleb128 0xec
	.long	.LASF235
	.byte	0x5
	.uleb128 0xed
	.long	.LASF236
	.byte	0x5
	.uleb128 0xee
	.long	.LASF237
	.byte	0x5
	.uleb128 0xef
	.long	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF253
	.byte	0x5
	.uleb128 0xff
	.long	.LASF254
	.byte	0x5
	.uleb128 0x100
	.long	.LASF255
	.byte	0x5
	.uleb128 0x101
	.long	.LASF256
	.byte	0x5
	.uleb128 0x102
	.long	.LASF257
	.byte	0x5
	.uleb128 0x103
	.long	.LASF258
	.byte	0x5
	.uleb128 0x104
	.long	.LASF259
	.byte	0x5
	.uleb128 0x105
	.long	.LASF260
	.byte	0x5
	.uleb128 0x106
	.long	.LASF261
	.byte	0x5
	.uleb128 0x107
	.long	.LASF262
	.byte	0x5
	.uleb128 0x108
	.long	.LASF263
	.byte	0x5
	.uleb128 0x109
	.long	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF270
	.byte	0x5
	.uleb128 0x110
	.long	.LASF271
	.byte	0x5
	.uleb128 0x111
	.long	.LASF272
	.byte	0x5
	.uleb128 0x112
	.long	.LASF273
	.byte	0x5
	.uleb128 0x113
	.long	.LASF274
	.byte	0x5
	.uleb128 0x114
	.long	.LASF275
	.byte	0x5
	.uleb128 0x115
	.long	.LASF276
	.byte	0x5
	.uleb128 0x116
	.long	.LASF277
	.byte	0x5
	.uleb128 0x117
	.long	.LASF278
	.byte	0x5
	.uleb128 0x118
	.long	.LASF279
	.byte	0x5
	.uleb128 0x119
	.long	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF286
	.byte	0x5
	.uleb128 0x120
	.long	.LASF287
	.byte	0x5
	.uleb128 0x121
	.long	.LASF288
	.byte	0x5
	.uleb128 0x122
	.long	.LASF289
	.byte	0x5
	.uleb128 0x123
	.long	.LASF290
	.byte	0x5
	.uleb128 0x124
	.long	.LASF291
	.byte	0x5
	.uleb128 0x125
	.long	.LASF292
	.byte	0x5
	.uleb128 0x126
	.long	.LASF293
	.byte	0x5
	.uleb128 0x127
	.long	.LASF294
	.byte	0x5
	.uleb128 0x128
	.long	.LASF295
	.byte	0x5
	.uleb128 0x129
	.long	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF302
	.byte	0x5
	.uleb128 0x130
	.long	.LASF303
	.byte	0x5
	.uleb128 0x131
	.long	.LASF304
	.byte	0x5
	.uleb128 0x132
	.long	.LASF305
	.byte	0x5
	.uleb128 0x133
	.long	.LASF306
	.byte	0x5
	.uleb128 0x134
	.long	.LASF307
	.byte	0x5
	.uleb128 0x135
	.long	.LASF308
	.byte	0x5
	.uleb128 0x136
	.long	.LASF309
	.byte	0x5
	.uleb128 0x137
	.long	.LASF310
	.byte	0x5
	.uleb128 0x138
	.long	.LASF311
	.byte	0x5
	.uleb128 0x139
	.long	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF318
	.byte	0x5
	.uleb128 0x140
	.long	.LASF319
	.byte	0x5
	.uleb128 0x141
	.long	.LASF320
	.byte	0x5
	.uleb128 0x142
	.long	.LASF321
	.byte	0x5
	.uleb128 0x143
	.long	.LASF322
	.byte	0x5
	.uleb128 0x144
	.long	.LASF323
	.byte	0x5
	.uleb128 0x145
	.long	.LASF324
	.byte	0x5
	.uleb128 0x146
	.long	.LASF325
	.byte	0x5
	.uleb128 0x147
	.long	.LASF326
	.byte	0x5
	.uleb128 0x148
	.long	.LASF327
	.byte	0x5
	.uleb128 0x149
	.long	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF334
	.byte	0x5
	.uleb128 0x150
	.long	.LASF335
	.byte	0x5
	.uleb128 0x151
	.long	.LASF336
	.byte	0x5
	.uleb128 0x152
	.long	.LASF337
	.byte	0x5
	.uleb128 0x153
	.long	.LASF338
	.byte	0x5
	.uleb128 0x154
	.long	.LASF339
	.byte	0x5
	.uleb128 0x155
	.long	.LASF340
	.file 11 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.file 12 "Bytecode/debug/debug.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.long	.LASF345
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.long	.LASF346
	.file 13 "Bytecode/debug/../chunk/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x2
	.long	.LASF347
	.file 14 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 15 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xf
	.file 16 "/usr/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro5
	.file 17 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x11
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF407
	.file 18 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro6
	.file 19 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1cd
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro7
	.file 20 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x1c4
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 21 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x1c5
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x15
	.long	.LASF510
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 22 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x1e5
	.uleb128 0x16
	.file 23 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x18
	.long	.LASF543
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 24 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x18
	.long	.LASF544
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.file 25 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 26 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x6
	.uleb128 0xe1
	.long	.LASF602
	.byte	0x4
	.file 27 "/usr/include/x86_64-linux-gnu/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x1b
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x14
	.long	.LASF606
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x14
	.long	.LASF607
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF670
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.long	.LASF674
	.file 28 "Bytecode/debug/../chunk/../value/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1c
	.byte	0x4
	.file 29 "/usr/include/string.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 30 "Bytecode/debug/../value/value.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF723
	.file 31 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.file 32 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x20
	.byte	0x5
	.uleb128 0x2
	.long	.LASF726
	.file 33 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x21
	.byte	0x5
	.uleb128 0x2
	.long	.LASF727
	.byte	0x4
	.byte	0x4
	.file 34 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x22
	.byte	0x5
	.uleb128 0x2
	.long	.LASF728
	.byte	0x4
	.file 35 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x23
	.byte	0x5
	.uleb128 0x2
	.long	.LASF729
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.long	.LASF730
	.byte	0x4
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro26
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro27
	.file 36 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro29
	.file 37 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.byte	0x3
	.uleb128 0x30d
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.file 38 "/usr/include/stdlib.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x5
	.uleb128 0x18
	.long	.LASF406
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro30
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF757
	.file 39 "/usr/include/x86_64-linux-gnu/bits/floatn.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x27
	.byte	0x7
	.long	.Ldebug_macro31
	.file 40 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x78
	.uleb128 0x28
	.byte	0x5
	.uleb128 0x15
	.long	.LASF765
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x15
	.long	.LASF510
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro32
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro33
	.file 41 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.byte	0x3
	.uleb128 0x3f5
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdcpredef.h.19.8dc41bed5d9037ff9622e015fb5f0ce3,comdat
.Ldebug_macro2:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF341
	.byte	0x5
	.uleb128 0x26
	.long	.LASF342
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF343
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF344
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdbool.h.29.07dce69c3b78884144b7f7bd19483461,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF348
	.byte	0x5
	.uleb128 0x21
	.long	.LASF349
	.byte	0x5
	.uleb128 0x22
	.long	.LASF350
	.byte	0x5
	.uleb128 0x23
	.long	.LASF351
	.byte	0x5
	.uleb128 0x34
	.long	.LASF352
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.27677723d43e5b5a7afdf8d798429f1d,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF353
	.byte	0x5
	.uleb128 0x28
	.long	.LASF354
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF355
	.byte	0x5
	.uleb128 0x83
	.long	.LASF356
	.byte	0x5
	.uleb128 0x84
	.long	.LASF357
	.byte	0x5
	.uleb128 0x85
	.long	.LASF358
	.byte	0x5
	.uleb128 0x86
	.long	.LASF359
	.byte	0x5
	.uleb128 0x87
	.long	.LASF360
	.byte	0x5
	.uleb128 0x88
	.long	.LASF361
	.byte	0x5
	.uleb128 0x89
	.long	.LASF362
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF363
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF364
	.byte	0x6
	.uleb128 0x9b
	.long	.LASF365
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF366
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF367
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF368
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF369
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF370
	.byte	0x5
	.uleb128 0xba
	.long	.LASF371
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF372
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF373
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF374
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF375
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF376
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF377
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF378
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF379
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF380
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF381
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF382
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF383
	.byte	0x5
	.uleb128 0x104
	.long	.LASF384
	.byte	0x5
	.uleb128 0x105
	.long	.LASF385
	.byte	0x5
	.uleb128 0x106
	.long	.LASF386
	.byte	0x5
	.uleb128 0x107
	.long	.LASF387
	.byte	0x5
	.uleb128 0x108
	.long	.LASF388
	.byte	0x5
	.uleb128 0x109
	.long	.LASF389
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF390
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF391
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF392
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF393
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF394
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF395
	.byte	0x5
	.uleb128 0x110
	.long	.LASF396
	.byte	0x5
	.uleb128 0x111
	.long	.LASF397
	.byte	0x5
	.uleb128 0x112
	.long	.LASF398
	.byte	0x6
	.uleb128 0x11f
	.long	.LASF399
	.byte	0x6
	.uleb128 0x154
	.long	.LASF400
	.byte	0x6
	.uleb128 0x186
	.long	.LASF401
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF402
	.byte	0x6
	.uleb128 0x191
	.long	.LASF403
	.byte	0x5
	.uleb128 0x196
	.long	.LASF404
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.23.022efde71688fcb285fe42cc87d41ee3,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF405
	.byte	0x5
	.uleb128 0x19
	.long	.LASF406
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.27245cfc2802812683deaaadc4051edf,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF408
	.byte	0x6
	.uleb128 0x78
	.long	.LASF409
	.byte	0x6
	.uleb128 0x79
	.long	.LASF410
	.byte	0x6
	.uleb128 0x7a
	.long	.LASF411
	.byte	0x6
	.uleb128 0x7b
	.long	.LASF412
	.byte	0x6
	.uleb128 0x7c
	.long	.LASF413
	.byte	0x6
	.uleb128 0x7d
	.long	.LASF414
	.byte	0x6
	.uleb128 0x7e
	.long	.LASF415
	.byte	0x6
	.uleb128 0x7f
	.long	.LASF416
	.byte	0x6
	.uleb128 0x80
	.long	.LASF417
	.byte	0x6
	.uleb128 0x81
	.long	.LASF418
	.byte	0x6
	.uleb128 0x82
	.long	.LASF419
	.byte	0x6
	.uleb128 0x83
	.long	.LASF420
	.byte	0x6
	.uleb128 0x84
	.long	.LASF421
	.byte	0x6
	.uleb128 0x85
	.long	.LASF422
	.byte	0x6
	.uleb128 0x86
	.long	.LASF423
	.byte	0x6
	.uleb128 0x87
	.long	.LASF424
	.byte	0x6
	.uleb128 0x88
	.long	.LASF425
	.byte	0x6
	.uleb128 0x89
	.long	.LASF426
	.byte	0x6
	.uleb128 0x8a
	.long	.LASF427
	.byte	0x6
	.uleb128 0x8b
	.long	.LASF428
	.byte	0x6
	.uleb128 0x8c
	.long	.LASF429
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF430
	.byte	0x6
	.uleb128 0x8e
	.long	.LASF431
	.byte	0x6
	.uleb128 0x8f
	.long	.LASF432
	.byte	0x6
	.uleb128 0x90
	.long	.LASF433
	.byte	0x6
	.uleb128 0x91
	.long	.LASF434
	.byte	0x5
	.uleb128 0x96
	.long	.LASF435
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF436
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF437
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF438
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF439
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF440
	.byte	0x5
	.uleb128 0xff
	.long	.LASF441
	.byte	0x5
	.uleb128 0x193
	.long	.LASF442
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF443
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF444
	.byte	0x6
	.uleb128 0x1bf
	.long	.LASF445
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF446
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF447
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF448
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF449
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.19.0d545e69f14b328423facbc3c055a47a,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF450
	.byte	0x2
	.uleb128 0x22
	.string	"__P"
	.byte	0x6
	.uleb128 0x23
	.long	.LASF451
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF452
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF453
	.byte	0x5
	.uleb128 0x37
	.long	.LASF454
	.byte	0x5
	.uleb128 0x38
	.long	.LASF455
	.byte	0x5
	.uleb128 0x39
	.long	.LASF456
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF457
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF458
	.byte	0x5
	.uleb128 0x63
	.long	.LASF459
	.byte	0x5
	.uleb128 0x64
	.long	.LASF460
	.byte	0x5
	.uleb128 0x69
	.long	.LASF461
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF462
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF463
	.byte	0x5
	.uleb128 0x75
	.long	.LASF464
	.byte	0x5
	.uleb128 0x76
	.long	.LASF465
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF466
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF467
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF468
	.byte	0x5
	.uleb128 0x81
	.long	.LASF469
	.byte	0x5
	.uleb128 0x82
	.long	.LASF470
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF471
	.byte	0x5
	.uleb128 0x90
	.long	.LASF472
	.byte	0x5
	.uleb128 0xae
	.long	.LASF473
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF474
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF475
	.byte	0x5
	.uleb128 0xba
	.long	.LASF476
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF477
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF478
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF479
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF480
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF481
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF482
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF483
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF484
	.byte	0x5
	.uleb128 0x105
	.long	.LASF485
	.byte	0x5
	.uleb128 0x112
	.long	.LASF486
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF487
	.byte	0x5
	.uleb128 0x125
	.long	.LASF488
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF489
	.byte	0x5
	.uleb128 0x136
	.long	.LASF490
	.byte	0x6
	.uleb128 0x13e
	.long	.LASF491
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF492
	.byte	0x5
	.uleb128 0x148
	.long	.LASF493
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF494
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF495
	.byte	0x5
	.uleb128 0x164
	.long	.LASF496
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF497
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF498
	.byte	0x5
	.uleb128 0x183
	.long	.LASF499
	.byte	0x5
	.uleb128 0x192
	.long	.LASF500
	.byte	0x5
	.uleb128 0x193
	.long	.LASF501
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF502
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF503
	.byte	0x6
	.uleb128 0x1b3
	.long	.LASF504
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF505
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF506
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.baf119258a1e53d8dba67ceac44ab6bc,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF507
	.byte	0x5
	.uleb128 0xc
	.long	.LASF508
	.byte	0x5
	.uleb128 0xe
	.long	.LASF509
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.475.fb75d2e4416aa349344e6f45f683bf28,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF511
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF512
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF513
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF514
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF515
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF516
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF517
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF518
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF519
	.byte	0x5
	.uleb128 0x200
	.long	.LASF520
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.6ce4c34010988db072c080326a6b6319,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF521
	.byte	0x5
	.uleb128 0xb
	.long	.LASF522
	.byte	0x5
	.uleb128 0xc
	.long	.LASF523
	.byte	0x5
	.uleb128 0xd
	.long	.LASF524
	.byte	0x5
	.uleb128 0xe
	.long	.LASF525
	.byte	0x5
	.uleb128 0xf
	.long	.LASF526
	.byte	0x5
	.uleb128 0x10
	.long	.LASF527
	.byte	0x5
	.uleb128 0x11
	.long	.LASF528
	.byte	0x5
	.uleb128 0x12
	.long	.LASF529
	.byte	0x5
	.uleb128 0x13
	.long	.LASF530
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.37.d9274df4cc0172452960ad9644fa5579,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x25
	.long	.LASF531
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF532
	.byte	0x6
	.uleb128 0x31
	.long	.LASF533
	.byte	0x5
	.uleb128 0x35
	.long	.LASF534
	.byte	0x6
	.uleb128 0x37
	.long	.LASF535
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF536
	.byte	0x6
	.uleb128 0x42
	.long	.LASF537
	.byte	0x5
	.uleb128 0x46
	.long	.LASF538
	.byte	0x6
	.uleb128 0x48
	.long	.LASF539
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF540
	.byte	0x6
	.uleb128 0x51
	.long	.LASF541
	.byte	0x5
	.uleb128 0x55
	.long	.LASF542
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.109.56eb9ae966b255288cc544f18746a7ff,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF545
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF546
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF547
	.byte	0x5
	.uleb128 0x70
	.long	.LASF548
	.byte	0x5
	.uleb128 0x71
	.long	.LASF549
	.byte	0x5
	.uleb128 0x72
	.long	.LASF550
	.byte	0x5
	.uleb128 0x80
	.long	.LASF551
	.byte	0x5
	.uleb128 0x81
	.long	.LASF552
	.byte	0x5
	.uleb128 0x82
	.long	.LASF553
	.byte	0x5
	.uleb128 0x83
	.long	.LASF554
	.byte	0x5
	.uleb128 0x84
	.long	.LASF555
	.byte	0x5
	.uleb128 0x85
	.long	.LASF556
	.byte	0x5
	.uleb128 0x86
	.long	.LASF557
	.byte	0x5
	.uleb128 0x87
	.long	.LASF558
	.byte	0x5
	.uleb128 0x89
	.long	.LASF559
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.2c64f817c0dc4b6fb2a2c619d717be26,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF560
	.byte	0x5
	.uleb128 0x22
	.long	.LASF561
	.byte	0x5
	.uleb128 0x23
	.long	.LASF562
	.byte	0x5
	.uleb128 0x26
	.long	.LASF563
	.byte	0x5
	.uleb128 0x27
	.long	.LASF564
	.byte	0x5
	.uleb128 0x28
	.long	.LASF565
	.byte	0x5
	.uleb128 0x29
	.long	.LASF566
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF567
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF568
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF569
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF570
	.byte	0x5
	.uleb128 0x33
	.long	.LASF571
	.byte	0x5
	.uleb128 0x34
	.long	.LASF572
	.byte	0x5
	.uleb128 0x35
	.long	.LASF573
	.byte	0x5
	.uleb128 0x36
	.long	.LASF574
	.byte	0x5
	.uleb128 0x37
	.long	.LASF575
	.byte	0x5
	.uleb128 0x38
	.long	.LASF576
	.byte	0x5
	.uleb128 0x39
	.long	.LASF577
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF578
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF579
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF580
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF581
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF582
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF583
	.byte	0x5
	.uleb128 0x40
	.long	.LASF584
	.byte	0x5
	.uleb128 0x41
	.long	.LASF585
	.byte	0x5
	.uleb128 0x42
	.long	.LASF586
	.byte	0x5
	.uleb128 0x43
	.long	.LASF587
	.byte	0x5
	.uleb128 0x44
	.long	.LASF588
	.byte	0x5
	.uleb128 0x45
	.long	.LASF589
	.byte	0x5
	.uleb128 0x46
	.long	.LASF590
	.byte	0x5
	.uleb128 0x47
	.long	.LASF591
	.byte	0x5
	.uleb128 0x48
	.long	.LASF592
	.byte	0x5
	.uleb128 0x49
	.long	.LASF593
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF594
	.byte	0x5
	.uleb128 0x50
	.long	.LASF595
	.byte	0x5
	.uleb128 0x53
	.long	.LASF596
	.byte	0x5
	.uleb128 0x56
	.long	.LASF597
	.byte	0x5
	.uleb128 0x59
	.long	.LASF598
	.byte	0x5
	.uleb128 0x61
	.long	.LASF599
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time64.h.24.a8166ae916ec910dab0d8987098d42ee,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF600
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF601
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.20.510818a05484290d697a517509bf4b2d,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF603
	.byte	0x5
	.uleb128 0x22
	.long	.LASF604
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF605
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.88.7e8071bbba3b822ff5b29420f80324ec,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x58
	.long	.LASF608
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF120
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF129
	.byte	0x5
	.uleb128 0x74
	.long	.LASF609
	.byte	0x5
	.uleb128 0x75
	.long	.LASF610
	.byte	0x5
	.uleb128 0x76
	.long	.LASF611
	.byte	0x5
	.uleb128 0x77
	.long	.LASF612
	.byte	0x5
	.uleb128 0x79
	.long	.LASF613
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF614
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF615
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF616
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF617
	.byte	0x5
	.uleb128 0x80
	.long	.LASF618
	.byte	0x5
	.uleb128 0x81
	.long	.LASF619
	.byte	0x5
	.uleb128 0x82
	.long	.LASF620
	.byte	0x5
	.uleb128 0x86
	.long	.LASF621
	.byte	0x5
	.uleb128 0x87
	.long	.LASF622
	.byte	0x5
	.uleb128 0x88
	.long	.LASF623
	.byte	0x5
	.uleb128 0x89
	.long	.LASF624
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF625
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF626
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF627
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF628
	.byte	0x5
	.uleb128 0x91
	.long	.LASF629
	.byte	0x5
	.uleb128 0x92
	.long	.LASF630
	.byte	0x5
	.uleb128 0x93
	.long	.LASF631
	.byte	0x5
	.uleb128 0x94
	.long	.LASF632
	.byte	0x5
	.uleb128 0x98
	.long	.LASF633
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF634
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF635
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF636
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF637
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF638
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF639
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF640
	.byte	0x5
	.uleb128 0xad
	.long	.LASF641
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF642
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF643
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF644
	.byte	0x5
	.uleb128 0xba
	.long	.LASF645
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF646
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF647
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF648
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF649
	.byte	0x5
	.uleb128 0xca
	.long	.LASF650
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF651
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF652
	.byte	0x5
	.uleb128 0xde
	.long	.LASF653
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF654
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF655
	.byte	0x5
	.uleb128 0xef
	.long	.LASF656
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF657
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF658
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF659
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF660
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF661
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF662
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF663
	.byte	0x5
	.uleb128 0x102
	.long	.LASF664
	.byte	0x5
	.uleb128 0x103
	.long	.LASF665
	.byte	0x5
	.uleb128 0x104
	.long	.LASF666
	.byte	0x5
	.uleb128 0x106
	.long	.LASF667
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF668
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF669
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.8.90fda59c54c961fc19350e2cd5261a6b,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF671
	.byte	0x5
	.uleb128 0x9
	.long	.LASF672
	.byte	0x5
	.uleb128 0xb
	.long	.LASF673
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.23.93403f89af7dba8212345449bb14b09d,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF675
	.byte	0x5
	.uleb128 0x19
	.long	.LASF406
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.31.87b3c285aeba93fe355ad19123070832,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF407
	.byte	0x6
	.uleb128 0x25
	.long	.LASF531
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF532
	.byte	0x6
	.uleb128 0x31
	.long	.LASF533
	.byte	0x5
	.uleb128 0x35
	.long	.LASF534
	.byte	0x6
	.uleb128 0x37
	.long	.LASF535
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF536
	.byte	0x6
	.uleb128 0x42
	.long	.LASF537
	.byte	0x5
	.uleb128 0x46
	.long	.LASF538
	.byte	0x6
	.uleb128 0x48
	.long	.LASF539
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF540
	.byte	0x6
	.uleb128 0x51
	.long	.LASF541
	.byte	0x5
	.uleb128 0x55
	.long	.LASF542
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF676
	.byte	0x5
	.uleb128 0x20
	.long	.LASF677
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.155.ba788add86a0e365f264484f110c3c29,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x9b
	.long	.LASF365
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF383
	.byte	0x6
	.uleb128 0x154
	.long	.LASF400
	.byte	0x6
	.uleb128 0x186
	.long	.LASF401
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF402
	.byte	0x6
	.uleb128 0x191
	.long	.LASF403
	.byte	0x5
	.uleb128 0x196
	.long	.LASF404
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.value.h.93.bfaea07e85ae46c62b090a885a200a26,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF678
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF679
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF680
	.byte	0x5
	.uleb128 0x60
	.long	.LASF681
	.byte	0x5
	.uleb128 0x61
	.long	.LASF682
	.byte	0x5
	.uleb128 0x62
	.long	.LASF683
	.byte	0x5
	.uleb128 0x63
	.long	.LASF684
	.byte	0x5
	.uleb128 0x64
	.long	.LASF685
	.byte	0x5
	.uleb128 0x65
	.long	.LASF686
	.byte	0x5
	.uleb128 0x66
	.long	.LASF687
	.byte	0x5
	.uleb128 0x67
	.long	.LASF688
	.byte	0x5
	.uleb128 0x68
	.long	.LASF689
	.byte	0x5
	.uleb128 0x69
	.long	.LASF690
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF691
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF692
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF693
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF694
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF695
	.byte	0x5
	.uleb128 0x70
	.long	.LASF696
	.byte	0x5
	.uleb128 0x71
	.long	.LASF697
	.byte	0x5
	.uleb128 0x72
	.long	.LASF698
	.byte	0x5
	.uleb128 0x73
	.long	.LASF699
	.byte	0x5
	.uleb128 0x74
	.long	.LASF700
	.byte	0x5
	.uleb128 0x75
	.long	.LASF701
	.byte	0x5
	.uleb128 0x76
	.long	.LASF702
	.byte	0x5
	.uleb128 0x77
	.long	.LASF703
	.byte	0x5
	.uleb128 0x78
	.long	.LASF704
	.byte	0x5
	.uleb128 0x79
	.long	.LASF705
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF706
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF707
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF708
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF709
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF710
	.byte	0x5
	.uleb128 0x80
	.long	.LASF711
	.byte	0x5
	.uleb128 0x81
	.long	.LASF712
	.byte	0x5
	.uleb128 0x82
	.long	.LASF713
	.byte	0x5
	.uleb128 0x83
	.long	.LASF714
	.byte	0x5
	.uleb128 0x84
	.long	.LASF715
	.byte	0x5
	.uleb128 0x85
	.long	.LASF716
	.byte	0x5
	.uleb128 0x86
	.long	.LASF717
	.byte	0x5
	.uleb128 0x87
	.long	.LASF718
	.byte	0x5
	.uleb128 0x88
	.long	.LASF719
	.byte	0x5
	.uleb128 0x89
	.long	.LASF720
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF721
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.24.5c1b97eef3c86b7a2549420f69f4f128,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF722
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF406
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF676
	.byte	0x5
	.uleb128 0x20
	.long	.LASF677
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro25:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.long	.LASF724
	.byte	0x5
	.uleb128 0x27
	.long	.LASF725
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_FILE.h.19.0888ac70396abe1031c03d393554032f,comdat
.Ldebug_macro26:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF731
	.byte	0x5
	.uleb128 0x66
	.long	.LASF732
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF733
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF734
	.byte	0x5
	.uleb128 0x70
	.long	.LASF735
	.byte	0x5
	.uleb128 0x72
	.long	.LASF736
	.byte	0x5
	.uleb128 0x73
	.long	.LASF737
	.byte	0x5
	.uleb128 0x75
	.long	.LASF738
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.93.0122ffbd02ddfe34dfaf44a2e3561c5b,comdat
.Ldebug_macro27:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF739
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF740
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF741
	.byte	0x5
	.uleb128 0x63
	.long	.LASF742
	.byte	0x5
	.uleb128 0x68
	.long	.LASF743
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF744
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF745
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF746
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.19.de8a40c165be4f8437982ec2cd6fd8b4,comdat
.Ldebug_macro28:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF747
	.byte	0x5
	.uleb128 0x19
	.long	.LASF748
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF749
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF750
	.byte	0x6
	.uleb128 0x24
	.long	.LASF751
	.byte	0x5
	.uleb128 0x25
	.long	.LASF752
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.141.d7a290e19ca077c9e4aa7c43ede17a73,comdat
.Ldebug_macro29:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF753
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF754
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF755
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.28.2cffa49d94c5d85f4538f55f7b59771d,comdat
.Ldebug_macro30:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF676
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF756
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF677
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatn.h.20.80c7cf8a8dfad237004b28d051d5afda,comdat
.Ldebug_macro31:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF758
	.byte	0x5
	.uleb128 0x21
	.long	.LASF759
	.byte	0x5
	.uleb128 0x29
	.long	.LASF760
	.byte	0x5
	.uleb128 0x31
	.long	.LASF761
	.byte	0x5
	.uleb128 0x37
	.long	.LASF762
	.byte	0x5
	.uleb128 0x42
	.long	.LASF763
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF764
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatncommon.h.34.7e1840d7dfb19e9bdb51aeb077d76637,comdat
.Ldebug_macro32:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF766
	.byte	0x5
	.uleb128 0x23
	.long	.LASF767
	.byte	0x5
	.uleb128 0x24
	.long	.LASF768
	.byte	0x5
	.uleb128 0x25
	.long	.LASF769
	.byte	0x5
	.uleb128 0x26
	.long	.LASF770
	.byte	0x5
	.uleb128 0x34
	.long	.LASF771
	.byte	0x5
	.uleb128 0x35
	.long	.LASF772
	.byte	0x5
	.uleb128 0x36
	.long	.LASF773
	.byte	0x5
	.uleb128 0x37
	.long	.LASF774
	.byte	0x5
	.uleb128 0x38
	.long	.LASF775
	.byte	0x5
	.uleb128 0x39
	.long	.LASF776
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF777
	.byte	0x5
	.uleb128 0x46
	.long	.LASF778
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF779
	.byte	0x5
	.uleb128 0x69
	.long	.LASF780
	.byte	0x5
	.uleb128 0x71
	.long	.LASF781
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF782
	.byte	0x5
	.uleb128 0x97
	.long	.LASF783
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF784
	.byte	0x5
	.uleb128 0xab
	.long	.LASF785
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF786
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.71.39700ac5536cfafa1b6db501afc46864,comdat
.Ldebug_macro33:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x47
	.long	.LASF787
	.byte	0x5
	.uleb128 0x51
	.long	.LASF788
	.byte	0x5
	.uleb128 0x56
	.long	.LASF789
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF790
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF791
	.byte	0x5
	.uleb128 0x60
	.long	.LASF792
	.byte	0x5
	.uleb128 0x327
	.long	.LASF793
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF615:
	.string	"INT32_MAX (2147483647)"
.LASF739:
	.string	"_IOFBF 0"
.LASF679:
	.string	"IS_NIL(value) ((value).type == VAL_NIL)"
.LASF812:
	.string	"char"
.LASF559:
	.string	"__STD_TYPE typedef"
.LASF534:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF813:
	.string	"int8_t"
.LASF225:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF283:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF924:
	.string	"chunk"
.LASF760:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF51:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF865:
	.string	"OP_LESS"
.LASF108:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF799:
	.string	"size_t"
.LASF826:
	.string	"VAL_INT"
.LASF674:
	.string	"value_h "
.LASF496:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF753:
	.string	"stdin stdin"
.LASF220:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF742:
	.string	"BUFSIZ 8192"
.LASF780:
	.string	"__f64(x) x ##f64"
.LASF93:
	.string	"__SIZE_WIDTH__ 64"
.LASF506:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF282:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF19:
	.string	"__LP64__ 1"
.LASF528:
	.string	"__stub_sigreturn "
.LASF423:
	.string	"__USE_XOPEN2K8XSI"
.LASF744:
	.string	"SEEK_SET 0"
.LASF214:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF492:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF917:
	.string	"_IO_codecvt"
.LASF434:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF471:
	.string	"__flexarr []"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF661:
	.string	"INT16_C(c) c"
.LASF815:
	.string	"int32_t"
.LASF337:
	.string	"__unix 1"
.LASF445:
	.string	"__GNU_LIBRARY__"
.LASF139:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF170:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF937:
	.string	"disassembleInstruction"
.LASF897:
	.string	"_IO_save_end"
.LASF98:
	.string	"__INTMAX_WIDTH__ 64"
.LASF681:
	.string	"IS_NUMBER(value) ((value).type != VAL_NIL && (value).type != VAL_BOOL);"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF273:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF162:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF814:
	.string	"int16_t"
.LASF200:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF404:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF36:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF871:
	.string	"OP_EXPONENTIATE"
.LASF821:
	.string	"VAL_UNDEFINED"
.LASF123:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF929:
	.string	"constant"
.LASF350:
	.string	"true 1"
.LASF346:
	.string	"chunk_h "
.LASF630:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF696:
	.string	"AS_UCHAR(value) ((value).as.uCh)"
.LASF890:
	.string	"_IO_write_base"
.LASF483:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF290:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF602:
	.string	"__STD_TYPE"
.LASF315:
	.string	"__x86_64 1"
.LASF640:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF459:
	.string	"__P(args) args"
.LASF685:
	.string	"IS_UINT(value) ((value).type == VAL_UINT)"
.LASF906:
	.string	"_lock"
.LASF367:
	.string	"__SIZE_T__ "
.LASF202:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF935:
	.string	"_IO_FILE"
.LASF199:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF105:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF572:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF400:
	.string	"__need_wchar_t"
.LASF196:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF703:
	.string	"AS_ULONGLONG(value) ((value).as.uLnglng)"
.LASF782:
	.string	"__f64x(x) x ##f64x"
.LASF846:
	.string	"type"
.LASF644:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF361:
	.string	"_BSD_PTRDIFF_T_ "
.LASF767:
	.string	"__HAVE_FLOAT32 1"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF895:
	.string	"_IO_save_base"
.LASF665:
	.string	"UINT16_C(c) c"
.LASF211:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF601:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF382:
	.string	"__size_t "
.LASF609:
	.string	"INT8_MIN (-128)"
.LASF597:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF556:
	.string	"__ULONG32_TYPE unsigned int"
.LASF717:
	.string	"LONGLONG_VAL(value) ((Value){VAL_LONGLONG, {.lnglng = value}})"
.LASF449:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF473:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF371:
	.string	"_T_SIZE "
.LASF168:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF414:
	.string	"__USE_POSIX2"
.LASF618:
	.string	"UINT16_MAX (65535)"
.LASF281:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF639:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF899:
	.string	"_chain"
.LASF333:
	.string	"__CET__ 3"
.LASF235:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF426:
	.string	"__USE_FILE_OFFSET64"
.LASF210:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF903:
	.string	"_cur_column"
.LASF859:
	.string	"OP_SET_GLOBAL"
.LASF413:
	.string	"__USE_POSIX"
.LASF269:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF401:
	.string	"NULL"
.LASF600:
	.string	"_BITS_TIME64_H 1"
.LASF255:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF656:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF523:
	.string	"__stub_fchflags "
.LASF304:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF40:
	.string	"__INTMAX_TYPE__ long int"
.LASF581:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF771:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF436:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF417:
	.string	"__USE_XOPEN"
.LASF138:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF422:
	.string	"__USE_XOPEN2K8"
.LASF248:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF491:
	.string	"__always_inline"
.LASF369:
	.string	"_SYS_SIZE_T_H "
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF432:
	.string	"__GLIBC_USE_ISOC2X"
.LASF611:
	.string	"INT32_MIN (-2147483647-1)"
.LASF319:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF447:
	.string	"__GLIBC__ 2"
.LASF774:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF794:
	.string	"long int"
.LASF544:
	.string	"__TIMESIZE __WORDSIZE"
.LASF541:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF242:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF347:
	.string	"common_h "
.LASF249:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF437:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF589:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF279:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF366:
	.string	"__size_t__ "
.LASF224:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF213:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF365:
	.string	"__need_ptrdiff_t"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF294:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF599:
	.string	"__FD_SETSIZE 1024"
.LASF261:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF916:
	.string	"_IO_marker"
.LASF586:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF198:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF863:
	.string	"OP_EQUAL"
.LASF752:
	.string	"FOPEN_MAX 16"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF646:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF580:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF701:
	.string	"AS_FLOAT(value) ((value).as.flt)"
.LASF362:
	.string	"___int_ptrdiff_t_h "
.LASF378:
	.string	"_SIZE_T_DECLARED "
.LASF461:
	.string	"__CONCAT(x,y) x ## y"
.LASF754:
	.string	"stdout stdout"
.LASF141:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF231:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF155:
	.string	"__FLT_MAX_EXP__ 128"
.LASF342:
	.string	"__STDC_IEC_559__ 1"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF480:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF653:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF673:
	.string	"UINT8_COUNT (UINT8_MAX + 1)"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF118:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF778:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF406:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF341:
	.string	"_STDC_PREDEF_H 1"
.LASF883:
	.string	"lineCapacity"
.LASF16:
	.string	"__PIE__ 2"
.LASF218:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF275:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF474:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF532:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF791:
	.string	"EXIT_SUCCESS 0"
.LASF853:
	.string	"OP_CONSTANT_LONG"
.LASF154:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF444:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF157:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF680:
	.string	"IS_BOOL(value) ((value).type == VAL_BOOL)"
.LASF718:
	.string	"ULONGLONG_VAL(value) ((Value){VAL_ULONGLONG, {.uLnglng = value}})"
.LASF801:
	.string	"signed char"
.LASF817:
	.string	"uint8_t"
.LASF546:
	.string	"__U16_TYPE unsigned short int"
.LASF204:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF463:
	.string	"__ptr_t void *"
.LASF287:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF470:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF918:
	.string	"_IO_wide_data"
.LASF594:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF561:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF297:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF92:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF124:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF723:
	.string	"__need___va_list "
.LASF708:
	.string	"NIL_VAL ((Value){VAL_NIL, {.dbl = 0}})"
.LASF577:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF246:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF879:
	.string	"LineStart"
.LASF133:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF579:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF379:
	.string	"___int_size_t_h "
.LASF440:
	.string	"__USE_ISOC99 1"
.LASF203:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF156:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF460:
	.string	"__PMT(args) args"
.LASF280:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF631:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF252:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF827:
	.string	"VAL_UINT"
.LASF543:
	.string	"_BITS_TYPES_H 1"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF550:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF127:
	.string	"__UINT32_C(c) c ## U"
.LASF862:
	.string	"OP_GET_LOCAL"
.LASF775:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF330:
	.string	"__SSE2_MATH__ 1"
.LASF95:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF610:
	.string	"INT16_MIN (-32767-1)"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF695:
	.string	"AS_CHAR(value) ((value).as.ch)"
.LASF842:
	.string	"_Bool"
.LASF120:
	.string	"__INT64_C(c) c ## L"
.LASF499:
	.string	"__restrict_arr __restrict"
.LASF521:
	.string	"__stub___compat_bdflush "
.LASF289:
	.string	"__STRICT_ANSI__ 1"
.LASF375:
	.string	"_SIZE_T_DEFINED_ "
.LASF468:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
.LASF587:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF230:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF715:
	.string	"ULONG_VAL(value) ((Value){VAL_ULONG, {.uLng = value}})"
.LASF839:
	.string	"lnglng"
.LASF443:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF626:
	.string	"INT_LEAST16_MAX (32767)"
.LASF481:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF195:
	.string	"__FLT32_DIG__ 6"
.LASF624:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF291:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF764:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF756:
	.string	"__need_wchar_t "
.LASF64:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF825:
	.string	"VAL_UCHAR"
.LASF938:
	.string	"disassembleChunk"
.LASF676:
	.string	"__need_size_t "
.LASF831:
	.string	"VAL_LONGLONG"
.LASF549:
	.string	"__SLONGWORD_TYPE long int"
.LASF571:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF515:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF848:
	.string	"capacity"
.LASF316:
	.string	"__x86_64__ 1"
.LASF936:
	.string	"_IO_lock_t"
.LASF670:
	.string	"_GCC_WRAP_STDINT_H "
.LASF805:
	.string	"__uint16_t"
.LASF874:
	.string	"OP_PUTS"
.LASF420:
	.string	"__USE_XOPEN2K"
.LASF525:
	.string	"__stub_lchmod "
.LASF106:
	.string	"__UINT8_MAX__ 0xff"
.LASF160:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF253:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF788:
	.string	"__lldiv_t_defined 1"
.LASF494:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF537:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF176:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF714:
	.string	"LONG_VAL(value) ((Value){VAL_LONG, {.lng = value}})"
.LASF228:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF705:
	.string	"AS_DOUBLELONG(value) ((value).as.dbllng)"
.LASF331:
	.string	"__SEG_FS 1"
.LASF693:
	.string	"IS_OBJ(value) ((value).type == VAL_OBJ)"
.LASF637:
	.string	"INT_FAST8_MAX (127)"
.LASF625:
	.string	"INT_LEAST8_MAX (127)"
.LASF835:
	.string	"VAL_OBJ"
.LASF73:
	.string	"__GXX_ABI_VERSION 1013"
.LASF671:
	.string	"DEBUG_PRINT_CODE "
.LASF113:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF887:
	.string	"_IO_read_ptr"
.LASF226:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF691:
	.string	"IS_DOUBLE(value) ((value).type == VAL_DOUBLE)"
.LASF666:
	.string	"UINT32_C(c) c ## U"
.LASF645:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF415:
	.string	"__USE_POSIX199309"
.LASF616:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF344:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF101:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF784:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF72:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF755:
	.string	"stderr stderr"
.LASF730:
	.string	"__FILE_defined 1"
.LASF733:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF635:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF448:
	.string	"__GLIBC_MINOR__ 31"
.LASF919:
	.string	"stdin"
.LASF648:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF419:
	.string	"__USE_UNIX98"
.LASF61:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF435:
	.string	"__KERNEL_STRICT_NAMES "
.LASF565:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF738:
	.string	"_IO_USER_LOCK 0x8000"
.LASF299:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF14:
	.string	"__PIC__ 2"
.LASF303:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF898:
	.string	"_markers"
.LASF339:
	.string	"__ELF__ 1"
.LASF80:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF872:
	.string	"OP_NOT"
.LASF207:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF750:
	.string	"FILENAME_MAX 4096"
.LASF633:
	.string	"INT_FAST8_MIN (-128)"
.LASF192:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF527:
	.string	"__stub_setlogin "
.LASF268:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF596:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF241:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF540:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF725:
	.string	"__GNUC_VA_LIST "
.LASF866:
	.string	"OP_ADD"
.LASF349:
	.string	"bool _Bool"
.LASF721:
	.string	"OBJ_VAL(object) ((Value){VAL_OBJ, {.obj = (Obj*)object}})"
.LASF802:
	.string	"__uint8_t"
.LASF100:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF122:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF575:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF789:
	.string	"RAND_MAX 2147483647"
.LASF262:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF747:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF307:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF642:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF172:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF535:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF508:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF748:
	.string	"L_tmpnam 20"
.LASF727:
	.string	"____mbstate_t_defined 1"
.LASF115:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF149:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF810:
	.string	"__off_t"
.LASF643:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF634:
	.string	"INT_FAST16_MIN (-9223372036854775807L-1)"
.LASF636:
	.string	"INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF277:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF536:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X 0"
.LASF402:
	.string	"NULL ((void *)0)"
.LASF867:
	.string	"OP_SUBTRACT"
.LASF497:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF334:
	.string	"__gnu_linux__ 1"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF542:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF555:
	.string	"__SLONG32_TYPE int"
.LASF766:
	.string	"__HAVE_FLOAT16 0"
.LASF110:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF576:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF772:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF858:
	.string	"OP_DEFINE_GLOBAL"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF407:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF409:
	.string	"__USE_ISOC11"
.LASF509:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF485:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF240:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF607:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF869:
	.string	"OP_DIVIDE"
.LASF678:
	.string	"IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)"
.LASF704:
	.string	"AS_DOUBLE(value) ((value).as.dbl)"
.LASF121:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF163:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF343:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF809:
	.string	"__uint64_t"
.LASF102:
	.string	"__INT8_MAX__ 0x7f"
.LASF649:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF578:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF306:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF884:
	.string	"lines"
.LASF617:
	.string	"UINT8_MAX (255)"
.LASF654:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF453:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF852:
	.string	"OP_CONSTANT"
.LASF146:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF15:
	.string	"__pie__ 2"
.LASF3:
	.string	"__GNUC__ 9"
.LASF807:
	.string	"__uint32_t"
.LASF441:
	.string	"__USE_ISOC95 1"
.LASF682:
	.string	"IS_CHAR(value) ((value).type == VAL_CHAR)"
.LASF519:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF189:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF266:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF370:
	.string	"_T_SIZE_ "
.LASF148:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF85:
	.string	"__SCHAR_WIDTH__ 8"
.LASF927:
	.string	"longConstantInstruction"
.LASF472:
	.string	"__glibc_c99_flexarr_available 1"
.LASF889:
	.string	"_IO_read_base"
.LASF223:
	.string	"__FLT128_DIG__ 33"
.LASF712:
	.string	"INT_VAL(value) ((Value){VAL_INT, {.in = value}})"
.LASF323:
	.string	"__k8__ 1"
.LASF18:
	.string	"_LP64 1"
.LASF878:
	.string	"line"
.LASF131:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF464:
	.string	"__BEGIN_DECLS "
.LASF926:
	.string	"simpleInstruction"
.LASF454:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF677:
	.string	"__need_NULL "
.LASF408:
	.string	"_FEATURES_H 1"
.LASF914:
	.string	"_unused2"
.LASF194:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF452:
	.string	"__LEAF , __leaf__"
.LASF605:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF482:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF296:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF169:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF560:
	.string	"_BITS_TYPESIZES_H 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF247:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_MANT_DIG__ 24"
.LASF838:
	.string	"uLng"
.LASF684:
	.string	"IS_INT(value) ((value).type == VAL_INT)"
.LASF834:
	.string	"VAL_DOUBLELONG"
.LASF94:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF216:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF357:
	.string	"_T_PTRDIFF_ "
.LASF902:
	.string	"_old_offset"
.LASF428:
	.string	"__USE_ATFILE"
.LASF96:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF239:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF326:
	.string	"__SSE__ 1"
.LASF353:
	.string	"_STDDEF_H "
.LASF692:
	.string	"IS_DOUBLELONG(value) ((value).type == VAL_DOUBLELONG)"
.LASF293:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF595:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF233:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF690:
	.string	"IS_ULONGLONG(value) ((value).type == VAL_ULONGLONG)"
.LASF387:
	.string	"_T_WCHAR_ "
.LASF707:
	.string	"UNDEFINED_VAL ((Value){VAL_UNDEFINED})"
.LASF116:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF513:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF882:
	.string	"lineCount"
.LASF873:
	.string	"OP_NEGATE"
.LASF114:
	.string	"__INT16_C(c) c"
.LASF301:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF383:
	.string	"__need_size_t"
.LASF373:
	.string	"_SIZE_T_ "
.LASF150:
	.string	"__FLT_RADIX__ 2"
.LASF922:
	.string	"long long int"
.LASF43:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF384:
	.string	"__wchar_t__ "
.LASF193:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF403:
	.string	"__need_NULL"
.LASF190:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF314:
	.string	"__amd64__ 1"
.LASF89:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF356:
	.string	"_PTRDIFF_T "
.LASF405:
	.string	"_STDINT_H 1"
.LASF777:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF132:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF910:
	.string	"_freeres_list"
.LASF302:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF932:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF488:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF504:
	.string	"__attribute_copy__"
.LASF212:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF824:
	.string	"VAL_CHAR"
.LASF389:
	.string	"__WCHAR_T "
.LASF876:
	.string	"OP_RETURN"
.LASF844:
	.string	"double"
.LASF134:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF372:
	.string	"__SIZE_T "
.LASF457:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF41:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF892:
	.string	"_IO_write_end"
.LASF836:
	.string	"ValueType"
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF486:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF310:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF130:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF503:
	.string	"__attribute_nonstring__ __attribute__ ((__nonstring__))"
.LASF451:
	.string	"__PMT"
.LASF851:
	.string	"ValueArray"
.LASF308:
	.string	"__SSP_STRONG__ 3"
.LASF763:
	.string	"__f128(x) x ##f128"
.LASF140:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF785:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF582:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF551:
	.string	"__SQUAD_TYPE long int"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF117:
	.string	"__INT32_C(c) c"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF421:
	.string	"__USE_XOPEN2KXSI"
.LASF70:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF430:
	.string	"__USE_FORTIFY_LEVEL"
.LASF355:
	.string	"_ANSI_STDDEF_H "
.LASF743:
	.string	"EOF (-1)"
.LASF286:
	.string	"__USER_LABEL_PREFIX__ "
.LASF849:
	.string	"count"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF260:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF322:
	.string	"__k8 1"
.LASF737:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF518:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF893:
	.string	"_IO_buf_base"
.LASF759:
	.string	"__HAVE_FLOAT128 1"
.LASF830:
	.string	"VAL_FLOAT"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF798:
	.string	"unsigned int"
.LASF604:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF63:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF728:
	.string	"_____fpos64_t_defined 1"
.LASF870:
	.string	"OP_MODULATE"
.LASF153:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF221:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF502:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF427:
	.string	"__USE_MISC"
.LASF243:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF424:
	.string	"__USE_LARGEFILE"
.LASF152:
	.string	"__FLT_DIG__ 6"
.LASF348:
	.string	"_STDBOOL_H "
.LASF868:
	.string	"OP_MULTIPLY"
.LASF398:
	.string	"_WCHAR_T_DECLARED "
.LASF147:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF588:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF158:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF74:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF864:
	.string	"OP_GREATER"
.LASF912:
	.string	"__pad5"
.LASF548:
	.string	"__U32_TYPE unsigned int"
.LASF358:
	.string	"_T_PTRDIFF "
.LASF88:
	.string	"__LONG_WIDTH__ 64"
.LASF479:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF227:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF145:
	.string	"__GCC_IEC_559 2"
.LASF719:
	.string	"DOUBLE_VAL(value) ((Value){VAL_DOUBLE, {.dbl = value}})"
.LASF97:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF501:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF524:
	.string	"__stub_gtty "
.LASF385:
	.string	"__WCHAR_T__ "
.LASF628:
	.string	"INT_LEAST64_MAX (__INT64_C(9223372036854775807))"
.LASF312:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF585:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF621:
	.string	"INT_LEAST8_MIN (-128)"
.LASF933:
	.string	"Bytecode/debug/debug.c"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF397:
	.string	"_GCC_WCHAR_T "
.LASF562:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF490:
	.string	"__wur "
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF351:
	.string	"false 0"
.LASF86:
	.string	"__SHRT_WIDTH__ 16"
.LASF278:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF886:
	.string	"_flags"
.LASF860:
	.string	"OP_GET_GLOBAL"
.LASF219:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF364:
	.string	"_PTRDIFF_T_DECLARED "
.LASF877:
	.string	"offset"
.LASF324:
	.string	"__code_model_small__ 1"
.LASF446:
	.string	"__GNU_LIBRARY__ 6"
.LASF564:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF238:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF164:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF295:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF689:
	.string	"IS_LONGLONG(value) ((value).type == VAL_LONGLONG)"
.LASF913:
	.string	"_mode"
.LASF573:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF455:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF512:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF104:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF511:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF462:
	.string	"__STRING(x) #x"
.LASF533:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF796:
	.string	"unsigned char"
.LASF505:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF776:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF908:
	.string	"_codecvt"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF129:
	.string	"__UINT64_C(c) c ## UL"
.LASF197:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF386:
	.string	"_WCHAR_T "
.LASF770:
	.string	"__HAVE_FLOAT128X 0"
.LASF161:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF264:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF726:
	.string	"_____fpos_t_defined 1"
.LASF363:
	.string	"_GCC_PTRDIFF_T "
.LASF526:
	.string	"__stub_revoke "
.LASF934:
	.string	"/mnt/d/coding portfolio/fortissimolanguage"
.LASF769:
	.string	"__HAVE_FLOAT32X 1"
.LASF456:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF517:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF368:
	.string	"_SIZE_T "
.LASF394:
	.string	"_WCHAR_T_H "
.LASF740:
	.string	"_IOLBF 1"
.LASF694:
	.string	"AS_BOOL(value) ((value).as.boolean)"
.LASF741:
	.string	"_IONBF 2"
.LASF623:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF78:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF729:
	.string	"____FILE_defined 1"
.LASF845:
	.string	"long double"
.LASF476:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF620:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF263:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF829:
	.string	"VAL_ULONG"
.LASF111:
	.string	"__INT8_C(c) c"
.LASF201:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF354:
	.string	"_STDDEF_H_ "
.LASF167:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF880:
	.string	"code"
.LASF915:
	.string	"FILE"
.LASF136:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF47:
	.string	"__INT32_TYPE__ int"
.LASF271:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF881:
	.string	"constants"
.LASF592:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF411:
	.string	"__USE_ISOC95"
.LASF651:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF410:
	.string	"__USE_ISOC99"
.LASF709:
	.string	"BOOL_VAL(value) ((Value){VAL_BOOL, {.boolean = value}})"
.LASF697:
	.string	"AS_INT(value) ((value).as.in)"
.LASF418:
	.string	"__USE_XOPEN_EXTENDED"
.LASF907:
	.string	"_offset"
.LASF762:
	.string	"__HAVE_FLOAT64X_LONG_DOUBLE 1"
.LASF191:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF305:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF292:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF244:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF6:
	.string	"__VERSION__ \"9.3.0\""
.LASF632:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF722:
	.string	"_STDIO_H 1"
.LASF234:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF608:
	.string	"__intptr_t_defined "
.LASF48:
	.string	"__INT64_TYPE__ long int"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF901:
	.string	"_flags2"
.LASF591:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF250:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF833:
	.string	"VAL_DOUBLE"
.LASF745:
	.string	"SEEK_CUR 1"
.LASF75:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF412:
	.string	"__USE_ISOCXX11"
.LASF376:
	.string	"_SIZE_T_DEFINED "
.LASF81:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF818:
	.string	"uint16_t"
.LASF359:
	.string	"__PTRDIFF_T "
.LASF257:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF69:
	.string	"__INTPTR_TYPE__ long int"
.LASF629:
	.string	"UINT_LEAST8_MAX (255)"
.LASF861:
	.string	"OP_SET_LOCAL"
.LASF795:
	.string	"long unsigned int"
.LASF768:
	.string	"__HAVE_FLOAT64 1"
.LASF931:
	.string	"instruction"
.LASF856:
	.string	"OP_FALSE"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF237:
	.string	"__FLT32X_DIG__ 15"
.LASF688:
	.string	"IS_FLOAT(value) ((value).type == VAL_FLOAT)"
.LASF433:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF416:
	.string	"__USE_POSIX199506"
.LASF683:
	.string	"IS_UCHAR(value) ((value).type == VAL_UCHAR)"
.LASF662:
	.string	"INT32_C(c) c"
.LASF773:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF142:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF667:
	.string	"UINT64_C(c) c ## UL"
.LASF911:
	.string	"_freeres_buf"
.LASF317:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF746:
	.string	"SEEK_END 2"
.LASF328:
	.string	"__FXSR__ 1"
.LASF507:
	.string	"__WORDSIZE 64"
.LASF702:
	.string	"AS_LONGLONG(value) ((value).as.lnglng)"
.LASF832:
	.string	"VAL_ULONGLONG"
.LASF510:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF309:
	.string	"__SIZEOF_INT128__ 16"
.LASF13:
	.string	"__pic__ 2"
.LASF530:
	.string	"__stub_stty "
.LASF855:
	.string	"OP_TRUE"
.LASF37:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF569:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF270:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF469:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF119:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF757:
	.string	"_STDLIB_H 1"
.LASF374:
	.string	"_BSD_SIZE_T_ "
.LASF467:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF390:
	.string	"_WCHAR_T_ "
.LASF793:
	.string	"__COMPAR_FN_T "
.LASF325:
	.string	"__MMX__ 1"
.LASF857:
	.string	"OP_POP"
.LASF388:
	.string	"_T_WCHAR "
.LASF547:
	.string	"__S32_TYPE int"
.LASF619:
	.string	"UINT32_MAX (4294967295U)"
.LASF84:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF803:
	.string	"__int16_t"
.LASF896:
	.string	"_IO_backup_base"
.LASF905:
	.string	"_shortbuf"
.LASF396:
	.string	"__INT_WCHAR_T_H "
.LASF657:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF675:
	.string	"_STRING_H 1"
.LASF603:
	.string	"_BITS_WCHAR_H 1"
.LASF699:
	.string	"AS_LONG(value) ((value).as.lng)"
.LASF663:
	.string	"INT64_C(c) c ## L"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF391:
	.string	"_BSD_WCHAR_T_ "
.LASF173:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF758:
	.string	"_BITS_FLOATN_H "
.LASF258:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF669:
	.string	"UINTMAX_C(c) c ## UL"
.LASF529:
	.string	"__stub_sstk "
.LASF800:
	.string	"__int8_t"
.LASF79:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF811:
	.string	"__off64_t"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF259:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF4:
	.string	"__GNUC_MINOR__ 3"
.LASF850:
	.string	"values"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF300:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF925:
	.string	"byteInstruction"
.LASF761:
	.string	"__HAVE_FLOAT64X 1"
.LASF245:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF522:
	.string	"__stub_chflags "
.LASF429:
	.string	"__USE_GNU"
.LASF381:
	.string	"_SIZET_ "
.LASF590:
	.string	"__TIMER_T_TYPE void *"
.LASF178:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF539:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF327:
	.string	"__SSE2__ 1"
.LASF232:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF894:
	.string	"_IO_buf_end"
.LASF584:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF516:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF765:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF495:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF285:
	.string	"__REGISTER_PREFIX__ "
.LASF284:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF166:
	.string	"__DBL_DIG__ 15"
.LASF779:
	.string	"__f32(x) x ##f32"
.LASF487:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF923:
	.string	"name"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF783:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF641:
	.string	"UINT_FAST8_MAX (255)"
.LASF217:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF716:
	.string	"FLOAT_VAL(value) ((Value){VAL_FLOAT, {.flt = value}})"
.LASF465:
	.string	"__END_DECLS "
.LASF332:
	.string	"__SEG_GS 1"
.LASF340:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF751:
	.string	"FOPEN_MAX"
.LASF655:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF320:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF612:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF109:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF921:
	.string	"stderr"
.LASF329:
	.string	"__SSE_MATH__ 1"
.LASF804:
	.string	"short int"
.LASF450:
	.string	"_SYS_CDEFS_H 1"
.LASF125:
	.string	"__UINT16_C(c) c"
.LASF854:
	.string	"OP_NIL"
.LASF820:
	.string	"uint64_t"
.LASF438:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF498:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF288:
	.string	"__NO_INLINE__ 1"
.LASF660:
	.string	"INT8_C(c) c"
.LASF613:
	.string	"INT8_MAX (127)"
.LASF254:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF477:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF177:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF99:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF208:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF62:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF720:
	.string	"DOUBLELONG_VAL(value) ((Value){VAL_DOUBLELONG, {.dbllng = value}})"
.LASF700:
	.string	"AS_ULONG(value) ((value).as.uLng)"
.LASF552:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF554:
	.string	"__UWORD_TYPE unsigned long int"
.LASF274:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF904:
	.string	"_vtable_offset"
.LASF171:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF360:
	.string	"_PTRDIFF_T_ "
.LASF475:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF393:
	.string	"_WCHAR_T_DEFINED "
.LASF103:
	.string	"__INT16_MAX__ 0x7fff"
.LASF478:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF553:
	.string	"__SWORD_TYPE long int"
.LASF822:
	.string	"VAL_NIL"
.LASF87:
	.string	"__INT_WIDTH__ 32"
.LASF484:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF222:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF566:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF650:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF647:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF558:
	.string	"__U64_TYPE unsigned long int"
.LASF735:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF792:
	.string	"MB_CUR_MAX (__ctype_get_mb_cur_max ())"
.LASF781:
	.string	"__f32x(x) x ##f32x"
.LASF267:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF711:
	.string	"UCHAR_VAL(value) ((Value){VAL_UCHAR, {.uCh = value}})"
.LASF545:
	.string	"__S16_TYPE short int"
.LASF311:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF659:
	.string	"WINT_MAX (4294967295u)"
.LASF706:
	.string	"AS_OBJ(value) ((value).as.obj)"
.LASF0:
	.string	"__STDC__ 1"
.LASF808:
	.string	"__int64_t"
.LASF71:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF489:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF493:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF205:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF664:
	.string	"UINT8_C(c) c"
.LASF265:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF52:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF823:
	.string	"VAL_BOOL"
.LASF395:
	.string	"___int_wchar_t_h "
.LASF298:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF514:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF583:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF574:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF229:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF888:
	.string	"_IO_read_end"
.LASF734:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF137:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF787:
	.string	"__ldiv_t_defined 1"
.LASF687:
	.string	"IS_ULONG(value) ((value).type == VAL_ULONG)"
.LASF215:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF380:
	.string	"_GCC_SIZE_T "
.LASF828:
	.string	"VAL_LONG"
.LASF91:
	.string	"__WINT_WIDTH__ 32"
.LASF797:
	.string	"short unsigned int"
.LASF77:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF847:
	.string	"Value"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF399:
	.string	"_BSD_WCHAR_T_"
.LASF627:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF819:
	.string	"uint32_t"
.LASF439:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF563:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF622:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF83:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF144:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF321:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF900:
	.string	"_fileno"
.LASF466:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF313:
	.string	"__amd64 1"
.LASF188:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF338:
	.string	"__unix__ 1"
.LASF458:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF520:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF614:
	.string	"INT16_MAX (32767)"
.LASF658:
	.string	"WINT_MIN (0u)"
.LASF909:
	.string	"_wide_data"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF567:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF82:
	.string	"__WINT_MIN__ 0U"
.LASF568:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF209:
	.string	"__FLT64_DIG__ 15"
.LASF276:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF159:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF112:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF736:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF377:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF606:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF843:
	.string	"float"
.LASF920:
	.string	"stdout"
.LASF206:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF638:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF538:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF336:
	.string	"__linux__ 1"
.LASF442:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF557:
	.string	"__S64_TYPE long int"
.LASF930:
	.string	"constantInstruction"
.LASF928:
	.string	"slot"
.LASF352:
	.string	"__bool_true_false_are_defined 1"
.LASF672:
	.string	"DEBUG_TRACE_EXECUTION "
.LASF593:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF174:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF724:
	.string	"__need___va_list"
.LASF891:
	.string	"_IO_write_ptr"
.LASF318:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF126:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF840:
	.string	"uLnglng"
.LASF731:
	.string	"__struct_FILE_defined 1"
.LASF806:
	.string	"__int32_t"
.LASF816:
	.string	"int64_t"
.LASF790:
	.string	"EXIT_FAILURE 1"
.LASF786:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF570:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF698:
	.string	"AS_UINT(value) ((value).as.uIn)"
.LASF431:
	.string	"__KERNEL_STRICT_NAMES"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF236:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF90:
	.string	"__WCHAR_WIDTH__ 32"
.LASF425:
	.string	"__USE_LARGEFILE64"
.LASF732:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF885:
	.string	"Chunk"
.LASF837:
	.string	"boolean"
.LASF251:
	.string	"__FLT64X_DIG__ 18"
.LASF713:
	.string	"UINT_VAL(value) ((Value){VAL_UINT, {.uIn = value}})"
.LASF272:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF686:
	.string	"IS_LONG(value) ((value).type == VAL_LONG)"
.LASF875:
	.string	"OP_JUMP_IF_FALSE"
.LASF143:
	.string	"__INTPTR_WIDTH__ 64"
.LASF335:
	.string	"__linux 1"
.LASF392:
	.string	"_WCHAR_T_DEFINED_ "
.LASF135:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF710:
	.string	"CHAR_VAL(value) ((Value){VAL_CHAR, {.ch = value}})"
.LASF175:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF256:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF531:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF598:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF841:
	.string	"dbllng"
.LASF652:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF165:
	.string	"__DBL_MANT_DIG__ 53"
.LASF668:
	.string	"INTMAX_C(c) c ## L"
.LASF345:
	.string	"debug_h "
.LASF500:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF76:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF128:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF107:
	.string	"__UINT16_MAX__ 0xffff"
.LASF749:
	.string	"TMP_MAX 238328"
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
