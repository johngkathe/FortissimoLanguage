	.file	"chunk.c"
	.text
.Ltext0:
	.globl	addConstant
	.type	addConstant, @function
addConstant:
.LFB1:
	.file 1 "Bytecode/chunk/chunk.c"
	.loc 1 7 47
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 8 5
	movq	-8(%rbp), %rax
	addq	$16, %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	writeValueArray@PLT
	addq	$32, %rsp
	.loc 1 9 28
	movq	-8(%rbp), %rax
	movzwl	18(%rax), %eax
	.loc 1 9 35
	subl	$1, %eax
	.loc 1 10 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	addConstant, .-addConstant
	.globl	initChunk
	.type	initChunk, @function
initChunk:
.LFB2:
	.loc 1 12 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 13 18
	movq	-8(%rbp), %rax
	movw	$0, (%rax)
	.loc 1 14 21
	movq	-8(%rbp), %rax
	movw	$0, 2(%rax)
	.loc 1 15 17
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 16 22
	movq	-8(%rbp), %rax
	movw	$0, 32(%rax)
	.loc 1 17 25
	movq	-8(%rbp), %rax
	movw	$0, 34(%rax)
	.loc 1 18 18
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 1 19 5
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	initValueArray@PLT
	.loc 1 20 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	initChunk, .-initChunk
	.globl	freeChunk
	.type	freeChunk, @function
freeChunk:
.LFB3:
	.loc 1 22 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 23 53
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	.loc 1 23 5
	movswq	%ax, %rcx
	.loc 1 23 21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 23 5
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	reallocate@PLT
	.loc 1 24 55
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	movswq	%ax, %rax
	.loc 1 24 5
	leaq	(%rax,%rax), %rcx
	.loc 1 24 21
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 24 5
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	reallocate@PLT
	.loc 1 25 5
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	freeValueArray@PLT
	.loc 1 26 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	initChunk
	.loc 1 27 56
	movq	-8(%rbp), %rax
	movzwl	34(%rax), %eax
	movswq	%ax, %rax
	.loc 1 27 5
	leaq	0(,%rax,4), %rcx
	.loc 1 27 21
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 27 5
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	reallocate@PLT
	.loc 1 28 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	freeChunk, .-freeChunk
	.globl	getLine
	.type	getLine, @function
getLine:
.LFB4:
	.loc 1 30 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movw	%ax, -28(%rbp)
	.loc 1 31 13
	movw	$0, -14(%rbp)
	.loc 1 32 24
	movq	-24(%rbp), %rax
	movzwl	32(%rax), %eax
	.loc 1 32 36
	subl	$1, %eax
	.loc 1 32 13
	movw	%ax, -12(%rbp)
.L11:
.LBB2:
	.loc 1 35 30
	movswl	-14(%rbp), %edx
	movswl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 35 36
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	.loc 1 35 17
	movw	%ax, -10(%rbp)
	.loc 1 36 33
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 36 40
	movswq	-10(%rbp), %rdx
	salq	$2, %rdx
	.loc 1 36 20
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 37 30
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 37 11
	cmpw	%ax, -28(%rbp)
	jge	.L6
	.loc 1 38 23
	movzwl	-10(%rbp), %eax
	subl	$1, %eax
	.loc 1 38 17
	movw	%ax, -12(%rbp)
	jmp	.L11
.L6:
	.loc 1 39 23
	movswl	-10(%rbp), %edx
	.loc 1 39 31
	movq	-24(%rbp), %rax
	movzwl	32(%rax), %eax
	cwtl
	.loc 1 39 43
	subl	$1, %eax
	.loc 1 39 18
	cmpl	%eax, %edx
	je	.L8
	.loc 1 39 69 discriminator 1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 39 76 discriminator 1
	movswq	-10(%rbp), %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 39 85 discriminator 1
	movzwl	(%rax), %eax
	.loc 1 39 47 discriminator 1
	cmpw	%ax, -28(%rbp)
	jge	.L9
.L8:
	.loc 1 40 24
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	jmp	.L12
.L9:
	.loc 1 42 25
	movzwl	-10(%rbp), %eax
	addl	$1, %eax
	.loc 1 42 19
	movw	%ax, -14(%rbp)
.LBE2:
	.loc 1 34 12
	jmp	.L11
.L12:
	.loc 1 45 1 discriminator 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	getLine, .-getLine
	.globl	writeConstant
	.type	writeConstant, @function
writeConstant:
.LFB5:
	.loc 1 47 60
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
	.loc 1 48 17
	movq	-24(%rbp), %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	addConstant
	addq	$32, %rsp
	.loc 1 48 9
	cwtl
	movl	%eax, -4(%rbp)
	.loc 1 49 7
	cmpl	$255, -4(%rbp)
	jg	.L14
	.loc 1 50 9
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	writeChunk
	.loc 1 51 9
	movswl	-28(%rbp), %edx
	.loc 1 51 27
	movl	-4(%rbp), %eax
	.loc 1 51 9
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	writeChunk
	.loc 1 58 1
	jmp	.L16
.L14:
	.loc 1 53 9
	movswl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	writeChunk
	.loc 1 54 9
	movswl	-28(%rbp), %edx
	.loc 1 54 27
	movl	-4(%rbp), %eax
	.loc 1 54 9
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	writeChunk
	.loc 1 55 9
	movswl	-28(%rbp), %edx
	.loc 1 55 44
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	.loc 1 55 9
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	writeChunk
	.loc 1 56 9
	movswl	-28(%rbp), %edx
	.loc 1 56 44
	movl	-4(%rbp), %eax
	sarl	$16, %eax
	.loc 1 56 9
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	writeChunk
.L16:
	.loc 1 58 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	writeConstant, .-writeConstant
	.globl	writeChunk
	.type	writeChunk, @function
writeChunk:
.LFB6:
	.loc 1 60 58
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movb	%dl, -28(%rbp)
	movw	%ax, -32(%rbp)
	.loc 1 61 31
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	.loc 1 61 13
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %eax
	.loc 1 61 7
	cmpw	%ax, %dx
	jl	.L18
.LBB3:
	.loc 1 62 17
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, -12(%rbp)
	.loc 1 63 25
	cmpw	$7, -12(%rbp)
	jle	.L19
	.loc 1 63 66 discriminator 1
	movzwl	-12(%rbp), %eax
	addl	%eax, %eax
	.loc 1 63 25 discriminator 1
	movl	%eax, %edx
	jmp	.L20
.L19:
	.loc 1 63 25 is_stmt 0 discriminator 2
	movl	$8, %edx
.L20:
	.loc 1 63 25 discriminator 4
	movq	-24(%rbp), %rax
	movw	%dx, 2(%rax)
	.loc 1 64 114 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %eax
	.loc 1 64 33 discriminator 4
	movswq	%ax, %rdx
	movswq	-12(%rbp), %rcx
	.loc 1 64 49 discriminator 4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 64 33 discriminator 4
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	reallocate@PLT
	.loc 1 64 21 discriminator 4
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L18:
.LBE3:
	.loc 1 67 10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 67 22
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movswq	%ax, %rax
	.loc 1 67 16
	addq	%rax, %rdx
	.loc 1 67 31
	movzbl	-28(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 68 10
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 68 17
	addl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 70 13
	movq	-24(%rbp), %rax
	movzwl	32(%rax), %eax
	.loc 1 70 7
	testw	%ax, %ax
	jle	.L21
	.loc 1 70 37 discriminator 1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 70 50 discriminator 1
	movq	-24(%rbp), %rax
	movzwl	32(%rax), %eax
	movswq	%ax, %rax
	.loc 1 70 44 discriminator 1
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	.loc 1 70 66 discriminator 1
	movzwl	2(%rax), %eax
	movzwl	%ax, %edx
	.loc 1 70 72 discriminator 1
	movswl	-32(%rbp), %eax
	.loc 1 70 29 discriminator 1
	cmpl	%eax, %edx
	je	.L26
.L21:
	.loc 1 72 35
	movq	-24(%rbp), %rax
	movzwl	32(%rax), %edx
	.loc 1 72 13
	movq	-24(%rbp), %rax
	movzwl	34(%rax), %eax
	.loc 1 72 7
	cmpw	%ax, %dx
	jl	.L23
.LBB4:
	.loc 1 73 17
	movq	-24(%rbp), %rax
	movzwl	34(%rax), %eax
	movw	%ax, -10(%rbp)
	.loc 1 74 29
	cmpw	$7, -10(%rbp)
	jle	.L24
	.loc 1 74 70 discriminator 1
	movzwl	-10(%rbp), %eax
	addl	%eax, %eax
	.loc 1 74 29 discriminator 1
	movl	%eax, %edx
	jmp	.L25
.L24:
	.loc 1 74 29 is_stmt 0 discriminator 2
	movl	$8, %edx
.L25:
	.loc 1 74 29 discriminator 4
	movq	-24(%rbp), %rax
	movw	%dx, 34(%rax)
	.loc 1 75 122 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax
	movzwl	34(%rax), %eax
	movswq	%ax, %rax
	.loc 1 75 36 discriminator 4
	leaq	0(,%rax,4), %rdx
	movswq	-10(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	.loc 1 75 52 discriminator 4
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 75 36 discriminator 4
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	reallocate@PLT
	.loc 1 75 22 discriminator 4
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
.L23:
.LBE4:
	.loc 1 78 34
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 1 78 47
	movq	-24(%rbp), %rax
	movzwl	32(%rax), %eax
	.loc 1 78 58
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	movw	%si, 32(%rdx)
	movswq	%ax, %rax
	.loc 1 78 41
	salq	$2, %rax
	.loc 1 78 16
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 79 30
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 79 38
	subl	$1, %eax
	movl	%eax, %edx
	.loc 1 79 23
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 80 21
	movzwl	-32(%rbp), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 2(%rax)
	jmp	.L17
.L26:
	.loc 1 70 81
	nop
.L17:
	.loc 1 81 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	writeChunk, .-writeChunk
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "Bytecode/chunk/../memory/../../Language/object/object.h"
	.file 6 "Bytecode/chunk/../value/value.h"
	.file 7 "Bytecode/chunk/chunk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6b8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF876
	.byte	0xc
	.long	.LASF877
	.long	.LASF878
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF770
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF771
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF772
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF773
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF774
	.uleb128 0x4
	.long	.LASF776
	.byte	0x2
	.byte	0x25
	.byte	0x15
	.long	0x67
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF775
	.uleb128 0x4
	.long	.LASF777
	.byte	0x2
	.byte	0x26
	.byte	0x17
	.long	0x46
	.uleb128 0x4
	.long	.LASF778
	.byte	0x2
	.byte	0x27
	.byte	0x1a
	.long	0x86
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF779
	.uleb128 0x4
	.long	.LASF780
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x4d
	.uleb128 0x4
	.long	.LASF781
	.byte	0x2
	.byte	0x29
	.byte	0x14
	.long	0x3f
	.uleb128 0x4
	.long	.LASF782
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x54
	.uleb128 0x4
	.long	.LASF783
	.byte	0x2
	.byte	0x2c
	.byte	0x19
	.long	0x31
	.uleb128 0x4
	.long	.LASF784
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.long	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF785
	.uleb128 0x4
	.long	.LASF786
	.byte	0x3
	.byte	0x18
	.byte	0x12
	.long	0x5b
	.uleb128 0x4
	.long	.LASF787
	.byte	0x3
	.byte	0x19
	.byte	0x13
	.long	0x7a
	.uleb128 0x4
	.long	.LASF788
	.byte	0x3
	.byte	0x1a
	.byte	0x13
	.long	0x99
	.uleb128 0x4
	.long	.LASF789
	.byte	0x3
	.byte	0x1b
	.byte	0x13
	.long	0xb1
	.uleb128 0x4
	.long	.LASF790
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x6e
	.uleb128 0x4
	.long	.LASF791
	.byte	0x4
	.byte	0x19
	.byte	0x14
	.long	0x8d
	.uleb128 0x4
	.long	.LASF792
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0xa5
	.uleb128 0x4
	.long	.LASF793
	.byte	0x4
	.byte	0x1b
	.byte	0x14
	.long	0xbd
	.uleb128 0x5
	.string	"Obj"
	.byte	0x6
	.byte	0x9
	.byte	0x14
	.long	0x13c
	.uleb128 0x6
	.string	"Obj"
	.byte	0x10
	.byte	0x5
	.byte	0x14
	.byte	0x8
	.long	0x164
	.uleb128 0x7
	.long	.LASF794
	.byte	0x5
	.byte	0x15
	.byte	0xd
	.long	0x478
	.byte	0
	.uleb128 0x7
	.long	.LASF795
	.byte	0x5
	.byte	0x16
	.byte	0x11
	.long	0x484
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.long	0x54
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.long	0x1cd
	.uleb128 0x9
	.long	.LASF796
	.byte	0
	.uleb128 0x9
	.long	.LASF797
	.byte	0x1
	.uleb128 0x9
	.long	.LASF798
	.byte	0x2
	.uleb128 0x9
	.long	.LASF799
	.byte	0x3
	.uleb128 0x9
	.long	.LASF800
	.byte	0x4
	.uleb128 0x9
	.long	.LASF801
	.byte	0x5
	.uleb128 0x9
	.long	.LASF802
	.byte	0x6
	.uleb128 0x9
	.long	.LASF803
	.byte	0x7
	.uleb128 0x9
	.long	.LASF804
	.byte	0x8
	.uleb128 0x9
	.long	.LASF805
	.byte	0x9
	.uleb128 0x9
	.long	.LASF806
	.byte	0xa
	.uleb128 0x9
	.long	.LASF807
	.byte	0xb
	.uleb128 0x9
	.long	.LASF808
	.byte	0xc
	.uleb128 0x9
	.long	.LASF809
	.byte	0xd
	.uleb128 0x9
	.long	.LASF810
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	.LASF811
	.byte	0x6
	.byte	0x48
	.byte	0x3
	.long	0x164
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.byte	0x4c
	.byte	0x5
	.long	0x27d
	.uleb128 0xb
	.long	.LASF812
	.byte	0x6
	.byte	0x4d
	.byte	0xd
	.long	0x27d
	.uleb128 0xc
	.string	"ch"
	.byte	0x6
	.byte	0x4e
	.byte	0x10
	.long	0xd0
	.uleb128 0xc
	.string	"uCh"
	.byte	0x6
	.byte	0x4f
	.byte	0x11
	.long	0x100
	.uleb128 0xc
	.string	"in"
	.byte	0x6
	.byte	0x50
	.byte	0x11
	.long	0xdc
	.uleb128 0xc
	.string	"uIn"
	.byte	0x6
	.byte	0x51
	.byte	0x12
	.long	0x10c
	.uleb128 0xc
	.string	"lng"
	.byte	0x6
	.byte	0x52
	.byte	0x11
	.long	0xe8
	.uleb128 0xb
	.long	.LASF813
	.byte	0x6
	.byte	0x53
	.byte	0x12
	.long	0x118
	.uleb128 0xc
	.string	"flt"
	.byte	0x6
	.byte	0x54
	.byte	0xf
	.long	0x284
	.uleb128 0xb
	.long	.LASF814
	.byte	0x6
	.byte	0x55
	.byte	0x11
	.long	0xf4
	.uleb128 0xb
	.long	.LASF815
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.long	0x124
	.uleb128 0xc
	.string	"dbl"
	.byte	0x6
	.byte	0x57
	.byte	0x10
	.long	0x28b
	.uleb128 0xb
	.long	.LASF816
	.byte	0x6
	.byte	0x58
	.byte	0x15
	.long	0x292
	.uleb128 0xc
	.string	"obj"
	.byte	0x6
	.byte	0x59
	.byte	0xe
	.long	0x299
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF817
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF818
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF819
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF820
	.uleb128 0xd
	.byte	0x8
	.long	0x130
	.uleb128 0xe
	.byte	0x20
	.byte	0x6
	.byte	0x4a
	.byte	0x9
	.long	0x2c2
	.uleb128 0x7
	.long	.LASF794
	.byte	0x6
	.byte	0x4b
	.byte	0xf
	.long	0x1cd
	.byte	0
	.uleb128 0xf
	.string	"as"
	.byte	0x6
	.byte	0x5a
	.byte	0x7
	.long	0x1d9
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF821
	.byte	0x6
	.byte	0x5b
	.byte	0x3
	.long	0x29f
	.uleb128 0xe
	.byte	0x10
	.byte	0x6
	.byte	0x8e
	.byte	0x9
	.long	0x2ff
	.uleb128 0x7
	.long	.LASF822
	.byte	0x6
	.byte	0x8f
	.byte	0xd
	.long	0xdc
	.byte	0
	.uleb128 0x7
	.long	.LASF823
	.byte	0x6
	.byte	0x90
	.byte	0xd
	.long	0xdc
	.byte	0x2
	.uleb128 0x7
	.long	.LASF824
	.byte	0x6
	.byte	0x91
	.byte	0xc
	.long	0x2ff
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x2c2
	.uleb128 0x4
	.long	.LASF825
	.byte	0x6
	.byte	0x92
	.byte	0x3
	.long	0x2ce
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.long	0x54
	.byte	0x7
	.byte	0x9
	.byte	0xe
	.long	0x3b6
	.uleb128 0x9
	.long	.LASF826
	.byte	0
	.uleb128 0x9
	.long	.LASF827
	.byte	0x1
	.uleb128 0x9
	.long	.LASF828
	.byte	0x2
	.uleb128 0x9
	.long	.LASF829
	.byte	0x3
	.uleb128 0x9
	.long	.LASF830
	.byte	0x4
	.uleb128 0x9
	.long	.LASF831
	.byte	0x5
	.uleb128 0x9
	.long	.LASF832
	.byte	0x6
	.uleb128 0x9
	.long	.LASF833
	.byte	0x7
	.uleb128 0x9
	.long	.LASF834
	.byte	0x8
	.uleb128 0x9
	.long	.LASF835
	.byte	0x9
	.uleb128 0x9
	.long	.LASF836
	.byte	0xa
	.uleb128 0x9
	.long	.LASF837
	.byte	0xb
	.uleb128 0x9
	.long	.LASF838
	.byte	0xc
	.uleb128 0x9
	.long	.LASF839
	.byte	0xd
	.uleb128 0x9
	.long	.LASF840
	.byte	0xe
	.uleb128 0x9
	.long	.LASF841
	.byte	0xf
	.uleb128 0x9
	.long	.LASF842
	.byte	0x10
	.uleb128 0x9
	.long	.LASF843
	.byte	0x11
	.uleb128 0x9
	.long	.LASF844
	.byte	0x12
	.uleb128 0x9
	.long	.LASF845
	.byte	0x13
	.uleb128 0x9
	.long	.LASF846
	.byte	0x14
	.uleb128 0x9
	.long	.LASF847
	.byte	0x15
	.uleb128 0x9
	.long	.LASF848
	.byte	0x16
	.uleb128 0x9
	.long	.LASF849
	.byte	0x17
	.uleb128 0x9
	.long	.LASF850
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.byte	0x25
	.byte	0x9
	.long	0x3da
	.uleb128 0x7
	.long	.LASF851
	.byte	0x7
	.byte	0x26
	.byte	0xd
	.long	0xdc
	.byte	0
	.uleb128 0x7
	.long	.LASF852
	.byte	0x7
	.byte	0x27
	.byte	0xe
	.long	0x10c
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF853
	.byte	0x7
	.byte	0x28
	.byte	0x3
	.long	0x3b6
	.uleb128 0xe
	.byte	0x30
	.byte	0x7
	.byte	0x2a
	.byte	0x9
	.long	0x44b
	.uleb128 0x7
	.long	.LASF823
	.byte	0x7
	.byte	0x2b
	.byte	0xd
	.long	0xdc
	.byte	0
	.uleb128 0x7
	.long	.LASF822
	.byte	0x7
	.byte	0x2c
	.byte	0xd
	.long	0xdc
	.byte	0x2
	.uleb128 0x7
	.long	.LASF854
	.byte	0x7
	.byte	0x2d
	.byte	0xe
	.long	0x44b
	.byte	0x8
	.uleb128 0x7
	.long	.LASF855
	.byte	0x7
	.byte	0x2e
	.byte	0x10
	.long	0x305
	.byte	0x10
	.uleb128 0x7
	.long	.LASF856
	.byte	0x7
	.byte	0x2f
	.byte	0xd
	.long	0xdc
	.byte	0x20
	.uleb128 0x7
	.long	.LASF857
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0xdc
	.byte	0x22
	.uleb128 0x7
	.long	.LASF858
	.byte	0x7
	.byte	0x31
	.byte	0x10
	.long	0x451
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x100
	.uleb128 0xd
	.byte	0x8
	.long	0x3da
	.uleb128 0x4
	.long	.LASF859
	.byte	0x7
	.byte	0x32
	.byte	0x3
	.long	0x3e6
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.long	0x54
	.byte	0x5
	.byte	0x10
	.byte	0xe
	.long	0x478
	.uleb128 0x9
	.long	.LASF860
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF861
	.byte	0x5
	.byte	0x12
	.byte	0x3
	.long	0x463
	.uleb128 0xd
	.byte	0x8
	.long	0x13c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF862
	.uleb128 0x10
	.long	.LASF867
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x532
	.uleb128 0x11
	.long	.LASF863
	.byte	0x1
	.byte	0x3c
	.byte	0x18
	.long	0x532
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF864
	.byte	0x1
	.byte	0x3c
	.byte	0x27
	.long	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LASF852
	.byte	0x1
	.byte	0x3c
	.byte	0x35
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF865
	.byte	0x1
	.byte	0x4e
	.byte	0x10
	.long	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x510
	.uleb128 0x12
	.long	.LASF866
	.byte	0x1
	.byte	0x3e
	.byte	0x11
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x12
	.long	.LASF866
	.byte	0x1
	.byte	0x49
	.byte	0x11
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x457
	.uleb128 0x10
	.long	.LASF868
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x593
	.uleb128 0x11
	.long	.LASF863
	.byte	0x1
	.byte	0x2f
	.byte	0x1b
	.long	0x532
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF869
	.byte	0x1
	.byte	0x2f
	.byte	0x28
	.long	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF852
	.byte	0x1
	.byte	0x2f
	.byte	0x37
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF870
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF879
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.long	0xdc
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x622
	.uleb128 0x11
	.long	.LASF863
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.long	0x532
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF871
	.byte	0x1
	.byte	0x1e
	.byte	0x27
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF872
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x16
	.string	"end"
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x16
	.string	"mid"
	.byte	0x1
	.byte	0x23
	.byte	0x11
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x12
	.long	.LASF852
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.long	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF873
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x650
	.uleb128 0x11
	.long	.LASF863
	.byte	0x1
	.byte	0x16
	.byte	0x17
	.long	0x532
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF874
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x67e
	.uleb128 0x11
	.long	.LASF863
	.byte	0x1
	.byte	0xc
	.byte	0x17
	.long	0x532
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF875
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.long	0xdc
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF863
	.byte	0x1
	.byte	0x7
	.byte	0x1c
	.long	0x532
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF869
	.byte	0x1
	.byte	0x7
	.byte	0x29
	.long	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.file 8 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.long	.LASF345
	.file 9 "Bytecode/chunk/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.long	.LASF346
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xc
	.file 13 "/usr/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro5
	.file 14 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0xe
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF406
	.file 15 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro6
	.file 16 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1cd
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro7
	.file 17 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x1c4
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 18 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x1c5
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x15
	.long	.LASF509
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 19 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x1e5
	.uleb128 0x13
	.file 20 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x14
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
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x18
	.long	.LASF542
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 21 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x18
	.long	.LASF543
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.file 22 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 23 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x6
	.uleb128 0xe1
	.long	.LASF601
	.byte	0x4
	.file 24 "/usr/include/x86_64-linux-gnu/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x14
	.long	.LASF605
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x14
	.long	.LASF606
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF669
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.long	.LASF673
	.file 25 "Bytecode/chunk/../value/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x19
	.byte	0x4
	.file 26 "/usr/include/string.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x4
	.file 27 "Bytecode/chunk/../memory/memory.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x2
	.long	.LASF721
	.file 28 "Bytecode/chunk/../memory/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1c
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.long	.LASF722
	.file 29 "Bytecode/chunk/../memory/../../Language/object/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1d
	.byte	0x4
	.file 30 "Bytecode/chunk/../memory/../../Language/object/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1e
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.file 31 "/usr/include/stdlib.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1f
	.byte	0x5
	.uleb128 0x18
	.long	.LASF405
	.byte	0x3
	.uleb128 0x19
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF733
	.file 32 "/usr/include/x86_64-linux-gnu/bits/floatn.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro26
	.file 33 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x78
	.uleb128 0x21
	.byte	0x5
	.uleb128 0x15
	.long	.LASF741
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x15
	.long	.LASF509
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro27
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.file 34 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.byte	0x3
	.uleb128 0x3f5
	.uleb128 0x22
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
	.long	.LASF347
	.byte	0x5
	.uleb128 0x21
	.long	.LASF348
	.byte	0x5
	.uleb128 0x22
	.long	.LASF349
	.byte	0x5
	.uleb128 0x23
	.long	.LASF350
	.byte	0x5
	.uleb128 0x34
	.long	.LASF351
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.27677723d43e5b5a7afdf8d798429f1d,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF352
	.byte	0x5
	.uleb128 0x28
	.long	.LASF353
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF354
	.byte	0x5
	.uleb128 0x83
	.long	.LASF355
	.byte	0x5
	.uleb128 0x84
	.long	.LASF356
	.byte	0x5
	.uleb128 0x85
	.long	.LASF357
	.byte	0x5
	.uleb128 0x86
	.long	.LASF358
	.byte	0x5
	.uleb128 0x87
	.long	.LASF359
	.byte	0x5
	.uleb128 0x88
	.long	.LASF360
	.byte	0x5
	.uleb128 0x89
	.long	.LASF361
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF362
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF363
	.byte	0x6
	.uleb128 0x9b
	.long	.LASF364
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF365
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF366
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF367
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF368
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF369
	.byte	0x5
	.uleb128 0xba
	.long	.LASF370
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF371
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF372
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF373
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF374
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF375
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF376
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF377
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF378
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF379
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF380
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF381
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF382
	.byte	0x5
	.uleb128 0x104
	.long	.LASF383
	.byte	0x5
	.uleb128 0x105
	.long	.LASF384
	.byte	0x5
	.uleb128 0x106
	.long	.LASF385
	.byte	0x5
	.uleb128 0x107
	.long	.LASF386
	.byte	0x5
	.uleb128 0x108
	.long	.LASF387
	.byte	0x5
	.uleb128 0x109
	.long	.LASF388
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF389
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF390
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF391
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF392
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF393
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF394
	.byte	0x5
	.uleb128 0x110
	.long	.LASF395
	.byte	0x5
	.uleb128 0x111
	.long	.LASF396
	.byte	0x5
	.uleb128 0x112
	.long	.LASF397
	.byte	0x6
	.uleb128 0x11f
	.long	.LASF398
	.byte	0x6
	.uleb128 0x154
	.long	.LASF399
	.byte	0x6
	.uleb128 0x186
	.long	.LASF400
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF401
	.byte	0x6
	.uleb128 0x191
	.long	.LASF402
	.byte	0x5
	.uleb128 0x196
	.long	.LASF403
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.23.022efde71688fcb285fe42cc87d41ee3,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF404
	.byte	0x5
	.uleb128 0x19
	.long	.LASF405
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.27245cfc2802812683deaaadc4051edf,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF407
	.byte	0x6
	.uleb128 0x78
	.long	.LASF408
	.byte	0x6
	.uleb128 0x79
	.long	.LASF409
	.byte	0x6
	.uleb128 0x7a
	.long	.LASF410
	.byte	0x6
	.uleb128 0x7b
	.long	.LASF411
	.byte	0x6
	.uleb128 0x7c
	.long	.LASF412
	.byte	0x6
	.uleb128 0x7d
	.long	.LASF413
	.byte	0x6
	.uleb128 0x7e
	.long	.LASF414
	.byte	0x6
	.uleb128 0x7f
	.long	.LASF415
	.byte	0x6
	.uleb128 0x80
	.long	.LASF416
	.byte	0x6
	.uleb128 0x81
	.long	.LASF417
	.byte	0x6
	.uleb128 0x82
	.long	.LASF418
	.byte	0x6
	.uleb128 0x83
	.long	.LASF419
	.byte	0x6
	.uleb128 0x84
	.long	.LASF420
	.byte	0x6
	.uleb128 0x85
	.long	.LASF421
	.byte	0x6
	.uleb128 0x86
	.long	.LASF422
	.byte	0x6
	.uleb128 0x87
	.long	.LASF423
	.byte	0x6
	.uleb128 0x88
	.long	.LASF424
	.byte	0x6
	.uleb128 0x89
	.long	.LASF425
	.byte	0x6
	.uleb128 0x8a
	.long	.LASF426
	.byte	0x6
	.uleb128 0x8b
	.long	.LASF427
	.byte	0x6
	.uleb128 0x8c
	.long	.LASF428
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF429
	.byte	0x6
	.uleb128 0x8e
	.long	.LASF430
	.byte	0x6
	.uleb128 0x8f
	.long	.LASF431
	.byte	0x6
	.uleb128 0x90
	.long	.LASF432
	.byte	0x6
	.uleb128 0x91
	.long	.LASF433
	.byte	0x5
	.uleb128 0x96
	.long	.LASF434
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF435
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF436
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF437
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF438
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF439
	.byte	0x5
	.uleb128 0xff
	.long	.LASF440
	.byte	0x5
	.uleb128 0x193
	.long	.LASF441
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF442
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF443
	.byte	0x6
	.uleb128 0x1bf
	.long	.LASF444
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF445
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF446
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF447
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF448
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.19.0d545e69f14b328423facbc3c055a47a,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF449
	.byte	0x2
	.uleb128 0x22
	.string	"__P"
	.byte	0x6
	.uleb128 0x23
	.long	.LASF450
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF451
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF452
	.byte	0x5
	.uleb128 0x37
	.long	.LASF453
	.byte	0x5
	.uleb128 0x38
	.long	.LASF454
	.byte	0x5
	.uleb128 0x39
	.long	.LASF455
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF456
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF457
	.byte	0x5
	.uleb128 0x63
	.long	.LASF458
	.byte	0x5
	.uleb128 0x64
	.long	.LASF459
	.byte	0x5
	.uleb128 0x69
	.long	.LASF460
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF461
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF462
	.byte	0x5
	.uleb128 0x75
	.long	.LASF463
	.byte	0x5
	.uleb128 0x76
	.long	.LASF464
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF465
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF466
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF467
	.byte	0x5
	.uleb128 0x81
	.long	.LASF468
	.byte	0x5
	.uleb128 0x82
	.long	.LASF469
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF470
	.byte	0x5
	.uleb128 0x90
	.long	.LASF471
	.byte	0x5
	.uleb128 0xae
	.long	.LASF472
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF473
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF474
	.byte	0x5
	.uleb128 0xba
	.long	.LASF475
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF476
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF477
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF478
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF479
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF480
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF481
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF482
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF483
	.byte	0x5
	.uleb128 0x105
	.long	.LASF484
	.byte	0x5
	.uleb128 0x112
	.long	.LASF485
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF486
	.byte	0x5
	.uleb128 0x125
	.long	.LASF487
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF488
	.byte	0x5
	.uleb128 0x136
	.long	.LASF489
	.byte	0x6
	.uleb128 0x13e
	.long	.LASF490
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF491
	.byte	0x5
	.uleb128 0x148
	.long	.LASF492
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF493
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF494
	.byte	0x5
	.uleb128 0x164
	.long	.LASF495
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF496
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF497
	.byte	0x5
	.uleb128 0x183
	.long	.LASF498
	.byte	0x5
	.uleb128 0x192
	.long	.LASF499
	.byte	0x5
	.uleb128 0x193
	.long	.LASF500
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF501
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF502
	.byte	0x6
	.uleb128 0x1b3
	.long	.LASF503
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF504
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF505
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.baf119258a1e53d8dba67ceac44ab6bc,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF506
	.byte	0x5
	.uleb128 0xc
	.long	.LASF507
	.byte	0x5
	.uleb128 0xe
	.long	.LASF508
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.475.fb75d2e4416aa349344e6f45f683bf28,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF510
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF511
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF512
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF513
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF514
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF515
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF516
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF517
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF518
	.byte	0x5
	.uleb128 0x200
	.long	.LASF519
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.6ce4c34010988db072c080326a6b6319,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF520
	.byte	0x5
	.uleb128 0xb
	.long	.LASF521
	.byte	0x5
	.uleb128 0xc
	.long	.LASF522
	.byte	0x5
	.uleb128 0xd
	.long	.LASF523
	.byte	0x5
	.uleb128 0xe
	.long	.LASF524
	.byte	0x5
	.uleb128 0xf
	.long	.LASF525
	.byte	0x5
	.uleb128 0x10
	.long	.LASF526
	.byte	0x5
	.uleb128 0x11
	.long	.LASF527
	.byte	0x5
	.uleb128 0x12
	.long	.LASF528
	.byte	0x5
	.uleb128 0x13
	.long	.LASF529
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.37.d9274df4cc0172452960ad9644fa5579,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x25
	.long	.LASF530
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF531
	.byte	0x6
	.uleb128 0x31
	.long	.LASF532
	.byte	0x5
	.uleb128 0x35
	.long	.LASF533
	.byte	0x6
	.uleb128 0x37
	.long	.LASF534
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF535
	.byte	0x6
	.uleb128 0x42
	.long	.LASF536
	.byte	0x5
	.uleb128 0x46
	.long	.LASF537
	.byte	0x6
	.uleb128 0x48
	.long	.LASF538
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF539
	.byte	0x6
	.uleb128 0x51
	.long	.LASF540
	.byte	0x5
	.uleb128 0x55
	.long	.LASF541
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.109.56eb9ae966b255288cc544f18746a7ff,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF544
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF545
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF546
	.byte	0x5
	.uleb128 0x70
	.long	.LASF547
	.byte	0x5
	.uleb128 0x71
	.long	.LASF548
	.byte	0x5
	.uleb128 0x72
	.long	.LASF549
	.byte	0x5
	.uleb128 0x80
	.long	.LASF550
	.byte	0x5
	.uleb128 0x81
	.long	.LASF551
	.byte	0x5
	.uleb128 0x82
	.long	.LASF552
	.byte	0x5
	.uleb128 0x83
	.long	.LASF553
	.byte	0x5
	.uleb128 0x84
	.long	.LASF554
	.byte	0x5
	.uleb128 0x85
	.long	.LASF555
	.byte	0x5
	.uleb128 0x86
	.long	.LASF556
	.byte	0x5
	.uleb128 0x87
	.long	.LASF557
	.byte	0x5
	.uleb128 0x89
	.long	.LASF558
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.2c64f817c0dc4b6fb2a2c619d717be26,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF559
	.byte	0x5
	.uleb128 0x22
	.long	.LASF560
	.byte	0x5
	.uleb128 0x23
	.long	.LASF561
	.byte	0x5
	.uleb128 0x26
	.long	.LASF562
	.byte	0x5
	.uleb128 0x27
	.long	.LASF563
	.byte	0x5
	.uleb128 0x28
	.long	.LASF564
	.byte	0x5
	.uleb128 0x29
	.long	.LASF565
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF566
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF567
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF568
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF569
	.byte	0x5
	.uleb128 0x33
	.long	.LASF570
	.byte	0x5
	.uleb128 0x34
	.long	.LASF571
	.byte	0x5
	.uleb128 0x35
	.long	.LASF572
	.byte	0x5
	.uleb128 0x36
	.long	.LASF573
	.byte	0x5
	.uleb128 0x37
	.long	.LASF574
	.byte	0x5
	.uleb128 0x38
	.long	.LASF575
	.byte	0x5
	.uleb128 0x39
	.long	.LASF576
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF577
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF578
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF579
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF580
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF581
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF582
	.byte	0x5
	.uleb128 0x40
	.long	.LASF583
	.byte	0x5
	.uleb128 0x41
	.long	.LASF584
	.byte	0x5
	.uleb128 0x42
	.long	.LASF585
	.byte	0x5
	.uleb128 0x43
	.long	.LASF586
	.byte	0x5
	.uleb128 0x44
	.long	.LASF587
	.byte	0x5
	.uleb128 0x45
	.long	.LASF588
	.byte	0x5
	.uleb128 0x46
	.long	.LASF589
	.byte	0x5
	.uleb128 0x47
	.long	.LASF590
	.byte	0x5
	.uleb128 0x48
	.long	.LASF591
	.byte	0x5
	.uleb128 0x49
	.long	.LASF592
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF593
	.byte	0x5
	.uleb128 0x50
	.long	.LASF594
	.byte	0x5
	.uleb128 0x53
	.long	.LASF595
	.byte	0x5
	.uleb128 0x56
	.long	.LASF596
	.byte	0x5
	.uleb128 0x59
	.long	.LASF597
	.byte	0x5
	.uleb128 0x61
	.long	.LASF598
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time64.h.24.a8166ae916ec910dab0d8987098d42ee,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF599
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF600
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.20.510818a05484290d697a517509bf4b2d,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF602
	.byte	0x5
	.uleb128 0x22
	.long	.LASF603
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF604
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.88.7e8071bbba3b822ff5b29420f80324ec,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x58
	.long	.LASF607
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF120
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF129
	.byte	0x5
	.uleb128 0x74
	.long	.LASF608
	.byte	0x5
	.uleb128 0x75
	.long	.LASF609
	.byte	0x5
	.uleb128 0x76
	.long	.LASF610
	.byte	0x5
	.uleb128 0x77
	.long	.LASF611
	.byte	0x5
	.uleb128 0x79
	.long	.LASF612
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF613
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF614
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF615
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF616
	.byte	0x5
	.uleb128 0x80
	.long	.LASF617
	.byte	0x5
	.uleb128 0x81
	.long	.LASF618
	.byte	0x5
	.uleb128 0x82
	.long	.LASF619
	.byte	0x5
	.uleb128 0x86
	.long	.LASF620
	.byte	0x5
	.uleb128 0x87
	.long	.LASF621
	.byte	0x5
	.uleb128 0x88
	.long	.LASF622
	.byte	0x5
	.uleb128 0x89
	.long	.LASF623
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF624
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF625
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF626
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF627
	.byte	0x5
	.uleb128 0x91
	.long	.LASF628
	.byte	0x5
	.uleb128 0x92
	.long	.LASF629
	.byte	0x5
	.uleb128 0x93
	.long	.LASF630
	.byte	0x5
	.uleb128 0x94
	.long	.LASF631
	.byte	0x5
	.uleb128 0x98
	.long	.LASF632
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF633
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF634
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF635
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF636
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF637
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF638
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF639
	.byte	0x5
	.uleb128 0xad
	.long	.LASF640
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF641
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF642
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF643
	.byte	0x5
	.uleb128 0xba
	.long	.LASF644
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF645
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF646
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF647
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF648
	.byte	0x5
	.uleb128 0xca
	.long	.LASF649
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF650
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF651
	.byte	0x5
	.uleb128 0xde
	.long	.LASF652
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF653
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF654
	.byte	0x5
	.uleb128 0xef
	.long	.LASF655
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF656
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF657
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF658
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF659
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF660
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF661
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF662
	.byte	0x5
	.uleb128 0x102
	.long	.LASF663
	.byte	0x5
	.uleb128 0x103
	.long	.LASF664
	.byte	0x5
	.uleb128 0x104
	.long	.LASF665
	.byte	0x5
	.uleb128 0x106
	.long	.LASF666
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF667
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF668
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.8.90fda59c54c961fc19350e2cd5261a6b,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF670
	.byte	0x5
	.uleb128 0x9
	.long	.LASF671
	.byte	0x5
	.uleb128 0xb
	.long	.LASF672
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.23.93403f89af7dba8212345449bb14b09d,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF674
	.byte	0x5
	.uleb128 0x19
	.long	.LASF405
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.31.87b3c285aeba93fe355ad19123070832,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF406
	.byte	0x6
	.uleb128 0x25
	.long	.LASF530
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF531
	.byte	0x6
	.uleb128 0x31
	.long	.LASF532
	.byte	0x5
	.uleb128 0x35
	.long	.LASF533
	.byte	0x6
	.uleb128 0x37
	.long	.LASF534
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF535
	.byte	0x6
	.uleb128 0x42
	.long	.LASF536
	.byte	0x5
	.uleb128 0x46
	.long	.LASF537
	.byte	0x6
	.uleb128 0x48
	.long	.LASF538
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF539
	.byte	0x6
	.uleb128 0x51
	.long	.LASF540
	.byte	0x5
	.uleb128 0x55
	.long	.LASF541
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF675
	.byte	0x5
	.uleb128 0x20
	.long	.LASF676
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.155.ba788add86a0e365f264484f110c3c29,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x9b
	.long	.LASF364
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF382
	.byte	0x6
	.uleb128 0x154
	.long	.LASF399
	.byte	0x6
	.uleb128 0x186
	.long	.LASF400
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF401
	.byte	0x6
	.uleb128 0x191
	.long	.LASF402
	.byte	0x5
	.uleb128 0x196
	.long	.LASF403
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.value.h.93.bfaea07e85ae46c62b090a885a200a26,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF677
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF678
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF679
	.byte	0x5
	.uleb128 0x60
	.long	.LASF680
	.byte	0x5
	.uleb128 0x61
	.long	.LASF681
	.byte	0x5
	.uleb128 0x62
	.long	.LASF682
	.byte	0x5
	.uleb128 0x63
	.long	.LASF683
	.byte	0x5
	.uleb128 0x64
	.long	.LASF684
	.byte	0x5
	.uleb128 0x65
	.long	.LASF685
	.byte	0x5
	.uleb128 0x66
	.long	.LASF686
	.byte	0x5
	.uleb128 0x67
	.long	.LASF687
	.byte	0x5
	.uleb128 0x68
	.long	.LASF688
	.byte	0x5
	.uleb128 0x69
	.long	.LASF689
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF690
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF691
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF692
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF693
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF694
	.byte	0x5
	.uleb128 0x70
	.long	.LASF695
	.byte	0x5
	.uleb128 0x71
	.long	.LASF696
	.byte	0x5
	.uleb128 0x72
	.long	.LASF697
	.byte	0x5
	.uleb128 0x73
	.long	.LASF698
	.byte	0x5
	.uleb128 0x74
	.long	.LASF699
	.byte	0x5
	.uleb128 0x75
	.long	.LASF700
	.byte	0x5
	.uleb128 0x76
	.long	.LASF701
	.byte	0x5
	.uleb128 0x77
	.long	.LASF702
	.byte	0x5
	.uleb128 0x78
	.long	.LASF703
	.byte	0x5
	.uleb128 0x79
	.long	.LASF704
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF705
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF706
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF707
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF708
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF709
	.byte	0x5
	.uleb128 0x80
	.long	.LASF710
	.byte	0x5
	.uleb128 0x81
	.long	.LASF711
	.byte	0x5
	.uleb128 0x82
	.long	.LASF712
	.byte	0x5
	.uleb128 0x83
	.long	.LASF713
	.byte	0x5
	.uleb128 0x84
	.long	.LASF714
	.byte	0x5
	.uleb128 0x85
	.long	.LASF715
	.byte	0x5
	.uleb128 0x86
	.long	.LASF716
	.byte	0x5
	.uleb128 0x87
	.long	.LASF717
	.byte	0x5
	.uleb128 0x88
	.long	.LASF718
	.byte	0x5
	.uleb128 0x89
	.long	.LASF719
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF720
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.object.h.9.58f78145e32d247aac212c60dfa360d4,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x9
	.long	.LASF723
	.byte	0x5
	.uleb128 0xb
	.long	.LASF724
	.byte	0x5
	.uleb128 0xd
	.long	.LASF725
	.byte	0x5
	.uleb128 0xe
	.long	.LASF726
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.memory.h.7.f939cb48c902d606491eab8791f61165,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF727
	.byte	0x5
	.uleb128 0xa
	.long	.LASF728
	.byte	0x5
	.uleb128 0xc
	.long	.LASF729
	.byte	0x5
	.uleb128 0xf
	.long	.LASF730
	.byte	0x5
	.uleb128 0x13
	.long	.LASF731
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.28.2cffa49d94c5d85f4538f55f7b59771d,comdat
.Ldebug_macro25:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF675
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF732
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF676
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatn.h.20.80c7cf8a8dfad237004b28d051d5afda,comdat
.Ldebug_macro26:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF734
	.byte	0x5
	.uleb128 0x21
	.long	.LASF735
	.byte	0x5
	.uleb128 0x29
	.long	.LASF736
	.byte	0x5
	.uleb128 0x31
	.long	.LASF737
	.byte	0x5
	.uleb128 0x37
	.long	.LASF738
	.byte	0x5
	.uleb128 0x42
	.long	.LASF739
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF740
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatncommon.h.34.7e1840d7dfb19e9bdb51aeb077d76637,comdat
.Ldebug_macro27:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF742
	.byte	0x5
	.uleb128 0x23
	.long	.LASF743
	.byte	0x5
	.uleb128 0x24
	.long	.LASF744
	.byte	0x5
	.uleb128 0x25
	.long	.LASF745
	.byte	0x5
	.uleb128 0x26
	.long	.LASF746
	.byte	0x5
	.uleb128 0x34
	.long	.LASF747
	.byte	0x5
	.uleb128 0x35
	.long	.LASF748
	.byte	0x5
	.uleb128 0x36
	.long	.LASF749
	.byte	0x5
	.uleb128 0x37
	.long	.LASF750
	.byte	0x5
	.uleb128 0x38
	.long	.LASF751
	.byte	0x5
	.uleb128 0x39
	.long	.LASF752
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF753
	.byte	0x5
	.uleb128 0x46
	.long	.LASF754
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF755
	.byte	0x5
	.uleb128 0x69
	.long	.LASF756
	.byte	0x5
	.uleb128 0x71
	.long	.LASF757
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF758
	.byte	0x5
	.uleb128 0x97
	.long	.LASF759
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF760
	.byte	0x5
	.uleb128 0xab
	.long	.LASF761
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF762
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.71.39700ac5536cfafa1b6db501afc46864,comdat
.Ldebug_macro28:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x47
	.long	.LASF763
	.byte	0x5
	.uleb128 0x51
	.long	.LASF764
	.byte	0x5
	.uleb128 0x56
	.long	.LASF765
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF766
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF767
	.byte	0x5
	.uleb128 0x60
	.long	.LASF768
	.byte	0x5
	.uleb128 0x327
	.long	.LASF769
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF614:
	.string	"INT32_MAX (2147483647)"
.LASF621:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF721:
	.string	"memory_h "
.LASF678:
	.string	"IS_NIL(value) ((value).type == VAL_NIL)"
.LASF785:
	.string	"char"
.LASF558:
	.string	"__STD_TYPE typedef"
.LASF533:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF786:
	.string	"int8_t"
.LASF225:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF618:
	.string	"UINT32_MAX (4294967295U)"
.LASF863:
	.string	"chunk"
.LASF736:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF51:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF839:
	.string	"OP_LESS"
.LASF108:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF744:
	.string	"__HAVE_FLOAT64 1"
.LASF222:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF801:
	.string	"VAL_INT"
.LASF673:
	.string	"value_h "
.LASF495:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF749:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF220:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF872:
	.string	"start"
.LASF756:
	.string	"__f64(x) x ##f64"
.LASF93:
	.string	"__SIZE_WIDTH__ 64"
.LASF505:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF282:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF119:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF19:
	.string	"__LP64__ 1"
.LASF527:
	.string	"__stub_sigreturn "
.LASF422:
	.string	"__USE_XOPEN2K8XSI"
.LASF214:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF491:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF433:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF470:
	.string	"__flexarr []"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF660:
	.string	"INT16_C(c) c"
.LASF788:
	.string	"int32_t"
.LASF337:
	.string	"__unix 1"
.LASF444:
	.string	"__GNU_LIBRARY__"
.LASF139:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF170:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF248:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF267:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF98:
	.string	"__INTMAX_WIDTH__ 64"
.LASF680:
	.string	"IS_NUMBER(value) ((value).type != VAL_NIL && (value).type != VAL_BOOL);"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF273:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF162:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF787:
	.string	"int16_t"
.LASF432:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF200:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF403:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF36:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF845:
	.string	"OP_EXPONENTIATE"
.LASF796:
	.string	"VAL_UNDEFINED"
.LASF123:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF349:
	.string	"true 1"
.LASF730:
	.string	"GROW_ARRAY(type,pointer,oldCount,newCount) (type*)reallocate(pointer, sizeof(type) * (oldCount), sizeof(type) * (newCount))"
.LASF345:
	.string	"chunk_h "
.LASF695:
	.string	"AS_UCHAR(value) ((value).as.uCh)"
.LASF482:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF290:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF601:
	.string	"__STD_TYPE"
.LASF315:
	.string	"__x86_64 1"
.LASF639:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF458:
	.string	"__P(args) args"
.LASF684:
	.string	"IS_UINT(value) ((value).type == VAL_UINT)"
.LASF366:
	.string	"__SIZE_T__ "
.LASF202:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF199:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF105:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF571:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF399:
	.string	"__need_wchar_t"
.LASF196:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF392:
	.string	"_WCHAR_T_DEFINED "
.LASF702:
	.string	"AS_ULONGLONG(value) ((value).as.uLnglng)"
.LASF758:
	.string	"__f64x(x) x ##f64x"
.LASF794:
	.string	"type"
.LASF643:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF360:
	.string	"_BSD_PTRDIFF_T_ "
.LASF743:
	.string	"__HAVE_FLOAT32 1"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF664:
	.string	"UINT16_C(c) c"
.LASF211:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF600:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF381:
	.string	"__size_t "
.LASF608:
	.string	"INT8_MIN (-128)"
.LASF596:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF555:
	.string	"__ULONG32_TYPE unsigned int"
.LASF716:
	.string	"LONGLONG_VAL(value) ((Value){VAL_LONGLONG, {.lnglng = value}})"
.LASF448:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF472:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF370:
	.string	"_T_SIZE "
.LASF168:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF413:
	.string	"__USE_POSIX2"
.LASF617:
	.string	"UINT16_MAX (65535)"
.LASF281:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF638:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF517:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF759:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF333:
	.string	"__CET__ 3"
.LASF235:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF425:
	.string	"__USE_FILE_OFFSET64"
.LASF210:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF833:
	.string	"OP_SET_GLOBAL"
.LASF412:
	.string	"__USE_POSIX"
.LASF269:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF400:
	.string	"NULL"
.LASF599:
	.string	"_BITS_TIME64_H 1"
.LASF255:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF655:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF522:
	.string	"__stub_fchflags "
.LASF304:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF40:
	.string	"__INTMAX_TYPE__ long int"
.LASF580:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF747:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF435:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF416:
	.string	"__USE_XOPEN"
.LASF138:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF421:
	.string	"__USE_XOPEN2K8"
.LASF828:
	.string	"OP_NIL"
.LASF490:
	.string	"__always_inline"
.LASF368:
	.string	"_SYS_SIZE_T_H "
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF431:
	.string	"__GLIBC_USE_ISOC2X"
.LASF629:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF319:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF446:
	.string	"__GLIBC__ 2"
.LASF750:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF770:
	.string	"long int"
.LASF543:
	.string	"__TIMESIZE __WORDSIZE"
.LASF540:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF242:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF346:
	.string	"common_h "
.LASF249:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF436:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF588:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF279:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF867:
	.string	"writeChunk"
.LASF365:
	.string	"__size_t__ "
.LASF224:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF213:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF364:
	.string	"__need_ptrdiff_t"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF294:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF598:
	.string	"__FD_SETSIZE 1024"
.LASF261:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF585:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF198:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF837:
	.string	"OP_EQUAL"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF645:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF579:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF700:
	.string	"AS_FLOAT(value) ((value).as.flt)"
.LASF361:
	.string	"___int_ptrdiff_t_h "
.LASF488:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF377:
	.string	"_SIZE_T_DECLARED "
.LASF460:
	.string	"__CONCAT(x,y) x ## y"
.LASF141:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF155:
	.string	"__FLT_MAX_EXP__ 128"
.LASF342:
	.string	"__STDC_IEC_559__ 1"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF479:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF652:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF672:
	.string	"UINT8_COUNT (UINT8_MAX + 1)"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF118:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF754:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF764:
	.string	"__lldiv_t_defined 1"
.LASF405:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF341:
	.string	"_STDC_PREDEF_H 1"
.LASF857:
	.string	"lineCapacity"
.LASF535:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X 0"
.LASF16:
	.string	"__PIE__ 2"
.LASF218:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF275:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF473:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF531:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF767:
	.string	"EXIT_SUCCESS 0"
.LASF827:
	.string	"OP_CONSTANT_LONG"
.LASF154:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF443:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF157:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF679:
	.string	"IS_BOOL(value) ((value).type == VAL_BOOL)"
.LASF717:
	.string	"ULONGLONG_VAL(value) ((Value){VAL_ULONGLONG, {.uLnglng = value}})"
.LASF775:
	.string	"signed char"
.LASF790:
	.string	"uint8_t"
.LASF545:
	.string	"__U16_TYPE unsigned short int"
.LASF204:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF462:
	.string	"__ptr_t void *"
.LASF287:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF469:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF164:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF593:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF560:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF297:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF92:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF124:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF707:
	.string	"NIL_VAL ((Value){VAL_NIL, {.dbl = 0}})"
.LASF576:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF246:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF853:
	.string	"LineStart"
.LASF133:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF578:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF378:
	.string	"___int_size_t_h "
.LASF439:
	.string	"__USE_ISOC99 1"
.LASF203:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF156:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF459:
	.string	"__PMT(args) args"
.LASF340:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF280:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF630:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF252:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF802:
	.string	"VAL_UINT"
.LASF806:
	.string	"VAL_LONGLONG"
.LASF873:
	.string	"freeChunk"
.LASF549:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF127:
	.string	"__UINT32_C(c) c ## U"
.LASF836:
	.string	"OP_GET_LOCAL"
.LASF330:
	.string	"__SSE2_MATH__ 1"
.LASF95:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF609:
	.string	"INT16_MIN (-32767-1)"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF694:
	.string	"AS_CHAR(value) ((value).as.ch)"
.LASF817:
	.string	"_Bool"
.LASF120:
	.string	"__INT64_C(c) c ## L"
.LASF498:
	.string	"__restrict_arr __restrict"
.LASF520:
	.string	"__stub___compat_bdflush "
.LASF289:
	.string	"__STRICT_ANSI__ 1"
.LASF374:
	.string	"_SIZE_T_DEFINED_ "
.LASF869:
	.string	"value"
.LASF467:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
.LASF586:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF230:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF714:
	.string	"ULONG_VAL(value) ((Value){VAL_ULONG, {.uLng = value}})"
.LASF814:
	.string	"lnglng"
.LASF442:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF625:
	.string	"INT_LEAST16_MAX (32767)"
.LASF480:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF195:
	.string	"__FLT32_DIG__ 6"
.LASF291:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF740:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF732:
	.string	"__need_wchar_t "
.LASF64:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF800:
	.string	"VAL_UCHAR"
.LASF675:
	.string	"__need_size_t "
.LASF548:
	.string	"__SLONGWORD_TYPE long int"
.LASF570:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF430:
	.string	"__KERNEL_STRICT_NAMES"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF822:
	.string	"capacity"
.LASF316:
	.string	"__x86_64__ 1"
.LASF669:
	.string	"_GCC_WRAP_STDINT_H "
.LASF780:
	.string	"__uint16_t"
.LASF848:
	.string	"OP_PUTS"
.LASF419:
	.string	"__USE_XOPEN2K"
.LASF524:
	.string	"__stub_lchmod "
.LASF106:
	.string	"__UINT8_MAX__ 0xff"
.LASF160:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF253:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF877:
	.string	"Bytecode/chunk/chunk.c"
.LASF493:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF536:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF176:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF713:
	.string	"LONG_VAL(value) ((Value){VAL_LONG, {.lng = value}})"
.LASF865:
	.string	"lineStart"
.LASF704:
	.string	"AS_DOUBLELONG(value) ((value).as.dbllng)"
.LASF331:
	.string	"__SEG_FS 1"
.LASF692:
	.string	"IS_OBJ(value) ((value).type == VAL_OBJ)"
.LASF636:
	.string	"INT_FAST8_MAX (127)"
.LASF624:
	.string	"INT_LEAST8_MAX (127)"
.LASF810:
	.string	"VAL_OBJ"
.LASF73:
	.string	"__GXX_ABI_VERSION 1013"
.LASF670:
	.string	"DEBUG_PRINT_CODE "
.LASF113:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF226:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF690:
	.string	"IS_DOUBLE(value) ((value).type == VAL_DOUBLE)"
.LASF665:
	.string	"UINT32_C(c) c ## U"
.LASF644:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF414:
	.string	"__USE_POSIX199309"
.LASF615:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF344:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF101:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF760:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF72:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF654:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF447:
	.string	"__GLIBC_MINOR__ 31"
.LASF647:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF418:
	.string	"__USE_UNIX98"
.LASF61:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF434:
	.string	"__KERNEL_STRICT_NAMES "
.LASF564:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF299:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF14:
	.string	"__PIC__ 2"
.LASF303:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF339:
	.string	"__ELF__ 1"
.LASF497:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF846:
	.string	"OP_NOT"
.LASF207:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF632:
	.string	"INT_FAST8_MIN (-128)"
.LASF192:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF526:
	.string	"__stub_setlogin "
.LASF268:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF595:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF241:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF539:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF110:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF840:
	.string	"OP_ADD"
.LASF348:
	.string	"bool _Bool"
.LASF720:
	.string	"OBJ_VAL(object) ((Value){VAL_OBJ, {.obj = (Obj*)object}})"
.LASF728:
	.string	"FREE(type,pointer) reallocate(pointer, sizeof(type), 0)"
.LASF777:
	.string	"__uint8_t"
.LASF100:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF122:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF390:
	.string	"_BSD_WCHAR_T_ "
.LASF765:
	.string	"RAND_MAX 2147483647"
.LASF262:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF307:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF641:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF172:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF534:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF507:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF115:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF149:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF642:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF635:
	.string	"INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF277:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF776:
	.string	"__int8_t"
.LASF401:
	.string	"NULL ((void *)0)"
.LASF841:
	.string	"OP_SUBTRACT"
.LASF496:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF334:
	.string	"__gnu_linux__ 1"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF663:
	.string	"UINT8_C(c) c"
.LASF554:
	.string	"__SLONG32_TYPE int"
.LASF742:
	.string	"__HAVE_FLOAT16 0"
.LASF870:
	.string	"index"
.LASF575:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF748:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF832:
	.string	"OP_DEFINE_GLOBAL"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF406:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF408:
	.string	"__USE_ISOC11"
.LASF508:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF240:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF606:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF843:
	.string	"OP_DIVIDE"
.LASF677:
	.string	"IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)"
.LASF703:
	.string	"AS_DOUBLE(value) ((value).as.dbl)"
.LASF121:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF163:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF343:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF784:
	.string	"__uint64_t"
.LASF102:
	.string	"__INT8_MAX__ 0x7f"
.LASF648:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF577:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF306:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF858:
	.string	"lines"
.LASF616:
	.string	"UINT8_MAX (255)"
.LASF653:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF452:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF826:
	.string	"OP_CONSTANT"
.LASF146:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF15:
	.string	"__pie__ 2"
.LASF3:
	.string	"__GNUC__ 9"
.LASF782:
	.string	"__uint32_t"
.LASF440:
	.string	"__USE_ISOC95 1"
.LASF681:
	.string	"IS_CHAR(value) ((value).type == VAL_CHAR)"
.LASF518:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF189:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF266:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF369:
	.string	"_T_SIZE_ "
.LASF148:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF85:
	.string	"__SCHAR_WIDTH__ 8"
.LASF471:
	.string	"__glibc_c99_flexarr_available 1"
.LASF223:
	.string	"__FLT128_DIG__ 33"
.LASF711:
	.string	"INT_VAL(value) ((Value){VAL_INT, {.in = value}})"
.LASF323:
	.string	"__k8__ 1"
.LASF18:
	.string	"_LP64 1"
.LASF852:
	.string	"line"
.LASF131:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF463:
	.string	"__BEGIN_DECLS "
.LASF228:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF453:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF676:
	.string	"__need_NULL "
.LASF407:
	.string	"_FEATURES_H 1"
.LASF194:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF451:
	.string	"__LEAF , __leaf__"
.LASF604:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF283:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF481:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF296:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF169:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF559:
	.string	"_BITS_TYPESIZES_H 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF247:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_MANT_DIG__ 24"
.LASF813:
	.string	"uLng"
.LASF683:
	.string	"IS_INT(value) ((value).type == VAL_INT)"
.LASF809:
	.string	"VAL_DOUBLELONG"
.LASF94:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF216:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF356:
	.string	"_T_PTRDIFF_ "
.LASF96:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF239:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF326:
	.string	"__SSE__ 1"
.LASF731:
	.string	"FREE_ARRAY(type,pointer,oldCount) reallocate(pointer, sizeof(type) * (oldCount), 0)"
.LASF352:
	.string	"_STDDEF_H "
.LASF691:
	.string	"IS_DOUBLELONG(value) ((value).type == VAL_DOUBLELONG)"
.LASF293:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF594:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF233:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF689:
	.string	"IS_ULONGLONG(value) ((value).type == VAL_ULONGLONG)"
.LASF386:
	.string	"_T_WCHAR_ "
.LASF706:
	.string	"UNDEFINED_VAL ((Value){VAL_UNDEFINED})"
.LASF116:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF512:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF856:
	.string	"lineCount"
.LASF847:
	.string	"OP_NEGATE"
.LASF114:
	.string	"__INT16_C(c) c"
.LASF301:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF382:
	.string	"__need_size_t"
.LASF372:
	.string	"_SIZE_T_ "
.LASF150:
	.string	"__FLT_RADIX__ 2"
.LASF862:
	.string	"long long int"
.LASF43:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF383:
	.string	"__wchar_t__ "
.LASF193:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF402:
	.string	"__need_NULL"
.LASF190:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF314:
	.string	"__amd64__ 1"
.LASF89:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF355:
	.string	"_PTRDIFF_T "
.LASF404:
	.string	"_STDINT_H 1"
.LASF753:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF132:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF302:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF876:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF487:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF503:
	.string	"__attribute_copy__"
.LASF212:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF799:
	.string	"VAL_CHAR"
.LASF388:
	.string	"__WCHAR_T "
.LASF850:
	.string	"OP_RETURN"
.LASF819:
	.string	"double"
.LASF134:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF456:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF41:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF91:
	.string	"__WINT_WIDTH__ 32"
.LASF811:
	.string	"ValueType"
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF485:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF310:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF130:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF502:
	.string	"__attribute_nonstring__ __attribute__ ((__nonstring__))"
.LASF80:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF450:
	.string	"__PMT"
.LASF825:
	.string	"ValueArray"
.LASF308:
	.string	"__SSP_STRONG__ 3"
.LASF739:
	.string	"__f128(x) x ##f128"
.LASF140:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF761:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF581:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF550:
	.string	"__SQUAD_TYPE long int"
.LASF726:
	.string	"AS_CSTRING(value) (((ObjString*)AS_OBJ(value))->chars)"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF117:
	.string	"__INT32_C(c) c"
.LASF854:
	.string	"code"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF420:
	.string	"__USE_XOPEN2KXSI"
.LASF70:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF429:
	.string	"__USE_FORTIFY_LEVEL"
.LASF354:
	.string	"_ANSI_STDDEF_H "
.LASF286:
	.string	"__USER_LABEL_PREFIX__ "
.LASF823:
	.string	"count"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF260:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF322:
	.string	"__k8 1"
.LASF612:
	.string	"INT8_MAX (127)"
.LASF745:
	.string	"__HAVE_FLOAT32X 1"
.LASF735:
	.string	"__HAVE_FLOAT128 1"
.LASF805:
	.string	"VAL_FLOAT"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF774:
	.string	"unsigned int"
.LASF603:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF63:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF844:
	.string	"OP_MODULATE"
.LASF153:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF221:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF501:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF426:
	.string	"__USE_MISC"
.LASF243:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF423:
	.string	"__USE_LARGEFILE"
.LASF152:
	.string	"__FLT_DIG__ 6"
.LASF347:
	.string	"_STDBOOL_H "
.LASF842:
	.string	"OP_MULTIPLY"
.LASF397:
	.string	"_WCHAR_T_DECLARED "
.LASF147:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF587:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF158:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF74:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF838:
	.string	"OP_GREATER"
.LASF231:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF547:
	.string	"__U32_TYPE unsigned int"
.LASF357:
	.string	"_T_PTRDIFF "
.LASF88:
	.string	"__LONG_WIDTH__ 64"
.LASF478:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF227:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF145:
	.string	"__GCC_IEC_559 2"
.LASF718:
	.string	"DOUBLE_VAL(value) ((Value){VAL_DOUBLE, {.dbl = value}})"
.LASF97:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF500:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF523:
	.string	"__stub_gtty "
.LASF384:
	.string	"__WCHAR_T__ "
.LASF627:
	.string	"INT_LEAST64_MAX (__INT64_C(9223372036854775807))"
.LASF312:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF584:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF620:
	.string	"INT_LEAST8_MIN (-128)"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF561:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF489:
	.string	"__wur "
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF350:
	.string	"false 0"
.LASF86:
	.string	"__SHRT_WIDTH__ 16"
.LASF278:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF659:
	.string	"INT8_C(c) c"
.LASF834:
	.string	"OP_GET_GLOBAL"
.LASF219:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF363:
	.string	"_PTRDIFF_T_DECLARED "
.LASF851:
	.string	"offset"
.LASF324:
	.string	"__code_model_small__ 1"
.LASF445:
	.string	"__GNU_LIBRARY__ 6"
.LASF563:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF238:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF295:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF688:
	.string	"IS_LONGLONG(value) ((value).type == VAL_LONGLONG)"
.LASF572:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF454:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF511:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF104:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF510:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF461:
	.string	"__STRING(x) #x"
.LASF532:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF772:
	.string	"unsigned char"
.LASF504:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF752:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF129:
	.string	"__UINT64_C(c) c ## UL"
.LASF197:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF879:
	.string	"getLine"
.LASF385:
	.string	"_WCHAR_T "
.LASF746:
	.string	"__HAVE_FLOAT128X 0"
.LASF161:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF264:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF362:
	.string	"_GCC_PTRDIFF_T "
.LASF525:
	.string	"__stub_revoke "
.LASF514:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF878:
	.string	"/mnt/d/coding portfolio/fortissimolanguage"
.LASF455:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF516:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF367:
	.string	"_SIZE_T "
.LASF393:
	.string	"_WCHAR_T_H "
.LASF693:
	.string	"AS_BOOL(value) ((value).as.boolean)"
.LASF622:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF78:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF820:
	.string	"long double"
.LASF475:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF619:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF263:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF804:
	.string	"VAL_ULONG"
.LASF111:
	.string	"__INT8_C(c) c"
.LASF201:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF353:
	.string	"_STDDEF_H_ "
.LASF167:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF371:
	.string	"__SIZE_T "
.LASF136:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF47:
	.string	"__INT32_TYPE__ int"
.LASF271:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF855:
	.string	"constants"
.LASF591:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF410:
	.string	"__USE_ISOC95"
.LASF650:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF409:
	.string	"__USE_ISOC99"
.LASF708:
	.string	"BOOL_VAL(value) ((Value){VAL_BOOL, {.boolean = value}})"
.LASF696:
	.string	"AS_INT(value) ((value).as.in)"
.LASF417:
	.string	"__USE_XOPEN_EXTENDED"
.LASF738:
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
.LASF396:
	.string	"_GCC_WCHAR_T "
.LASF631:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF725:
	.string	"AS_STRING(value) ((ObjString*)AS_OBJ(value))"
.LASF234:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF607:
	.string	"__intptr_t_defined "
.LASF48:
	.string	"__INT64_TYPE__ long int"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF590:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF250:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF808:
	.string	"VAL_DOUBLE"
.LASF751:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF75:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF866:
	.string	"oldCapacity"
.LASF411:
	.string	"__USE_ISOCXX11"
.LASF375:
	.string	"_SIZE_T_DEFINED "
.LASF81:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF715:
	.string	"FLOAT_VAL(value) ((Value){VAL_FLOAT, {.flt = value}})"
.LASF791:
	.string	"uint16_t"
.LASF284:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF358:
	.string	"__PTRDIFF_T "
.LASF257:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF69:
	.string	"__INTPTR_TYPE__ long int"
.LASF835:
	.string	"OP_SET_LOCAL"
.LASF771:
	.string	"long unsigned int"
.LASF871:
	.string	"instruction"
.LASF830:
	.string	"OP_FALSE"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF237:
	.string	"__FLT32X_DIG__ 15"
.LASF687:
	.string	"IS_FLOAT(value) ((value).type == VAL_FLOAT)"
.LASF484:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF415:
	.string	"__USE_POSIX199506"
.LASF682:
	.string	"IS_UCHAR(value) ((value).type == VAL_UCHAR)"
.LASF661:
	.string	"INT32_C(c) c"
.LASF142:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF666:
	.string	"UINT64_C(c) c ## UL"
.LASF328:
	.string	"__FXSR__ 1"
.LASF506:
	.string	"__WORDSIZE 64"
.LASF701:
	.string	"AS_LONGLONG(value) ((value).as.lnglng)"
.LASF807:
	.string	"VAL_ULONGLONG"
.LASF509:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF309:
	.string	"__SIZEOF_INT128__ 16"
.LASF13:
	.string	"__pic__ 2"
.LASF529:
	.string	"__stub_stty "
.LASF829:
	.string	"OP_TRUE"
.LASF37:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF270:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF468:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF723:
	.string	"OBJ_TYPE(value) (AS_OBJ(value)->type)"
.LASF874:
	.string	"initChunk"
.LASF556:
	.string	"__S64_TYPE long int"
.LASF373:
	.string	"_BSD_SIZE_T_ "
.LASF466:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF389:
	.string	"_WCHAR_T_ "
.LASF769:
	.string	"__COMPAR_FN_T "
.LASF325:
	.string	"__MMX__ 1"
.LASF831:
	.string	"OP_POP"
.LASF387:
	.string	"_T_WCHAR "
.LASF733:
	.string	"_STDLIB_H 1"
.LASF546:
	.string	"__S32_TYPE int"
.LASF84:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF778:
	.string	"__int16_t"
.LASF395:
	.string	"__INT_WCHAR_T_H "
.LASF656:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF674:
	.string	"_STRING_H 1"
.LASF602:
	.string	"_BITS_WCHAR_H 1"
.LASF698:
	.string	"AS_LONG(value) ((value).as.lng)"
.LASF662:
	.string	"INT64_C(c) c ## L"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF173:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF734:
	.string	"_BITS_FLOATN_H "
.LASF258:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF668:
	.string	"UINTMAX_C(c) c ## UL"
.LASF528:
	.string	"__stub_sstk "
.LASF79:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF259:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF4:
	.string	"__GNUC_MINOR__ 3"
.LASF824:
	.string	"values"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF610:
	.string	"INT32_MIN (-2147483647-1)"
.LASF300:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF737:
	.string	"__HAVE_FLOAT64X 1"
.LASF245:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF521:
	.string	"__stub_chflags "
.LASF428:
	.string	"__USE_GNU"
.LASF380:
	.string	"_SIZET_ "
.LASF589:
	.string	"__TIMER_T_TYPE void *"
.LASF178:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF327:
	.string	"__SSE2__ 1"
.LASF232:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF583:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF515:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF741:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF494:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF285:
	.string	"__REGISTER_PREFIX__ "
.LASF628:
	.string	"UINT_LEAST8_MAX (255)"
.LASF166:
	.string	"__DBL_DIG__ 15"
.LASF755:
	.string	"__f32(x) x ##f32"
.LASF486:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF640:
	.string	"UINT_FAST8_MAX (255)"
.LASF217:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF574:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF464:
	.string	"__END_DECLS "
.LASF332:
	.string	"__SEG_GS 1"
.LASF864:
	.string	"byte"
.LASF109:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF320:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF861:
	.string	"ObjType"
.LASF317:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF329:
	.string	"__SSE_MATH__ 1"
.LASF779:
	.string	"short int"
.LASF449:
	.string	"_SYS_CDEFS_H 1"
.LASF125:
	.string	"__UINT16_C(c) c"
.LASF793:
	.string	"uint64_t"
.LASF437:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF288:
	.string	"__NO_INLINE__ 1"
.LASF254:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF476:
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
.LASF719:
	.string	"DOUBLELONG_VAL(value) ((Value){VAL_DOUBLELONG, {.dbllng = value}})"
.LASF699:
	.string	"AS_ULONG(value) ((value).as.uLng)"
.LASF551:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF553:
	.string	"__UWORD_TYPE unsigned long int"
.LASF274:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF144:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF171:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF359:
	.string	"_PTRDIFF_T_ "
.LASF474:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF568:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF103:
	.string	"__INT16_MAX__ 0x7fff"
.LASF477:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF552:
	.string	"__SWORD_TYPE long int"
.LASF797:
	.string	"VAL_NIL"
.LASF87:
	.string	"__INT_WIDTH__ 32"
.LASF483:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF623:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF565:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF649:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF646:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF557:
	.string	"__U64_TYPE unsigned long int"
.LASF722:
	.string	"object_h "
.LASF768:
	.string	"MB_CUR_MAX (__ctype_get_mb_cur_max ())"
.LASF757:
	.string	"__f32x(x) x ##f32x"
.LASF710:
	.string	"UCHAR_VAL(value) ((Value){VAL_UCHAR, {.uCh = value}})"
.LASF544:
	.string	"__S16_TYPE short int"
.LASF311:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF658:
	.string	"WINT_MAX (4294967295u)"
.LASF705:
	.string	"AS_OBJ(value) ((value).as.obj)"
.LASF0:
	.string	"__STDC__ 1"
.LASF783:
	.string	"__int64_t"
.LASF71:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF391:
	.string	"_WCHAR_T_DEFINED_ "
.LASF492:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF205:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF265:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF52:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF798:
	.string	"VAL_BOOL"
.LASF394:
	.string	"___int_wchar_t_h "
.LASF298:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF513:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF582:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF573:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF229:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF611:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF542:
	.string	"_BITS_TYPES_H 1"
.LASF763:
	.string	"__ldiv_t_defined 1"
.LASF686:
	.string	"IS_ULONG(value) ((value).type == VAL_ULONG)"
.LASF215:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF379:
	.string	"_GCC_SIZE_T "
.LASF803:
	.string	"VAL_LONG"
.LASF773:
	.string	"short unsigned int"
.LASF77:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF821:
	.string	"Value"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF398:
	.string	"_BSD_WCHAR_T_"
.LASF626:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF875:
	.string	"addConstant"
.LASF792:
	.string	"uint32_t"
.LASF438:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF562:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF634:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF83:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF427:
	.string	"__USE_ATFILE"
.LASF321:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF633:
	.string	"INT_FAST16_MIN (-9223372036854775807L-1)"
.LASF465:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF313:
	.string	"__amd64 1"
.LASF188:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF338:
	.string	"__unix__ 1"
.LASF457:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF724:
	.string	"IS_STRING(value) isObjType(value, OBJ_STRING)"
.LASF519:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF613:
	.string	"INT16_MAX (32767)"
.LASF657:
	.string	"WINT_MIN (0u)"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF566:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF82:
	.string	"__WINT_MIN__ 0U"
.LASF567:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF209:
	.string	"__FLT64_DIG__ 15"
.LASF276:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF159:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF112:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF376:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF605:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF818:
	.string	"float"
.LASF206:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF637:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF537:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF336:
	.string	"__linux__ 1"
.LASF441:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF541:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF538:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF351:
	.string	"__bool_true_false_are_defined 1"
.LASF671:
	.string	"DEBUG_TRACE_EXECUTION "
.LASF592:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF174:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF318:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF860:
	.string	"OBJ_STRING"
.LASF126:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF815:
	.string	"uLnglng"
.LASF781:
	.string	"__int32_t"
.LASF789:
	.string	"int64_t"
.LASF766:
	.string	"EXIT_FAILURE 1"
.LASF762:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF569:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF697:
	.string	"AS_UINT(value) ((value).as.uIn)"
.LASF236:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF90:
	.string	"__WCHAR_WIDTH__ 32"
.LASF424:
	.string	"__USE_LARGEFILE64"
.LASF859:
	.string	"Chunk"
.LASF812:
	.string	"boolean"
.LASF251:
	.string	"__FLT64X_DIG__ 18"
.LASF712:
	.string	"UINT_VAL(value) ((Value){VAL_UINT, {.uIn = value}})"
.LASF272:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF685:
	.string	"IS_LONG(value) ((value).type == VAL_LONG)"
.LASF729:
	.string	"GROW_CAPACITY(capacity) ((capacity) < 8 ? 8 : (capacity) * 2)"
.LASF849:
	.string	"OP_JUMP_IF_FALSE"
.LASF143:
	.string	"__INTPTR_WIDTH__ 64"
.LASF335:
	.string	"__linux 1"
.LASF795:
	.string	"next"
.LASF135:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF709:
	.string	"CHAR_VAL(value) ((Value){VAL_CHAR, {.ch = value}})"
.LASF175:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF256:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF530:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF597:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF816:
	.string	"dbllng"
.LASF651:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF868:
	.string	"writeConstant"
.LASF165:
	.string	"__DBL_MANT_DIG__ 53"
.LASF667:
	.string	"INTMAX_C(c) c ## L"
.LASF137:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF499:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF76:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF128:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF107:
	.string	"__UINT16_MAX__ 0xffff"
.LASF727:
	.string	"ALLOCATE(type,count) (type*)reallocate(NULL, 0, sizeof(type) * (count))"
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
