	.file	"vm.c"
	.text
.Ltext0:
	.type	isObjType, @function
isObjType:
.LFB0:
	.file 1 "VirtualMachine/vm/../../Bytecode/memory/../../Language/object/object.h"
	.loc 1 36 55
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 37 20
	movl	16(%rbp), %eax
	.loc 1 37 38
	cmpl	$14, %eax
	jne	.L2
	.loc 1 37 52 discriminator 1
	movq	32(%rbp), %rax
	.loc 1 37 57 discriminator 1
	movl	(%rax), %eax
	.loc 1 37 38 discriminator 1
	cmpl	%eax, -4(%rbp)
	jne	.L2
	.loc 1 37 38 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L3
.L2:
	.loc 1 37 38 discriminator 4
	movl	$0, %eax
.L3:
	.loc 1 37 38 discriminator 6
	andl	$1, %eax
	.loc 1 38 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	isObjType, .-isObjType
	.comm	scanner,24,16
	.type	makeToken, @function
makeToken:
.LFB1:
	.file 2 "VirtualMachine/vm/../../Compilation/compiler/../../Tokenization/scanner/scanner.h"
	.loc 2 193 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	.loc 2 195 16
	movl	-44(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 2 196 26
	movq	scanner(%rip), %rax
	.loc 2 196 17
	movq	%rax, -24(%rbp)
	.loc 2 197 37
	movq	8+scanner(%rip), %rdx
	.loc 2 197 55
	movq	scanner(%rip), %rax
	.loc 2 197 46
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 197 18
	movw	%ax, -16(%rbp)
	.loc 2 198 25
	movzwl	16+scanner(%rip), %eax
	.loc 2 198 16
	movw	%ax, -14(%rbp)
	.loc 2 199 12
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 2 200 1
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	makeToken, .-makeToken
	.comm	vm,8288,32
	.globl	initVM
	.type	initVM, @function
initVM:
.LFB2:
	.file 3 "VirtualMachine/vm/vm.c"
	.loc 3 18 14
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 19 5
	movl	$0, %eax
	call	resetStack
	.loc 3 20 16
	movq	$0, 8280+vm(%rip)
	.loc 3 22 5
	leaq	8216+vm(%rip), %rdi
	call	initTable@PLT
	.loc 3 23 5
	leaq	8256+vm(%rip), %rdi
	call	initTable@PLT
	.loc 3 24 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	initVM, .-initVM
	.globl	freeVM
	.type	freeVM, @function
freeVM:
.LFB3:
	.loc 3 26 14
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 28 5
	leaq	8216+vm(%rip), %rdi
	call	freeTable@PLT
	.loc 3 29 5
	leaq	8256+vm(%rip), %rdi
	call	freeTable@PLT
	.loc 3 30 5
	movl	$0, %eax
	call	freeObjects@PLT
	.loc 3 31 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	freeVM, .-freeVM
	.type	resetStack, @function
resetStack:
.LFB4:
	.loc 3 33 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 34 17
	leaq	16+vm(%rip), %rax
	movq	%rax, 8208+vm(%rip)
	.loc 3 35 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	resetStack, .-resetStack
	.section	.rodata
.LC0:
	.string	"[line %d] in script\n"
	.text
	.type	runtimeError, @function
runtimeError:
.LFB5:
	.loc 3 37 50
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L11
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L11:
	.loc 3 37 50
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 3 39 4
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 3 40 5
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 3 42 5
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	.loc 3 44 28
	movq	8+vm(%rip), %rdx
	.loc 3 44 35
	movq	vm(%rip), %rax
	.loc 3 44 41
	movq	8(%rax), %rax
	.loc 3 44 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 44 48
	subq	$1, %rax
	.loc 3 44 12
	movq	%rax, -216(%rbp)
	.loc 3 45 23
	movq	vm(%rip), %rax
	.loc 3 45 29
	movq	40(%rax), %rax
	.loc 3 45 36
	movq	-216(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 3 45 14
	movzwl	2(%rax), %eax
	movw	%ax, -218(%rbp)
	.loc 3 46 5
	movzwl	-218(%rbp), %edx
	movq	stderr(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 3 47 5
	movl	$0, %eax
	call	resetStack
	.loc 3 48 1
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	runtimeError, .-runtimeError
	.type	isFalsey, @function
isFalsey:
.LFB6:
	.loc 3 50 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 51 20
	movl	16(%rbp), %eax
	.loc 3 51 38
	cmpl	$1, %eax
	je	.L14
	.loc 3 51 50 discriminator 2
	movl	16(%rbp), %eax
	.loc 3 51 38 discriminator 2
	cmpl	$2, %eax
	jne	.L15
	.loc 3 51 84 discriminator 3
	movzbl	32(%rbp), %eax
	.loc 3 51 72 discriminator 3
	xorl	$1, %eax
	.loc 3 51 69 discriminator 3
	testb	%al, %al
	je	.L15
.L14:
	.loc 3 51 38 discriminator 5
	movl	$1, %eax
	jmp	.L16
.L15:
	.loc 3 51 38 is_stmt 0 discriminator 6
	movl	$0, %eax
.L16:
	.loc 3 51 38 discriminator 8
	andl	$1, %eax
	.loc 3 52 1 is_stmt 1 discriminator 8
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	isFalsey, .-isFalsey
	.type	concatenate, @function
concatenate:
.LFB7:
	.loc 3 54 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	.loc 3 54 26
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 55 35
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 55 16
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc 3 56 35
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 56 16
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	.loc 3 58 23
	movq	-136(%rbp), %rax
	movzwl	16(%rax), %eax
	movl	%eax, %edx
	.loc 3 58 35
	movq	-144(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 3 58 32
	addl	%edx, %eax
	.loc 3 58 13
	movw	%ax, -146(%rbp)
	.loc 3 59 50
	movswl	-146(%rbp), %eax
	addl	$1, %eax
	.loc 3 59 30
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	reallocate@PLT
	movq	%rax, -128(%rbp)
	.loc 3 60 30
	movq	-136(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 3 60 5
	movswq	%ax, %rdx
	.loc 3 60 20
	movq	-136(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 3 60 5
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 3 61 42
	movq	-144(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 3 61 5
	movswq	%ax, %rdx
	.loc 3 61 32
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	.loc 3 61 21
	movq	-136(%rbp), %rcx
	movzwl	16(%rcx), %ecx
	movswq	%cx, %rsi
	.loc 3 61 18
	movq	-128(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 3 61 5
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 3 62 10
	movswq	-146(%rbp), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 62 19
	movb	$0, (%rax)
	.loc 3 64 25
	movswl	-146(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	takeString@PLT
	movq	%rax, -120(%rbp)
	.loc 3 65 18
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movl	$14, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 3 65 5
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	call	push
	addq	$32, %rsp
	.loc 3 66 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	concatenate, .-concatenate
	.section	.rodata
.LC1:
	.string	"          "
.LC2:
	.string	"[ "
.LC3:
	.string	" ]"
.LC4:
	.string	"Undefined variable."
.LC5:
	.string	"Operands must be numbers."
	.align 8
.LC6:
	.string	"Operands must be doubles or strings."
.LC7:
	.string	"Operand must be a number."
	.text
	.type	run, @function
run:
.LFB8:
	.loc 3 68 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$1536, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 3 68 29
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.L73:
.LBB2:
	.loc 3 106 5
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LBB3:
	.loc 3 107 16
	leaq	16+vm(%rip), %rax
	movq	%rax, -1512(%rbp)
	.loc 3 107 5
	jmp	.L21
.L22:
	.loc 3 109 9 discriminator 3
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 110 9 discriminator 3
	movq	-1512(%rbp), %rax
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	call	printValue@PLT
	addq	$32, %rsp
	.loc 3 111 9 discriminator 3
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 107 57 discriminator 3
	addq	$32, -1512(%rbp)
.L21:
	.loc 3 107 42 discriminator 1
	movq	8208+vm(%rip), %rax
	.loc 3 107 5 discriminator 1
	cmpq	%rax, -1512(%rbp)
	jb	.L22
.LBE3:
	.loc 3 113 5
	movl	$10, %edi
	call	putchar@PLT
	.loc 3 114 50
	movq	8+vm(%rip), %rdx
	.loc 3 114 58
	movq	vm(%rip), %rax
	.loc 3 114 64
	movq	8(%rax), %rax
	.loc 3 114 54
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 114 5
	movswl	%ax, %edx
	movq	vm(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	disassembleInstruction@PLT
	.loc 3 118 34
	movq	8+vm(%rip), %rax
	.loc 3 118 37
	leaq	1(%rax), %rdx
	movq	%rdx, 8+vm(%rip)
	.loc 3 118 28
	movzbl	(%rax), %eax
	movb	%al, -1518(%rbp)
	movzbl	-1518(%rbp), %eax
	cmpl	$24, %eax
	ja	.L73
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L25(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L25(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L25:
	.long	.L48-.L25
	.long	.L73-.L25
	.long	.L47-.L25
	.long	.L46-.L25
	.long	.L45-.L25
	.long	.L44-.L25
	.long	.L43-.L25
	.long	.L42-.L25
	.long	.L41-.L25
	.long	.L40-.L25
	.long	.L39-.L25
	.long	.L38-.L25
	.long	.L37-.L25
	.long	.L36-.L25
	.long	.L35-.L25
	.long	.L34-.L25
	.long	.L33-.L25
	.long	.L32-.L25
	.long	.L31-.L25
	.long	.L30-.L25
	.long	.L29-.L25
	.long	.L28-.L25
	.long	.L27-.L25
	.long	.L26-.L25
	.long	.L24-.L25
	.text
.L48:
.LBB4:
.LBB5:
	.loc 3 120 37
	movq	vm(%rip), %rax
	.loc 3 120 54
	movq	24(%rax), %rcx
	.loc 3 120 66
	movq	8+vm(%rip), %rax
	.loc 3 120 69
	leaq	1(%rax), %rdx
	movq	%rdx, 8+vm(%rip)
	.loc 3 120 63
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 3 120 61
	salq	$5, %rax
	addq	%rax, %rcx
	.loc 3 120 23
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -1312(%rbp)
	movq	%rdx, -1304(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -1296(%rbp)
	movq	%rdx, -1288(%rbp)
	.loc 3 121 17
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
	.loc 3 122 17
	jmp	.L23
.L47:
.LBE5:
	.loc 3 124 39
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$1, -1312(%rbp)
	.loc 3 124 26
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
	.loc 3 124 13
	jmp	.L23
.L46:
	.loc 3 125 40
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$2, -1312(%rbp)
	movb	$1, -1296(%rbp)
	.loc 3 125 27
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
	.loc 3 125 37
	jmp	.L23
.L45:
	.loc 3 126 41
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$2, -1312(%rbp)
	.loc 3 126 28
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
	.loc 3 126 37
	jmp	.L23
.L44:
	.loc 3 127 26
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 127 13
	jmp	.L23
.L43:
	.loc 3 129 32
	movq	8248+vm(%rip), %rcx
	.loc 3 129 44
	movq	8+vm(%rip), %rax
	.loc 3 129 47
	leaq	1(%rax), %rdx
	movq	%rdx, 8+vm(%rip)
	.loc 3 129 41
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 3 129 39
	salq	$5, %rax
	leaq	(%rcx,%rax), %rbx
	.loc 3 129 54
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	movq	-1552(%rbp), %rax
	movq	-1544(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	.loc 3 130 17
	jmp	.L23
.L42:
.LBB6:
	.loc 3 133 37
	movq	8+vm(%rip), %rax
	.loc 3 133 40
	leaq	1(%rax), %rdx
	movq	%rdx, 8+vm(%rip)
	.loc 3 133 25
	movzbl	(%rax), %eax
	movb	%al, -1515(%rbp)
	.loc 3 134 37
	movq	8248+vm(%rip), %rax
	.loc 3 134 44
	movzbl	-1515(%rbp), %edx
	salq	$5, %rdx
	addq	%rdx, %rax
	.loc 3 134 52
	movl	(%rax), %eax
	.loc 3 134 19
	testl	%eax, %eax
	jne	.L50
	.loc 3 135 21
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 136 28
	movl	$2, %eax
	jmp	.L72
.L50:
	.loc 3 138 32
	movq	8248+vm(%rip), %rax
	.loc 3 138 39
	movzbl	-1515(%rbp), %edx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rbx
	.loc 3 138 49
	leaq	-1552(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	movq	-1552(%rbp), %rax
	movq	-1544(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	.loc 3 139 17
	jmp	.L23
.L41:
.LBE6:
.LBB7:
	.loc 3 142 46
	movq	8248+vm(%rip), %rcx
	.loc 3 142 58
	movq	8+vm(%rip), %rax
	.loc 3 142 61
	leaq	1(%rax), %rdx
	movq	%rdx, 8+vm(%rip)
	.loc 3 142 55
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 3 142 53
	salq	$5, %rax
	addq	%rax, %rcx
	.loc 3 142 23
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -1312(%rbp)
	movq	%rdx, -1304(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -1296(%rbp)
	movq	%rdx, -1288(%rbp)
	.loc 3 143 28
	movl	-1312(%rbp), %eax
	.loc 3 143 19
	testl	%eax, %eax
	jne	.L52
	.loc 3 144 21
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 145 28
	movl	$2, %eax
.LBE7:
	.loc 3 136 28
	jmp	.L72
.L52:
.LBB8:
	.loc 3 147 17
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
	jmp	.L73
.L40:
.LBE8:
.LBB9:
	.loc 3 151 36
	movq	8+vm(%rip), %rax
	.loc 3 151 39
	leaq	1(%rax), %rdx
	movq	%rdx, 8+vm(%rip)
	.loc 3 151 25
	movzbl	(%rax), %eax
	movb	%al, -1516(%rbp)
	.loc 3 152 25
	movzbl	-1516(%rbp), %eax
	.loc 3 152 34
	cltq
	salq	$5, %rax
	movq	%rax, %r12
	leaq	16+vm(%rip), %rbx
	leaq	-1552(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	movq	-1552(%rbp), %rax
	movq	-1544(%rbp), %rdx
	movq	%rax, (%r12,%rbx)
	movq	%rdx, 8(%r12,%rbx)
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, 16(%r12,%rbx)
	movq	%rdx, 24(%r12,%rbx)
	.loc 3 153 17
	jmp	.L23
.L39:
.LBE9:
.LBB10:
	.loc 3 156 36
	movq	8+vm(%rip), %rax
	.loc 3 156 39
	leaq	1(%rax), %rdx
	movq	%rdx, 8+vm(%rip)
	.loc 3 156 25
	movzbl	(%rax), %eax
	movb	%al, -1517(%rbp)
	.loc 3 157 17
	movzbl	-1517(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+vm(%rip), %rax
	pushq	24(%rdx,%rax)
	pushq	16(%rdx,%rax)
	pushq	8(%rdx,%rax)
	pushq	(%rdx,%rax)
	call	push
	addq	$32, %rsp
	.loc 3 158 17
	jmp	.L23
.L38:
.LBE10:
.LBB11:
	.loc 3 161 27
	leaq	-1376(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 162 27
	leaq	-1344(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 163 30
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$2, -1312(%rbp)
	.loc 3 163 53
	pushq	-1352(%rbp)
	pushq	-1360(%rbp)
	pushq	-1368(%rbp)
	pushq	-1376(%rbp)
	pushq	-1320(%rbp)
	pushq	-1328(%rbp)
	pushq	-1336(%rbp)
	pushq	-1344(%rbp)
	call	valuesEqual@PLT
	addq	$64, %rsp
	.loc 3 163 30
	movb	%al, -1296(%rbp)
	.loc 3 163 17
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
	.loc 3 164 17
	jmp	.L23
.L36:
.LBE11:
.LBB12:
	.loc 3 166 37
	leaq	-1280(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 166 46
	movl	-1280(%rbp), %eax
	.loc 3 166 33
	cmpl	$12, %eax
	jne	.L53
	.loc 3 166 70 discriminator 2
	leaq	-1248(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 166 79 discriminator 2
	movl	-1248(%rbp), %eax
	.loc 3 166 64 discriminator 2
	cmpl	$12, %eax
	je	.L54
.L53:
	.loc 3 166 99 discriminator 3
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 166 149 discriminator 3
	movl	$2, %eax
.LBE12:
	.loc 3 136 28 discriminator 3
	jmp	.L72
.L54:
.LBB13:
	.loc 3 166 189 discriminator 4
	leaq	-1216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 166 183 discriminator 4
	movsd	-1200(%rbp), %xmm0
	movsd	%xmm0, -1408(%rbp)
	.loc 3 166 218 discriminator 4
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 166 212 discriminator 4
	movsd	-1168(%rbp), %xmm0
	movsd	%xmm0, -1400(%rbp)
	.loc 3 166 247 discriminator 4
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$2, -1312(%rbp)
	.loc 3 166 272 discriminator 4
	movsd	-1408(%rbp), %xmm0
	comisd	-1400(%rbp), %xmm0
	seta	%al
	.loc 3 166 247 discriminator 4
	movb	%al, -1296(%rbp)
	.loc 3 166 234 discriminator 4
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE13:
	.loc 3 166 32 discriminator 4
	jmp	.L23
.L37:
.LBB14:
	.loc 3 167 40
	leaq	-1152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 167 49
	movl	-1152(%rbp), %eax
	.loc 3 167 36
	cmpl	$12, %eax
	jne	.L55
	.loc 3 167 73 discriminator 2
	leaq	-1120(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 167 82 discriminator 2
	movl	-1120(%rbp), %eax
	.loc 3 167 67 discriminator 2
	cmpl	$12, %eax
	je	.L56
.L55:
	.loc 3 167 102 discriminator 3
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 167 152 discriminator 3
	movl	$2, %eax
.LBE14:
	.loc 3 136 28 discriminator 3
	jmp	.L72
.L56:
.LBB15:
	.loc 3 167 192 discriminator 4
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 167 186 discriminator 4
	movsd	-1072(%rbp), %xmm0
	movsd	%xmm0, -1392(%rbp)
	.loc 3 167 221 discriminator 4
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 167 215 discriminator 4
	movsd	-1040(%rbp), %xmm0
	movsd	%xmm0, -1384(%rbp)
	.loc 3 167 250 discriminator 4
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$2, -1312(%rbp)
	.loc 3 167 275 discriminator 4
	movsd	-1384(%rbp), %xmm0
	comisd	-1392(%rbp), %xmm0
	seta	%al
	.loc 3 167 250 discriminator 4
	movb	%al, -1296(%rbp)
	.loc 3 167 237 discriminator 4
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE15:
	.loc 3 167 32 discriminator 4
	jmp	.L23
.L35:
	.loc 3 169 20
	leaq	-1024(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	pushq	-1000(%rbp)
	pushq	-1008(%rbp)
	pushq	-1016(%rbp)
	pushq	-1024(%rbp)
	movl	$0, %edi
	call	isObjType
	addq	$32, %rsp
	.loc 3 169 19
	testb	%al, %al
	je	.L57
	.loc 3 169 55 discriminator 1
	leaq	-992(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	pushq	-968(%rbp)
	pushq	-976(%rbp)
	pushq	-984(%rbp)
	pushq	-992(%rbp)
	movl	$0, %edi
	call	isObjType
	addq	$32, %rsp
	.loc 3 169 52 discriminator 1
	testb	%al, %al
	je	.L57
	.loc 3 170 21
	movl	$0, %eax
	call	concatenate
	jmp	.L58
.L57:
	.loc 3 171 30
	leaq	-960(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 171 39
	movl	-960(%rbp), %eax
	.loc 3 171 27
	cmpl	$12, %eax
	jne	.L59
	.loc 3 171 62 discriminator 1
	leaq	-928(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 171 71 discriminator 1
	movl	-928(%rbp), %eax
	.loc 3 171 57 discriminator 1
	cmpl	$12, %eax
	jne	.L59
.LBB16:
	.loc 3 172 34
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 172 28
	movsd	-880(%rbp), %xmm0
	movsd	%xmm0, -1424(%rbp)
	.loc 3 173 34
	leaq	-864(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 173 28
	movsd	-848(%rbp), %xmm0
	movsd	%xmm0, -1416(%rbp)
	.loc 3 174 34
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$12, -1312(%rbp)
	.loc 3 174 54
	movsd	-1416(%rbp), %xmm0
	addsd	-1424(%rbp), %xmm0
	.loc 3 174 34
	movsd	%xmm0, -1296(%rbp)
	.loc 3 174 21
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE16:
	.loc 3 171 89
	jmp	.L58
.L59:
	.loc 3 176 21
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 177 28
	movl	$2, %eax
	jmp	.L72
.L58:
	.loc 3 179 17 discriminator 5
	jmp	.L23
.L34:
.LBB17:
	.loc 3 180 41
	leaq	-832(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 180 50
	movl	-832(%rbp), %eax
	.loc 3 180 37
	cmpl	$12, %eax
	jne	.L60
	.loc 3 180 74 discriminator 2
	leaq	-800(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 180 83 discriminator 2
	movl	-800(%rbp), %eax
	.loc 3 180 68 discriminator 2
	cmpl	$12, %eax
	je	.L61
.L60:
	.loc 3 180 103 discriminator 3
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 180 153 discriminator 3
	movl	$2, %eax
.LBE17:
	.loc 3 136 28 discriminator 3
	jmp	.L72
.L61:
.LBB18:
	.loc 3 180 193 discriminator 4
	leaq	-768(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 180 187 discriminator 4
	movsd	-752(%rbp), %xmm0
	movsd	%xmm0, -1440(%rbp)
	.loc 3 180 222 discriminator 4
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 180 216 discriminator 4
	movsd	-720(%rbp), %xmm0
	movsd	%xmm0, -1432(%rbp)
	.loc 3 180 251 discriminator 4
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$12, -1312(%rbp)
	.loc 3 180 271 discriminator 4
	movsd	-1432(%rbp), %xmm0
	subsd	-1440(%rbp), %xmm0
	.loc 3 180 251 discriminator 4
	movsd	%xmm0, -1296(%rbp)
	.loc 3 180 238 discriminator 4
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE18:
	.loc 3 180 32 discriminator 4
	jmp	.L23
.L33:
.LBB19:
	.loc 3 181 41
	leaq	-704(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 181 50
	movl	-704(%rbp), %eax
	.loc 3 181 37
	cmpl	$12, %eax
	jne	.L62
	.loc 3 181 74 discriminator 2
	leaq	-672(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 181 83 discriminator 2
	movl	-672(%rbp), %eax
	.loc 3 181 68 discriminator 2
	cmpl	$12, %eax
	je	.L63
.L62:
	.loc 3 181 103 discriminator 3
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 181 153 discriminator 3
	movl	$2, %eax
.LBE19:
	.loc 3 136 28 discriminator 3
	jmp	.L72
.L63:
.LBB20:
	.loc 3 181 193 discriminator 4
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 181 187 discriminator 4
	movsd	-624(%rbp), %xmm0
	movsd	%xmm0, -1456(%rbp)
	.loc 3 181 222 discriminator 4
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 181 216 discriminator 4
	movsd	-592(%rbp), %xmm0
	movsd	%xmm0, -1448(%rbp)
	.loc 3 181 251 discriminator 4
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$12, -1312(%rbp)
	.loc 3 181 271 discriminator 4
	movsd	-1448(%rbp), %xmm0
	mulsd	-1456(%rbp), %xmm0
	.loc 3 181 251 discriminator 4
	movsd	%xmm0, -1296(%rbp)
	.loc 3 181 238 discriminator 4
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE20:
	.loc 3 181 32 discriminator 4
	jmp	.L23
.L32:
.LBB21:
	.loc 3 182 39
	leaq	-576(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 182 48
	movl	-576(%rbp), %eax
	.loc 3 182 35
	cmpl	$12, %eax
	jne	.L64
	.loc 3 182 72 discriminator 2
	leaq	-544(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 182 81 discriminator 2
	movl	-544(%rbp), %eax
	.loc 3 182 66 discriminator 2
	cmpl	$12, %eax
	je	.L65
.L64:
	.loc 3 182 101 discriminator 3
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 182 151 discriminator 3
	movl	$2, %eax
.LBE21:
	.loc 3 136 28 discriminator 3
	jmp	.L72
.L65:
.LBB22:
	.loc 3 182 191 discriminator 4
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 182 185 discriminator 4
	movsd	-496(%rbp), %xmm0
	movsd	%xmm0, -1472(%rbp)
	.loc 3 182 220 discriminator 4
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 182 214 discriminator 4
	movsd	-464(%rbp), %xmm0
	movsd	%xmm0, -1464(%rbp)
	.loc 3 182 249 discriminator 4
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$12, -1312(%rbp)
	.loc 3 182 269 discriminator 4
	movsd	-1464(%rbp), %xmm0
	divsd	-1472(%rbp), %xmm0
	.loc 3 182 249 discriminator 4
	movsd	%xmm0, -1296(%rbp)
	.loc 3 182 236 discriminator 4
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE22:
	.loc 3 182 32 discriminator 4
	jmp	.L23
.L30:
.LBB23:
	.loc 3 183 45
	leaq	-448(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 183 54
	movl	-448(%rbp), %eax
	.loc 3 183 41
	cmpl	$12, %eax
	jne	.L66
	.loc 3 183 78 discriminator 2
	leaq	-416(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 183 87 discriminator 2
	movl	-416(%rbp), %eax
	.loc 3 183 72 discriminator 2
	cmpl	$12, %eax
	je	.L67
.L66:
	.loc 3 183 107 discriminator 3
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 183 157 discriminator 3
	movl	$2, %eax
.LBE23:
	.loc 3 136 28 discriminator 3
	jmp	.L72
.L67:
.LBB24:
	.loc 3 183 197 discriminator 4
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 183 191 discriminator 4
	movsd	-368(%rbp), %xmm0
	movsd	%xmm0, -1504(%rbp)
	.loc 3 183 226 discriminator 4
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 183 220 discriminator 4
	movsd	-336(%rbp), %xmm0
	movsd	%xmm0, -1496(%rbp)
	.loc 3 183 255 discriminator 4
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$12, -1312(%rbp)
	.loc 3 183 273 discriminator 4
	movsd	-1504(%rbp), %xmm0
	movq	-1496(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	.loc 3 183 255 discriminator 4
	movq	%rax, -1296(%rbp)
	.loc 3 183 242 discriminator 4
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE24:
	.loc 3 183 34 discriminator 4
	jmp	.L23
.L31:
.LBB25:
	.loc 3 184 41
	leaq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 184 50
	movl	-320(%rbp), %eax
	.loc 3 184 37
	cmpl	$12, %eax
	jne	.L68
	.loc 3 184 74 discriminator 2
	leaq	-288(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 184 83 discriminator 2
	movl	-288(%rbp), %eax
	.loc 3 184 68 discriminator 2
	cmpl	$12, %eax
	je	.L69
.L68:
	.loc 3 184 103 discriminator 3
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 184 153 discriminator 3
	movl	$2, %eax
.LBE25:
	.loc 3 136 28 discriminator 3
	jmp	.L72
.L69:
.LBB26:
	.loc 3 184 193 discriminator 4
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 184 187 discriminator 4
	movsd	-240(%rbp), %xmm0
	movsd	%xmm0, -1488(%rbp)
	.loc 3 184 222 discriminator 4
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 184 216 discriminator 4
	movsd	-208(%rbp), %xmm0
	movsd	%xmm0, -1480(%rbp)
	.loc 3 184 251 discriminator 4
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$12, -1312(%rbp)
	.loc 3 184 269 discriminator 4
	movsd	-1488(%rbp), %xmm0
	movq	-1480(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	fmod@PLT
	movq	%xmm0, %rax
	.loc 3 184 251 discriminator 4
	movq	%rax, -1296(%rbp)
	.loc 3 184 238 discriminator 4
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE26:
	.loc 3 184 32 discriminator 4
	jmp	.L23
.L29:
	.loc 3 185 39
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$2, -1312(%rbp)
	.loc 3 185 62
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	pushq	-168(%rbp)
	pushq	-176(%rbp)
	pushq	-184(%rbp)
	pushq	-192(%rbp)
	call	isFalsey
	addq	$32, %rsp
	.loc 3 185 39
	movb	%al, -1296(%rbp)
	.loc 3 185 26
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
	.loc 3 185 13
	jmp	.L23
.L28:
.LBB27:
	.loc 3 187 23
	leaq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	.loc 3 187 32
	movl	-160(%rbp), %eax
	.loc 3 187 19
	cmpl	$12, %eax
	je	.L70
	.loc 3 188 21
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	runtimeError
	.loc 3 189 28
	movl	$2, %eax
.LBE27:
	.loc 3 136 28
	jmp	.L72
.L70:
.LBB28:
	.loc 3 191 30
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movl	$12, -1312(%rbp)
	.loc 3 191 51
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	.loc 3 191 60
	movsd	-112(%rbp), %xmm0
	.loc 3 191 48
	movq	.LC8(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	.loc 3 191 30
	movsd	%xmm0, -1296(%rbp)
	.loc 3 191 17
	pushq	-1288(%rbp)
	pushq	-1296(%rbp)
	pushq	-1304(%rbp)
	pushq	-1312(%rbp)
	call	push
	addq	$32, %rsp
.LBE28:
	.loc 3 193 17
	jmp	.L23
.L27:
	.loc 3 195 17
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pop
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	call	printValue@PLT
	addq	$32, %rsp
	.loc 3 196 17
	movl	$10, %edi
	call	putchar@PLT
	.loc 3 197 17
	jmp	.L23
.L26:
.LBB29:
	.loc 3 200 42
	movq	8+vm(%rip), %rax
	addq	$2, %rax
	movq	%rax, 8+vm(%rip)
	.loc 3 200 62
	movq	8+vm(%rip), %rax
	.loc 3 200 65
	subq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 3 200 70
	sall	$8, %eax
	.loc 3 200 76
	movl	%eax, %edx
	.loc 3 200 80
	movq	8+vm(%rip), %rax
	.loc 3 200 83
	subq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 3 200 76
	orl	%edx, %eax
	.loc 3 200 26
	movw	%ax, -1514(%rbp)
	.loc 3 201 20
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	check
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	call	isFalsey
	addq	$32, %rsp
	.loc 3 201 19
	testb	%al, %al
	je	.L75
	.loc 3 201 46 discriminator 1
	movq	8+vm(%rip), %rdx
	movzwl	-1514(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, 8+vm(%rip)
	.loc 3 202 17 discriminator 1
	jmp	.L75
.L24:
.LBE29:
	.loc 3 205 24
	movl	$0, %eax
	jmp	.L72
.L75:
.LBB30:
	.loc 3 202 17
	nop
.L23:
.LBE30:
.LBE4:
.LBE2:
	.loc 3 104 12
	jmp	.L73
.L72:
	.loc 3 216 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	run, .-run
	.globl	interpret
	.type	interpret, @function
interpret:
.LFB9:
	.loc 3 218 48
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	.loc 3 218 48
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 220 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	initChunk@PLT
	.loc 3 222 9
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compile@PLT
	.loc 3 222 8
	xorl	$1, %eax
	.loc 3 222 7
	testb	%al, %al
	je	.L77
	.loc 3 223 9
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freeChunk@PLT
	.loc 3 224 16
	movl	$1, %eax
	jmp	.L79
.L77:
	.loc 3 227 14
	leaq	-64(%rbp), %rax
	movq	%rax, vm(%rip)
	.loc 3 228 15
	movq	vm(%rip), %rax
	.loc 3 228 21
	movq	8(%rax), %rax
	.loc 3 228 11
	movq	%rax, 8+vm(%rip)
	.loc 3 230 30
	movl	$0, %eax
	call	run
	movl	%eax, -68(%rbp)
	.loc 3 232 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freeChunk@PLT
	.loc 3 233 12
	movl	-68(%rbp), %eax
.L79:
	.loc 3 234 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L80
	.loc 3 234 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	interpret, .-interpret
	.globl	push
	.type	push, @function
push:
.LFB10:
	.loc 3 236 23 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 237 8
	movq	8208+vm(%rip), %rcx
	.loc 3 237 18
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	32(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 3 238 7
	movq	8208+vm(%rip), %rax
	.loc 3 238 16
	addq	$32, %rax
	movq	%rax, 8208+vm(%rip)
	.loc 3 239 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	push, .-push
	.globl	pop
	.type	pop, @function
pop:
.LFB11:
	.loc 3 241 12
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 3 242 7
	movq	8208+vm(%rip), %rax
	.loc 3 242 16
	subq	$32, %rax
	movq	%rax, 8208+vm(%rip)
	.loc 3 243 15
	movq	8208+vm(%rip), %rsi
	.loc 3 243 12
	movq	-8(%rbp), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 3 247 1
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	pop, .-pop
	.type	check, @function
check:
.LFB12:
	.loc 3 249 37
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	.loc 3 250 14
	movq	8208+vm(%rip), %rax
	.loc 3 250 27
	movswl	-12(%rbp), %edx
	notl	%edx
	movslq	%edx, %rdx
	.loc 3 250 23
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rsi
	movq	-8(%rbp), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 3 251 1
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	check, .-check
	.section	.rodata
	.align 16
.LC8:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 8 "VirtualMachine/vm/../../Bytecode/debug/../chunk/../value/value.h"
	.file 9 "VirtualMachine/vm/../../Bytecode/debug/../chunk/chunk.h"
	.file 10 "VirtualMachine/vm/../../Compilation/compiler/../../VirtualMachine/vm/../../Language/table/table.h"
	.file 11 "VirtualMachine/vm/../../Compilation/compiler/../../VirtualMachine/vm/vm.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 13 "<built-in>"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x11df
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1272
	.byte	0xc
	.long	.LASF1273
	.long	.LASF1274
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF969
	.uleb128 0x3
	.long	.LASF974
	.byte	0x4
	.byte	0xd1
	.byte	0x1b
	.long	0x44
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF970
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF971
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF972
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF973
	.uleb128 0x3
	.long	.LASF975
	.byte	0x5
	.byte	0x25
	.byte	0x15
	.long	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF976
	.uleb128 0x3
	.long	.LASF977
	.byte	0x5
	.byte	0x26
	.byte	0x17
	.long	0x52
	.uleb128 0x3
	.long	.LASF978
	.byte	0x5
	.byte	0x27
	.byte	0x1a
	.long	0x92
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF979
	.uleb128 0x3
	.long	.LASF980
	.byte	0x5
	.byte	0x28
	.byte	0x1c
	.long	0x59
	.uleb128 0x3
	.long	.LASF981
	.byte	0x5
	.byte	0x29
	.byte	0x14
	.long	0x4b
	.uleb128 0x3
	.long	.LASF982
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x60
	.uleb128 0x3
	.long	.LASF983
	.byte	0x5
	.byte	0x2c
	.byte	0x19
	.long	0x31
	.uleb128 0x3
	.long	.LASF984
	.byte	0x5
	.byte	0x2d
	.byte	0x1b
	.long	0x44
	.uleb128 0x3
	.long	.LASF985
	.byte	0x5
	.byte	0x98
	.byte	0x12
	.long	0x31
	.uleb128 0x3
	.long	.LASF986
	.byte	0x5
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
	.long	.LASF987
	.uleb128 0x7
	.long	0xf5
	.uleb128 0x3
	.long	.LASF988
	.byte	0x6
	.byte	0x18
	.byte	0x12
	.long	0x67
	.uleb128 0x7
	.long	0x101
	.uleb128 0x3
	.long	.LASF989
	.byte	0x6
	.byte	0x19
	.byte	0x13
	.long	0x86
	.uleb128 0x3
	.long	.LASF990
	.byte	0x6
	.byte	0x1a
	.byte	0x13
	.long	0xa5
	.uleb128 0x3
	.long	.LASF991
	.byte	0x6
	.byte	0x1b
	.byte	0x13
	.long	0xbd
	.uleb128 0x3
	.long	.LASF992
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.long	0x7a
	.uleb128 0x3
	.long	.LASF993
	.byte	0x7
	.byte	0x19
	.byte	0x14
	.long	0x99
	.uleb128 0x3
	.long	.LASF994
	.byte	0x7
	.byte	0x1a
	.byte	0x14
	.long	0xb1
	.uleb128 0x3
	.long	.LASF995
	.byte	0x7
	.byte	0x1b
	.byte	0x14
	.long	0xc9
	.uleb128 0x8
	.string	"Obj"
	.byte	0x8
	.byte	0x9
	.byte	0x14
	.long	0x172
	.uleb128 0x9
	.string	"Obj"
	.byte	0x10
	.byte	0x1
	.byte	0x14
	.byte	0x8
	.long	0x19a
	.uleb128 0xa
	.long	.LASF996
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.long	0x4fc
	.byte	0
	.uleb128 0xa
	.long	.LASF997
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.long	0x508
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF998
	.byte	0x8
	.byte	0xa
	.byte	0x1a
	.long	0x1a6
	.uleb128 0xb
	.long	.LASF998
	.byte	0x28
	.byte	0x1
	.byte	0x19
	.byte	0x8
	.long	0x1e8
	.uleb128 0xc
	.string	"obj"
	.byte	0x1
	.byte	0x1a
	.byte	0x9
	.long	0x166
	.byte	0
	.uleb128 0xa
	.long	.LASF999
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.long	0x112
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1000
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.long	0x50e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF1001
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.long	0x14e
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x8
	.byte	0x38
	.byte	0xe
	.long	0x251
	.uleb128 0xe
	.long	.LASF1002
	.byte	0
	.uleb128 0xe
	.long	.LASF1003
	.byte	0x1
	.uleb128 0xe
	.long	.LASF1004
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1005
	.byte	0x3
	.uleb128 0xe
	.long	.LASF1006
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1007
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1008
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1009
	.byte	0x7
	.uleb128 0xe
	.long	.LASF1010
	.byte	0x8
	.uleb128 0xe
	.long	.LASF1011
	.byte	0x9
	.uleb128 0xe
	.long	.LASF1012
	.byte	0xa
	.uleb128 0xe
	.long	.LASF1013
	.byte	0xb
	.uleb128 0xe
	.long	.LASF1014
	.byte	0xc
	.uleb128 0xe
	.long	.LASF1015
	.byte	0xd
	.uleb128 0xe
	.long	.LASF1016
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF1017
	.byte	0x8
	.byte	0x48
	.byte	0x3
	.long	0x1e8
	.uleb128 0xf
	.byte	0x10
	.byte	0x8
	.byte	0x4c
	.byte	0x5
	.long	0x301
	.uleb128 0x10
	.long	.LASF1018
	.byte	0x8
	.byte	0x4d
	.byte	0xd
	.long	0x301
	.uleb128 0x11
	.string	"i8"
	.byte	0x8
	.byte	0x4e
	.byte	0x10
	.long	0x101
	.uleb128 0x11
	.string	"u8"
	.byte	0x8
	.byte	0x4f
	.byte	0x11
	.long	0x136
	.uleb128 0x11
	.string	"i16"
	.byte	0x8
	.byte	0x50
	.byte	0x11
	.long	0x112
	.uleb128 0x11
	.string	"u16"
	.byte	0x8
	.byte	0x51
	.byte	0x12
	.long	0x142
	.uleb128 0x11
	.string	"i32"
	.byte	0x8
	.byte	0x52
	.byte	0x11
	.long	0x11e
	.uleb128 0x11
	.string	"u32"
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.long	0x14e
	.uleb128 0x11
	.string	"i64"
	.byte	0x8
	.byte	0x54
	.byte	0x11
	.long	0x12a
	.uleb128 0x11
	.string	"u64"
	.byte	0x8
	.byte	0x55
	.byte	0x12
	.long	0x15a
	.uleb128 0x11
	.string	"f32"
	.byte	0x8
	.byte	0x56
	.byte	0xf
	.long	0x308
	.uleb128 0x11
	.string	"f64"
	.byte	0x8
	.byte	0x57
	.byte	0x10
	.long	0x30f
	.uleb128 0x10
	.long	.LASF1019
	.byte	0x8
	.byte	0x58
	.byte	0x15
	.long	0x316
	.uleb128 0x11
	.string	"obj"
	.byte	0x8
	.byte	0x59
	.byte	0xe
	.long	0x31d
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF1020
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF1021
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF1022
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF1023
	.uleb128 0x6
	.byte	0x8
	.long	0x166
	.uleb128 0x12
	.byte	0x20
	.byte	0x8
	.byte	0x4a
	.byte	0x9
	.long	0x346
	.uleb128 0xa
	.long	.LASF996
	.byte	0x8
	.byte	0x4b
	.byte	0xf
	.long	0x251
	.byte	0
	.uleb128 0xc
	.string	"as"
	.byte	0x8
	.byte	0x5a
	.byte	0x7
	.long	0x25d
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF1024
	.byte	0x8
	.byte	0x5b
	.byte	0x3
	.long	0x323
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x8e
	.byte	0x9
	.long	0x383
	.uleb128 0xa
	.long	.LASF1025
	.byte	0x8
	.byte	0x8f
	.byte	0xd
	.long	0x112
	.byte	0
	.uleb128 0xa
	.long	.LASF1026
	.byte	0x8
	.byte	0x90
	.byte	0xd
	.long	0x112
	.byte	0x2
	.uleb128 0xa
	.long	.LASF1027
	.byte	0x8
	.byte	0x91
	.byte	0xc
	.long	0x383
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x346
	.uleb128 0x3
	.long	.LASF1028
	.byte	0x8
	.byte	0x92
	.byte	0x3
	.long	0x352
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x9
	.byte	0x9
	.byte	0xe
	.long	0x43a
	.uleb128 0xe
	.long	.LASF1029
	.byte	0
	.uleb128 0xe
	.long	.LASF1030
	.byte	0x1
	.uleb128 0xe
	.long	.LASF1031
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1032
	.byte	0x3
	.uleb128 0xe
	.long	.LASF1033
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1034
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1035
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1036
	.byte	0x7
	.uleb128 0xe
	.long	.LASF1037
	.byte	0x8
	.uleb128 0xe
	.long	.LASF1038
	.byte	0x9
	.uleb128 0xe
	.long	.LASF1039
	.byte	0xa
	.uleb128 0xe
	.long	.LASF1040
	.byte	0xb
	.uleb128 0xe
	.long	.LASF1041
	.byte	0xc
	.uleb128 0xe
	.long	.LASF1042
	.byte	0xd
	.uleb128 0xe
	.long	.LASF1043
	.byte	0xe
	.uleb128 0xe
	.long	.LASF1044
	.byte	0xf
	.uleb128 0xe
	.long	.LASF1045
	.byte	0x10
	.uleb128 0xe
	.long	.LASF1046
	.byte	0x11
	.uleb128 0xe
	.long	.LASF1047
	.byte	0x12
	.uleb128 0xe
	.long	.LASF1048
	.byte	0x13
	.uleb128 0xe
	.long	.LASF1049
	.byte	0x14
	.uleb128 0xe
	.long	.LASF1050
	.byte	0x15
	.uleb128 0xe
	.long	.LASF1051
	.byte	0x16
	.uleb128 0xe
	.long	.LASF1052
	.byte	0x17
	.uleb128 0xe
	.long	.LASF1053
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.byte	0x25
	.byte	0x9
	.long	0x45e
	.uleb128 0xa
	.long	.LASF1054
	.byte	0x9
	.byte	0x26
	.byte	0xd
	.long	0x112
	.byte	0
	.uleb128 0xa
	.long	.LASF1055
	.byte	0x9
	.byte	0x27
	.byte	0xe
	.long	0x142
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF1056
	.byte	0x9
	.byte	0x28
	.byte	0x3
	.long	0x43a
	.uleb128 0x12
	.byte	0x30
	.byte	0x9
	.byte	0x2a
	.byte	0x9
	.long	0x4cf
	.uleb128 0xa
	.long	.LASF1026
	.byte	0x9
	.byte	0x2b
	.byte	0xd
	.long	0x112
	.byte	0
	.uleb128 0xa
	.long	.LASF1025
	.byte	0x9
	.byte	0x2c
	.byte	0xd
	.long	0x112
	.byte	0x2
	.uleb128 0xa
	.long	.LASF1057
	.byte	0x9
	.byte	0x2d
	.byte	0xe
	.long	0x4cf
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1058
	.byte	0x9
	.byte	0x2e
	.byte	0x10
	.long	0x389
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1059
	.byte	0x9
	.byte	0x2f
	.byte	0xd
	.long	0x112
	.byte	0x20
	.uleb128 0xa
	.long	.LASF1060
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x112
	.byte	0x22
	.uleb128 0xa
	.long	.LASF1061
	.byte	0x9
	.byte	0x31
	.byte	0x10
	.long	0x4d5
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x136
	.uleb128 0x6
	.byte	0x8
	.long	0x45e
	.uleb128 0x3
	.long	.LASF1062
	.byte	0x9
	.byte	0x32
	.byte	0x3
	.long	0x46a
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.long	0x4fc
	.uleb128 0xe
	.long	.LASF1063
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF1064
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.long	0x4e7
	.uleb128 0x6
	.byte	0x8
	.long	0x172
	.uleb128 0x6
	.byte	0x8
	.long	0x101
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x2
	.byte	0x6
	.byte	0xe
	.long	0x817
	.uleb128 0xe
	.long	.LASF1065
	.byte	0
	.uleb128 0xe
	.long	.LASF1066
	.byte	0x1
	.uleb128 0xe
	.long	.LASF1067
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1068
	.byte	0x3
	.uleb128 0xe
	.long	.LASF1069
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1070
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1071
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1072
	.byte	0x7
	.uleb128 0xe
	.long	.LASF1073
	.byte	0x8
	.uleb128 0xe
	.long	.LASF1074
	.byte	0x9
	.uleb128 0xe
	.long	.LASF1075
	.byte	0xa
	.uleb128 0xe
	.long	.LASF1076
	.byte	0xb
	.uleb128 0xe
	.long	.LASF1077
	.byte	0xc
	.uleb128 0xe
	.long	.LASF1078
	.byte	0xd
	.uleb128 0xe
	.long	.LASF1079
	.byte	0xe
	.uleb128 0xe
	.long	.LASF1080
	.byte	0xf
	.uleb128 0xe
	.long	.LASF1081
	.byte	0x10
	.uleb128 0xe
	.long	.LASF1082
	.byte	0x11
	.uleb128 0xe
	.long	.LASF1083
	.byte	0x12
	.uleb128 0xe
	.long	.LASF1084
	.byte	0x13
	.uleb128 0xe
	.long	.LASF1085
	.byte	0x14
	.uleb128 0xe
	.long	.LASF1086
	.byte	0x15
	.uleb128 0xe
	.long	.LASF1087
	.byte	0x16
	.uleb128 0xe
	.long	.LASF1088
	.byte	0x17
	.uleb128 0xe
	.long	.LASF1089
	.byte	0x18
	.uleb128 0xe
	.long	.LASF1090
	.byte	0x19
	.uleb128 0xe
	.long	.LASF1091
	.byte	0x1a
	.uleb128 0xe
	.long	.LASF1092
	.byte	0x1b
	.uleb128 0xe
	.long	.LASF1093
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF1094
	.byte	0x1d
	.uleb128 0xe
	.long	.LASF1095
	.byte	0x1e
	.uleb128 0xe
	.long	.LASF1096
	.byte	0x1f
	.uleb128 0xe
	.long	.LASF1097
	.byte	0x20
	.uleb128 0xe
	.long	.LASF1098
	.byte	0x21
	.uleb128 0xe
	.long	.LASF1099
	.byte	0x22
	.uleb128 0xe
	.long	.LASF1100
	.byte	0x23
	.uleb128 0xe
	.long	.LASF1101
	.byte	0x24
	.uleb128 0xe
	.long	.LASF1102
	.byte	0x25
	.uleb128 0xe
	.long	.LASF1103
	.byte	0x26
	.uleb128 0xe
	.long	.LASF1104
	.byte	0x27
	.uleb128 0xe
	.long	.LASF1105
	.byte	0x28
	.uleb128 0xe
	.long	.LASF1106
	.byte	0x29
	.uleb128 0xe
	.long	.LASF1107
	.byte	0x2a
	.uleb128 0xe
	.long	.LASF1108
	.byte	0x2b
	.uleb128 0xe
	.long	.LASF1109
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF1110
	.byte	0x2d
	.uleb128 0xe
	.long	.LASF1111
	.byte	0x2e
	.uleb128 0xe
	.long	.LASF1112
	.byte	0x2f
	.uleb128 0xe
	.long	.LASF1113
	.byte	0x30
	.uleb128 0xe
	.long	.LASF1114
	.byte	0x31
	.uleb128 0xe
	.long	.LASF1115
	.byte	0x32
	.uleb128 0xe
	.long	.LASF1116
	.byte	0x33
	.uleb128 0xe
	.long	.LASF1117
	.byte	0x34
	.uleb128 0xe
	.long	.LASF1118
	.byte	0x35
	.uleb128 0xe
	.long	.LASF1119
	.byte	0x36
	.uleb128 0xe
	.long	.LASF1120
	.byte	0x37
	.uleb128 0xe
	.long	.LASF1121
	.byte	0x38
	.uleb128 0xe
	.long	.LASF1122
	.byte	0x39
	.uleb128 0xe
	.long	.LASF1123
	.byte	0x3a
	.uleb128 0xe
	.long	.LASF1124
	.byte	0x3b
	.uleb128 0xe
	.long	.LASF1125
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF1126
	.byte	0x3d
	.uleb128 0xe
	.long	.LASF1127
	.byte	0x3e
	.uleb128 0xe
	.long	.LASF1128
	.byte	0x3f
	.uleb128 0xe
	.long	.LASF1129
	.byte	0x40
	.uleb128 0xe
	.long	.LASF1130
	.byte	0x41
	.uleb128 0xe
	.long	.LASF1131
	.byte	0x42
	.uleb128 0xe
	.long	.LASF1132
	.byte	0x43
	.uleb128 0xe
	.long	.LASF1133
	.byte	0x44
	.uleb128 0xe
	.long	.LASF1134
	.byte	0x45
	.uleb128 0xe
	.long	.LASF1135
	.byte	0x46
	.uleb128 0xe
	.long	.LASF1136
	.byte	0x47
	.uleb128 0xe
	.long	.LASF1137
	.byte	0x48
	.uleb128 0xe
	.long	.LASF1138
	.byte	0x49
	.uleb128 0xe
	.long	.LASF1139
	.byte	0x4a
	.uleb128 0xe
	.long	.LASF1140
	.byte	0x4b
	.uleb128 0xe
	.long	.LASF1141
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF1142
	.byte	0x4d
	.uleb128 0xe
	.long	.LASF1143
	.byte	0x4e
	.uleb128 0xe
	.long	.LASF1144
	.byte	0x4f
	.uleb128 0xe
	.long	.LASF1145
	.byte	0x50
	.uleb128 0xe
	.long	.LASF1146
	.byte	0x51
	.uleb128 0xe
	.long	.LASF1147
	.byte	0x52
	.uleb128 0xe
	.long	.LASF1148
	.byte	0x53
	.uleb128 0xe
	.long	.LASF1149
	.byte	0x54
	.uleb128 0xe
	.long	.LASF1150
	.byte	0x55
	.uleb128 0xe
	.long	.LASF1151
	.byte	0x56
	.uleb128 0xe
	.long	.LASF1152
	.byte	0x57
	.uleb128 0xe
	.long	.LASF1153
	.byte	0x58
	.uleb128 0xe
	.long	.LASF1154
	.byte	0x59
	.uleb128 0xe
	.long	.LASF1155
	.byte	0x5a
	.uleb128 0xe
	.long	.LASF1156
	.byte	0x5b
	.uleb128 0xe
	.long	.LASF1157
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF1158
	.byte	0x5d
	.uleb128 0xe
	.long	.LASF1159
	.byte	0x5e
	.uleb128 0xe
	.long	.LASF1160
	.byte	0x5f
	.uleb128 0xe
	.long	.LASF1161
	.byte	0x60
	.uleb128 0xe
	.long	.LASF1162
	.byte	0x61
	.uleb128 0xe
	.long	.LASF1163
	.byte	0x62
	.uleb128 0xe
	.long	.LASF1164
	.byte	0x63
	.uleb128 0xe
	.long	.LASF1165
	.byte	0x64
	.uleb128 0xe
	.long	.LASF1166
	.byte	0x65
	.uleb128 0xe
	.long	.LASF1167
	.byte	0x66
	.uleb128 0xe
	.long	.LASF1168
	.byte	0x67
	.uleb128 0xe
	.long	.LASF1169
	.byte	0x68
	.uleb128 0xe
	.long	.LASF1170
	.byte	0x69
	.uleb128 0xe
	.long	.LASF1171
	.byte	0x6a
	.uleb128 0xe
	.long	.LASF1172
	.byte	0x6b
	.uleb128 0xe
	.long	.LASF1173
	.byte	0x6c
	.uleb128 0xe
	.long	.LASF1174
	.byte	0x6d
	.uleb128 0xe
	.long	.LASF1175
	.byte	0x6e
	.uleb128 0xe
	.long	.LASF1176
	.byte	0x6f
	.uleb128 0xe
	.long	.LASF1177
	.byte	0x70
	.uleb128 0xe
	.long	.LASF1178
	.byte	0x71
	.uleb128 0xe
	.long	.LASF1179
	.byte	0x72
	.uleb128 0xe
	.long	.LASF1180
	.byte	0x73
	.uleb128 0xe
	.long	.LASF1181
	.byte	0x74
	.uleb128 0xe
	.long	.LASF1182
	.byte	0x75
	.uleb128 0xe
	.long	.LASF1183
	.byte	0x76
	.uleb128 0xe
	.long	.LASF1184
	.byte	0x77
	.uleb128 0xe
	.long	.LASF1185
	.byte	0x78
	.uleb128 0xe
	.long	.LASF1186
	.byte	0x79
	.uleb128 0xe
	.long	.LASF1187
	.byte	0x7a
	.uleb128 0xe
	.long	.LASF1188
	.byte	0x7b
	.uleb128 0xe
	.long	.LASF1189
	.byte	0x7c
	.uleb128 0xe
	.long	.LASF1190
	.byte	0x7d
	.byte	0
	.uleb128 0x3
	.long	.LASF1191
	.byte	0x2
	.byte	0xa2
	.byte	0x3
	.long	0x514
	.uleb128 0x12
	.byte	0x18
	.byte	0x2
	.byte	0xa4
	.byte	0x9
	.long	0x861
	.uleb128 0xa
	.long	.LASF996
	.byte	0x2
	.byte	0xa5
	.byte	0xf
	.long	0x817
	.byte	0
	.uleb128 0xa
	.long	.LASF1192
	.byte	0x2
	.byte	0xa6
	.byte	0x13
	.long	0x861
	.byte	0x8
	.uleb128 0xa
	.long	.LASF999
	.byte	0x2
	.byte	0xa7
	.byte	0xd
	.long	0x112
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1055
	.byte	0x2
	.byte	0xa8
	.byte	0xd
	.long	0x112
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10d
	.uleb128 0x3
	.long	.LASF1193
	.byte	0x2
	.byte	0xa9
	.byte	0x3
	.long	0x823
	.uleb128 0x12
	.byte	0x18
	.byte	0x2
	.byte	0xab
	.byte	0x9
	.long	0x8a4
	.uleb128 0xa
	.long	.LASF1192
	.byte	0x2
	.byte	0xac
	.byte	0x13
	.long	0x861
	.byte	0
	.uleb128 0xa
	.long	.LASF1194
	.byte	0x2
	.byte	0xad
	.byte	0x13
	.long	0x861
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1055
	.byte	0x2
	.byte	0xae
	.byte	0xd
	.long	0x112
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF1195
	.byte	0x2
	.byte	0xaf
	.byte	0x3
	.long	0x873
	.uleb128 0x13
	.long	.LASF1211
	.byte	0x2
	.byte	0xb1
	.byte	0x9
	.long	0x8a4
	.uleb128 0x9
	.byte	0x3
	.quad	scanner
	.uleb128 0x12
	.byte	0x30
	.byte	0xa
	.byte	0xa
	.byte	0x9
	.long	0x8ea
	.uleb128 0xc
	.string	"key"
	.byte	0xa
	.byte	0xb
	.byte	0x10
	.long	0x8ea
	.byte	0
	.uleb128 0xa
	.long	.LASF1196
	.byte	0xa
	.byte	0xc
	.byte	0xb
	.long	0x346
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19a
	.uleb128 0x3
	.long	.LASF1197
	.byte	0xa
	.byte	0xd
	.byte	0x3
	.long	0x8c6
	.uleb128 0x12
	.byte	0x18
	.byte	0xa
	.byte	0xf
	.byte	0x9
	.long	0x92d
	.uleb128 0xa
	.long	.LASF1026
	.byte	0xa
	.byte	0x10
	.byte	0xc
	.long	0x38
	.byte	0
	.uleb128 0xa
	.long	.LASF1025
	.byte	0xa
	.byte	0x11
	.byte	0xc
	.long	0x38
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1198
	.byte	0xa
	.byte	0x12
	.byte	0xc
	.long	0x92d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f0
	.uleb128 0x3
	.long	.LASF1199
	.byte	0xa
	.byte	0x13
	.byte	0x3
	.long	0x8fc
	.uleb128 0x14
	.value	0x2060
	.byte	0xb
	.byte	0xc
	.byte	0x9
	.long	0x9b6
	.uleb128 0xa
	.long	.LASF1200
	.byte	0xb
	.byte	0xd
	.byte	0xc
	.long	0x9b6
	.byte	0
	.uleb128 0xc
	.string	"ip"
	.byte	0xb
	.byte	0xe
	.byte	0xe
	.long	0x4cf
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1201
	.byte	0xb
	.byte	0xf
	.byte	0xb
	.long	0x9bc
	.byte	0x10
	.uleb128 0x15
	.long	.LASF1202
	.byte	0xb
	.byte	0x10
	.byte	0xc
	.long	0x383
	.value	0x2010
	.uleb128 0x15
	.long	.LASF1203
	.byte	0xb
	.byte	0x12
	.byte	0xb
	.long	0x933
	.value	0x2018
	.uleb128 0x15
	.long	.LASF1204
	.byte	0xb
	.byte	0x13
	.byte	0x10
	.long	0x389
	.value	0x2030
	.uleb128 0x15
	.long	.LASF1205
	.byte	0xb
	.byte	0x14
	.byte	0xb
	.long	0x933
	.value	0x2040
	.uleb128 0x15
	.long	.LASF1206
	.byte	0xb
	.byte	0x15
	.byte	0xa
	.long	0x31d
	.value	0x2058
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4db
	.uleb128 0x16
	.long	0x346
	.long	0x9cc
	.uleb128 0x17
	.long	0x44
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.string	"VM"
	.byte	0xb
	.byte	0x16
	.byte	0x3
	.long	0x93f
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0xb
	.byte	0x18
	.byte	0xe
	.long	0x9f8
	.uleb128 0xe
	.long	.LASF1207
	.byte	0
	.uleb128 0xe
	.long	.LASF1208
	.byte	0x1
	.uleb128 0xe
	.long	.LASF1209
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF1210
	.byte	0xb
	.byte	0x1c
	.byte	0x3
	.long	0x9d7
	.uleb128 0x18
	.string	"vm"
	.byte	0xb
	.byte	0x1e
	.byte	0xb
	.long	0x9cc
	.uleb128 0x3
	.long	.LASF1212
	.byte	0xc
	.byte	0x28
	.byte	0x1b
	.long	0xa1b
	.uleb128 0x19
	.long	.LASF1275
	.long	0xa24
	.uleb128 0x16
	.long	0xa34
	.long	0xa34
	.uleb128 0x17
	.long	0x44
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF1276
	.byte	0x18
	.byte	0xd
	.byte	0
	.long	0xa71
	.uleb128 0x1b
	.long	.LASF1213
	.byte	0xd
	.byte	0
	.long	0x60
	.byte	0
	.uleb128 0x1b
	.long	.LASF1214
	.byte	0xd
	.byte	0
	.long	0x60
	.byte	0x4
	.uleb128 0x1b
	.long	.LASF1215
	.byte	0xd
	.byte	0
	.long	0xed
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF1216
	.byte	0xd
	.byte	0
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF1217
	.byte	0xc
	.byte	0x63
	.byte	0x18
	.long	0xa0f
	.uleb128 0xb
	.long	.LASF1218
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0xc04
	.uleb128 0xa
	.long	.LASF1219
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0x4b
	.byte	0
	.uleb128 0xa
	.long	.LASF1220
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0xef
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1221
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0xef
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1222
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0xef
	.byte	0x18
	.uleb128 0xa
	.long	.LASF1223
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0xef
	.byte	0x20
	.uleb128 0xa
	.long	.LASF1224
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0xef
	.byte	0x28
	.uleb128 0xa
	.long	.LASF1225
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0xef
	.byte	0x30
	.uleb128 0xa
	.long	.LASF1226
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0xef
	.byte	0x38
	.uleb128 0xa
	.long	.LASF1227
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0xef
	.byte	0x40
	.uleb128 0xa
	.long	.LASF1228
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0xef
	.byte	0x48
	.uleb128 0xa
	.long	.LASF1229
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0xef
	.byte	0x50
	.uleb128 0xa
	.long	.LASF1230
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0xef
	.byte	0x58
	.uleb128 0xa
	.long	.LASF1231
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0xc1d
	.byte	0x60
	.uleb128 0xa
	.long	.LASF1232
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0xc23
	.byte	0x68
	.uleb128 0xa
	.long	.LASF1233
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0x4b
	.byte	0x70
	.uleb128 0xa
	.long	.LASF1234
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0x4b
	.byte	0x74
	.uleb128 0xa
	.long	.LASF1235
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0xd5
	.byte	0x78
	.uleb128 0xa
	.long	.LASF1236
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x59
	.byte	0x80
	.uleb128 0xa
	.long	.LASF1237
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0x73
	.byte	0x82
	.uleb128 0xa
	.long	.LASF1238
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0xc29
	.byte	0x83
	.uleb128 0xa
	.long	.LASF1239
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0xc39
	.byte	0x88
	.uleb128 0xa
	.long	.LASF1240
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0xe1
	.byte	0x90
	.uleb128 0xa
	.long	.LASF1241
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0xc44
	.byte	0x98
	.uleb128 0xa
	.long	.LASF1242
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0xc4f
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF1243
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0xc23
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF1244
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF1245
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0x38
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF1246
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0x4b
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF1247
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0xc55
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF1248
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0xa7d
	.uleb128 0x1c
	.long	.LASF1277
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1d
	.long	.LASF1249
	.uleb128 0x6
	.byte	0x8
	.long	0xc18
	.uleb128 0x6
	.byte	0x8
	.long	0xa7d
	.uleb128 0x16
	.long	0xf5
	.long	0xc39
	.uleb128 0x17
	.long	0x44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc10
	.uleb128 0x1d
	.long	.LASF1250
	.uleb128 0x6
	.byte	0x8
	.long	0xc3f
	.uleb128 0x1d
	.long	.LASF1251
	.uleb128 0x6
	.byte	0x8
	.long	0xc4a
	.uleb128 0x16
	.long	0xf5
	.long	0xc65
	.uleb128 0x17
	.long	0x44
	.byte	0x13
	.byte	0
	.uleb128 0x1e
	.long	.LASF1252
	.byte	0x10
	.byte	0x89
	.byte	0xe
	.long	0xc71
	.uleb128 0x6
	.byte	0x8
	.long	0xc04
	.uleb128 0x1e
	.long	.LASF1253
	.byte	0x10
	.byte	0x8a
	.byte	0xe
	.long	0xc71
	.uleb128 0x1e
	.long	.LASF1254
	.byte	0x10
	.byte	0x8b
	.byte	0xe
	.long	0xc71
	.uleb128 0x1f
	.long	0xa04
	.byte	0x3
	.byte	0x10
	.byte	0x4
	.uleb128 0x9
	.byte	0x3
	.quad	vm
	.uleb128 0x20
	.long	.LASF1262
	.byte	0x3
	.byte	0xf9
	.byte	0xe
	.long	0x346
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd3
	.uleb128 0x21
	.long	.LASF1255
	.byte	0x3
	.byte	0xf9
	.byte	0x1c
	.long	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.string	"pop"
	.byte	0x3
	.byte	0xf1
	.byte	0x7
	.long	0x346
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF1278
	.byte	0x3
	.byte	0xec
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1f
	.uleb128 0x21
	.long	.LASF1196
	.byte	0x3
	.byte	0xec
	.byte	0x11
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LASF1279
	.byte	0x3
	.byte	0xda
	.byte	0x11
	.long	0x9f8
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xd72
	.uleb128 0x21
	.long	.LASF1256
	.byte	0x3
	.byte	0xda
	.byte	0x29
	.long	0x861
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF1200
	.byte	0x3
	.byte	0xdb
	.byte	0xb
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF1257
	.byte	0x3
	.byte	0xe6
	.byte	0x15
	.long	0x9f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x26
	.string	"run"
	.byte	0x3
	.byte	0x44
	.byte	0x18
	.long	0x9f8
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1013
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x25
	.long	.LASF1258
	.byte	0x3
	.byte	0x75
	.byte	0x11
	.long	0x136
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1534
	.uleb128 0x28
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xddb
	.uleb128 0x25
	.long	.LASF1259
	.byte	0x3
	.byte	0x6b
	.byte	0x10
	.long	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1528
	.byte	0
	.uleb128 0x28
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xe01
	.uleb128 0x25
	.long	.LASF1260
	.byte	0x3
	.byte	0x78
	.byte	0x17
	.long	0x346
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.byte	0
	.uleb128 0x28
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xe27
	.uleb128 0x25
	.long	.LASF1261
	.byte	0x3
	.byte	0x85
	.byte	0x19
	.long	0x136
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1531
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0
	.long	0xe41
	.uleb128 0x25
	.long	.LASF1196
	.byte	0x3
	.byte	0x8e
	.byte	0x17
	.long	0x346
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.byte	0
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xe67
	.uleb128 0x25
	.long	.LASF1259
	.byte	0x3
	.byte	0x97
	.byte	0x19
	.long	0x136
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1532
	.byte	0
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xe8d
	.uleb128 0x25
	.long	.LASF1259
	.byte	0x3
	.byte	0x9c
	.byte	0x19
	.long	0x136
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1533
	.byte	0
	.uleb128 0x28
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0xebf
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xa1
	.byte	0x17
	.long	0x346
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1392
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xa2
	.byte	0x17
	.long	0x346
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1360
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x30
	.long	0xee5
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xa6
	.byte	0xb7
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1424
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xa6
	.byte	0xd4
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1416
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x60
	.long	0xf0b
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xa7
	.byte	0xba
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1408
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xa7
	.byte	0xd7
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1400
	.byte	0
	.uleb128 0x28
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0xf3d
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xac
	.byte	0x1c
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1440
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xad
	.byte	0x1c
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1432
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x90
	.long	0xf63
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xb4
	.byte	0xbb
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1456
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xb4
	.byte	0xd8
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1448
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0xc0
	.long	0xf89
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xb5
	.byte	0xbb
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1472
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xb5
	.byte	0xd8
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1464
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0xf0
	.long	0xfaf
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xb6
	.byte	0xb9
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1488
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xb6
	.byte	0xd6
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1480
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x120
	.long	0xfd5
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xb7
	.byte	0xbf
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1520
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xb7
	.byte	0xdc
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1512
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x150
	.long	0xffb
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xb8
	.byte	0xbb
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1504
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xb8
	.byte	0xd8
	.long	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1496
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x25
	.long	.LASF1054
	.byte	0x3
	.byte	0xc8
	.byte	0x1a
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1530
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1280
	.byte	0x3
	.byte	0x36
	.byte	0xd
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x107e
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0x37
	.byte	0x10
	.long	0x8ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0x38
	.byte	0x10
	.long	0x8ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.long	.LASF999
	.byte	0x3
	.byte	0x3a
	.byte	0xd
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -162
	.uleb128 0x25
	.long	.LASF1000
	.byte	0x3
	.byte	0x3b
	.byte	0xd
	.long	0x50e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.long	.LASF1257
	.byte	0x3
	.byte	0x40
	.byte	0x10
	.long	0x8ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x20
	.long	.LASF1263
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.long	0x301
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x10b0
	.uleb128 0x21
	.long	.LASF1196
	.byte	0x3
	.byte	0x32
	.byte	0x1b
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1264
	.byte	0x3
	.byte	0x25
	.byte	0xd
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1110
	.uleb128 0x21
	.long	.LASF1265
	.byte	0x3
	.byte	0x25
	.byte	0x26
	.long	0x1110
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2e
	.uleb128 0x25
	.long	.LASF1266
	.byte	0x3
	.byte	0x26
	.byte	0xd
	.long	0xa71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x25
	.long	.LASF1258
	.byte	0x3
	.byte	0x2c
	.byte	0xc
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x25
	.long	.LASF1055
	.byte	0x3
	.byte	0x2d
	.byte	0xe
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -234
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfc
	.uleb128 0x2f
	.long	.LASF1281
	.byte	0x3
	.byte	0x21
	.byte	0xd
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1267
	.byte	0x3
	.byte	0x1a
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1268
	.byte	0x3
	.byte	0x12
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF1269
	.byte	0x2
	.byte	0xc1
	.byte	0xe
	.long	0x867
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x11a5
	.uleb128 0x21
	.long	.LASF996
	.byte	0x2
	.byte	0xc1
	.byte	0x22
	.long	0x817
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF1270
	.byte	0x2
	.byte	0xc2
	.byte	0xb
	.long	0x867
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.long	.LASF1271
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.long	0x301
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF1196
	.byte	0x1
	.byte	0x24
	.byte	0x23
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF996
	.byte	0x1
	.byte	0x24
	.byte	0x32
	.long	0x4fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x31
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
	.uleb128 0x2117
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x3
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
	.file 17 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.file 18 "VirtualMachine/vm/../../Bytecode/debug/debug.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x2
	.long	.LASF345
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.long	.LASF346
	.file 19 "VirtualMachine/vm/../../Bytecode/debug/../chunk/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x2
	.long	.LASF347
	.file 20 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 21 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x15
	.file 22 "/usr/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro5
	.file 23 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF407
	.file 24 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro6
	.file 25 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1cd
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro7
	.file 26 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x1c4
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 27 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x1c5
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x15
	.long	.LASF510
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 28 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x1e5
	.uleb128 0x1c
	.file 29 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1d
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
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x18
	.long	.LASF543
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 30 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x18
	.long	.LASF544
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.file 31 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 32 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x6
	.uleb128 0xe1
	.long	.LASF602
	.byte	0x4
	.file 33 "/usr/include/x86_64-linux-gnu/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x14
	.long	.LASF606
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x7
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
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF674
	.file 34 "VirtualMachine/vm/../../Bytecode/debug/../chunk/../value/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x22
	.byte	0x4
	.file 35 "/usr/include/string.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x23
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 36 "VirtualMachine/vm/../../Bytecode/memory/memory.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x5
	.uleb128 0x2
	.long	.LASF722
	.file 37 "VirtualMachine/vm/../../Bytecode/memory/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x2
	.long	.LASF723
	.file 38 "VirtualMachine/vm/../../Bytecode/memory/../../Language/object/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x26
	.byte	0x4
	.file 39 "VirtualMachine/vm/../../Bytecode/memory/../../Language/object/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x27
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.file 40 "VirtualMachine/vm/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x28
	.byte	0x4
	.file 41 "VirtualMachine/vm/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x29
	.byte	0x4
	.file 42 "VirtualMachine/vm/../../Compilation/compiler/compiler.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2a
	.byte	0x5
	.uleb128 0x2
	.long	.LASF733
	.file 43 "VirtualMachine/vm/../../Compilation/compiler/../../Language/object/object.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2b
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x2
	.long	.LASF734
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x2
	.long	.LASF735
	.file 44 "VirtualMachine/vm/../../Compilation/compiler/../../VirtualMachine/vm/../../Bytecode/chunk/chunk.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2c
	.byte	0x4
	.file 45 "VirtualMachine/vm/../../Compilation/compiler/../../VirtualMachine/vm/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2d
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x2
	.long	.LASF736
	.file 46 "VirtualMachine/vm/../../Compilation/compiler/../../VirtualMachine/vm/../../Language/table/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x4
	.file 47 "VirtualMachine/vm/../../Compilation/compiler/../../VirtualMachine/vm/../../Language/table/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2f
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF737
	.byte	0x4
	.byte	0x4
	.file 48 "VirtualMachine/vm/../../Language/object/object.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x30
	.byte	0x4
	.file 49 "VirtualMachine/vm/vm.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x31
	.byte	0x4
	.file 50 "/usr/include/math.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x32
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.file 51 "/usr/include/x86_64-linux-gnu/bits/math-vector.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x33
	.file 52 "/usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x7
	.long	.Ldebug_macro26
	.byte	0x4
	.byte	0x4
	.file 53 "/usr/include/x86_64-linux-gnu/bits/floatn.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x35
	.byte	0x7
	.long	.Ldebug_macro27
	.file 54 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x78
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x15
	.long	.LASF807
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x15
	.long	.LASF510
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro29
	.file 55 "/usr/include/x86_64-linux-gnu/bits/flt-eval-method.h"
	.byte	0x3
	.uleb128 0x8a
	.uleb128 0x37
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF834
	.byte	0x4
	.file 56 "/usr/include/x86_64-linux-gnu/bits/fp-logb.h"
	.byte	0x3
	.uleb128 0xbe
	.uleb128 0x38
	.byte	0x7
	.long	.Ldebug_macro30
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro31
	.file 57 "/usr/include/x86_64-linux-gnu/bits/fp-fast.h"
	.byte	0x3
	.uleb128 0xe9
	.uleb128 0x39
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro32
	.file 58 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h"
	.byte	0x3
	.uleb128 0x121
	.uleb128 0x3a
	.byte	0x4
	.file 59 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.byte	0x3
	.uleb128 0x122
	.uleb128 0x3b
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro33
	.byte	0x3
	.uleb128 0x132
	.uleb128 0x3a
	.byte	0x4
	.byte	0x3
	.uleb128 0x133
	.uleb128 0x3b
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro34
	.byte	0x3
	.uleb128 0x15d
	.uleb128 0x3a
	.byte	0x4
	.byte	0x3
	.uleb128 0x15e
	.uleb128 0x3b
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro35
	.byte	0x3
	.uleb128 0x1a4
	.uleb128 0x3a
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro36
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro37
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro38
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro39
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF926
	.file 60 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x3c
	.byte	0x5
	.uleb128 0x2
	.long	.LASF927
	.file 61 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3d
	.byte	0x5
	.uleb128 0x2
	.long	.LASF928
	.byte	0x4
	.byte	0x4
	.file 62 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x3e
	.byte	0x5
	.uleb128 0x2
	.long	.LASF929
	.byte	0x4
	.file 63 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x3f
	.byte	0x5
	.uleb128 0x2
	.long	.LASF930
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2
	.long	.LASF931
	.byte	0x4
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro40
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro41
	.file 64 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x40
	.byte	0x7
	.long	.Ldebug_macro42
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro43
	.file 65 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.byte	0x3
	.uleb128 0x30d
	.uleb128 0x41
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x45
	.long	.LASF957
	.byte	0x5
	.uleb128 0x46
	.long	.LASF958
	.byte	0x5
	.uleb128 0x47
	.long	.LASF959
	.byte	0x5
	.uleb128 0x48
	.long	.LASF960
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF961
	.byte	0x5
	.uleb128 0x55
	.long	.LASF962
	.byte	0x6
	.uleb128 0xd2
	.long	.LASF963
	.byte	0x6
	.uleb128 0xd3
	.long	.LASF964
	.byte	0x6
	.uleb128 0xd4
	.long	.LASF965
	.byte	0x6
	.uleb128 0xd5
	.long	.LASF966
	.byte	0x6
	.uleb128 0xd6
	.long	.LASF967
	.byte	0x6
	.uleb128 0xd7
	.long	.LASF968
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
	.section	.debug_macro,"G",@progbits,wm4.value.h.93.ea04d39224bdd560e06214733f3719e5,comdat
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
	.section	.debug_macro,"G",@progbits,wm4.object.h.9.58f78145e32d247aac212c60dfa360d4,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x9
	.long	.LASF724
	.byte	0x5
	.uleb128 0xb
	.long	.LASF725
	.byte	0x5
	.uleb128 0xd
	.long	.LASF726
	.byte	0x5
	.uleb128 0xe
	.long	.LASF727
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.memory.h.7.f939cb48c902d606491eab8791f61165,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF728
	.byte	0x5
	.uleb128 0xa
	.long	.LASF729
	.byte	0x5
	.uleb128 0xc
	.long	.LASF730
	.byte	0x5
	.uleb128 0xf
	.long	.LASF731
	.byte	0x5
	.uleb128 0x13
	.long	.LASF732
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.24.808d6e83a8b3b11b5fa9117392e0d6ca,comdat
.Ldebug_macro25:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF738
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF406
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libmsimddeclstubs.h.34.4541d7d9ef23fb8c722872ed06b4fd48,comdat
.Ldebug_macro26:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF739
	.byte	0x5
	.uleb128 0x24
	.long	.LASF740
	.byte	0x5
	.uleb128 0x25
	.long	.LASF741
	.byte	0x5
	.uleb128 0x26
	.long	.LASF742
	.byte	0x5
	.uleb128 0x27
	.long	.LASF743
	.byte	0x5
	.uleb128 0x28
	.long	.LASF744
	.byte	0x5
	.uleb128 0x29
	.long	.LASF745
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF746
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF747
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF748
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF749
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF750
	.byte	0x5
	.uleb128 0x30
	.long	.LASF751
	.byte	0x5
	.uleb128 0x31
	.long	.LASF752
	.byte	0x5
	.uleb128 0x32
	.long	.LASF753
	.byte	0x5
	.uleb128 0x33
	.long	.LASF754
	.byte	0x5
	.uleb128 0x34
	.long	.LASF755
	.byte	0x5
	.uleb128 0x35
	.long	.LASF756
	.byte	0x5
	.uleb128 0x36
	.long	.LASF757
	.byte	0x5
	.uleb128 0x37
	.long	.LASF758
	.byte	0x5
	.uleb128 0x38
	.long	.LASF759
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF760
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF761
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF762
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF763
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF764
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF765
	.byte	0x5
	.uleb128 0x40
	.long	.LASF766
	.byte	0x5
	.uleb128 0x41
	.long	.LASF767
	.byte	0x5
	.uleb128 0x42
	.long	.LASF768
	.byte	0x5
	.uleb128 0x43
	.long	.LASF769
	.byte	0x5
	.uleb128 0x45
	.long	.LASF770
	.byte	0x5
	.uleb128 0x46
	.long	.LASF771
	.byte	0x5
	.uleb128 0x47
	.long	.LASF772
	.byte	0x5
	.uleb128 0x48
	.long	.LASF773
	.byte	0x5
	.uleb128 0x49
	.long	.LASF774
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF775
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF776
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF777
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF778
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF779
	.byte	0x5
	.uleb128 0x50
	.long	.LASF780
	.byte	0x5
	.uleb128 0x51
	.long	.LASF781
	.byte	0x5
	.uleb128 0x52
	.long	.LASF782
	.byte	0x5
	.uleb128 0x53
	.long	.LASF783
	.byte	0x5
	.uleb128 0x54
	.long	.LASF784
	.byte	0x5
	.uleb128 0x55
	.long	.LASF785
	.byte	0x5
	.uleb128 0x56
	.long	.LASF786
	.byte	0x5
	.uleb128 0x57
	.long	.LASF787
	.byte	0x5
	.uleb128 0x58
	.long	.LASF788
	.byte	0x5
	.uleb128 0x59
	.long	.LASF789
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF790
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF791
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF792
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF793
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF794
	.byte	0x5
	.uleb128 0x60
	.long	.LASF795
	.byte	0x5
	.uleb128 0x61
	.long	.LASF796
	.byte	0x5
	.uleb128 0x62
	.long	.LASF797
	.byte	0x5
	.uleb128 0x63
	.long	.LASF798
	.byte	0x5
	.uleb128 0x64
	.long	.LASF799
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatn.h.20.80c7cf8a8dfad237004b28d051d5afda,comdat
.Ldebug_macro27:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF800
	.byte	0x5
	.uleb128 0x21
	.long	.LASF801
	.byte	0x5
	.uleb128 0x29
	.long	.LASF802
	.byte	0x5
	.uleb128 0x31
	.long	.LASF803
	.byte	0x5
	.uleb128 0x37
	.long	.LASF804
	.byte	0x5
	.uleb128 0x42
	.long	.LASF805
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF806
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatncommon.h.34.7e1840d7dfb19e9bdb51aeb077d76637,comdat
.Ldebug_macro28:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF808
	.byte	0x5
	.uleb128 0x23
	.long	.LASF809
	.byte	0x5
	.uleb128 0x24
	.long	.LASF810
	.byte	0x5
	.uleb128 0x25
	.long	.LASF811
	.byte	0x5
	.uleb128 0x26
	.long	.LASF812
	.byte	0x5
	.uleb128 0x34
	.long	.LASF813
	.byte	0x5
	.uleb128 0x35
	.long	.LASF814
	.byte	0x5
	.uleb128 0x36
	.long	.LASF815
	.byte	0x5
	.uleb128 0x37
	.long	.LASF816
	.byte	0x5
	.uleb128 0x38
	.long	.LASF817
	.byte	0x5
	.uleb128 0x39
	.long	.LASF818
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF819
	.byte	0x5
	.uleb128 0x46
	.long	.LASF820
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF821
	.byte	0x5
	.uleb128 0x69
	.long	.LASF822
	.byte	0x5
	.uleb128 0x71
	.long	.LASF823
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF824
	.byte	0x5
	.uleb128 0x97
	.long	.LASF825
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF826
	.byte	0x5
	.uleb128 0xab
	.long	.LASF827
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF828
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.48.5dafc6157c80230c0414aa9de5e109ba,comdat
.Ldebug_macro29:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x30
	.long	.LASF829
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF830
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF831
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF832
	.byte	0x5
	.uleb128 0x62
	.long	.LASF833
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fplogb.h.23.f264b61801f4cf347bed2d0fad7232d9,comdat
.Ldebug_macro30:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF835
	.byte	0x5
	.uleb128 0x18
	.long	.LASF836
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.193.2a53c39a04fb9ee53d2145d0dd51922b,comdat
.Ldebug_macro31:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF837
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF838
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.262.a3ec711e4bc2a8e48d58e73f7b61f7e6,comdat
.Ldebug_macro32:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x106
	.long	.LASF839
	.byte	0x5
	.uleb128 0x108
	.long	.LASF840
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF841
	.byte	0x5
	.uleb128 0x110
	.long	.LASF842
	.byte	0x5
	.uleb128 0x112
	.long	.LASF843
	.byte	0x5
	.uleb128 0x115
	.long	.LASF844
	.byte	0x5
	.uleb128 0x117
	.long	.LASF845
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF846
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF847
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF848
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF849
	.byte	0x5
	.uleb128 0x120
	.long	.LASF850
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.291.31c5ea429e9ba79c95bf28566b299669,comdat
.Ldebug_macro33:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x123
	.long	.LASF851
	.byte	0x6
	.uleb128 0x124
	.long	.LASF852
	.byte	0x6
	.uleb128 0x125
	.long	.LASF853
	.byte	0x6
	.uleb128 0x126
	.long	.LASF854
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF855
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF856
	.byte	0x5
	.uleb128 0x130
	.long	.LASF857
	.byte	0x5
	.uleb128 0x131
	.long	.LASF850
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.308.057dcf159b5c763b6f753ad19bd78a7c,comdat
.Ldebug_macro34:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x134
	.long	.LASF851
	.byte	0x6
	.uleb128 0x135
	.long	.LASF852
	.byte	0x6
	.uleb128 0x136
	.long	.LASF853
	.byte	0x6
	.uleb128 0x137
	.long	.LASF854
	.byte	0x5
	.uleb128 0x158
	.long	.LASF858
	.byte	0x5
	.uleb128 0x159
	.long	.LASF859
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF857
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF850
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF860
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.351.d4dfe6acabbee9531318a05b7f2a0ebb,comdat
.Ldebug_macro35:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x15f
	.long	.LASF851
	.byte	0x6
	.uleb128 0x160
	.long	.LASF852
	.byte	0x6
	.uleb128 0x161
	.long	.LASF853
	.byte	0x6
	.uleb128 0x162
	.long	.LASF854
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF861
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF862
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF857
	.byte	0x5
	.uleb128 0x180
	.long	.LASF863
	.byte	0x6
	.uleb128 0x187
	.long	.LASF851
	.byte	0x6
	.uleb128 0x188
	.long	.LASF852
	.byte	0x6
	.uleb128 0x189
	.long	.LASF853
	.byte	0x6
	.uleb128 0x18a
	.long	.LASF854
	.byte	0x5
	.uleb128 0x18e
	.long	.LASF864
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF865
	.byte	0x5
	.uleb128 0x190
	.long	.LASF857
	.byte	0x5
	.uleb128 0x191
	.long	.LASF863
	.byte	0x6
	.uleb128 0x198
	.long	.LASF851
	.byte	0x6
	.uleb128 0x199
	.long	.LASF852
	.byte	0x6
	.uleb128 0x19a
	.long	.LASF853
	.byte	0x6
	.uleb128 0x19b
	.long	.LASF854
	.byte	0x5
	.uleb128 0x19f
	.long	.LASF866
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF867
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF857
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF863
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.425.0bcffc96f13b6f6624f5a8342b7c39fd,comdat
.Ldebug_macro36:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1a9
	.long	.LASF851
	.byte	0x6
	.uleb128 0x1aa
	.long	.LASF852
	.byte	0x6
	.uleb128 0x1ab
	.long	.LASF853
	.byte	0x6
	.uleb128 0x1ac
	.long	.LASF854
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF868
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF869
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF857
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF863
	.byte	0x6
	.uleb128 0x1ba
	.long	.LASF851
	.byte	0x6
	.uleb128 0x1bb
	.long	.LASF852
	.byte	0x6
	.uleb128 0x1bc
	.long	.LASF853
	.byte	0x6
	.uleb128 0x1bd
	.long	.LASF854
	.byte	0x5
	.uleb128 0x1c1
	.long	.LASF870
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF871
	.byte	0x5
	.uleb128 0x1c3
	.long	.LASF857
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF863
	.byte	0x6
	.uleb128 0x1cb
	.long	.LASF851
	.byte	0x6
	.uleb128 0x1cc
	.long	.LASF852
	.byte	0x6
	.uleb128 0x1cd
	.long	.LASF853
	.byte	0x6
	.uleb128 0x1ce
	.long	.LASF854
	.byte	0x6
	.uleb128 0x1e2
	.long	.LASF872
	.byte	0x6
	.uleb128 0x1e3
	.long	.LASF873
	.byte	0x6
	.uleb128 0x1e4
	.long	.LASF874
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF875
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF876
	.byte	0x5
	.uleb128 0x1e9
	.long	.LASF877
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF878
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF879
	.byte	0x5
	.uleb128 0x1ef
	.long	.LASF880
	.byte	0x6
	.uleb128 0x2fc
	.long	.LASF881
	.byte	0x6
	.uleb128 0x2fd
	.long	.LASF882
	.byte	0x6
	.uleb128 0x2fe
	.long	.LASF883
	.byte	0x6
	.uleb128 0x2ff
	.long	.LASF884
	.byte	0x6
	.uleb128 0x300
	.long	.LASF885
	.byte	0x6
	.uleb128 0x301
	.long	.LASF886
	.byte	0x5
	.uleb128 0x323
	.long	.LASF887
	.byte	0x5
	.uleb128 0x329
	.long	.LASF888
	.byte	0x5
	.uleb128 0x330
	.long	.LASF889
	.byte	0x5
	.uleb128 0x358
	.long	.LASF890
	.byte	0x5
	.uleb128 0x35b
	.long	.LASF891
	.byte	0x5
	.uleb128 0x35e
	.long	.LASF892
	.byte	0x5
	.uleb128 0x361
	.long	.LASF893
	.byte	0x5
	.uleb128 0x364
	.long	.LASF894
	.byte	0x5
	.uleb128 0x376
	.long	.LASF895
	.byte	0x5
	.uleb128 0x37e
	.long	.LASF896
	.byte	0x5
	.uleb128 0x391
	.long	.LASF897
	.byte	0x5
	.uleb128 0x399
	.long	.LASF898
	.byte	0x5
	.uleb128 0x3a2
	.long	.LASF899
	.byte	0x5
	.uleb128 0x3b4
	.long	.LASF900
	.byte	0x5
	.uleb128 0x3ba
	.long	.LASF901
	.byte	0x5
	.uleb128 0x3bb
	.long	.LASF902
	.byte	0x5
	.uleb128 0x3c7
	.long	.LASF903
	.byte	0x5
	.uleb128 0x4b3
	.long	.LASF904
	.byte	0x5
	.uleb128 0x4be
	.long	.LASF905
	.byte	0x5
	.uleb128 0x4bf
	.long	.LASF906
	.byte	0x5
	.uleb128 0x4c0
	.long	.LASF907
	.byte	0x5
	.uleb128 0x4c1
	.long	.LASF908
	.byte	0x5
	.uleb128 0x4c2
	.long	.LASF909
	.byte	0x5
	.uleb128 0x4c3
	.long	.LASF910
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.31.b55da1089056868966f25de5dbfc7d3c,comdat
.Ldebug_macro37:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF911
	.byte	0x5
	.uleb128 0x20
	.long	.LASF912
	.byte	0x6
	.uleb128 0x22
	.long	.LASF913
	.byte	0x5
	.uleb128 0x27
	.long	.LASF914
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF915
	.byte	0x5
	.uleb128 0x30
	.long	.LASF916
	.byte	0x5
	.uleb128 0x31
	.long	.LASF917
	.byte	0x5
	.uleb128 0x34
	.long	.LASF918
	.byte	0x5
	.uleb128 0x36
	.long	.LASF919
	.byte	0x5
	.uleb128 0x69
	.long	.LASF920
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF921
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF922
	.byte	0x5
	.uleb128 0x72
	.long	.LASF923
	.byte	0x5
	.uleb128 0x75
	.long	.LASF924
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.24.5c1b97eef3c86b7a2549420f69f4f128,comdat
.Ldebug_macro38:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF925
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF406
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro39:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF676
	.byte	0x5
	.uleb128 0x20
	.long	.LASF677
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_FILE.h.19.0888ac70396abe1031c03d393554032f,comdat
.Ldebug_macro40:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF932
	.byte	0x5
	.uleb128 0x66
	.long	.LASF933
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF934
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF935
	.byte	0x5
	.uleb128 0x70
	.long	.LASF936
	.byte	0x5
	.uleb128 0x72
	.long	.LASF937
	.byte	0x5
	.uleb128 0x73
	.long	.LASF938
	.byte	0x5
	.uleb128 0x75
	.long	.LASF939
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.93.0122ffbd02ddfe34dfaf44a2e3561c5b,comdat
.Ldebug_macro41:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF940
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF941
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF942
	.byte	0x5
	.uleb128 0x63
	.long	.LASF943
	.byte	0x5
	.uleb128 0x68
	.long	.LASF944
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF945
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF946
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF947
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.19.de8a40c165be4f8437982ec2cd6fd8b4,comdat
.Ldebug_macro42:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF948
	.byte	0x5
	.uleb128 0x19
	.long	.LASF949
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF950
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF951
	.byte	0x6
	.uleb128 0x24
	.long	.LASF952
	.byte	0x5
	.uleb128 0x25
	.long	.LASF953
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.141.d7a290e19ca077c9e4aa7c43ede17a73,comdat
.Ldebug_macro43:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF954
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF955
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF956
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1079:
	.string	"TK_QUESTION"
.LASF615:
	.string	"INT32_MAX (2147483647)"
.LASF940:
	.string	"_IOFBF 0"
.LASF722:
	.string	"memory_h "
.LASF679:
	.string	"IS_NIL(value) ((value).type == VAL_NIL)"
.LASF898:
	.string	"isnormal(x) __builtin_isnormal (x)"
.LASF559:
	.string	"__STD_TYPE typedef"
.LASF742:
	.string	"__DECL_SIMD_cosl "
.LASF958:
	.string	"READ_CONSTANT() (vm.chunk->constants.values[READ_BYTE()])"
.LASF988:
	.string	"int8_t"
.LASF225:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF283:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1200:
	.string	"chunk"
.LASF802:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF51:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF1042:
	.string	"OP_LESS"
.LASF108:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF974:
	.string	"size_t"
.LASF685:
	.string	"IS_U16(value) ((value).type == VAL_U16)"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF228:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF1167:
	.string	"TK_IF"
.LASF220:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF1192:
	.string	"start"
.LASF943:
	.string	"BUFSIZ 8192"
.LASF689:
	.string	"IS_U64(value) ((value).type == VAL_U64)"
.LASF1100:
	.string	"TK_TILDE"
.LASF822:
	.string	"__f64(x) x ##f64"
.LASF93:
	.string	"__SIZE_WIDTH__ 64"
.LASF773:
	.string	"__DECL_SIMD_logf16 "
.LASF506:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF282:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF19:
	.string	"__LP64__ 1"
.LASF270:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF423:
	.string	"__USE_XOPEN2K8XSI"
.LASF945:
	.string	"SEEK_SET 0"
.LASF214:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF492:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF1250:
	.string	"_IO_codecvt"
.LASF434:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF1191:
	.string	"TokenType"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF591:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF661:
	.string	"INT16_C(c) c"
.LASF990:
	.string	"int32_t"
.LASF1084:
	.string	"TK_SEMICOLON"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF139:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF1179:
	.string	"TK_FIELD"
.LASF792:
	.string	"__DECL_SIMD_powl "
.LASF1027:
	.string	"values"
.LASF1278:
	.string	"push"
.LASF248:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF1230:
	.string	"_IO_save_end"
.LASF136:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF1264:
	.string	"runtimeError"
.LASF681:
	.string	"IS_NUMBER(value) ((value).type != VAL_NIL && (value).type != VAL_BOOL);"
.LASF1007:
	.string	"VAL_I16"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF273:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF954:
	.string	"stdin stdin"
.LASF162:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF989:
	.string	"int16_t"
.LASF1085:
	.string	"TK_COLON"
.LASF200:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1104:
	.string	"TK_COLONCOLON"
.LASF887:
	.string	"__MATH_TG_F32(FUNC,ARGS) _Float32: FUNC ## f ARGS,"
.LASF36:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF609:
	.string	"INT8_MIN (-128)"
.LASF1048:
	.string	"OP_EXPONENTIATE"
.LASF123:
	.string	"__UINT8_C(c) c"
.LASF795:
	.string	"__DECL_SIMD_powf64 "
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF1260:
	.string	"constant"
.LASF1210:
	.string	"InterpretResult"
.LASF910:
	.string	"isunordered(x,y) __builtin_isunordered(x, y)"
.LASF731:
	.string	"GROW_ARRAY(type,pointer,oldCount,newCount) (type*)reallocate(pointer, sizeof(type) * (oldCount), sizeof(type) * (newCount))"
.LASF1011:
	.string	"VAL_I64"
.LASF965:
	.string	"READ_SHORT"
.LASF630:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF699:
	.string	"AS_I32(value) ((value).as.i32)"
.LASF1223:
	.string	"_IO_write_base"
.LASF483:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF290:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF1089:
	.string	"TK_MINUS"
.LASF602:
	.string	"__STD_TYPE"
.LASF781:
	.string	"__DECL_SIMD_expf "
.LASF315:
	.string	"__x86_64 1"
.LASF640:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF766:
	.string	"__DECL_SIMD_sincosf128 "
.LASF459:
	.string	"__P(args) args"
.LASF1083:
	.string	"TK_DOTDOTDOT"
.LASF1239:
	.string	"_lock"
.LASF1002:
	.string	"VAL_UNDEFINED"
.LASF202:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF105:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF572:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF711:
	.string	"U8_VAL(value) ((Value){VAL_U8, {.u8 = value}})"
.LASF400:
	.string	"__need_wchar_t"
.LASF196:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF447:
	.string	"__GLIBC__ 2"
.LASF996:
	.string	"type"
.LASF682:
	.string	"IS_I8(value) ((value).type == VAL_I8)"
.LASF644:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF361:
	.string	"_BSD_PTRDIFF_T_ "
.LASF809:
	.string	"__HAVE_FLOAT32 1"
.LASF876:
	.string	"__MATHCALL_NARROW_ARGS_2 (_Marg_ __x, _Marg_ __y)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1228:
	.string	"_IO_save_base"
.LASF665:
	.string	"UINT16_C(c) c"
.LASF211:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF639:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF382:
	.string	"__size_t "
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF215:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF556:
	.string	"__ULONG32_TYPE unsigned int"
.LASF725:
	.string	"IS_STRING(value) isObjType(value, OBJ_STRING)"
.LASF449:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF265:
	.string	"__DEC32_MIN_EXP__ (-94)"
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
.LASF762:
	.string	"__DECL_SIMD_sincosl "
.LASF618:
	.string	"UINT16_MAX (65535)"
.LASF281:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF288:
	.string	"__NO_INLINE__ 1"
.LASF778:
	.string	"__DECL_SIMD_logf64x "
.LASF1232:
	.string	"_chain"
.LASF1000:
	.string	"chars"
.LASF935:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF333:
	.string	"__CET__ 3"
.LASF235:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF886:
	.string	"__MATHCALL_NARROW"
.LASF426:
	.string	"__USE_FILE_OFFSET64"
.LASF210:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF1236:
	.string	"_cur_column"
.LASF1036:
	.string	"OP_SET_GLOBAL"
.LASF879:
	.string	"__MATHCALL_NARROW_REDIR(func,redir,nargs) extern _Mret_ __REDIRECT_NTH (func, __MATHCALL_NARROW_ARGS_ ## nargs, redir)"
.LASF1086:
	.string	"TK_LTTILDE"
.LASF1078:
	.string	"TK_BANGBANG"
.LASF413:
	.string	"__USE_POSIX"
.LASF700:
	.string	"AS_U32(value) ((value).as.u32)"
.LASF476:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF1153:
	.string	"TK_LT"
.LASF269:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF219:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF401:
	.string	"NULL"
.LASF1134:
	.string	"TK_SLASHEQ"
.LASF600:
	.string	"_BITS_TIME64_H 1"
.LASF255:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF1019:
	.string	"f128"
.LASF1075:
	.string	"TK_RBRACELPAREN"
.LASF705:
	.string	"AS_F128(value) ((value).as.f128)"
.LASF1097:
	.string	"TK_AMP"
.LASF656:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF523:
	.string	"__stub_fchflags "
.LASF1257:
	.string	"result"
.LASF40:
	.string	"__INTMAX_TYPE__ long int"
.LASF890:
	.string	"FP_NAN 0"
.LASF1053:
	.string	"OP_RETURN"
.LASF813:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF1171:
	.string	"TK_PUTS"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF268:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF388:
	.string	"_T_WCHAR "
.LASF138:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF422:
	.string	"__USE_XOPEN2K8"
.LASF1031:
	.string	"OP_NIL"
.LASF491:
	.string	"__always_inline"
.LASF369:
	.string	"_SYS_SIZE_T_H "
.LASF1117:
	.string	"TK_COLONULEQ"
.LASF1205:
	.string	"strings"
.LASF232:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF432:
	.string	"__GLIBC_USE_ISOC2X"
.LASF611:
	.string	"INT32_MIN (-2147483647-1)"
.LASF319:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF1143:
	.string	"TK_EQI16"
.LASF436:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF709:
	.string	"BOOL_VAL(value) ((Value){VAL_BOOL, {.boolean = value}})"
.LASF969:
	.string	"long int"
.LASF544:
	.string	"__TIMESIZE __WORDSIZE"
.LASF242:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF836:
	.string	"__FP_LOGBNAN_IS_MIN 1"
.LASF347:
	.string	"common_h "
.LASF249:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF437:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF112:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF873:
	.string	"__MATHDECL"
.LASF1107:
	.string	"TK_COLONCEQ"
.LASF279:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF902:
	.string	"MATH_ERREXCEPT 2"
.LASF957:
	.string	"READ_BYTE() (*vm.ip++)"
.LASF855:
	.string	"_Mdouble_ float"
.LASF366:
	.string	"__size_t__ "
.LASF224:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF213:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF839:
	.string	"__SIMD_DECL(function) __CONCAT (__DECL_SIMD_, function)"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1135:
	.string	"TK_MODEQ"
.LASF294:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF1281:
	.string	"resetStack"
.LASF857:
	.string	"__MATH_DECLARING_DOUBLE 0"
.LASF261:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1249:
	.string	"_IO_marker"
.LASF852:
	.string	"__MATH_PRECNAME"
.LASF586:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF198:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF1165:
	.string	"TK_DEF"
.LASF953:
	.string	"FOPEN_MAX 16"
.LASF881:
	.string	"__MATHCALL_NARROW_ARGS_1"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF646:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF972:
	.string	"short unsigned int"
.LASF1175:
	.string	"TK_THIS"
.LASF579:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF362:
	.string	"___int_ptrdiff_t_h "
.LASF1208:
	.string	"INTERPRET_COMPILE_ERROR"
.LASF378:
	.string	"_SIZE_T_DECLARED "
.LASF461:
	.string	"__CONCAT(x,y) x ## y"
.LASF955:
	.string	"stdout stdout"
.LASF1080:
	.string	"TK_COMMA"
.LASF141:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF231:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF1202:
	.string	"stackTop"
.LASF1087:
	.string	"TK_TILDEGT"
.LASF454:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF342:
	.string	"__STDC_IEC_559__ 1"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF1151:
	.string	"TK_EQF128"
.LASF653:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF513:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF673:
	.string	"UINT8_COUNT (UINT8_MAX + 1)"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF118:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF820:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF772:
	.string	"__DECL_SIMD_logl "
.LASF406:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF341:
	.string	"_STDC_PREDEF_H 1"
.LASF1094:
	.string	"TK_AMPAMP"
.LASF199:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF16:
	.string	"__PIE__ 2"
.LASF218:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF275:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF1163:
	.string	"TK_ENUM"
.LASF451:
	.string	"__PMT"
.LASF1030:
	.string	"OP_CONSTANT_LONG"
.LASF154:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF889:
	.string	"__MATH_TG(TG_ARG,FUNC,ARGS) _Generic ((TG_ARG), float: FUNC ## f ARGS, __MATH_TG_F32 (FUNC, ARGS) default: FUNC ARGS, long double: FUNC ## l ARGS, __MATH_TG_F64X (FUNC, ARGS) _Float128: FUNC ## f128 ARGS)"
.LASF444:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF946:
	.string	"SEEK_CUR 1"
.LASF157:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF680:
	.string	"IS_BOOL(value) ((value).type == VAL_BOOL)"
.LASF455:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF1124:
	.string	"TK_USDFEQ"
.LASF976:
	.string	"signed char"
.LASF552:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF1065:
	.string	"TK_LEFT_PAREN"
.LASF992:
	.string	"uint8_t"
.LASF831:
	.string	"HUGE_VALL (__builtin_huge_vall ())"
.LASF577:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF204:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF1218:
	.string	"_IO_FILE"
.LASF287:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF824:
	.string	"__f64x(x) x ##f64x"
.LASF1145:
	.string	"TK_EQI32"
.LASF164:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF1018:
	.string	"boolean"
.LASF561:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF297:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF92:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF124:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF452:
	.string	"__LEAF , __leaf__"
.LASF207:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF509:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF539:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF246:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF1056:
	.string	"LineStart"
.LASF899:
	.string	"isnan(x) __builtin_isnan (x)"
.LASF133:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF537:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF463:
	.string	"__ptr_t void *"
.LASF377:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF1209:
	.string	"INTERPRET_RUNTIME_ERROR"
.LASF379:
	.string	"___int_size_t_h "
.LASF1268:
	.string	"initVM"
.LASF203:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF1243:
	.string	"_freeres_list"
.LASF460:
	.string	"__PMT(args) args"
.LASF340:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF280:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF631:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF780:
	.string	"__DECL_SIMD_exp "
.LASF145:
	.string	"__GCC_IEC_559 2"
.LASF674:
	.string	"value_h "
.LASF252:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF690:
	.string	"IS_F32(value) ((value).type == VAL_F32)"
.LASF543:
	.string	"_BITS_TYPES_H 1"
.LASF735:
	.string	"vm_h "
.LASF683:
	.string	"IS_U8(value) ((value).type == VAL_U8)"
.LASF1005:
	.string	"VAL_I8"
.LASF1168:
	.string	"TK_IN"
.LASF107:
	.string	"__UINT16_MAX__ 0xffff"
.LASF739:
	.string	"_BITS_LIBM_SIMD_DECL_STUBS_H 1"
.LASF127:
	.string	"__UINT32_C(c) c ## U"
.LASF1039:
	.string	"OP_GET_LOCAL"
.LASF830:
	.string	"HUGE_VALF (__builtin_huge_valf ())"
.LASF330:
	.string	"__SSE2_MATH__ 1"
.LASF95:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF610:
	.string	"INT16_MIN (-32767-1)"
.LASF833:
	.string	"NAN (__builtin_nanf (\"\"))"
.LASF346:
	.string	"chunk_h "
.LASF1212:
	.string	"__gnuc_va_list"
.LASF1020:
	.string	"_Bool"
.LASF120:
	.string	"__INT64_C(c) c ## L"
.LASF493:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF15:
	.string	"__pie__ 2"
.LASF289:
	.string	"__STRICT_ANSI__ 1"
.LASF375:
	.string	"_SIZE_T_DEFINED_ "
.LASF1196:
	.string	"value"
.LASF97:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF587:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF230:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF140:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF307:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF626:
	.string	"INT_LEAST16_MAX (32767)"
.LASF866:
	.string	"_Mdouble_ _Float128"
.LASF987:
	.string	"char"
.LASF195:
	.string	"__FLT32_DIG__ 6"
.LASF624:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF291:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF806:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF701:
	.string	"AS_I64(value) ((value).as.i64)"
.LASF713:
	.string	"U16_VAL(value) ((Value){VAL_U16, {.u16 = value}})"
.LASF534:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF466:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF1279:
	.string	"interpret"
.LASF698:
	.string	"AS_U16(value) ((value).as.u16)"
.LASF842:
	.string	"__MATHCALL(function,suffix,args) __MATHDECL (_Mdouble_,function,suffix, args)"
.LASF1157:
	.string	"TK_EQEQ"
.LASF897:
	.string	"isfinite(x) __builtin_isfinite (x)"
.LASF896:
	.string	"signbit(x) __builtin_signbit (x)"
.LASF549:
	.string	"__SLONGWORD_TYPE long int"
.LASF892:
	.string	"FP_ZERO 2"
.LASF431:
	.string	"__KERNEL_STRICT_NAMES"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF863:
	.string	"__MATH_DECLARING_FLOATN 1"
.LASF1025:
	.string	"capacity"
.LASF337:
	.string	"__unix 1"
.LASF1277:
	.string	"_IO_lock_t"
.LASF670:
	.string	"_GCC_WRAP_STDINT_H "
.LASF926:
	.string	"__need___va_list "
.LASF980:
	.string	"__uint16_t"
.LASF1051:
	.string	"OP_PUTS"
.LASF872:
	.string	"__MATHDECL_1"
.LASF751:
	.string	"__DECL_SIMD_sinf "
.LASF420:
	.string	"__USE_XOPEN2K"
.LASF601:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF714:
	.string	"I32_VAL(value) ((Value){VAL_I32, {.i32 = value}})"
.LASF421:
	.string	"__USE_XOPEN2KXSI"
.LASF106:
	.string	"__UINT8_MAX__ 0xff"
.LASF160:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF702:
	.string	"AS_U64(value) ((value).as.u64)"
.LASF874:
	.string	"__MATHCALL"
.LASF494:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF1255:
	.string	"distance"
.LASF719:
	.string	"F64_VAL(value) ((Value){VAL_F64, {.f64 = value}})"
.LASF176:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF1256:
	.string	"source"
.LASF331:
	.string	"__SEG_FS 1"
.LASF693:
	.string	"IS_OBJ(value) ((value).type == VAL_OBJ)"
.LASF637:
	.string	"INT_FAST8_MAX (127)"
.LASF625:
	.string	"INT_LEAST8_MAX (127)"
.LASF744:
	.string	"__DECL_SIMD_cosf32 "
.LASF73:
	.string	"__GXX_ABI_VERSION 1013"
.LASF554:
	.string	"__UWORD_TYPE unsigned long int"
.LASF745:
	.string	"__DECL_SIMD_cosf64 "
.LASF156:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF843:
	.string	"__MATHDECL(type,function,suffix,args) __MATHDECL_1(type, function,suffix, args); __MATHDECL_1(type, __CONCAT(__,function),suffix, args)"
.LASF1220:
	.string	"_IO_read_ptr"
.LASF226:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF1147:
	.string	"TK_EQI64"
.LASF666:
	.string	"UINT32_C(c) c ## U"
.LASF1092:
	.string	"TK_MOD"
.LASF645:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF415:
	.string	"__USE_POSIX199309"
.LASF616:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF344:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF1214:
	.string	"fp_offset"
.LASF826:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF72:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF956:
	.string	"stderr stderr"
.LASF1271:
	.string	"isObjType"
.LASF767:
	.string	"__DECL_SIMD_sincosf32x "
.LASF736:
	.string	"table_h "
.LASF1263:
	.string	"isFalsey"
.LASF934:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF1170:
	.string	"TK_NIL"
.LASF1173:
	.string	"TK_SUPER"
.LASF448:
	.string	"__GLIBC_MINOR__ 31"
.LASF1182:
	.string	"TK_IDENTIFIER"
.LASF1194:
	.string	"current"
.LASF648:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF419:
	.string	"__USE_UNIX98"
.LASF61:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF906:
	.string	"isgreaterequal(x,y) __builtin_isgreaterequal(x, y)"
.LASF489:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF435:
	.string	"__KERNEL_STRICT_NAMES "
.LASF931:
	.string	"__FILE_defined 1"
.LASF1185:
	.string	"TK_STATIC_FIELD"
.LASF1109:
	.string	"TK_COLONUCEQ"
.LASF893:
	.string	"FP_SUBNORMAL 3"
.LASF968:
	.string	"BINARY_OPF"
.LASF749:
	.string	"__DECL_SIMD_cosf128x "
.LASF565:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF720:
	.string	"F128_VAL(value) ((Value){VAL_F128, {.f128 = value}})"
.LASF299:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF14:
	.string	"__PIC__ 2"
.LASF396:
	.string	"__INT_WCHAR_T_H "
.LASF550:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF607:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF303:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1231:
	.string	"_markers"
.LASF594:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF1071:
	.string	"TK_LTLBRACE"
.LASF339:
	.string	"__ELF__ 1"
.LASF922:
	.string	"_VA_LIST_DEFINED "
.LASF1106:
	.string	"TK_USDEQ"
.LASF80:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF1049:
	.string	"OP_NOT"
.LASF96:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF676:
	.string	"__need_size_t "
.LASF951:
	.string	"FILENAME_MAX 4096"
.LASF633:
	.string	"INT_FAST8_MIN (-128)"
.LASF192:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF861:
	.string	"_Mdouble_ _Float32"
.LASF527:
	.string	"__stub_setlogin "
.LASF1276:
	.string	"__va_list_tag"
.LASF596:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF1206:
	.string	"objects"
.LASF734:
	.string	"scanner_h "
.LASF241:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF540:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF914:
	.string	"__GNUC_VA_LIST "
.LASF110:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF841:
	.string	"__MATHDECL_VEC(type,function,suffix,args) __SIMD_DECL (__MATH_PRECNAME (function, suffix)) __MATHDECL(type, function,suffix, args)"
.LASF1043:
	.string	"OP_ADD"
.LASF349:
	.string	"bool _Bool"
.LASF1088:
	.string	"TK_PLUS"
.LASF729:
	.string	"FREE(type,pointer) reallocate(pointer, sizeof(type), 0)"
.LASF155:
	.string	"__FLT_MAX_EXP__ 128"
.LASF100:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF122:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF391:
	.string	"_BSD_WCHAR_T_ "
.LASF597:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF262:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF948:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF642:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF172:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF708:
	.string	"NIL_VAL ((Value){VAL_NIL, {.f64 = 0}})"
.LASF1111:
	.string	"TK_COLONIEQ"
.LASF775:
	.string	"__DECL_SIMD_logf64 "
.LASF1037:
	.string	"OP_GET_GLOBAL"
.LASF508:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF847:
	.string	"_Mdouble_ double"
.LASF928:
	.string	"____mbstate_t_defined 1"
.LASF687:
	.string	"IS_U32(value) ((value).type == VAL_U32)"
.LASF474:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF115:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF870:
	.string	"_Mdouble_ _Float64x"
.LASF149:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF985:
	.string	"__off_t"
.LASF643:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF576:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
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
.LASF862:
	.string	"__MATH_PRECNAME(name,r) name ##f32 ##r"
.LASF1129:
	.string	"TK_COLONSEQ"
.LASF1240:
	.string	"_offset"
.LASF785:
	.string	"__DECL_SIMD_expf64 "
.LASF334:
	.string	"__gnu_linux__ 1"
.LASF286:
	.string	"__USER_LABEL_PREFIX__ "
.LASF871:
	.string	"__MATH_PRECNAME(name,r) name ##f64x ##r"
.LASF733:
	.string	"compiler_h "
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF860:
	.string	"__MATH_DECLARE_LDOUBLE 1"
.LASF1164:
	.string	"TK_FALSE"
.LASF542:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF555:
	.string	"__SLONG32_TYPE int"
.LASF808:
	.string	"__HAVE_FLOAT16 0"
.LASF671:
	.string	"DEBUG_PRINT_CODE "
.LASF1261:
	.string	"index"
.LASF562:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF304:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF1280:
	.string	"concatenate"
.LASF814:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF1035:
	.string	"OP_DEFINE_GLOBAL"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF407:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF1141:
	.string	"TK_EQI8"
.LASF409:
	.string	"__USE_ISOC11"
.LASF1133:
	.string	"TK_STAREQ"
.LASF485:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF240:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF71:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF1046:
	.string	"OP_DIVIDE"
.LASF888:
	.string	"__MATH_TG_F64X(FUNC,ARGS) _Float64x: FUNC ## l ARGS,"
.LASF678:
	.string	"IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)"
.LASF834:
	.string	"__GLIBC_FLT_EVAL_METHOD __FLT_EVAL_METHOD__"
.LASF961:
	.string	"BINARY_OP(valueType,op) do{ if(!IS_F64(check(0)) || !IS_F64(check(1))){ runtimeError(\"Operands must be numbers.\"); return INTERPRET_RUNTIME_ERROR; } double b = AS_F64(pop()); double a = AS_F64(pop()); push(valueType(a op b)); } while(false)"
.LASF121:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF163:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF343:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF959:
	.string	"READ_SHORT() (vm.ip += 2, (uint16_t)((vm.ip[-2] << 8) | vm.ip[-1]))"
.LASF984:
	.string	"__uint64_t"
.LASF102:
	.string	"__INT8_MAX__ 0x7f"
.LASF578:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF1116:
	.string	"TK_USDLEQ"
.LASF868:
	.string	"_Mdouble_ _Float32x"
.LASF525:
	.string	"__stub_lchmod "
.LASF1061:
	.string	"lines"
.LASF617:
	.string	"UINT8_MAX (255)"
.LASF654:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF453:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF1029:
	.string	"OP_CONSTANT"
.LASF146:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF1155:
	.string	"TK_LTEQ"
.LASF1265:
	.string	"format"
.LASF3:
	.string	"__GNUC__ 9"
.LASF1121:
	.string	"TK_COLONULLEQ"
.LASF1262:
	.string	"check"
.LASF982:
	.string	"__uint32_t"
.LASF253:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF77:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF519:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF189:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF266:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF392:
	.string	"_WCHAR_T_DEFINED_ "
.LASF148:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF85:
	.string	"__SCHAR_WIDTH__ 8"
.LASF1096:
	.string	"TK_CARETCARET"
.LASF964:
	.string	"READ_CONSTANT"
.LASF746:
	.string	"__DECL_SIMD_cosf128 "
.LASF472:
	.string	"__glibc_c99_flexarr_available 1"
.LASF1222:
	.string	"_IO_read_base"
.LASF878:
	.string	"__MATHCALL_NARROW_NORMAL(func,nargs) extern _Mret_ func __MATHCALL_NARROW_ARGS_ ## nargs __THROW"
.LASF1162:
	.string	"TK_ELSIF"
.LASF499:
	.string	"__restrict_arr __restrict"
.LASF323:
	.string	"__k8__ 1"
.LASF18:
	.string	"_LP64 1"
.LASF1055:
	.string	"line"
.LASF131:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF464:
	.string	"__BEGIN_DECLS "
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF1190:
	.string	"TK_ENDEXPRESSION"
.LASF677:
	.string	"__need_NULL "
.LASF408:
	.string	"_FEATURES_H 1"
.LASF783:
	.string	"__DECL_SIMD_expf16 "
.LASF1247:
	.string	"_unused2"
.LASF194:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF696:
	.string	"AS_U8(value) ((value).as.u8)"
.LASF404:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF605:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF798:
	.string	"__DECL_SIMD_powf64x "
.LASF901:
	.string	"MATH_ERRNO 1"
.LASF482:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF925:
	.string	"_STDIO_H 1"
.LASF1160:
	.string	"TK_CLASS"
.LASF1237:
	.string	"_vtable_offset"
.LASF296:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF891:
	.string	"FP_INFINITE 1"
.LASF169:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF560:
	.string	"_BITS_TYPESIZES_H 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF446:
	.string	"__GNU_LIBRARY__ 6"
.LASF1252:
	.string	"stdin"
.LASF247:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_MANT_DIG__ 24"
.LASF911:
	.string	"_STDARG_H "
.LASF1189:
	.string	"TK_NEWLINE"
.LASF1186:
	.string	"TK_STRING"
.LASF1008:
	.string	"VAL_U16"
.LASF94:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF840:
	.string	"__MATHCALL_VEC(function,suffix,args) __SIMD_DECL (__MATH_PRECNAME (function, suffix)) __MATHCALL (function, suffix, args)"
.LASF771:
	.string	"__DECL_SIMD_logf "
.LASF216:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF357:
	.string	"_T_PTRDIFF_ "
.LASF1235:
	.string	"_old_offset"
.LASF1098:
	.string	"TK_PIPE"
.LASF1069:
	.string	"TK_LEFT_BRACK"
.LASF917:
	.string	"va_arg(v,l) __builtin_va_arg(v,l)"
.LASF1266:
	.string	"args"
.LASF239:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF703:
	.string	"AS_F32(value) ((value).as.f32)"
.LASF695:
	.string	"AS_I8(value) ((value).as.i8)"
.LASF326:
	.string	"__SSE__ 1"
.LASF732:
	.string	"FREE_ARRAY(type,pointer,oldCount) reallocate(pointer, sizeof(type) * (oldCount), 0)"
.LASF98:
	.string	"__INTMAX_WIDTH__ 64"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF305:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF293:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF595:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF233:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF387:
	.string	"_T_WCHAR_ "
.LASF707:
	.string	"UNDEFINED_VAL ((Value){VAL_UNDEFINED})"
.LASF116:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF752:
	.string	"__DECL_SIMD_sinl "
.LASF1178:
	.string	"TK_WHILE"
.LASF1059:
	.string	"lineCount"
.LASF1050:
	.string	"OP_NEGATE"
.LASF301:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF1184:
	.string	"TK_LINE"
.LASF383:
	.string	"__need_size_t"
.LASF373:
	.string	"_SIZE_T_ "
.LASF150:
	.string	"__FLT_RADIX__ 2"
.LASF1159:
	.string	"TK_CASE"
.LASF1217:
	.string	"va_list"
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
.LASF924:
	.string	"__va_list__ "
.LASF1081:
	.string	"TK_DOT"
.LASF356:
	.string	"_PTRDIFF_T "
.LASF405:
	.string	"_STDINT_H 1"
.LASF740:
	.string	"__DECL_SIMD_cos "
.LASF819:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF132:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF939:
	.string	"_IO_USER_LOCK 0x8000"
.LASF302:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF1272:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF756:
	.string	"__DECL_SIMD_sinf128 "
.LASF488:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF504:
	.string	"__attribute_copy__"
.LASF212:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF316:
	.string	"__x86_64__ 1"
.LASF389:
	.string	"__WCHAR_T "
.LASF1022:
	.string	"double"
.LASF134:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF1201:
	.string	"stack"
.LASF457:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF769:
	.string	"__DECL_SIMD_sincosf128x "
.LASF41:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF1225:
	.string	"_IO_write_end"
.LASF1017:
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
.LASF1172:
	.string	"TK_STRUCT"
.LASF1010:
	.string	"VAL_U32"
.LASF880:
	.string	"__MATHCALL_NARROW(func,redir,nargs) __MATHCALL_NARROW_NORMAL (func, nargs)"
.LASF797:
	.string	"__DECL_SIMD_powf32x "
.LASF923:
	.string	"_VA_LIST_T_H "
.LASF1275:
	.string	"__builtin_va_list"
.LASF308:
	.string	"__SSP_STRONG__ 3"
.LASF849:
	.string	"__MATH_DECLARING_DOUBLE 1"
.LASF1118:
	.string	"TK_USDULEQ"
.LASF1067:
	.string	"TK_LEFT_BRACE"
.LASF805:
	.string	"__f128(x) x ##f128"
.LASF1213:
	.string	"gp_offset"
.LASF547:
	.string	"__S32_TYPE int"
.LASF715:
	.string	"U32_VAL(value) ((Value){VAL_U32, {.u32 = value}})"
.LASF827:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF1113:
	.string	"TK_COLONUIEQ"
.LASF1101:
	.string	"TK_GTGTGT"
.LASF551:
	.string	"__SQUAD_TYPE long int"
.LASF727:
	.string	"AS_CSTRING(value) (((ObjString*)AS_OBJ(value))->chars)"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF117:
	.string	"__INT32_C(c) c"
.LASF566:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF787:
	.string	"__DECL_SIMD_expf32x "
.LASF70:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF430:
	.string	"__USE_FORTIFY_LEVEL"
.LASF355:
	.string	"_ANSI_STDDEF_H "
.LASF944:
	.string	"EOF (-1)"
.LASF1026:
	.string	"count"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF260:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF322:
	.string	"__k8 1"
.LASF938:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF518:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF1177:
	.string	"TK_WHEN"
.LASF1226:
	.string	"_IO_buf_base"
.LASF801:
	.string	"__HAVE_FLOAT128 1"
.LASF998:
	.string	"ObjString"
.LASF907:
	.string	"isless(x,y) __builtin_isless(x, y)"
.LASF784:
	.string	"__DECL_SIMD_expf32 "
.LASF1193:
	.string	"Token"
.LASF960:
	.string	"READ_STRING() AS_STRING(READ_CONSTANT())"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF973:
	.string	"unsigned int"
.LASF470:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF63:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF929:
	.string	"_____fpos64_t_defined 1"
.LASF1047:
	.string	"OP_MODULATE"
.LASF153:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF221:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF502:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF1144:
	.string	"TK_EQU16"
.LASF869:
	.string	"__MATH_PRECNAME(name,r) name ##f32x ##r"
.LASF927:
	.string	"_____fpos_t_defined 1"
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
.LASF1045:
	.string	"OP_MULTIPLY"
.LASF398:
	.string	"_WCHAR_T_DECLARED "
.LASF908:
	.string	"islessequal(x,y) __builtin_islessequal(x, y)"
.LASF147:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF779:
	.string	"__DECL_SIMD_logf128x "
.LASF1176:
	.string	"TK_TRUE"
.LASF158:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF74:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF1041:
	.string	"OP_GREATER"
.LASF1204:
	.string	"globalValues"
.LASF1245:
	.string	"__pad5"
.LASF548:
	.string	"__U32_TYPE unsigned int"
.LASF113:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF358:
	.string	"_T_PTRDIFF "
.LASF88:
	.string	"__LONG_WIDTH__ 64"
.LASF479:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF786:
	.string	"__DECL_SIMD_expf128 "
.LASF227:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF859:
	.string	"__MATH_PRECNAME(name,r) name ##l ##r"
.LASF1195:
	.string	"Scanner"
.LASF761:
	.string	"__DECL_SIMD_sincosf "
.LASF858:
	.string	"_Mdouble_ long double"
.LASF468:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
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
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF541:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF1119:
	.string	"TK_COLONLLEQ"
.LASF490:
	.string	"__wur "
.LASF467:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF1215:
	.string	"overflow_arg_area"
.LASF791:
	.string	"__DECL_SIMD_powf "
.LASF1108:
	.string	"TK_USDCEQ"
.LASF716:
	.string	"I64_VAL(value) ((Value){VAL_I64, {.i64 = value}})"
.LASF86:
	.string	"__SHRT_WIDTH__ 16"
.LASF1066:
	.string	"TK_RIGHT_PAREN"
.LASF278:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1219:
	.string	"_flags"
.LASF1014:
	.string	"VAL_F64"
.LASF350:
	.string	"true 1"
.LASF364:
	.string	"_PTRDIFF_T_DECLARED "
.LASF1054:
	.string	"offset"
.LASF324:
	.string	"__code_model_small__ 1"
.LASF1149:
	.string	"TK_EQF32"
.LASF1158:
	.string	"TK_BANGEQ"
.LASF564:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF238:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF793:
	.string	"__DECL_SIMD_powf16 "
.LASF295:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF753:
	.string	"__DECL_SIMD_sinf16 "
.LASF170:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF724:
	.string	"OBJ_TYPE(value) (AS_OBJ(value)->type)"
.LASF1246:
	.string	"_mode"
.LASF571:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1028:
	.string	"ValueArray"
.LASF512:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF104:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF511:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF462:
	.string	"__STRING(x) #x"
.LASF1009:
	.string	"VAL_I32"
.LASF971:
	.string	"unsigned char"
.LASF505:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF818:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF443:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF1241:
	.string	"_codecvt"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF918:
	.string	"va_copy(d,s) __builtin_va_copy(d,s)"
.LASF768:
	.string	"__DECL_SIMD_sincosf64x "
.LASF197:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF885:
	.string	"__MATHCALL_NARROW_REDIR"
.LASF1197:
	.string	"Entry"
.LASF386:
	.string	"_WCHAR_T "
.LASF757:
	.string	"__DECL_SIMD_sinf32x "
.LASF812:
	.string	"__HAVE_FLOAT128X 0"
.LASF1012:
	.string	"VAL_U64"
.LASF161:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF264:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF1146:
	.string	"TK_EQU32"
.LASF635:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF691:
	.string	"IS_F64(value) ((value).type == VAL_F64)"
.LASF363:
	.string	"_GCC_PTRDIFF_T "
.LASF526:
	.string	"__stub_revoke "
.LASF515:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF1274:
	.string	"/mnt/d/coding portfolio/fortissimolanguage"
.LASF782:
	.string	"__DECL_SIMD_expl "
.LASF1006:
	.string	"VAL_U8"
.LASF517:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF368:
	.string	"_SIZE_T "
.LASF394:
	.string	"_WCHAR_T_H "
.LASF941:
	.string	"_IOLBF 1"
.LASF865:
	.string	"__MATH_PRECNAME(name,r) name ##f64 ##r"
.LASF776:
	.string	"__DECL_SIMD_logf128 "
.LASF796:
	.string	"__DECL_SIMD_powf128 "
.LASF694:
	.string	"AS_BOOL(value) ((value).as.boolean)"
.LASF649:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF942:
	.string	"_IONBF 2"
.LASF623:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF78:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF471:
	.string	"__flexarr []"
.LASF1207:
	.string	"INTERPRET_OK"
.LASF1023:
	.string	"long double"
.LASF930:
	.string	"____FILE_defined 1"
.LASF1013:
	.string	"VAL_F32"
.LASF573:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF1103:
	.string	"TK_LTLT"
.LASF263:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF223:
	.string	"__FLT128_DIG__ 33"
.LASF111:
	.string	"__INT8_C(c) c"
.LASF201:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1105:
	.string	"TK_COLONEQ"
.LASF167:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF372:
	.string	"__SIZE_T "
.LASF799:
	.string	"__DECL_SIMD_powf128x "
.LASF1248:
	.string	"FILE"
.LASF47:
	.string	"__INT32_TYPE__ int"
.LASF770:
	.string	"__DECL_SIMD_log "
.LASF1058:
	.string	"constants"
.LASF592:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF411:
	.string	"__USE_ISOC95"
.LASF651:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF410:
	.string	"__USE_ISOC99"
.LASF581:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF1073:
	.string	"TK_LTLPAREN"
.LASF949:
	.string	"L_tmpnam 20"
.LASF418:
	.string	"__USE_XOPEN_EXTENDED"
.LASF804:
	.string	"__HAVE_FLOAT64X_LONG_DOUBLE 1"
.LASF191:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF292:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF244:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF962:
	.string	"BINARY_OPF(valueType,op) do{ if(!IS_F64(check(0)) || !IS_F64(check(1))){ runtimeError(\"Operands must be numbers.\"); return INTERPRET_RUNTIME_ERROR; } double b = AS_F64(pop()); double a = AS_F64(pop()); push(valueType(op(a,b))); } while(false)"
.LASF6:
	.string	"__VERSION__ \"9.3.0\""
.LASF397:
	.string	"_GCC_WCHAR_T "
.LASF1181:
	.string	"TK_NUMBER"
.LASF632:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF726:
	.string	"AS_STRING(value) ((ObjString*)AS_OBJ(value))"
.LASF975:
	.string	"__int8_t"
.LASF608:
	.string	"__intptr_t_defined "
.LASF599:
	.string	"__FD_SETSIZE 1024"
.LASF48:
	.string	"__INT64_TYPE__ long int"
.LASF1095:
	.string	"TK_PIPEPIPE"
.LASF570:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1234:
	.string	"_flags2"
.LASF919:
	.string	"__va_copy(d,s) __builtin_va_copy(d,s)"
.LASF895:
	.string	"fpclassify(x) __builtin_fpclassify (FP_NAN, FP_INFINITE, FP_NORMAL, FP_SUBNORMAL, FP_ZERO, x)"
.LASF271:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF250:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF456:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF712:
	.string	"I16_VAL(value) ((Value){VAL_I16, {.i16 = value}})"
.LASF1131:
	.string	"TK_PLUSEQ"
.LASF817:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF75:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF1216:
	.string	"reg_save_area"
.LASF412:
	.string	"__USE_ISOCXX11"
.LASF376:
	.string	"_SIZE_T_DEFINED "
.LASF81:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF999:
	.string	"length"
.LASF993:
	.string	"uint16_t"
.LASF1188:
	.string	"TK_EOF"
.LASF558:
	.string	"__U64_TYPE unsigned long int"
.LASF359:
	.string	"__PTRDIFF_T "
.LASF257:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF69:
	.string	"__INTPTR_TYPE__ long int"
.LASF629:
	.string	"UINT_LEAST8_MAX (255)"
.LASF900:
	.string	"isinf(x) __builtin_isinf_sign (x)"
.LASF970:
	.string	"long unsigned int"
.LASF1183:
	.string	"TK_INTERPOLATION"
.LASF1258:
	.string	"instruction"
.LASF1150:
	.string	"TK_EQF64"
.LASF1033:
	.string	"OP_FALSE"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF723:
	.string	"object_h "
.LASF967:
	.string	"BINARY_OP"
.LASF237:
	.string	"__FLT32X_DIG__ 15"
.LASF433:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF416:
	.string	"__USE_POSIX199506"
.LASF662:
	.string	"INT32_C(c) c"
.LASF815:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF759:
	.string	"__DECL_SIMD_sinf128x "
.LASF142:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF1110:
	.string	"TK_USDUCEQ"
.LASF838:
	.string	"FP_ILOGBNAN (-2147483647 - 1)"
.LASF667:
	.string	"UINT64_C(c) c ## UL"
.LASF875:
	.string	"__MATHCALL_NARROW_ARGS_1 (_Marg_ __x)"
.LASF1244:
	.string	"_freeres_buf"
.LASF317:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF947:
	.string	"SEEK_END 2"
.LASF328:
	.string	"__FXSR__ 1"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF1161:
	.string	"TK_ELSE"
.LASF845:
	.string	"__MATHDECLX(type,function,suffix,args,attrib) __MATHDECL_1(type, function,suffix, args) __attribute__ (attrib); __MATHDECL_1(type, __CONCAT(__,function),suffix, args) __attribute__ (attrib)"
.LASF1138:
	.string	"TK_CARETEQ"
.LASF912:
	.string	"_ANSI_STDARG_H_ "
.LASF510:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF309:
	.string	"__SIZEOF_INT128__ 16"
.LASF966:
	.string	"READ_STRING"
.LASF1148:
	.string	"TK_EQU64"
.LASF530:
	.string	"__stub_stty "
.LASF1032:
	.string	"OP_TRUE"
.LASF641:
	.string	"UINT_FAST8_MAX (255)"
.LASF569:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF469:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF1174:
	.string	"TK_RETURN"
.LASF119:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF557:
	.string	"__S64_TYPE long int"
.LASF374:
	.string	"_BSD_SIZE_T_ "
.LASF977:
	.string	"__uint8_t"
.LASF915:
	.string	"va_start(v,l) __builtin_va_start(v,l)"
.LASF417:
	.string	"__USE_XOPEN"
.LASF390:
	.string	"_WCHAR_T_ "
.LASF748:
	.string	"__DECL_SIMD_cosf64x "
.LASF496:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF1034:
	.string	"OP_POP"
.LASF810:
	.string	"__HAVE_FLOAT64 1"
.LASF1224:
	.string	"_IO_write_ptr"
.LASF1082:
	.string	"TK_DOTDOT"
.LASF619:
	.string	"UINT32_MAX (4294967295U)"
.LASF501:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF84:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF978:
	.string	"__int16_t"
.LASF697:
	.string	"AS_I16(value) ((value).as.i16)"
.LASF1229:
	.string	"_IO_backup_base"
.LASF1238:
	.string	"_shortbuf"
.LASF1125:
	.string	"TK_COLONDEQ"
.LASF129:
	.string	"__UINT64_C(c) c ## UL"
.LASF574:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF657:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF532:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF675:
	.string	"_STRING_H 1"
.LASF480:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF603:
	.string	"_BITS_WCHAR_H 1"
.LASF1122:
	.string	"TK_USDULLEQ"
.LASF743:
	.string	"__DECL_SIMD_cosf16 "
.LASF832:
	.string	"INFINITY (__builtin_inff ())"
.LASF663:
	.string	"INT64_C(c) c ## L"
.LASF688:
	.string	"IS_I64(value) ((value).type == VAL_I64)"
.LASF1123:
	.string	"TK_COLONFEQ"
.LASF790:
	.string	"__DECL_SIMD_pow "
.LASF173:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF800:
	.string	"_BITS_FLOATN_H "
.LASF258:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF669:
	.string	"UINTMAX_C(c) c ## UL"
.LASF440:
	.string	"__USE_ISOC99 1"
.LASF538:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF765:
	.string	"__DECL_SIMD_sincosf64 "
.LASF79:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF986:
	.string	"__off64_t"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF259:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF4:
	.string	"__GNUC_MINOR__ 3"
.LASF1057:
	.string	"code"
.LASF1152:
	.string	"TK_EQS"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF704:
	.string	"AS_F64(value) ((value).as.f64)"
.LASF300:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF803:
	.string	"__HAVE_FLOAT64X 1"
.LASF234:
	.string	"__FLT128_HAS_INFINITY__ 1"
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
.LASF137:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF750:
	.string	"__DECL_SIMD_sin "
.LASF894:
	.string	"FP_NORMAL 4"
.LASF598:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF1169:
	.string	"TK_LET"
.LASF327:
	.string	"__SSE2__ 1"
.LASF1142:
	.string	"TK_EQU8"
.LASF1227:
	.string	"_IO_buf_end"
.LASF829:
	.string	"HUGE_VAL (__builtin_huge_val ())"
.LASF584:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF516:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF807:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF495:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF285:
	.string	"__REGISTER_PREFIX__ "
.LASF284:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF166:
	.string	"__DBL_DIG__ 15"
.LASF1203:
	.string	"globalNames"
.LASF604:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF821:
	.string	"__f32(x) x ##f32"
.LASF487:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF1072:
	.string	"TK_RBRACEGT"
.LASF1126:
	.string	"TK_USDDEQ"
.LASF851:
	.string	"_Mdouble_"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF825:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF535:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF217:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF575:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF465:
	.string	"__END_DECLS "
.LASF332:
	.string	"__SEG_GS 1"
.LASF741:
	.string	"__DECL_SIMD_cosf "
.LASF764:
	.string	"__DECL_SIMD_sincosf32 "
.LASF1044:
	.string	"OP_SUBTRACT"
.LASF1112:
	.string	"TK_USDIEQ"
.LASF952:
	.string	"FOPEN_MAX"
.LASF655:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF320:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF612:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF754:
	.string	"__DECL_SIMD_sinf32 "
.LASF1064:
	.string	"ObjType"
.LASF109:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF1187:
	.string	"TK_ERROR"
.LASF1254:
	.string	"stderr"
.LASF329:
	.string	"__SSE_MATH__ 1"
.LASF979:
	.string	"short int"
.LASF353:
	.string	"_STDDEF_H "
.LASF903:
	.string	"math_errhandling (MATH_ERRNO | MATH_ERREXCEPT)"
.LASF853:
	.string	"__MATH_DECLARING_DOUBLE"
.LASF83:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF125:
	.string	"__UINT16_C(c) c"
.LASF788:
	.string	"__DECL_SIMD_expf64x "
.LASF1128:
	.string	"TK_USDLDEQ"
.LASF995:
	.string	"uint64_t"
.LASF507:
	.string	"__WORDSIZE 64"
.LASF1016:
	.string	"VAL_OBJ"
.LASF498:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF1090:
	.string	"TK_STAR"
.LASF1130:
	.string	"TK_USDSEQ"
.LASF660:
	.string	"INT8_C(c) c"
.LASF613:
	.string	"INT8_MAX (127)"
.LASF254:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF593:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF1136:
	.string	"TK_AMPEQ"
.LASF1077:
	.string	"TK_BANG"
.LASF1139:
	.string	"TK_TILDEEQ"
.LASF1211:
	.string	"scanner"
.LASF816:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF177:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF533:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
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
.LASF582:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF274:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF365:
	.string	"__need_ptrdiff_t"
.LASF171:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF905:
	.string	"isgreater(x,y) __builtin_isgreater(x, y)"
.LASF528:
	.string	"__stub_sigreturn "
.LASF360:
	.string	"_PTRDIFF_T_ "
.LASF589:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF475:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF717:
	.string	"U64_VAL(value) ((Value){VAL_U64, {.u64 = value}})"
.LASF450:
	.string	"_SYS_CDEFS_H 1"
.LASF1093:
	.string	"TK_STARSTAR"
.LASF393:
	.string	"_WCHAR_T_DEFINED "
.LASF103:
	.string	"__INT16_MAX__ 0x7fff"
.LASF789:
	.string	"__DECL_SIMD_expf128x "
.LASF478:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF553:
	.string	"__SWORD_TYPE long int"
.LASF481:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF1003:
	.string	"VAL_NIL"
.LASF87:
	.string	"__INT_WIDTH__ 32"
.LASF367:
	.string	"__SIZE_T__ "
.LASF484:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF222:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF1180:
	.string	"TK_NAME"
.LASF650:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF738:
	.string	"_MATH_H 1"
.LASF647:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF101:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF936:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF1099:
	.string	"TK_CARET"
.LASF909:
	.string	"islessgreater(x,y) __builtin_islessgreater(x, y)"
.LASF1068:
	.string	"TK_RIGHT_BRACE"
.LASF755:
	.string	"__DECL_SIMD_sinf64 "
.LASF1269:
	.string	"makeToken"
.LASF823:
	.string	"__f32x(x) x ##f32x"
.LASF1132:
	.string	"TK_MINUSEQ"
.LASF1070:
	.string	"TK_RIGHT_BRACK"
.LASF267:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF351:
	.string	"false 0"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
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
.LASF763:
	.string	"__DECL_SIMD_sincosf16 "
.LASF983:
	.string	"__int64_t"
.LASF620:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF835:
	.string	"__FP_LOGB0_IS_MIN 1"
.LASF854:
	.string	"__MATH_DECLARING_FLOATN"
.LASF916:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF144:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF441:
	.string	"__USE_ISOC95 1"
.LASF205:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF664:
	.string	"UINT8_C(c) c"
.LASF1251:
	.string	"_IO_wide_data"
.LASF52:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF1004:
	.string	"VAL_BOOL"
.LASF811:
	.string	"__HAVE_FLOAT32X 1"
.LASF395:
	.string	"___int_wchar_t_h "
.LASF298:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF882:
	.string	"__MATHCALL_NARROW_ARGS_2"
.LASF883:
	.string	"__MATHCALL_NARROW_ARGS_3"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF1040:
	.string	"OP_EQUAL"
.LASF514:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF583:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF497:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF37:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF325:
	.string	"__MMX__ 1"
.LASF1221:
	.string	"_IO_read_end"
.LASF1140:
	.string	"TK_EQ"
.LASF1137:
	.string	"TK_PIPEEQ"
.LASF684:
	.string	"IS_I16(value) ((value).type == VAL_I16)"
.LASF1156:
	.string	"TK_GTEQ"
.LASF380:
	.string	"_GCC_SIZE_T "
.LASF844:
	.string	"__MATHCALLX(function,suffix,args,attrib) __MATHDECLX (_Mdouble_,function,suffix, args, attrib)"
.LASF91:
	.string	"__WINT_WIDTH__ 32"
.LASF721:
	.string	"OBJ_VAL(object) ((Value){VAL_OBJ, {.obj = (Obj*)object}})"
.LASF1199:
	.string	"Table"
.LASF710:
	.string	"I8_VAL(value) ((Value){VAL_I8, {.i8 = value}})"
.LASF1273:
	.string	"VirtualMachine/vm/vm.c"
.LASF1024:
	.string	"Value"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF399:
	.string	"_BSD_WCHAR_T_"
.LASF521:
	.string	"__stub___compat_bdflush "
.LASF627:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF846:
	.string	"__MATHDECL_1(type,function,suffix,args) extern type __MATH_PRECNAME(function,suffix) args __THROW"
.LASF588:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF1038:
	.string	"OP_SET_LOCAL"
.LASF439:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF563:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF622:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF877:
	.string	"__MATHCALL_NARROW_ARGS_3 (_Marg_ __x, _Marg_ __y, _Marg_ __z)"
.LASF760:
	.string	"__DECL_SIMD_sincos "
.LASF1166:
	.string	"TK_FOR"
.LASF428:
	.string	"__USE_ATFILE"
.LASF321:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF1233:
	.string	"_fileno"
.LASF313:
	.string	"__amd64 1"
.LASF1074:
	.string	"TK_RPARENLBRACE"
.LASF188:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF338:
	.string	"__unix__ 1"
.LASF458:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF850:
	.string	"__MATH_DECLARING_FLOATN 0"
.LASF477:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF520:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF614:
	.string	"INT16_MAX (32767)"
.LASF306:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF658:
	.string	"WINT_MIN (0u)"
.LASF1242:
	.string	"_wide_data"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF438:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF567:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF1270:
	.string	"token"
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
.LASF1015:
	.string	"VAL_F128"
.LASF1076:
	.string	"TK_RPARENGT"
.LASF937:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF1114:
	.string	"TK_USDUIEQ"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF864:
	.string	"_Mdouble_ _Float64"
.LASF758:
	.string	"__DECL_SIMD_sinf64x "
.LASF580:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF904:
	.string	"__NO_MATH_INLINES 1"
.LASF606:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF1021:
	.string	"float"
.LASF1253:
	.string	"stdout"
.LASF206:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF638:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF229:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF336:
	.string	"__linux__ 1"
.LASF442:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF445:
	.string	"__GNU_LIBRARY__"
.LASF1259:
	.string	"slot"
.LASF352:
	.string	"__bool_true_false_are_defined 1"
.LASF672:
	.string	"DEBUG_TRACE_EXECUTION "
.LASF994:
	.string	"uint32_t"
.LASF174:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF913:
	.string	"__need___va_list"
.LASF921:
	.string	"_VA_LIST "
.LASF1198:
	.string	"entries"
.LASF318:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF1063:
	.string	"OBJ_STRING"
.LASF126:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF774:
	.string	"__DECL_SIMD_logf32 "
.LASF529:
	.string	"__stub_sstk "
.LASF686:
	.string	"IS_I32(value) ((value).type == VAL_I32)"
.LASF747:
	.string	"__DECL_SIMD_cosf32x "
.LASF932:
	.string	"__struct_FILE_defined 1"
.LASF848:
	.string	"__MATH_PRECNAME(name,r) __CONCAT(name,r)"
.LASF737:
	.string	"STACK_MAX 256"
.LASF981:
	.string	"__int32_t"
.LASF692:
	.string	"IS_F128(value) ((value).type == VAL_F128)"
.LASF991:
	.string	"int64_t"
.LASF13:
	.string	"__pic__ 2"
.LASF1154:
	.string	"TK_GT"
.LASF828:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF370:
	.string	"_T_SIZE_ "
.LASF1102:
	.string	"TK_GTGT"
.LASF354:
	.string	"_STDDEF_H_ "
.LASF1267:
	.string	"freeVM"
.LASF236:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF1060:
	.string	"lineCapacity"
.LASF90:
	.string	"__WCHAR_WIDTH__ 32"
.LASF1091:
	.string	"TK_SLASH"
.LASF425:
	.string	"__USE_LARGEFILE64"
.LASF933:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF1062:
	.string	"Chunk"
.LASF114:
	.string	"__INT16_C(c) c"
.LASF884:
	.string	"__MATHCALL_NARROW_NORMAL"
.LASF777:
	.string	"__DECL_SIMD_logf32x "
.LASF251:
	.string	"__FLT64X_DIG__ 18"
.LASF1001:
	.string	"hash"
.LASF1115:
	.string	"TK_COLONLEQ"
.LASF546:
	.string	"__U16_TYPE unsigned short int"
.LASF272:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF730:
	.string	"GROW_CAPACITY(capacity) ((capacity) < 8 ? 8 : (capacity) * 2)"
.LASF1052:
	.string	"OP_JUMP_IF_FALSE"
.LASF143:
	.string	"__INTPTR_WIDTH__ 64"
.LASF335:
	.string	"__linux 1"
.LASF997:
	.string	"next"
.LASF837:
	.string	"FP_ILOGB0 (-2147483647 - 1)"
.LASF963:
	.string	"READ_BYTE"
.LASF135:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF867:
	.string	"__MATH_PRECNAME(name,r) name ##f128 ##r"
.LASF175:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF856:
	.string	"__MATH_PRECNAME(name,r) name ##f ##r"
.LASF256:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF531:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF1127:
	.string	"TK_COLONLDEQ"
.LASF1120:
	.string	"TK_USDLLEQ"
.LASF652:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF920:
	.string	"_VA_LIST_ "
.LASF794:
	.string	"__DECL_SIMD_powf32 "
.LASF718:
	.string	"F32_VAL(value) ((Value){VAL_F32, {.f32 = value}})"
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
.LASF728:
	.string	"ALLOCATE(type,count) (type*)reallocate(NULL, 0, sizeof(type) * (count))"
.LASF950:
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
