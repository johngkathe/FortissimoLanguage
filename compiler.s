	.file	"compiler.c"
	.text
.Ltext0:
	.comm	scanner,24,16
	.type	makeToken, @function
makeToken:
.LFB1:
	.file 1 "Compilation/compiler/../../Tokenization/scanner/scanner.h"
	.loc 1 193 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	.loc 1 195 16
	movl	-44(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 196 26
	movq	scanner(%rip), %rax
	.loc 1 196 17
	movq	%rax, -24(%rbp)
	.loc 1 197 37
	movq	8+scanner(%rip), %rdx
	.loc 1 197 55
	movq	scanner(%rip), %rax
	.loc 1 197 46
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 197 18
	movw	%ax, -16(%rbp)
	.loc 1 198 25
	movzwl	16+scanner(%rip), %eax
	.loc 1 198 16
	movw	%ax, -14(%rbp)
	.loc 1 199 12
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 1 200 1
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	makeToken, .-makeToken
	.comm	parser,56,32
	.globl	current
	.bss
	.align 8
	.type	current, @object
	.size	current, 8
current:
	.zero	8
	.comm	compilingChunk,8,8
	.text
	.type	currentChunk, @function
currentChunk:
.LFB2:
	.file 2 "Compilation/compiler/compiler.c"
	.loc 2 62 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 63 12
	movq	compilingChunk(%rip), %rax
	.loc 2 64 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	currentChunk, .-currentChunk
	.section	.rodata
.LC0:
	.string	"[Line %d] Error"
.LC1:
	.string	" at end."
.LC2:
	.string	" at '%.*s'"
.LC3:
	.string	": %s\n"
	.text
	.type	errorAt, @function
errorAt:
.LFB3:
	.loc 2 66 55
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 67 14
	movzbl	49+parser(%rip), %eax
	.loc 2 67 7
	testb	%al, %al
	jne	.L10
	.loc 2 68 22
	movb	$1, 49+parser(%rip)
	.loc 2 69 44
	movq	-8(%rbp), %rax
	movzwl	18(%rax), %eax
	.loc 2 69 5
	movswl	%ax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 71 13
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 71 7
	cmpl	$123, %eax
	jne	.L8
	.loc 2 72 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	jmp	.L9
.L8:
	.loc 2 73 21
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 73 15
	cmpl	$122, %eax
	je	.L9
	.loc 2 75 9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 2 75 43
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 2 75 9
	movswl	%ax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L9:
	.loc 2 78 5
	movq	stderr(%rip), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 79 21
	movb	$1, 48+parser(%rip)
	jmp	.L5
.L10:
	.loc 2 67 26
	nop
.L5:
	.loc 2 80 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	errorAt, .-errorAt
	.type	error, @function
error:
.LFB4:
	.loc 2 82 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 83 5
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	24+parser(%rip), %rdi
	call	errorAt
	.loc 2 84 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	error, .-error
	.type	errorAtCurrent, @function
errorAtCurrent:
.LFB5:
	.loc 2 86 48
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 87 5
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	parser(%rip), %rdi
	call	errorAt
	.loc 2 88 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	errorAtCurrent, .-errorAtCurrent
	.type	advance, @function
advance:
.LFB6:
	.loc 2 90 22
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 90 22
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 91 21
	movq	parser(%rip), %rax
	movq	8+parser(%rip), %rdx
	movq	%rax, 24+parser(%rip)
	movq	%rdx, 32+parser(%rip)
	movq	16+parser(%rip), %rax
	movq	%rax, 40+parser(%rip)
.L16:
	.loc 2 94 26
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	scanToken@PLT
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, parser(%rip)
	movq	%rdx, 8+parser(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, 16+parser(%rip)
	.loc 2 95 26
	movl	parser(%rip), %eax
	.loc 2 95 11
	cmpl	$122, %eax
	jne	.L19
	.loc 2 96 38
	movq	8+parser(%rip), %rax
	.loc 2 96 9
	movq	%rax, %rdi
	call	errorAtCurrent
	.loc 2 94 24
	jmp	.L16
.L19:
	.loc 2 95 9
	nop
	.loc 2 98 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	advance, .-advance
	.type	scout, @function
scout:
.LFB7:
	.loc 2 100 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 100 33
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 101 21
	movq	parser(%rip), %rax
	movq	8+parser(%rip), %rdx
	movq	%rax, 24+parser(%rip)
	movq	%rdx, 32+parser(%rip)
	movq	16+parser(%rip), %rax
	movq	%rax, 40+parser(%rip)
.L23:
	.loc 2 104 26
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	scanToken@PLT
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, parser(%rip)
	movq	%rdx, 8+parser(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, 16+parser(%rip)
	.loc 2 105 26
	movl	parser(%rip), %eax
	.loc 2 105 11
	cmpl	$122, %eax
	jne	.L27
	.loc 2 106 38
	movq	8+parser(%rip), %rax
	.loc 2 106 9
	movq	%rax, %rdi
	call	errorAtCurrent
	.loc 2 104 24
	jmp	.L23
.L27:
	.loc 2 105 9
	nop
	.loc 2 108 26
	movl	parser(%rip), %eax
	.loc 2 108 32
	cmpl	%eax, -20(%rbp)
	sete	%al
	.loc 2 109 1
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	scout, .-scout
	.type	consume, @function
consume:
.LFB8:
	.loc 2 111 57
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 112 22
	movl	parser(%rip), %eax
	.loc 2 112 7
	cmpl	%eax, -4(%rbp)
	jne	.L29
	.loc 2 113 9
	movl	$0, %eax
	call	advance
	.loc 2 114 9
	jmp	.L28
.L29:
	.loc 2 117 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	errorAtCurrent
.L28:
	.loc 2 118 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	consume, .-consume
	.type	verify, @function
verify:
.LFB9:
	.loc 2 120 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 121 26
	movl	parser(%rip), %eax
	.loc 2 121 32
	cmpl	%eax, -4(%rbp)
	sete	%al
	.loc 2 122 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	verify, .-verify
	.type	verifyPrevious, @function
verifyPrevious:
.LFB10:
	.loc 2 124 42
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 125 27
	movl	24+parser(%rip), %eax
	.loc 2 125 33
	cmpl	%eax, -4(%rbp)
	sete	%al
	.loc 2 126 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	verifyPrevious, .-verifyPrevious
	.type	match, @function
match:
.LFB11:
	.loc 2 128 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 129 9
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	verify
	.loc 2 129 8
	xorl	$1, %eax
	.loc 2 129 7
	testb	%al, %al
	je	.L36
	.loc 2 129 29 discriminator 1
	movl	$0, %eax
	jmp	.L37
.L36:
	.loc 2 130 5
	movl	$0, %eax
	call	advance
	.loc 2 131 11
	movl	$1, %eax
.L37:
	.loc 2 132 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	match, .-match
	.type	matchPrevious, @function
matchPrevious:
.LFB12:
	.loc 2 134 41
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 135 9
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	verifyPrevious
	.loc 2 135 8
	xorl	$1, %eax
	.loc 2 135 7
	testb	%al, %al
	je	.L39
	.loc 2 135 37 discriminator 1
	movl	$0, %eax
	jmp	.L40
.L39:
	.loc 2 136 5
	movl	$0, %eax
	call	advance
	.loc 2 137 11
	movl	$1, %eax
.L40:
	.loc 2 138 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	matchPrevious, .-matchPrevious
	.type	emitByte, @function
emitByte:
.LFB13:
	.loc 2 140 35
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 141 53
	movzwl	42+parser(%rip), %eax
	.loc 2 141 5
	movswl	%ax, %r12d
	movzbl	-20(%rbp), %ebx
	movl	$0, %eax
	call	currentChunk
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	writeChunk@PLT
	.loc 2 142 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	emitByte, .-emitByte
	.type	emitBytes, @function
emitBytes:
.LFB14:
	.loc 2 144 52
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -4(%rbp)
	movb	%al, -8(%rbp)
	.loc 2 145 5
	movzbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	emitByte
	.loc 2 146 5
	movzbl	-8(%rbp), %eax
	movl	%eax, %edi
	call	emitByte
	.loc 2 147 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	emitBytes, .-emitBytes
	.type	emitJump, @function
emitJump:
.LFB15:
	.loc 2 149 41
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 150 5
	movzbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	emitByte
	.loc 2 152 5
	movl	$255, %edi
	call	emitByte
	.loc 2 153 5
	movl	$255, %edi
	call	emitByte
	.loc 2 154 12
	movl	$0, %eax
	call	currentChunk
	.loc 2 154 26
	movzwl	(%rax), %eax
	cwtl
	.loc 2 154 34
	subl	$2, %eax
	.loc 2 155 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	emitJump, .-emitJump
	.type	emitReturn, @function
emitReturn:
.LFB16:
	.loc 2 157 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 158 5
	movl	$24, %edi
	call	emitByte
	.loc 2 159 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	emitReturn, .-emitReturn
	.section	.rodata
	.align 8
.LC4:
	.string	"Too many constants in one chunk."
	.text
	.type	makeConstant, @function
makeConstant:
.LFB17:
	.loc 2 161 41
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 162 20
	movl	$0, %eax
	call	currentChunk
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	addConstant@PLT
	addq	$32, %rsp
	.loc 2 162 9
	cwtl
	movl	%eax, -4(%rbp)
	.loc 2 163 7
	cmpl	$255, -4(%rbp)
	jle	.L47
	.loc 2 164 9
	leaq	.LC4(%rip), %rdi
	call	error
	.loc 2 165 16
	movl	$0, %eax
	jmp	.L48
.L47:
	.loc 2 167 12
	movl	-4(%rbp), %eax
.L48:
	.loc 2 168 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	makeConstant, .-makeConstant
	.type	emitConstant, @function
emitConstant:
.LFB18:
	.loc 2 170 38
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 171 28
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	makeConstant
	addq	$32, %rsp
	.loc 2 171 5
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	emitBytes
	.loc 2 172 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	emitConstant, .-emitConstant
	.type	patchJump, @function
patchJump:
.LFB19:
	.loc 2 174 38
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movw	%ax, -28(%rbp)
	.loc 2 176 20
	movl	$0, %eax
	call	currentChunk
	.loc 2 176 34
	movzwl	(%rax), %eax
	movl	%eax, %edx
	.loc 2 176 42
	movzwl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 176 51
	subl	$2, %eax
	.loc 2 176 13
	movw	%ax, -10(%rbp)
	.loc 2 182 34
	movzwl	-10(%rbp), %eax
	sarw	$8, %ax
	movl	%eax, %ebx
	.loc 2 182 5
	movl	$0, %eax
	call	currentChunk
	.loc 2 182 19
	movq	8(%rax), %rdx
	.loc 2 182 25
	movswq	-28(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 182 34
	movl	%ebx, %edx
	movb	%dl, (%rax)
	.loc 2 183 5
	movl	$0, %eax
	call	currentChunk
	.loc 2 183 19
	movq	8(%rax), %rax
	.loc 2 183 25
	movswq	-28(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	.loc 2 183 38
	movzwl	-10(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 184 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	patchJump, .-patchJump
	.type	initCompiler, @function
initCompiler:
.LFB20:
	.loc 2 186 45
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 187 26
	movq	-8(%rbp), %rax
	movw	$0, 8192(%rax)
	.loc 2 188 26
	movq	-8(%rbp), %rax
	movw	$0, 8194(%rax)
	.loc 2 189 13
	movq	-8(%rbp), %rax
	movq	%rax, current(%rip)
	.loc 2 190 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	initCompiler, .-initCompiler
	.section	.rodata
.LC5:
	.string	"code"
	.text
	.type	endCompiler, @function
endCompiler:
.LFB21:
	.loc 2 192 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 193 5
	movl	$0, %eax
	call	emitReturn
	.loc 2 195 15
	movzbl	48+parser(%rip), %eax
	.loc 2 195 8
	xorl	$1, %eax
	.loc 2 195 7
	testb	%al, %al
	je	.L54
	.loc 2 196 9
	movl	$0, %eax
	call	currentChunk
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	disassembleChunk@PLT
.L54:
	.loc 2 198 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	endCompiler, .-endCompiler
	.type	beginScope, @function
beginScope:
.LFB22:
	.loc 2 200 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 201 12
	movq	current(%rip), %rax
	movzwl	8194(%rax), %edx
	.loc 2 201 24
	addl	$1, %edx
	movw	%dx, 8194(%rax)
	.loc 2 202 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	beginScope, .-beginScope
	.type	endScope, @function
endScope:
.LFB23:
	.loc 2 204 23
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 205 12
	movq	current(%rip), %rax
	movzwl	8194(%rax), %edx
	.loc 2 205 24
	subl	$1, %edx
	movw	%dx, 8194(%rax)
	.loc 2 207 10
	jmp	.L57
.L59:
	.loc 2 208 9
	movl	$5, %edi
	call	emitByte
	.loc 2 209 16
	movq	current(%rip), %rax
	movzwl	8192(%rax), %edx
	.loc 2 209 28
	subl	$1, %edx
	movw	%dx, 8192(%rax)
.L57:
	.loc 2 207 18
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	.loc 2 207 10
	testw	%ax, %ax
	jle	.L60
	.loc 2 207 45 discriminator 1
	movq	current(%rip), %rdx
	.loc 2 207 61 discriminator 1
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	cwtl
	.loc 2 207 74 discriminator 1
	subl	$1, %eax
	.loc 2 207 78 discriminator 1
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	addq	$24, %rax
	movzwl	(%rax), %edx
	.loc 2 207 94 discriminator 1
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 2 207 35 discriminator 1
	cmpw	%ax, %dx
	jg	.L59
.L60:
	.loc 2 211 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	endScope, .-endScope
	.type	binary, @function
binary:
.LFB24:
	.loc 2 222 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 223 15
	movl	24+parser(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 224 23
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	getRule
	movq	%rax, -8(%rbp)
	.loc 2 225 38
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 225 51
	addl	$1, %eax
	.loc 2 225 5
	movl	%eax, %edi
	call	parsePrecedence
	movl	-12(%rbp), %eax
	subl	$23, %eax
	cmpl	$70, %eax
	ja	.L77
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L64(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L64(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L64:
	.long	.L75-.L64
	.long	.L74-.L64
	.long	.L73-.L64
	.long	.L72-.L64
	.long	.L71-.L64
	.long	.L70-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L77-.L64
	.long	.L69-.L64
	.long	.L68-.L64
	.long	.L67-.L64
	.long	.L66-.L64
	.long	.L65-.L64
	.long	.L63-.L64
	.text
.L65:
	.loc 2 228 23
	movl	$11, %edi
	call	emitByte
	.loc 2 228 9
	jmp	.L76
.L63:
	.loc 2 229 25
	movl	$20, %esi
	movl	$11, %edi
	call	emitBytes
	.loc 2 229 9
	jmp	.L76
.L69:
	.loc 2 230 21
	movl	$13, %edi
	call	emitByte
	.loc 2 230 9
	jmp	.L76
.L68:
	.loc 2 231 21
	movl	$12, %edi
	call	emitByte
	.loc 2 231 9
	jmp	.L76
.L67:
	.loc 2 232 23
	movl	$20, %esi
	movl	$12, %edi
	call	emitBytes
	.loc 2 232 9
	jmp	.L76
.L66:
	.loc 2 233 23
	movl	$20, %esi
	movl	$13, %edi
	call	emitBytes
	.loc 2 233 9
	jmp	.L76
.L75:
	.loc 2 234 23
	movl	$14, %edi
	call	emitByte
	.loc 2 234 9
	jmp	.L76
.L74:
	.loc 2 235 24
	movl	$15, %edi
	call	emitByte
	.loc 2 235 9
	jmp	.L76
.L73:
	.loc 2 236 23
	movl	$16, %edi
	call	emitByte
	.loc 2 236 9
	jmp	.L76
.L72:
	.loc 2 237 24
	movl	$17, %edi
	call	emitByte
	.loc 2 237 9
	jmp	.L76
.L71:
	.loc 2 238 22
	movl	$18, %edi
	call	emitByte
	.loc 2 238 9
	jmp	.L76
.L70:
	.loc 2 239 27
	movl	$19, %edi
	call	emitByte
	.loc 2 239 9
	jmp	.L76
.L77:
	.loc 2 240 9
	nop
.L76:
	.loc 2 242 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	binary, .-binary
	.type	literal, @function
literal:
.LFB25:
	.loc 2 244 35
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 245 28
	movl	24+parser(%rip), %eax
	.loc 2 245 5
	cmpl	$111, %eax
	je	.L79
	cmpl	$111, %eax
	ja	.L85
	cmpl	$105, %eax
	je	.L81
	cmpl	$105, %eax
	ja	.L85
	cmpl	$12, %eax
	je	.L82
	cmpl	$99, %eax
	je	.L83
	.loc 2 250 18
	jmp	.L85
.L82:
	.loc 2 246 23
	movl	$20, %edi
	call	emitByte
	.loc 2 246 9
	jmp	.L78
.L83:
	.loc 2 247 24
	movl	$4, %edi
	call	emitByte
	.loc 2 247 9
	jmp	.L78
.L81:
	.loc 2 248 22
	movl	$2, %edi
	call	emitByte
	.loc 2 248 9
	jmp	.L78
.L79:
	.loc 2 249 23
	movl	$3, %edi
	call	emitByte
	.loc 2 249 9
	jmp	.L78
.L85:
	.loc 2 250 18
	nop
.L78:
	.loc 2 252 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	literal, .-literal
	.section	.rodata
.LC6:
	.string	"Expect ')' after expression."
	.text
	.type	grouping, @function
grouping:
.LFB26:
	.loc 2 254 36
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 254 36
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 255 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	expression
	.loc 2 256 5
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	call	consume
	.loc 2 257 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	grouping, .-grouping
	.type	number, @function
number:
.LFB27:
	.loc 2 259 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movb	%al, -52(%rbp)
	.loc 2 260 42
	movq	32+parser(%rip), %rax
	.loc 2 260 20
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtod@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	.loc 2 261 26
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$12, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 2 261 5
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	call	emitConstant
	addq	$32, %rsp
	.loc 2 262 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	number, .-number
	.type	string, @function
string:
.LFB28:
	.loc 2 264 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movb	%al, -36(%rbp)
	.loc 2 265 26
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$14, -32(%rbp)
	.loc 2 265 103
	movzwl	40+parser(%rip), %eax
	.loc 2 265 111
	subl	$2, %eax
	.loc 2 265 50
	cwtl
	.loc 2 265 76
	movq	32+parser(%rip), %rdx
	.loc 2 265 50
	addq	$1, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	copyString@PLT
	.loc 2 265 26
	movq	%rax, -16(%rbp)
	.loc 2 265 5
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	call	emitConstant
	addq	$32, %rsp
	.loc 2 266 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	string, .-string
	.type	namedVariable, @function
namedVariable:
.LFB29:
	.loc 2 268 53
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 268 53
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 270 19
	movq	current(%rip), %rax
	leaq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	resolveLocal
	.loc 2 270 13
	movw	%ax, -10(%rbp)
	.loc 2 271 7
	cmpw	$-1, -10(%rbp)
	je	.L91
	.loc 2 272 15
	movb	$9, -11(%rbp)
	.loc 2 273 15
	movb	$10, -12(%rbp)
	jmp	.L92
.L91:
	.loc 2 275 15
	leaq	16(%rbp), %rdi
	call	identifierConstant
	.loc 2 275 13
	movzbl	%al, %eax
	movw	%ax, -10(%rbp)
	.loc 2 276 15
	movb	$7, -11(%rbp)
	.loc 2 277 15
	movb	$8, -12(%rbp)
.L92:
	.loc 2 280 7
	cmpb	$0, -20(%rbp)
	je	.L93
	.loc 2 280 21 discriminator 1
	movl	$1, %edi
	call	match
	.loc 2 280 18 discriminator 1
	testb	%al, %al
	je	.L93
	.loc 2 281 9
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	expression
	.loc 2 282 26
	movzwl	-10(%rbp), %eax
	.loc 2 282 9
	movzbl	%al, %edx
	movzbl	-11(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	emitBytes
	jmp	.L94
.L93:
	.loc 2 284 26
	movzwl	-10(%rbp), %eax
	.loc 2 284 9
	movzbl	%al, %edx
	movzbl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	emitBytes
.L94:
	.loc 2 286 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L95
	call	__stack_chk_fail@PLT
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	namedVariable, .-namedVariable
	.type	variable, @function
variable:
.LFB30:
	.loc 2 288 36
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 289 5
	movzbl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	40+parser(%rip)
	pushq	32+parser(%rip)
	pushq	24+parser(%rip)
	movl	%eax, %edi
	call	namedVariable
	addq	$32, %rsp
	.loc 2 290 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	variable, .-variable
	.type	unary, @function
unary:
.LFB31:
	.loc 2 292 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 293 15
	movl	24+parser(%rip), %eax
	movl	%eax, -4(%rbp)
	.loc 2 296 5
	movl	$9, %edi
	call	parsePrecedence
	.loc 2 299 5
	cmpl	$12, -4(%rbp)
	je	.L98
	cmpl	$24, -4(%rbp)
	je	.L99
	.loc 2 302 18
	jmp	.L97
.L98:
	.loc 2 300 23
	movl	$20, %edi
	call	emitByte
	.loc 2 300 9
	jmp	.L97
.L99:
	.loc 2 301 24
	movl	$21, %edi
	call	emitByte
	.loc 2 301 9
	nop
.L97:
	.loc 2 304 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	unary, .-unary
	.section	.rodata
	.align 8
.LC7:
	.string	"Expect ':' after then branch of conditional operator."
	.text
	.type	conditional, @function
conditional:
.LFB32:
	.loc 2 306 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 308 5
	movl	$2, %edi
	call	parsePrecedence
	.loc 2 310 5
	leaq	.LC7(%rip), %rsi
	movl	$20, %edi
	call	consume
	.loc 2 313 5
	movl	$1, %edi
	call	parsePrecedence
	.loc 2 314 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	conditional, .-conditional
	.globl	rules
	.section	.data.rel.local,"aw"
	.align 32
	.type	rules, @object
	.size	rules, 2976
rules:
	.quad	grouping
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.zero	144
	.quad	unary
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	binary
	.long	6
	.zero	4
	.quad	unary
	.quad	binary
	.long	6
	.zero	4
	.quad	0
	.quad	binary
	.long	7
	.zero	4
	.quad	0
	.quad	binary
	.long	7
	.zero	4
	.quad	0
	.quad	binary
	.long	7
	.zero	4
	.quad	0
	.quad	binary
	.long	8
	.zero	4
	.zero	240
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.zero	840
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.zero	288
	.quad	0
	.quad	binary
	.long	5
	.zero	4
	.quad	0
	.quad	binary
	.long	5
	.zero	4
	.quad	0
	.quad	binary
	.long	5
	.zero	4
	.quad	0
	.quad	binary
	.long	5
	.zero	4
	.quad	0
	.quad	binary
	.long	4
	.zero	4
	.quad	0
	.quad	binary
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.zero	24
	.quad	literal
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	literal
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.zero	48
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	literal
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	number
	.quad	0
	.long	0
	.zero	4
	.quad	variable
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	string
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.section	.rodata
.LC8:
	.string	"Expect expression."
.LC9:
	.string	"Invalid assignment target."
	.text
	.type	parsePrecedence, @function
parsePrecedence:
.LFB33:
	.loc 2 397 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	.loc 2 398 5
	movl	$0, %eax
	call	advance
	.loc 2 399 26
	movl	24+parser(%rip), %eax
	movl	%eax, %edi
	call	getRule
	.loc 2 399 13
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 400 7
	cmpq	$0, -16(%rbp)
	jne	.L104
	.loc 2 401 9
	leaq	.LC8(%rip), %rdi
	call	error
	.loc 2 402 9
	jmp	.L103
.L104:
	.loc 2 405 9
	cmpl	$1, -36(%rbp)
	setbe	%al
	movb	%al, -17(%rbp)
	.loc 2 406 5
	movzbl	-17(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL0:
	.loc 2 408 10
	jmp	.L106
.L107:
.LBB2:
	.loc 2 409 9
	movl	$0, %eax
	call	advance
	.loc 2 410 29
	movl	24+parser(%rip), %eax
	movl	%eax, %edi
	call	getRule
	.loc 2 410 17
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 411 9
	movzbl	-17(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL1:
.L106:
.LBE2:
	.loc 2 408 25
	movl	parser(%rip), %eax
	movl	%eax, %edi
	call	getRule
	.loc 2 408 53
	movl	16(%rax), %eax
	.loc 2 408 10
	cmpl	%eax, -36(%rbp)
	jbe	.L107
	.loc 2 414 7
	cmpb	$0, -17(%rbp)
	je	.L103
	.loc 2 414 21 discriminator 1
	movl	$39, %edi
	call	match
	.loc 2 414 18 discriminator 1
	testb	%al, %al
	je	.L103
	.loc 2 415 9
	leaq	.LC9(%rip), %rdi
	call	error
.L103:
	.loc 2 417 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	parsePrecedence, .-parsePrecedence
	.type	endExpression, @function
endExpression:
.LFB34:
	.loc 2 419 28
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 420 22
	movl	parser(%rip), %eax
	.loc 2 420 7
	cmpl	$125, %eax
	jne	.L108
	.loc 2 421 9
	movl	$0, %eax
	call	advance
	.loc 2 422 9
	nop
.L108:
	.loc 2 424 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	endExpression, .-endExpression
	.type	identifierConstant, @function
identifierConstant:
.LFB35:
	.loc 2 426 47
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	.loc 2 426 47
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 428 57
	movq	-136(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 2 428 29
	movswl	%ax, %edx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	copyString@PLT
	movq	%rax, -120(%rbp)
	.loc 2 429 8
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	8216+vm(%rip), %rdi
	call	tableGet@PLT
	.loc 2 429 7
	testb	%al, %al
	je	.L111
	.loc 2 430 36
	movsd	-96(%rbp), %xmm0
	.loc 2 430 16
	cvttsd2sil	%xmm0, %eax
	jmp	.L113
.L111:
	.loc 2 433 48
	movzwl	8242+vm(%rip), %eax
	.loc 2 433 13
	movb	%al, -121(%rbp)
	.loc 2 434 47
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	.loc 2 434 5
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	leaq	8240+vm(%rip), %rdi
	call	writeValueArray@PLT
	addq	$32, %rsp
	.loc 2 436 51
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$12, -48(%rbp)
	.loc 2 436 69
	movzbl	-121(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	.loc 2 436 51
	movsd	%xmm0, -32(%rbp)
	.loc 2 436 5
	movq	-120(%rbp), %rax
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rsi
	leaq	8216+vm(%rip), %rdi
	call	tableSet@PLT
	addq	$32, %rsp
	.loc 2 437 12
	movzbl	-121(%rbp), %eax
.L113:
	.loc 2 438 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L114
	.loc 2 438 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	identifierConstant, .-identifierConstant
	.type	identifiersEqual, @function
identifiersEqual:
.LFB36:
	.loc 2 440 48 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 441 9
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %edx
	.loc 2 441 22
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 2 441 7
	cmpw	%ax, %dx
	je	.L116
	.loc 2 441 38 discriminator 1
	movl	$0, %eax
	jmp	.L117
.L116:
	.loc 2 442 40
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 2 442 12
	movswq	%ax, %rdx
	.loc 2 442 30
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 2 442 20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 442 12
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 442 50
	testl	%eax, %eax
	sete	%al
.L117:
	.loc 2 443 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	identifiersEqual, .-identifiersEqual
	.section	.rodata
	.align 8
.LC10:
	.string	"Cannot read local variable in its own initializer."
	.text
	.type	resolveLocal, @function
resolveLocal:
.LFB37:
	.loc 2 445 57
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
.LBB3:
	.loc 2 446 31
	movq	-24(%rbp), %rax
	movzwl	8192(%rax), %eax
	cwtl
	.loc 2 446 44
	subl	$1, %eax
	.loc 2 446 19
	cltq
	movq	%rax, -16(%rbp)
	.loc 2 446 5
	jmp	.L119
.L123:
.LBB4:
	.loc 2 447 16
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 448 12
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	identifiersEqual
	.loc 2 448 11
	testb	%al, %al
	je	.L120
	.loc 2 449 21
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	.loc 2 449 15
	cmpw	$-1, %ax
	jne	.L121
	.loc 2 450 17
	leaq	.LC10(%rip), %rdi
	call	error
.L121:
	.loc 2 452 20
	movq	-16(%rbp), %rax
	jmp	.L122
.L120:
.LBE4:
	.loc 2 446 58 discriminator 2
	subq	$1, -16(%rbp)
.L119:
	.loc 2 446 5 discriminator 1
	cmpq	$0, -16(%rbp)
	jns	.L123
.LBE3:
	.loc 2 455 12
	movl	$-1, %eax
.L122:
	.loc 2 456 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	resolveLocal, .-resolveLocal
	.section	.rodata
	.align 8
.LC11:
	.string	"Too many local variables in function."
	.text
	.type	addLocal, @function
addLocal:
.LFB38:
	.loc 2 458 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 459 15
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	.loc 2 459 7
	cmpw	$256, %ax
	jne	.L125
	.loc 2 460 9
	leaq	.LC11(%rip), %rdi
	call	error
	.loc 2 461 9
	jmp	.L124
.L125:
	.loc 2 464 28
	movq	current(%rip), %rcx
	.loc 2 464 44
	movq	current(%rip), %rax
	movzwl	8192(%rax), %edx
	.loc 2 464 56
	movl	%edx, %esi
	addl	$1, %esi
	movw	%si, 8192(%rax)
	movswl	%dx, %eax
	.loc 2 464 12
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 465 17
	movq	-8(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 2 467 18
	movq	-8(%rbp), %rax
	movw	$-1, 24(%rax)
.L124:
	.loc 2 468 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	addLocal, .-addLocal
	.section	.rodata
	.align 8
.LC12:
	.string	"Already a variable with this name in this scope."
	.text
	.type	declareVariable, @function
declareVariable:
.LFB39:
	.loc 2 470 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 471 15
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 2 471 7
	testw	%ax, %ax
	je	.L135
	.loc 2 473 12
	leaq	24+parser(%rip), %rax
	movq	%rax, -16(%rbp)
.LBB5:
	.loc 2 475 30
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	cwtl
	.loc 2 475 43
	subl	$1, %eax
	.loc 2 475 19
	cltq
	movq	%rax, -24(%rbp)
	.loc 2 475 5
	jmp	.L130
.L134:
.LBB6:
	.loc 2 476 32
	movq	current(%rip), %rax
	.loc 2 476 16
	movq	-24(%rbp), %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 477 17
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	.loc 2 477 11
	cmpw	$-1, %ax
	je	.L131
	.loc 2 477 39 discriminator 1
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %edx
	.loc 2 477 56 discriminator 1
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 2 477 31 discriminator 1
	cmpw	%ax, %dx
	jl	.L136
.L131:
	.loc 2 480 12
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	identifiersEqual
	.loc 2 480 11
	testb	%al, %al
	je	.L133
	.loc 2 481 13
	leaq	.LC12(%rip), %rdi
	call	error
.L133:
.LBE6:
	.loc 2 475 57 discriminator 2
	subq	$1, -24(%rbp)
.L130:
	.loc 2 475 5 discriminator 1
	cmpq	$0, -24(%rbp)
	jns	.L134
	jmp	.L132
.L136:
.LBB7:
	.loc 2 478 13
	nop
.L132:
.LBE7:
.LBE5:
	.loc 2 484 5
	subq	$8, %rsp
	movq	-16(%rbp), %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	call	addLocal
	addq	$32, %rsp
	jmp	.L127
.L135:
	.loc 2 471 34
	nop
.L127:
	.loc 2 485 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	declareVariable, .-declareVariable
	.type	parseVariable, @function
parseVariable:
.LFB40:
	.loc 2 487 57
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 488 5
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$117, %edi
	call	consume
	.loc 2 490 5
	movl	$0, %eax
	call	declareVariable
	.loc 2 491 15
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 2 491 7
	testw	%ax, %ax
	jle	.L138
	.loc 2 491 40 discriminator 1
	movl	$0, %eax
	jmp	.L139
.L138:
	.loc 2 493 12
	leaq	24+parser(%rip), %rdi
	call	identifierConstant
.L139:
	.loc 2 494 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	parseVariable, .-parseVariable
	.type	markInitialized, @function
markInitialized:
.LFB41:
	.loc 2 496 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 497 61
	movq	current(%rip), %rax
	.loc 2 497 12
	movq	current(%rip), %rcx
	.loc 2 497 28
	movq	current(%rip), %rdx
	movzwl	8192(%rdx), %edx
	movswl	%dx, %edx
	.loc 2 497 41
	subl	$1, %edx
	.loc 2 497 61
	movzwl	8194(%rax), %eax
	.loc 2 497 52
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rcx, %rdx
	addq	$24, %rdx
	movw	%ax, (%rdx)
	.loc 2 498 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	markInitialized, .-markInitialized
	.type	defineVariable, @function
defineVariable:
.LFB42:
	.loc 2 500 43
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 501 15
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 2 501 7
	testw	%ax, %ax
	jle	.L142
	.loc 2 502 9
	movl	$0, %eax
	call	markInitialized
	.loc 2 503 9
	jmp	.L141
.L142:
	.loc 2 506 5
	movzbl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$6, %edi
	call	emitBytes
.L141:
	.loc 2 507 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	defineVariable, .-defineVariable
	.type	getRule, @function
getRule:
.LFB43:
	.loc 2 509 42
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 510 12
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	rules(%rip), %rdx
	addq	%rdx, %rax
	.loc 2 511 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	getRule, .-getRule
	.type	expression, @function
expression:
.LFB44:
	.loc 2 513 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 513 26
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 514 5
	movl	$1, %edi
	call	parsePrecedence
	.loc 2 515 12
	movq	-24(%rbp), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	makeToken
	.loc 2 516 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	expression, .-expression
	.type	noTokenExpression, @function
noTokenExpression:
.LFB45:
	.loc 2 518 32
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 519 5
	movl	$1, %edi
	call	parsePrecedence
	.loc 2 520 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	noTokenExpression, .-noTokenExpression
	.section	.rodata
.LC13:
	.string	"Expected '}' after block."
	.text
	.type	block, @function
block:
.LFB46:
	.loc 2 522 20
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 523 10
	jmp	.L151
.L153:
	.loc 2 524 9
	movl	$0, %eax
	call	statement
.L151:
	.loc 2 523 12
	movl	$3, %edi
	call	verify
	.loc 2 523 11
	xorl	$1, %eax
	.loc 2 523 10
	testb	%al, %al
	je	.L152
	.loc 2 523 39 discriminator 1
	movl	$123, %edi
	call	verify
	.loc 2 523 38 discriminator 1
	xorl	$1, %eax
	.loc 2 523 35 discriminator 1
	testb	%al, %al
	jne	.L153
.L152:
	.loc 2 527 5
	leaq	.LC13(%rip), %rsi
	movl	$3, %edi
	call	consume
	.loc 2 528 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	block, .-block
	.section	.rodata
.LC14:
	.string	"Expected variable name."
	.align 8
.LC15:
	.string	"Expected a newline after variable declaration."
	.align 8
.LC16:
	.string	"Expected a newline after value."
	.text
	.type	varDeclaration, @function
varDeclaration:
.LFB47:
	.loc 2 530 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 530 29
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 531 19
	leaq	.LC14(%rip), %rdi
	call	parseVariable
	movb	%al, -9(%rbp)
	.loc 2 533 8
	movl	$39, %edi
	call	match
	.loc 2 533 7
	testb	%al, %al
	je	.L155
	.loc 2 534 9
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	expression
	.loc 2 536 9
	leaq	.LC15(%rip), %rsi
	movl	$124, %edi
	call	consume
	.loc 2 537 9
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	defineVariable
	.loc 2 543 1
	jmp	.L158
.L155:
	.loc 2 538 15
	movl	$75, %edi
	call	match
	.loc 2 538 14
	testb	%al, %al
	je	.L158
	.loc 2 539 9
	movl	$1, %edi
	call	variable
	.loc 2 540 9
	leaq	.LC16(%rip), %rsi
	movl	$124, %edi
	call	consume
	.loc 2 541 9
	movl	$5, %edi
	call	emitByte
.L158:
	.loc 2 543 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L157
	call	__stack_chk_fail@PLT
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	varDeclaration, .-varDeclaration
	.type	expressionStatement, @function
expressionStatement:
.LFB48:
	.loc 2 545 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 545 34
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 546 5
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	expression
	.loc 2 547 5
	movl	$5, %edi
	call	emitByte
	.loc 2 548 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L160
	call	__stack_chk_fail@PLT
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	expressionStatement, .-expressionStatement
	.section	.rodata
.LC17:
	.string	"Expected '(' after 'if'"
.LC18:
	.string	"Expected ')' after condition."
	.text
	.type	ifStatement, @function
ifStatement:
.LFB49:
	.loc 2 550 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 551 5
	leaq	.LC17(%rip), %rsi
	movl	$0, %edi
	call	consume
	.loc 2 552 5
	movl	$0, %eax
	call	noTokenExpression
	.loc 2 553 5
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	call	consume
	.loc 2 555 24
	movl	$23, %edi
	call	emitJump
	.loc 2 555 13
	movw	%ax, -2(%rbp)
	.loc 2 556 5
	movl	$0, %eax
	call	statement
	.loc 2 558 5
	movswl	-2(%rbp), %eax
	movl	%eax, %edi
	call	patchJump
	.loc 2 559 5
	movl	$0, %eax
	call	statement
	.loc 2 560 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	ifStatement, .-ifStatement
	.type	putsStatement, @function
putsStatement:
.LFB50:
	.loc 2 562 28
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 562 28
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 563 5
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	expression
	.loc 2 564 5
	movl	$22, %edi
	call	emitByte
	.loc 2 566 5
	movl	$0, %eax
	call	endExpression
	.loc 2 567 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L163
	call	__stack_chk_fail@PLT
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	putsStatement, .-putsStatement
	.type	synchronize, @function
synchronize:
.LFB51:
	.loc 2 569 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 570 22
	movb	$0, 49+parser(%rip)
	.loc 2 572 10
	jmp	.L165
.L171:
	.loc 2 573 27
	movl	24+parser(%rip), %eax
	.loc 2 573 11
	cmpl	$124, %eax
	je	.L172
	.loc 2 574 30
	movl	parser(%rip), %eax
	subl	$95, %eax
	cmpl	$18, %eax
	ja	.L168
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L170(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L170(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L170:
	.long	.L173-.L170
	.long	.L168-.L170
	.long	.L168-.L170
	.long	.L168-.L170
	.long	.L168-.L170
	.long	.L173-.L170
	.long	.L173-.L170
	.long	.L173-.L170
	.long	.L168-.L170
	.long	.L173-.L170
	.long	.L168-.L170
	.long	.L173-.L170
	.long	.L168-.L170
	.long	.L168-.L170
	.long	.L173-.L170
	.long	.L168-.L170
	.long	.L168-.L170
	.long	.L168-.L170
	.long	.L173-.L170
	.text
.L168:
	.loc 2 587 9
	movl	$0, %eax
	call	advance
.L165:
	.loc 2 572 25
	movl	parser(%rip), %eax
	.loc 2 572 10
	cmpl	$123, %eax
	jne	.L171
	jmp	.L164
.L172:
	.loc 2 573 48
	nop
	jmp	.L164
.L173:
	.loc 2 583 17
	nop
.L164:
	.loc 2 589 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	synchronize, .-synchronize
	.type	declaration, @function
declaration:
.LFB52:
	.loc 2 591 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 591 26
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 594 15
	leaq	.LC14(%rip), %rdi
	call	parseVariable
	movb	%al, -9(%rbp)
	.loc 2 596 8
	movl	$39, %edi
	call	match
	.loc 2 596 7
	testb	%al, %al
	je	.L175
	.loc 2 598 12
	movl	$19, %edi
	call	match
	.loc 2 598 11
	testb	%al, %al
	je	.L176
	.loc 2 599 13
	movl	$2, %edi
	call	emitByte
	.loc 2 600 13
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	defineVariable
	.loc 2 601 13
	jmp	.L174
.L176:
	.loc 2 603 9
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	expression
	.loc 2 604 9
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	defineVariable
	.loc 2 606 9
	movl	$0, %eax
	call	endExpression
	jmp	.L178
.L175:
	.loc 2 607 15
	movl	$75, %edi
	call	match
	.loc 2 607 14
	testb	%al, %al
	je	.L178
	.loc 2 608 9
	movl	$0, %eax
	call	expressionStatement
	.loc 2 610 9
	movl	$0, %eax
	call	endExpression
.L178:
	.loc 2 612 14
	movzbl	49+parser(%rip), %eax
	.loc 2 612 7
	testb	%al, %al
	je	.L174
	.loc 2 612 26 discriminator 1
	movl	$0, %eax
	call	synchronize
.L174:
	.loc 2 613 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L179
	call	__stack_chk_fail@PLT
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	declaration, .-declaration
	.type	statement, @function
statement:
.LFB53:
	.loc 2 615 24
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 616 14
	movzbl	49+parser(%rip), %eax
	.loc 2 616 7
	testb	%al, %al
	je	.L181
	.loc 2 616 26 discriminator 1
	movl	$0, %eax
	call	synchronize
.L181:
	.loc 2 617 26
	movl	parser(%rip), %eax
	.loc 2 617 5
	cmpl	$123, %eax
	je	.L188
	cmpl	$123, %eax
	ja	.L183
	cmpl	$106, %eax
	je	.L184
	cmpl	$106, %eax
	ja	.L183
	cmpl	$2, %eax
	je	.L185
	cmpl	$102, %eax
	je	.L186
	jmp	.L183
.L184:
	.loc 2 619 13
	movl	$0, %eax
	call	advance
	.loc 2 620 13
	movl	$0, %eax
	call	putsStatement
	.loc 2 621 13
	jmp	.L187
.L186:
	.loc 2 624 13
	movl	$0, %eax
	call	advance
	.loc 2 625 13
	movl	$0, %eax
	call	ifStatement
	.loc 2 626 13
	jmp	.L187
.L185:
	.loc 2 629 13
	movl	$0, %eax
	call	advance
	.loc 2 630 13
	movl	$0, %eax
	call	beginScope
	.loc 2 631 13
	movl	$0, %eax
	call	block
	.loc 2 632 13
	movl	$0, %eax
	call	endScope
	.loc 2 633 13
	jmp	.L187
.L183:
	.loc 2 638 13
	movl	$0, %eax
	call	declaration
	.loc 2 639 13
	jmp	.L187
.L188:
	.loc 2 635 9
	nop
.L187:
	.loc 2 642 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	statement, .-statement
	.globl	compile
	.type	compile, @function
compile:
.LFB54:
	.loc 2 644 48
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$32, %rsp
	movq	%rdi, -8216(%rbp)
	movq	%rsi, -8224(%rbp)
	.loc 2 644 48
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 645 5
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	call	initScanner@PLT
	.loc 2 647 5
	leaq	-8208(%rbp), %rax
	movq	%rax, %rdi
	call	initCompiler
	.loc 2 648 20
	movq	-8224(%rbp), %rax
	movq	%rax, compilingChunk(%rip)
	.loc 2 650 21
	movb	$0, 48+parser(%rip)
	.loc 2 651 22
	movb	$0, 49+parser(%rip)
	.loc 2 653 5
	movl	$0, %eax
	call	advance
	.loc 2 655 10
	jmp	.L190
.L191:
	.loc 2 657 9
	movl	$0, %eax
	call	statement
.L190:
	.loc 2 655 12
	movl	$123, %edi
	call	match
	.loc 2 655 11
	xorl	$1, %eax
	.loc 2 655 10
	testb	%al, %al
	jne	.L191
	.loc 2 660 5
	movl	$0, %eax
	call	endCompiler
	.loc 2 661 19
	movzbl	48+parser(%rip), %eax
	movzbl	%al, %eax
	.loc 2 661 5
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 661 12
	andl	$1, %eax
	.loc 2 662 1
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L193
	call	__stack_chk_fail@PLT
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	compile, .-compile
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 7 "Compilation/compiler/../../Language/object/object.h"
	.file 8 "Compilation/compiler/../../Bytecode/value/value.h"
	.file 9 "Compilation/compiler/../../VirtualMachine/vm/../../Bytecode/chunk/chunk.h"
	.file 10 "Compilation/compiler/../../VirtualMachine/vm/../../Language/table/table.h"
	.file 11 "Compilation/compiler/../../VirtualMachine/vm/vm.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 14 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1909
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1191
	.byte	0xc
	.long	.LASF1192
	.long	.LASF1193
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.long	.LASF804
	.byte	0x3
	.byte	0x8f
	.byte	0x12
	.long	0x3d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF806
	.uleb128 0x2
	.long	.LASF805
	.byte	0x3
	.byte	0xd1
	.byte	0x1b
	.long	0x50
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF807
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF808
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF809
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF810
	.uleb128 0x2
	.long	.LASF811
	.byte	0x4
	.byte	0x25
	.byte	0x15
	.long	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF812
	.uleb128 0x2
	.long	.LASF813
	.byte	0x4
	.byte	0x26
	.byte	0x17
	.long	0x5e
	.uleb128 0x2
	.long	.LASF814
	.byte	0x4
	.byte	0x27
	.byte	0x1a
	.long	0x9e
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF815
	.uleb128 0x2
	.long	.LASF816
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.long	0x65
	.uleb128 0x2
	.long	.LASF817
	.byte	0x4
	.byte	0x29
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.long	.LASF818
	.byte	0x4
	.byte	0x2a
	.byte	0x16
	.long	0x6c
	.uleb128 0x2
	.long	.LASF819
	.byte	0x4
	.byte	0x2c
	.byte	0x19
	.long	0x3d
	.uleb128 0x2
	.long	.LASF820
	.byte	0x4
	.byte	0x2d
	.byte	0x1b
	.long	0x50
	.uleb128 0x2
	.long	.LASF821
	.byte	0x4
	.byte	0x98
	.byte	0x12
	.long	0x3d
	.uleb128 0x2
	.long	.LASF822
	.byte	0x4
	.byte	0x99
	.byte	0x12
	.long	0x3d
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x101
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF823
	.uleb128 0x7
	.long	0x101
	.uleb128 0x2
	.long	.LASF824
	.byte	0x5
	.byte	0x18
	.byte	0x12
	.long	0x73
	.uleb128 0x7
	.long	0x10d
	.uleb128 0x2
	.long	.LASF825
	.byte	0x5
	.byte	0x19
	.byte	0x13
	.long	0x92
	.uleb128 0x2
	.long	.LASF826
	.byte	0x5
	.byte	0x1a
	.byte	0x13
	.long	0xb1
	.uleb128 0x2
	.long	.LASF827
	.byte	0x5
	.byte	0x1b
	.byte	0x13
	.long	0xc9
	.uleb128 0x2
	.long	.LASF828
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.long	0x86
	.uleb128 0x2
	.long	.LASF829
	.byte	0x6
	.byte	0x19
	.byte	0x14
	.long	0xa5
	.uleb128 0x2
	.long	.LASF830
	.byte	0x6
	.byte	0x1a
	.byte	0x14
	.long	0xbd
	.uleb128 0x2
	.long	.LASF831
	.byte	0x6
	.byte	0x1b
	.byte	0x14
	.long	0xd5
	.uleb128 0x8
	.string	"Obj"
	.byte	0x8
	.byte	0x9
	.byte	0x14
	.long	0x17e
	.uleb128 0x9
	.string	"Obj"
	.byte	0x10
	.byte	0x7
	.byte	0x14
	.byte	0x8
	.long	0x1a6
	.uleb128 0xa
	.long	.LASF832
	.byte	0x7
	.byte	0x15
	.byte	0xd
	.long	0x3b6
	.byte	0
	.uleb128 0xa
	.long	.LASF833
	.byte	0x7
	.byte	0x16
	.byte	0x11
	.long	0x3c2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF834
	.byte	0x8
	.byte	0xa
	.byte	0x1a
	.long	0x1b2
	.uleb128 0xb
	.long	.LASF834
	.byte	0x28
	.byte	0x7
	.byte	0x19
	.byte	0x8
	.long	0x1f4
	.uleb128 0xc
	.string	"obj"
	.byte	0x7
	.byte	0x1a
	.byte	0x9
	.long	0x172
	.byte	0
	.uleb128 0xa
	.long	.LASF835
	.byte	0x7
	.byte	0x1b
	.byte	0xd
	.long	0x11e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF836
	.byte	0x7
	.byte	0x1c
	.byte	0xd
	.long	0x3c8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF837
	.byte	0x7
	.byte	0x1d
	.byte	0xe
	.long	0x15a
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x8
	.byte	0x38
	.byte	0xe
	.long	0x25d
	.uleb128 0xe
	.long	.LASF838
	.byte	0
	.uleb128 0xe
	.long	.LASF839
	.byte	0x1
	.uleb128 0xe
	.long	.LASF840
	.byte	0x2
	.uleb128 0xe
	.long	.LASF841
	.byte	0x3
	.uleb128 0xe
	.long	.LASF842
	.byte	0x4
	.uleb128 0xe
	.long	.LASF843
	.byte	0x5
	.uleb128 0xe
	.long	.LASF844
	.byte	0x6
	.uleb128 0xe
	.long	.LASF845
	.byte	0x7
	.uleb128 0xe
	.long	.LASF846
	.byte	0x8
	.uleb128 0xe
	.long	.LASF847
	.byte	0x9
	.uleb128 0xe
	.long	.LASF848
	.byte	0xa
	.uleb128 0xe
	.long	.LASF849
	.byte	0xb
	.uleb128 0xe
	.long	.LASF850
	.byte	0xc
	.uleb128 0xe
	.long	.LASF851
	.byte	0xd
	.uleb128 0xe
	.long	.LASF852
	.byte	0xe
	.byte	0
	.uleb128 0x2
	.long	.LASF853
	.byte	0x8
	.byte	0x48
	.byte	0x3
	.long	0x1f4
	.uleb128 0xf
	.byte	0x10
	.byte	0x8
	.byte	0x4c
	.byte	0x5
	.long	0x30d
	.uleb128 0x10
	.long	.LASF854
	.byte	0x8
	.byte	0x4d
	.byte	0xd
	.long	0x30d
	.uleb128 0x11
	.string	"i8"
	.byte	0x8
	.byte	0x4e
	.byte	0x10
	.long	0x10d
	.uleb128 0x11
	.string	"u8"
	.byte	0x8
	.byte	0x4f
	.byte	0x11
	.long	0x142
	.uleb128 0x11
	.string	"i16"
	.byte	0x8
	.byte	0x50
	.byte	0x11
	.long	0x11e
	.uleb128 0x11
	.string	"u16"
	.byte	0x8
	.byte	0x51
	.byte	0x12
	.long	0x14e
	.uleb128 0x11
	.string	"i32"
	.byte	0x8
	.byte	0x52
	.byte	0x11
	.long	0x12a
	.uleb128 0x11
	.string	"u32"
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.long	0x15a
	.uleb128 0x11
	.string	"i64"
	.byte	0x8
	.byte	0x54
	.byte	0x11
	.long	0x136
	.uleb128 0x11
	.string	"u64"
	.byte	0x8
	.byte	0x55
	.byte	0x12
	.long	0x166
	.uleb128 0x11
	.string	"f32"
	.byte	0x8
	.byte	0x56
	.byte	0xf
	.long	0x314
	.uleb128 0x11
	.string	"f64"
	.byte	0x8
	.byte	0x57
	.byte	0x10
	.long	0x31b
	.uleb128 0x10
	.long	.LASF855
	.byte	0x8
	.byte	0x58
	.byte	0x15
	.long	0x322
	.uleb128 0x11
	.string	"obj"
	.byte	0x8
	.byte	0x59
	.byte	0xe
	.long	0x329
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF856
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF857
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF858
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF859
	.uleb128 0x6
	.byte	0x8
	.long	0x172
	.uleb128 0x12
	.byte	0x20
	.byte	0x8
	.byte	0x4a
	.byte	0x9
	.long	0x352
	.uleb128 0xa
	.long	.LASF832
	.byte	0x8
	.byte	0x4b
	.byte	0xf
	.long	0x25d
	.byte	0
	.uleb128 0xc
	.string	"as"
	.byte	0x8
	.byte	0x5a
	.byte	0x7
	.long	0x269
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF860
	.byte	0x8
	.byte	0x5b
	.byte	0x3
	.long	0x32f
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x8e
	.byte	0x9
	.long	0x38f
	.uleb128 0xa
	.long	.LASF861
	.byte	0x8
	.byte	0x8f
	.byte	0xd
	.long	0x11e
	.byte	0
	.uleb128 0xa
	.long	.LASF862
	.byte	0x8
	.byte	0x90
	.byte	0xd
	.long	0x11e
	.byte	0x2
	.uleb128 0xa
	.long	.LASF863
	.byte	0x8
	.byte	0x91
	.byte	0xc
	.long	0x38f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x352
	.uleb128 0x2
	.long	.LASF864
	.byte	0x8
	.byte	0x92
	.byte	0x3
	.long	0x35e
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x7
	.byte	0x10
	.byte	0xe
	.long	0x3b6
	.uleb128 0xe
	.long	.LASF865
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF866
	.byte	0x7
	.byte	0x12
	.byte	0x3
	.long	0x3a1
	.uleb128 0x6
	.byte	0x8
	.long	0x17e
	.uleb128 0x6
	.byte	0x8
	.long	0x10d
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x1
	.byte	0x6
	.byte	0xe
	.long	0x6d1
	.uleb128 0xe
	.long	.LASF867
	.byte	0
	.uleb128 0xe
	.long	.LASF868
	.byte	0x1
	.uleb128 0xe
	.long	.LASF869
	.byte	0x2
	.uleb128 0xe
	.long	.LASF870
	.byte	0x3
	.uleb128 0xe
	.long	.LASF871
	.byte	0x4
	.uleb128 0xe
	.long	.LASF872
	.byte	0x5
	.uleb128 0xe
	.long	.LASF873
	.byte	0x6
	.uleb128 0xe
	.long	.LASF874
	.byte	0x7
	.uleb128 0xe
	.long	.LASF875
	.byte	0x8
	.uleb128 0xe
	.long	.LASF876
	.byte	0x9
	.uleb128 0xe
	.long	.LASF877
	.byte	0xa
	.uleb128 0xe
	.long	.LASF878
	.byte	0xb
	.uleb128 0xe
	.long	.LASF879
	.byte	0xc
	.uleb128 0xe
	.long	.LASF880
	.byte	0xd
	.uleb128 0xe
	.long	.LASF881
	.byte	0xe
	.uleb128 0xe
	.long	.LASF882
	.byte	0xf
	.uleb128 0xe
	.long	.LASF883
	.byte	0x10
	.uleb128 0xe
	.long	.LASF884
	.byte	0x11
	.uleb128 0xe
	.long	.LASF885
	.byte	0x12
	.uleb128 0xe
	.long	.LASF886
	.byte	0x13
	.uleb128 0xe
	.long	.LASF887
	.byte	0x14
	.uleb128 0xe
	.long	.LASF888
	.byte	0x15
	.uleb128 0xe
	.long	.LASF889
	.byte	0x16
	.uleb128 0xe
	.long	.LASF890
	.byte	0x17
	.uleb128 0xe
	.long	.LASF891
	.byte	0x18
	.uleb128 0xe
	.long	.LASF892
	.byte	0x19
	.uleb128 0xe
	.long	.LASF893
	.byte	0x1a
	.uleb128 0xe
	.long	.LASF894
	.byte	0x1b
	.uleb128 0xe
	.long	.LASF895
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF896
	.byte	0x1d
	.uleb128 0xe
	.long	.LASF897
	.byte	0x1e
	.uleb128 0xe
	.long	.LASF898
	.byte	0x1f
	.uleb128 0xe
	.long	.LASF899
	.byte	0x20
	.uleb128 0xe
	.long	.LASF900
	.byte	0x21
	.uleb128 0xe
	.long	.LASF901
	.byte	0x22
	.uleb128 0xe
	.long	.LASF902
	.byte	0x23
	.uleb128 0xe
	.long	.LASF903
	.byte	0x24
	.uleb128 0xe
	.long	.LASF904
	.byte	0x25
	.uleb128 0xe
	.long	.LASF905
	.byte	0x26
	.uleb128 0xe
	.long	.LASF906
	.byte	0x27
	.uleb128 0xe
	.long	.LASF907
	.byte	0x28
	.uleb128 0xe
	.long	.LASF908
	.byte	0x29
	.uleb128 0xe
	.long	.LASF909
	.byte	0x2a
	.uleb128 0xe
	.long	.LASF910
	.byte	0x2b
	.uleb128 0xe
	.long	.LASF911
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF912
	.byte	0x2d
	.uleb128 0xe
	.long	.LASF913
	.byte	0x2e
	.uleb128 0xe
	.long	.LASF914
	.byte	0x2f
	.uleb128 0xe
	.long	.LASF915
	.byte	0x30
	.uleb128 0xe
	.long	.LASF916
	.byte	0x31
	.uleb128 0xe
	.long	.LASF917
	.byte	0x32
	.uleb128 0xe
	.long	.LASF918
	.byte	0x33
	.uleb128 0xe
	.long	.LASF919
	.byte	0x34
	.uleb128 0xe
	.long	.LASF920
	.byte	0x35
	.uleb128 0xe
	.long	.LASF921
	.byte	0x36
	.uleb128 0xe
	.long	.LASF922
	.byte	0x37
	.uleb128 0xe
	.long	.LASF923
	.byte	0x38
	.uleb128 0xe
	.long	.LASF924
	.byte	0x39
	.uleb128 0xe
	.long	.LASF925
	.byte	0x3a
	.uleb128 0xe
	.long	.LASF926
	.byte	0x3b
	.uleb128 0xe
	.long	.LASF927
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF928
	.byte	0x3d
	.uleb128 0xe
	.long	.LASF929
	.byte	0x3e
	.uleb128 0xe
	.long	.LASF930
	.byte	0x3f
	.uleb128 0xe
	.long	.LASF931
	.byte	0x40
	.uleb128 0xe
	.long	.LASF932
	.byte	0x41
	.uleb128 0xe
	.long	.LASF933
	.byte	0x42
	.uleb128 0xe
	.long	.LASF934
	.byte	0x43
	.uleb128 0xe
	.long	.LASF935
	.byte	0x44
	.uleb128 0xe
	.long	.LASF936
	.byte	0x45
	.uleb128 0xe
	.long	.LASF937
	.byte	0x46
	.uleb128 0xe
	.long	.LASF938
	.byte	0x47
	.uleb128 0xe
	.long	.LASF939
	.byte	0x48
	.uleb128 0xe
	.long	.LASF940
	.byte	0x49
	.uleb128 0xe
	.long	.LASF941
	.byte	0x4a
	.uleb128 0xe
	.long	.LASF942
	.byte	0x4b
	.uleb128 0xe
	.long	.LASF943
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF944
	.byte	0x4d
	.uleb128 0xe
	.long	.LASF945
	.byte	0x4e
	.uleb128 0xe
	.long	.LASF946
	.byte	0x4f
	.uleb128 0xe
	.long	.LASF947
	.byte	0x50
	.uleb128 0xe
	.long	.LASF948
	.byte	0x51
	.uleb128 0xe
	.long	.LASF949
	.byte	0x52
	.uleb128 0xe
	.long	.LASF950
	.byte	0x53
	.uleb128 0xe
	.long	.LASF951
	.byte	0x54
	.uleb128 0xe
	.long	.LASF952
	.byte	0x55
	.uleb128 0xe
	.long	.LASF953
	.byte	0x56
	.uleb128 0xe
	.long	.LASF954
	.byte	0x57
	.uleb128 0xe
	.long	.LASF955
	.byte	0x58
	.uleb128 0xe
	.long	.LASF956
	.byte	0x59
	.uleb128 0xe
	.long	.LASF957
	.byte	0x5a
	.uleb128 0xe
	.long	.LASF958
	.byte	0x5b
	.uleb128 0xe
	.long	.LASF959
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF960
	.byte	0x5d
	.uleb128 0xe
	.long	.LASF961
	.byte	0x5e
	.uleb128 0xe
	.long	.LASF962
	.byte	0x5f
	.uleb128 0xe
	.long	.LASF963
	.byte	0x60
	.uleb128 0xe
	.long	.LASF964
	.byte	0x61
	.uleb128 0xe
	.long	.LASF965
	.byte	0x62
	.uleb128 0xe
	.long	.LASF966
	.byte	0x63
	.uleb128 0xe
	.long	.LASF967
	.byte	0x64
	.uleb128 0xe
	.long	.LASF968
	.byte	0x65
	.uleb128 0xe
	.long	.LASF969
	.byte	0x66
	.uleb128 0xe
	.long	.LASF970
	.byte	0x67
	.uleb128 0xe
	.long	.LASF971
	.byte	0x68
	.uleb128 0xe
	.long	.LASF972
	.byte	0x69
	.uleb128 0xe
	.long	.LASF973
	.byte	0x6a
	.uleb128 0xe
	.long	.LASF974
	.byte	0x6b
	.uleb128 0xe
	.long	.LASF975
	.byte	0x6c
	.uleb128 0xe
	.long	.LASF976
	.byte	0x6d
	.uleb128 0xe
	.long	.LASF977
	.byte	0x6e
	.uleb128 0xe
	.long	.LASF978
	.byte	0x6f
	.uleb128 0xe
	.long	.LASF979
	.byte	0x70
	.uleb128 0xe
	.long	.LASF980
	.byte	0x71
	.uleb128 0xe
	.long	.LASF981
	.byte	0x72
	.uleb128 0xe
	.long	.LASF982
	.byte	0x73
	.uleb128 0xe
	.long	.LASF983
	.byte	0x74
	.uleb128 0xe
	.long	.LASF984
	.byte	0x75
	.uleb128 0xe
	.long	.LASF985
	.byte	0x76
	.uleb128 0xe
	.long	.LASF986
	.byte	0x77
	.uleb128 0xe
	.long	.LASF987
	.byte	0x78
	.uleb128 0xe
	.long	.LASF988
	.byte	0x79
	.uleb128 0xe
	.long	.LASF989
	.byte	0x7a
	.uleb128 0xe
	.long	.LASF990
	.byte	0x7b
	.uleb128 0xe
	.long	.LASF991
	.byte	0x7c
	.uleb128 0xe
	.long	.LASF992
	.byte	0x7d
	.byte	0
	.uleb128 0x2
	.long	.LASF993
	.byte	0x1
	.byte	0xa2
	.byte	0x3
	.long	0x3ce
	.uleb128 0x12
	.byte	0x18
	.byte	0x1
	.byte	0xa4
	.byte	0x9
	.long	0x71b
	.uleb128 0xa
	.long	.LASF832
	.byte	0x1
	.byte	0xa5
	.byte	0xf
	.long	0x6d1
	.byte	0
	.uleb128 0xa
	.long	.LASF994
	.byte	0x1
	.byte	0xa6
	.byte	0x13
	.long	0x71b
	.byte	0x8
	.uleb128 0xa
	.long	.LASF835
	.byte	0x1
	.byte	0xa7
	.byte	0xd
	.long	0x11e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF995
	.byte	0x1
	.byte	0xa8
	.byte	0xd
	.long	0x11e
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x119
	.uleb128 0x2
	.long	.LASF996
	.byte	0x1
	.byte	0xa9
	.byte	0x3
	.long	0x6dd
	.uleb128 0x12
	.byte	0x18
	.byte	0x1
	.byte	0xab
	.byte	0x9
	.long	0x75e
	.uleb128 0xa
	.long	.LASF994
	.byte	0x1
	.byte	0xac
	.byte	0x13
	.long	0x71b
	.byte	0
	.uleb128 0xa
	.long	.LASF997
	.byte	0x1
	.byte	0xad
	.byte	0x13
	.long	0x71b
	.byte	0x8
	.uleb128 0xa
	.long	.LASF995
	.byte	0x1
	.byte	0xae
	.byte	0xd
	.long	0x11e
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF998
	.byte	0x1
	.byte	0xaf
	.byte	0x3
	.long	0x72d
	.uleb128 0x13
	.long	.LASF1043
	.byte	0x1
	.byte	0xb1
	.byte	0x9
	.long	0x75e
	.uleb128 0x9
	.byte	0x3
	.quad	scanner
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x9
	.byte	0x9
	.byte	0xe
	.long	0x825
	.uleb128 0xe
	.long	.LASF999
	.byte	0
	.uleb128 0xe
	.long	.LASF1000
	.byte	0x1
	.uleb128 0xe
	.long	.LASF1001
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1002
	.byte	0x3
	.uleb128 0xe
	.long	.LASF1003
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1004
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1005
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1006
	.byte	0x7
	.uleb128 0xe
	.long	.LASF1007
	.byte	0x8
	.uleb128 0xe
	.long	.LASF1008
	.byte	0x9
	.uleb128 0xe
	.long	.LASF1009
	.byte	0xa
	.uleb128 0xe
	.long	.LASF1010
	.byte	0xb
	.uleb128 0xe
	.long	.LASF1011
	.byte	0xc
	.uleb128 0xe
	.long	.LASF1012
	.byte	0xd
	.uleb128 0xe
	.long	.LASF1013
	.byte	0xe
	.uleb128 0xe
	.long	.LASF1014
	.byte	0xf
	.uleb128 0xe
	.long	.LASF1015
	.byte	0x10
	.uleb128 0xe
	.long	.LASF1016
	.byte	0x11
	.uleb128 0xe
	.long	.LASF1017
	.byte	0x12
	.uleb128 0xe
	.long	.LASF1018
	.byte	0x13
	.uleb128 0xe
	.long	.LASF1019
	.byte	0x14
	.uleb128 0xe
	.long	.LASF1020
	.byte	0x15
	.uleb128 0xe
	.long	.LASF1021
	.byte	0x16
	.uleb128 0xe
	.long	.LASF1022
	.byte	0x17
	.uleb128 0xe
	.long	.LASF1023
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.byte	0x25
	.byte	0x9
	.long	0x849
	.uleb128 0xa
	.long	.LASF1024
	.byte	0x9
	.byte	0x26
	.byte	0xd
	.long	0x11e
	.byte	0
	.uleb128 0xa
	.long	.LASF995
	.byte	0x9
	.byte	0x27
	.byte	0xe
	.long	0x14e
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF1025
	.byte	0x9
	.byte	0x28
	.byte	0x3
	.long	0x825
	.uleb128 0x12
	.byte	0x30
	.byte	0x9
	.byte	0x2a
	.byte	0x9
	.long	0x8ba
	.uleb128 0xa
	.long	.LASF862
	.byte	0x9
	.byte	0x2b
	.byte	0xd
	.long	0x11e
	.byte	0
	.uleb128 0xa
	.long	.LASF861
	.byte	0x9
	.byte	0x2c
	.byte	0xd
	.long	0x11e
	.byte	0x2
	.uleb128 0xa
	.long	.LASF1026
	.byte	0x9
	.byte	0x2d
	.byte	0xe
	.long	0x8ba
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1027
	.byte	0x9
	.byte	0x2e
	.byte	0x10
	.long	0x395
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1028
	.byte	0x9
	.byte	0x2f
	.byte	0xd
	.long	0x11e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF1029
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x11e
	.byte	0x22
	.uleb128 0xa
	.long	.LASF1030
	.byte	0x9
	.byte	0x31
	.byte	0x10
	.long	0x8c0
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x142
	.uleb128 0x6
	.byte	0x8
	.long	0x849
	.uleb128 0x2
	.long	.LASF1031
	.byte	0x9
	.byte	0x32
	.byte	0x3
	.long	0x855
	.uleb128 0x12
	.byte	0x30
	.byte	0xa
	.byte	0xa
	.byte	0x9
	.long	0x8f6
	.uleb128 0xc
	.string	"key"
	.byte	0xa
	.byte	0xb
	.byte	0x10
	.long	0x8f6
	.byte	0
	.uleb128 0xa
	.long	.LASF1032
	.byte	0xa
	.byte	0xc
	.byte	0xb
	.long	0x352
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1a6
	.uleb128 0x2
	.long	.LASF1033
	.byte	0xa
	.byte	0xd
	.byte	0x3
	.long	0x8d2
	.uleb128 0x12
	.byte	0x18
	.byte	0xa
	.byte	0xf
	.byte	0x9
	.long	0x939
	.uleb128 0xa
	.long	.LASF862
	.byte	0xa
	.byte	0x10
	.byte	0xc
	.long	0x44
	.byte	0
	.uleb128 0xa
	.long	.LASF861
	.byte	0xa
	.byte	0x11
	.byte	0xc
	.long	0x44
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1034
	.byte	0xa
	.byte	0x12
	.byte	0xc
	.long	0x939
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8fc
	.uleb128 0x2
	.long	.LASF1035
	.byte	0xa
	.byte	0x13
	.byte	0x3
	.long	0x908
	.uleb128 0x14
	.value	0x2060
	.byte	0xb
	.byte	0xc
	.byte	0x9
	.long	0x9c2
	.uleb128 0xa
	.long	.LASF1036
	.byte	0xb
	.byte	0xd
	.byte	0xc
	.long	0x9c2
	.byte	0
	.uleb128 0xc
	.string	"ip"
	.byte	0xb
	.byte	0xe
	.byte	0xe
	.long	0x8ba
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1037
	.byte	0xb
	.byte	0xf
	.byte	0xb
	.long	0x9c8
	.byte	0x10
	.uleb128 0x15
	.long	.LASF1038
	.byte	0xb
	.byte	0x10
	.byte	0xc
	.long	0x38f
	.value	0x2010
	.uleb128 0x15
	.long	.LASF1039
	.byte	0xb
	.byte	0x12
	.byte	0xb
	.long	0x93f
	.value	0x2018
	.uleb128 0x15
	.long	.LASF1040
	.byte	0xb
	.byte	0x13
	.byte	0x10
	.long	0x395
	.value	0x2030
	.uleb128 0x15
	.long	.LASF1041
	.byte	0xb
	.byte	0x14
	.byte	0xb
	.long	0x93f
	.value	0x2040
	.uleb128 0x15
	.long	.LASF1042
	.byte	0xb
	.byte	0x15
	.byte	0xa
	.long	0x329
	.value	0x2058
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8c6
	.uleb128 0x16
	.long	0x352
	.long	0x9d8
	.uleb128 0x17
	.long	0x50
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.string	"VM"
	.byte	0xb
	.byte	0x16
	.byte	0x3
	.long	0x94b
	.uleb128 0x18
	.string	"vm"
	.byte	0xb
	.byte	0x1e
	.byte	0xb
	.long	0x9d8
	.uleb128 0xb
	.long	.LASF1044
	.byte	0xd8
	.byte	0xc
	.byte	0x31
	.byte	0x8
	.long	0xb75
	.uleb128 0xa
	.long	.LASF1045
	.byte	0xc
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF1046
	.byte	0xc
	.byte	0x36
	.byte	0x9
	.long	0xfb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1047
	.byte	0xc
	.byte	0x37
	.byte	0x9
	.long	0xfb
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1048
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.long	0xfb
	.byte	0x18
	.uleb128 0xa
	.long	.LASF1049
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF1050
	.byte	0xc
	.byte	0x3a
	.byte	0x9
	.long	0xfb
	.byte	0x28
	.uleb128 0xa
	.long	.LASF1051
	.byte	0xc
	.byte	0x3b
	.byte	0x9
	.long	0xfb
	.byte	0x30
	.uleb128 0xa
	.long	.LASF1052
	.byte	0xc
	.byte	0x3c
	.byte	0x9
	.long	0xfb
	.byte	0x38
	.uleb128 0xa
	.long	.LASF1053
	.byte	0xc
	.byte	0x3d
	.byte	0x9
	.long	0xfb
	.byte	0x40
	.uleb128 0xa
	.long	.LASF1054
	.byte	0xc
	.byte	0x40
	.byte	0x9
	.long	0xfb
	.byte	0x48
	.uleb128 0xa
	.long	.LASF1055
	.byte	0xc
	.byte	0x41
	.byte	0x9
	.long	0xfb
	.byte	0x50
	.uleb128 0xa
	.long	.LASF1056
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.long	0xfb
	.byte	0x58
	.uleb128 0xa
	.long	.LASF1057
	.byte	0xc
	.byte	0x44
	.byte	0x16
	.long	0xb8e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF1058
	.byte	0xc
	.byte	0x46
	.byte	0x14
	.long	0xb94
	.byte	0x68
	.uleb128 0xa
	.long	.LASF1059
	.byte	0xc
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xa
	.long	.LASF1060
	.byte	0xc
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xa
	.long	.LASF1061
	.byte	0xc
	.byte	0x4a
	.byte	0xb
	.long	0xe1
	.byte	0x78
	.uleb128 0xa
	.long	.LASF1062
	.byte	0xc
	.byte	0x4d
	.byte	0x12
	.long	0x65
	.byte	0x80
	.uleb128 0xa
	.long	.LASF1063
	.byte	0xc
	.byte	0x4e
	.byte	0xf
	.long	0x7f
	.byte	0x82
	.uleb128 0xa
	.long	.LASF1064
	.byte	0xc
	.byte	0x4f
	.byte	0x8
	.long	0xb9a
	.byte	0x83
	.uleb128 0xa
	.long	.LASF1065
	.byte	0xc
	.byte	0x51
	.byte	0xf
	.long	0xbaa
	.byte	0x88
	.uleb128 0xa
	.long	.LASF1066
	.byte	0xc
	.byte	0x59
	.byte	0xd
	.long	0xed
	.byte	0x90
	.uleb128 0xa
	.long	.LASF1067
	.byte	0xc
	.byte	0x5b
	.byte	0x17
	.long	0xbb5
	.byte	0x98
	.uleb128 0xa
	.long	.LASF1068
	.byte	0xc
	.byte	0x5c
	.byte	0x19
	.long	0xbc0
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF1069
	.byte	0xc
	.byte	0x5d
	.byte	0x14
	.long	0xb94
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF1070
	.byte	0xc
	.byte	0x5e
	.byte	0x9
	.long	0xf9
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF1071
	.byte	0xc
	.byte	0x5f
	.byte	0xa
	.long	0x44
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF1072
	.byte	0xc
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF1073
	.byte	0xc
	.byte	0x62
	.byte	0x8
	.long	0xbc6
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF1074
	.byte	0xd
	.byte	0x7
	.byte	0x19
	.long	0x9ee
	.uleb128 0x19
	.long	.LASF1194
	.byte	0xc
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1a
	.long	.LASF1075
	.uleb128 0x6
	.byte	0x8
	.long	0xb89
	.uleb128 0x6
	.byte	0x8
	.long	0x9ee
	.uleb128 0x16
	.long	0x101
	.long	0xbaa
	.uleb128 0x17
	.long	0x50
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb81
	.uleb128 0x1a
	.long	.LASF1076
	.uleb128 0x6
	.byte	0x8
	.long	0xbb0
	.uleb128 0x1a
	.long	.LASF1077
	.uleb128 0x6
	.byte	0x8
	.long	0xbbb
	.uleb128 0x16
	.long	0x101
	.long	0xbd6
	.uleb128 0x17
	.long	0x50
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.long	.LASF1078
	.byte	0xe
	.byte	0x89
	.byte	0xe
	.long	0xbe2
	.uleb128 0x6
	.byte	0x8
	.long	0xb75
	.uleb128 0x1b
	.long	.LASF1079
	.byte	0xe
	.byte	0x8a
	.byte	0xe
	.long	0xbe2
	.uleb128 0x1b
	.long	.LASF1080
	.byte	0xe
	.byte	0x8b
	.byte	0xe
	.long	0xbe2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1081
	.uleb128 0x12
	.byte	0x38
	.byte	0x2
	.byte	0x11
	.byte	0x9
	.long	0xc45
	.uleb128 0xa
	.long	.LASF997
	.byte	0x2
	.byte	0x12
	.byte	0xb
	.long	0x721
	.byte	0
	.uleb128 0xa
	.long	.LASF1082
	.byte	0x2
	.byte	0x13
	.byte	0xb
	.long	0x721
	.byte	0x18
	.uleb128 0xa
	.long	.LASF1083
	.byte	0x2
	.byte	0x14
	.byte	0x9
	.long	0x30d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF1084
	.byte	0x2
	.byte	0x15
	.byte	0x9
	.long	0x30d
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.long	.LASF1085
	.byte	0x2
	.byte	0x16
	.byte	0x3
	.long	0xc07
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x2
	.byte	0x18
	.byte	0xe
	.long	0xca8
	.uleb128 0xe
	.long	.LASF1086
	.byte	0
	.uleb128 0xe
	.long	.LASF1087
	.byte	0x1
	.uleb128 0xe
	.long	.LASF1088
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1089
	.byte	0x3
	.uleb128 0xe
	.long	.LASF1090
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1091
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1092
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1093
	.byte	0x7
	.uleb128 0xe
	.long	.LASF1094
	.byte	0x8
	.uleb128 0xe
	.long	.LASF1095
	.byte	0x9
	.uleb128 0xe
	.long	.LASF1096
	.byte	0xa
	.uleb128 0xe
	.long	.LASF1097
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF1098
	.byte	0x2
	.byte	0x25
	.byte	0x3
	.long	0xc51
	.uleb128 0x2
	.long	.LASF1099
	.byte	0x2
	.byte	0x27
	.byte	0x10
	.long	0xcc0
	.uleb128 0x6
	.byte	0x8
	.long	0xcc6
	.uleb128 0x1c
	.long	0xcd1
	.uleb128 0x1d
	.long	0x30d
	.byte	0
	.uleb128 0x12
	.byte	0x18
	.byte	0x2
	.byte	0x29
	.byte	0x9
	.long	0xd02
	.uleb128 0xa
	.long	.LASF1100
	.byte	0x2
	.byte	0x2a
	.byte	0xd
	.long	0xcb4
	.byte	0
	.uleb128 0xa
	.long	.LASF1101
	.byte	0x2
	.byte	0x2b
	.byte	0xd
	.long	0xcb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1102
	.byte	0x2
	.byte	0x2c
	.byte	0x10
	.long	0xca8
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF1103
	.byte	0x2
	.byte	0x2d
	.byte	0x3
	.long	0xcd1
	.uleb128 0x12
	.byte	0x20
	.byte	0x2
	.byte	0x2f
	.byte	0x9
	.long	0xd32
	.uleb128 0xa
	.long	.LASF1104
	.byte	0x2
	.byte	0x30
	.byte	0xb
	.long	0x721
	.byte	0
	.uleb128 0xa
	.long	.LASF1105
	.byte	0x2
	.byte	0x31
	.byte	0xd
	.long	0x11e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF1106
	.byte	0x2
	.byte	0x32
	.byte	0x3
	.long	0xd0e
	.uleb128 0x14
	.value	0x2008
	.byte	0x2
	.byte	0x34
	.byte	0x9
	.long	0xd72
	.uleb128 0xa
	.long	.LASF1107
	.byte	0x2
	.byte	0x35
	.byte	0xb
	.long	0xd72
	.byte	0
	.uleb128 0x15
	.long	.LASF1108
	.byte	0x2
	.byte	0x36
	.byte	0xd
	.long	0x11e
	.value	0x2000
	.uleb128 0x15
	.long	.LASF1109
	.byte	0x2
	.byte	0x37
	.byte	0xd
	.long	0x11e
	.value	0x2002
	.byte	0
	.uleb128 0x16
	.long	0xd32
	.long	0xd82
	.uleb128 0x17
	.long	0x50
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF1110
	.byte	0x2
	.byte	0x38
	.byte	0x3
	.long	0xd3e
	.uleb128 0x13
	.long	.LASF1111
	.byte	0x2
	.byte	0x3a
	.byte	0x8
	.long	0xc45
	.uleb128 0x9
	.byte	0x3
	.quad	parser
	.uleb128 0x13
	.long	.LASF997
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.long	0xdba
	.uleb128 0x9
	.byte	0x3
	.quad	current
	.uleb128 0x6
	.byte	0x8
	.long	0xd82
	.uleb128 0x13
	.long	.LASF1112
	.byte	0x2
	.byte	0x3c
	.byte	0x8
	.long	0x9c2
	.uleb128 0x9
	.byte	0x3
	.quad	compilingChunk
	.uleb128 0x16
	.long	0xd02
	.long	0xde6
	.uleb128 0x17
	.long	0x50
	.byte	0x7b
	.byte	0
	.uleb128 0x1e
	.long	.LASF1113
	.byte	0x2
	.value	0x13c
	.byte	0xb
	.long	0xdd6
	.uleb128 0x9
	.byte	0x3
	.quad	rules
	.uleb128 0x1f
	.long	.LASF1195
	.byte	0x2
	.value	0x284
	.byte	0x5
	.long	0x30d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xe57
	.uleb128 0x20
	.long	.LASF1114
	.byte	0x2
	.value	0x284
	.byte	0x1b
	.long	0x71b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8232
	.uleb128 0x20
	.long	.LASF1036
	.byte	0x2
	.value	0x284
	.byte	0x2a
	.long	0x9c2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x21
	.long	.LASF1115
	.byte	0x2
	.value	0x286
	.byte	0xe
	.long	0xd82
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8224
	.byte	0
	.uleb128 0x22
	.long	.LASF1116
	.byte	0x2
	.value	0x267
	.byte	0xd
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF1119
	.byte	0x2
	.value	0x24f
	.byte	0xd
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xea2
	.uleb128 0x24
	.string	"var"
	.byte	0x2
	.value	0x250
	.byte	0xd
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x22
	.long	.LASF1117
	.byte	0x2
	.value	0x239
	.byte	0xd
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF1118
	.byte	0x2
	.value	0x232
	.byte	0xd
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF1120
	.byte	0x2
	.value	0x226
	.byte	0xd
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xf08
	.uleb128 0x21
	.long	.LASF1121
	.byte	0x2
	.value	0x22b
	.byte	0xd
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x22
	.long	.LASF1122
	.byte	0x2
	.value	0x221
	.byte	0xd
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF1123
	.byte	0x2
	.value	0x212
	.byte	0xd
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xf53
	.uleb128 0x24
	.string	"var"
	.byte	0x2
	.value	0x213
	.byte	0xd
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x22
	.long	.LASF1124
	.byte	0x2
	.value	0x20a
	.byte	0xd
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF1125
	.byte	0x2
	.value	0x206
	.byte	0xd
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF1188
	.byte	0x2
	.value	0x201
	.byte	0xe
	.long	0x721
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF1128
	.byte	0x2
	.value	0x1fd
	.byte	0x13
	.long	0xfdc
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0xfdc
	.uleb128 0x20
	.long	.LASF832
	.byte	0x2
	.value	0x1fd
	.byte	0x25
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd02
	.uleb128 0x27
	.long	.LASF1133
	.byte	0x2
	.value	0x1f4
	.byte	0xd
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1012
	.uleb128 0x20
	.long	.LASF1126
	.byte	0x2
	.value	0x1f4
	.byte	0x24
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF1127
	.byte	0x2
	.value	0x1f0
	.byte	0xd
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF1129
	.byte	0x2
	.value	0x1e7
	.byte	0x10
	.long	0x142
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1061
	.uleb128 0x20
	.long	.LASF1130
	.byte	0x2
	.value	0x1e7
	.byte	0x2c
	.long	0x71b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF1131
	.byte	0x2
	.value	0x1d6
	.byte	0xd
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x10c7
	.uleb128 0x21
	.long	.LASF1104
	.byte	0x2
	.value	0x1d9
	.byte	0xc
	.long	0x10c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1db
	.byte	0x13
	.long	0x31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.long	.LASF1132
	.byte	0x2
	.value	0x1dc
	.byte	0x10
	.long	0x10cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x721
	.uleb128 0x6
	.byte	0x8
	.long	0xd32
	.uleb128 0x27
	.long	.LASF1134
	.byte	0x2
	.value	0x1ca
	.byte	0xd
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1113
	.uleb128 0x20
	.long	.LASF1104
	.byte	0x2
	.value	0x1ca
	.byte	0x1c
	.long	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF1132
	.byte	0x2
	.value	0x1d0
	.byte	0xc
	.long	0x10cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1135
	.byte	0x2
	.value	0x1bd
	.byte	0xc
	.long	0x57
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1199
	.uleb128 0x20
	.long	.LASF1115
	.byte	0x2
	.value	0x1bd
	.byte	0x23
	.long	0xdba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF1104
	.byte	0x2
	.value	0x1bd
	.byte	0x34
	.long	0x10c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1be
	.byte	0x13
	.long	0x31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	.LASF1132
	.byte	0x2
	.value	0x1bf
	.byte	0x10
	.long	0x10cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF1136
	.byte	0x2
	.value	0x1b8
	.byte	0xc
	.long	0x30d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d9
	.uleb128 0x2c
	.string	"a"
	.byte	0x2
	.value	0x1b8
	.byte	0x24
	.long	0x10c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"b"
	.byte	0x2
	.value	0x1b8
	.byte	0x2e
	.long	0x10c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF1137
	.byte	0x2
	.value	0x1aa
	.byte	0x10
	.long	0x142
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1241
	.uleb128 0x20
	.long	.LASF1104
	.byte	0x2
	.value	0x1aa
	.byte	0x2a
	.long	0x10c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.long	.LASF1138
	.byte	0x2
	.value	0x1ab
	.byte	0xb
	.long	0x352
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF1139
	.byte	0x2
	.value	0x1ac
	.byte	0x10
	.long	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF1140
	.byte	0x2
	.value	0x1b1
	.byte	0xd
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.byte	0
	.uleb128 0x22
	.long	.LASF1141
	.byte	0x2
	.value	0x1a3
	.byte	0xd
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF1142
	.byte	0x2
	.value	0x18d
	.byte	0xd
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ce
	.uleb128 0x20
	.long	.LASF1102
	.byte	0x2
	.value	0x18d
	.byte	0x28
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF1143
	.byte	0x2
	.value	0x18f
	.byte	0xd
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF1144
	.byte	0x2
	.value	0x195
	.byte	0x9
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF1145
	.byte	0x2
	.value	0x19a
	.byte	0x11
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF1146
	.byte	0x2
	.value	0x132
	.byte	0xd
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF1147
	.byte	0x2
	.value	0x124
	.byte	0xd
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1329
	.uleb128 0x20
	.long	.LASF1144
	.byte	0x2
	.value	0x124
	.byte	0x17
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF1148
	.byte	0x2
	.value	0x125
	.byte	0xf
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF1149
	.byte	0x2
	.value	0x120
	.byte	0xd
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1359
	.uleb128 0x20
	.long	.LASF1144
	.byte	0x2
	.value	0x120
	.byte	0x1a
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF1150
	.byte	0x2
	.value	0x10c
	.byte	0xd
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x13c9
	.uleb128 0x20
	.long	.LASF1104
	.byte	0x2
	.value	0x10c
	.byte	0x21
	.long	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF1144
	.byte	0x2
	.value	0x10c
	.byte	0x2b
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF1151
	.byte	0x2
	.value	0x10d
	.byte	0xd
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.long	.LASF1152
	.byte	0x2
	.value	0x10d
	.byte	0x14
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x24
	.string	"arg"
	.byte	0x2
	.value	0x10e
	.byte	0xd
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x27
	.long	.LASF1153
	.byte	0x2
	.value	0x108
	.byte	0xd
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f9
	.uleb128 0x20
	.long	.LASF1144
	.byte	0x2
	.value	0x108
	.byte	0x18
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x27
	.long	.LASF1154
	.byte	0x2
	.value	0x103
	.byte	0xd
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x143a
	.uleb128 0x20
	.long	.LASF1144
	.byte	0x2
	.value	0x103
	.byte	0x18
	.long	0x30d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF1032
	.byte	0x2
	.value	0x104
	.byte	0xc
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2d
	.long	.LASF1155
	.byte	0x2
	.byte	0xfe
	.byte	0xd
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1468
	.uleb128 0x2e
	.long	.LASF1144
	.byte	0x2
	.byte	0xfe
	.byte	0x1a
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2d
	.long	.LASF1156
	.byte	0x2
	.byte	0xf4
	.byte	0xd
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1496
	.uleb128 0x2e
	.long	.LASF1144
	.byte	0x2
	.byte	0xf4
	.byte	0x19
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF1157
	.byte	0x2
	.byte	0xde
	.byte	0xd
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e2
	.uleb128 0x2e
	.long	.LASF1144
	.byte	0x2
	.byte	0xde
	.byte	0x18
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x2
	.byte	0xdf
	.byte	0xf
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF1158
	.byte	0x2
	.byte	0xe0
	.byte	0x10
	.long	0xfdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF1159
	.byte	0x2
	.byte	0xcc
	.byte	0xd
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1160
	.byte	0x2
	.byte	0xc8
	.byte	0xd
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1161
	.byte	0x2
	.byte	0xc0
	.byte	0xd
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF1162
	.byte	0x2
	.byte	0xba
	.byte	0xd
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x155e
	.uleb128 0x2e
	.long	.LASF1115
	.byte	0x2
	.byte	0xba
	.byte	0x24
	.long	0xdba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1163
	.byte	0x2
	.byte	0xae
	.byte	0xd
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x159b
	.uleb128 0x2e
	.long	.LASF1024
	.byte	0x2
	.byte	0xae
	.byte	0x1f
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1164
	.byte	0x2
	.byte	0xb0
	.byte	0xd
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x2d
	.long	.LASF1165
	.byte	0x2
	.byte	0xaa
	.byte	0xd
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c9
	.uleb128 0x2e
	.long	.LASF1032
	.byte	0x2
	.byte	0xaa
	.byte	0x20
	.long	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	.LASF1166
	.byte	0x2
	.byte	0xa1
	.byte	0x10
	.long	0x142
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x160a
	.uleb128 0x2e
	.long	.LASF1032
	.byte	0x2
	.byte	0xa1
	.byte	0x23
	.long	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF1167
	.byte	0x2
	.byte	0xa2
	.byte	0x9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF1168
	.byte	0x2
	.byte	0x9d
	.byte	0xd
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF1169
	.byte	0x2
	.byte	0x95
	.byte	0xc
	.long	0x57
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1656
	.uleb128 0x2e
	.long	.LASF1170
	.byte	0x2
	.byte	0x95
	.byte	0x1d
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF1171
	.byte	0x2
	.byte	0x90
	.byte	0xd
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1693
	.uleb128 0x2e
	.long	.LASF1172
	.byte	0x2
	.byte	0x90
	.byte	0x1f
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF1173
	.byte	0x2
	.byte	0x90
	.byte	0x2e
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1174
	.byte	0x2
	.byte	0x8c
	.byte	0xd
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c1
	.uleb128 0x2e
	.long	.LASF1175
	.byte	0x2
	.byte	0x8c
	.byte	0x1e
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x2
	.byte	0x86
	.byte	0xc
	.long	0x30d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f3
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x2
	.byte	0x86
	.byte	0x24
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x2
	.byte	0x80
	.byte	0xc
	.long	0x30d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1725
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x2
	.byte	0x80
	.byte	0x1c
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF1178
	.byte	0x2
	.byte	0x7c
	.byte	0xc
	.long	0x30d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1757
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x2
	.byte	0x7c
	.byte	0x25
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF1179
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.long	0x30d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1789
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x2
	.byte	0x78
	.byte	0x1d
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF1180
	.byte	0x2
	.byte	0x6f
	.byte	0xd
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c6
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x2
	.byte	0x6f
	.byte	0x1f
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF1181
	.byte	0x2
	.byte	0x6f
	.byte	0x31
	.long	0x17c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x108
	.uleb128 0x33
	.long	.LASF1182
	.byte	0x2
	.byte	0x64
	.byte	0xc
	.long	0x30d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x17fe
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x2
	.byte	0x64
	.byte	0x1c
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x30
	.long	.LASF1183
	.byte	0x2
	.byte	0x5a
	.byte	0xd
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1184
	.byte	0x2
	.byte	0x56
	.byte	0xd
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1846
	.uleb128 0x2e
	.long	.LASF1181
	.byte	0x2
	.byte	0x56
	.byte	0x28
	.long	0x17c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1185
	.byte	0x2
	.byte	0x52
	.byte	0xd
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1874
	.uleb128 0x2e
	.long	.LASF1181
	.byte	0x2
	.byte	0x52
	.byte	0x1f
	.long	0x17c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1186
	.byte	0x2
	.byte	0x42
	.byte	0xd
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x18b1
	.uleb128 0x2e
	.long	.LASF1187
	.byte	0x2
	.byte	0x42
	.byte	0x1c
	.long	0x10c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1181
	.byte	0x2
	.byte	0x42
	.byte	0x2f
	.long	0x17c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1189
	.byte	0x2
	.byte	0x3e
	.byte	0xf
	.long	0x9c2
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF1190
	.byte	0x1
	.byte	0xc1
	.byte	0xe
	.long	0x721
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x1
	.byte	0xc1
	.byte	0x22
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF1187
	.byte	0x1
	.byte	0xc2
	.byte	0xb
	.long	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
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
	.uleb128 0x3
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
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
	.file 15 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF345
	.file 16 "Compilation/compiler/../../Bytecode/value/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x2
	.long	.LASF346
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 18 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x12
	.file 19 "/usr/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro5
	.file 20 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x14
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF406
	.file 21 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro6
	.file 22 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1cd
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro7
	.file 23 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x1c4
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 24 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x1c5
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x15
	.long	.LASF509
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 25 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x1e5
	.uleb128 0x19
	.file 26 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1a
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
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x18
	.long	.LASF542
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 27 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x18
	.long	.LASF543
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.file 28 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x1c
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 29 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x6
	.uleb128 0xe1
	.long	.LASF601
	.byte	0x4
	.file 30 "/usr/include/x86_64-linux-gnu/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x1e
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x14
	.long	.LASF605
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x6
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
	.file 31 "/usr/include/string.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.file 32 "Compilation/compiler/../../common/common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x20
	.byte	0x4
	.file 33 "Compilation/compiler/compiler.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x21
	.byte	0x5
	.uleb128 0x2
	.long	.LASF720
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.long	.LASF721
	.file 34 "Compilation/compiler/../../Language/object/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x22
	.byte	0x4
	.file 35 "Compilation/compiler/../../Language/object/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x23
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x2
	.long	.LASF726
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x2
	.long	.LASF727
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.long	.LASF728
	.file 36 "Compilation/compiler/../../VirtualMachine/vm/../../Bytecode/chunk/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x4
	.file 37 "Compilation/compiler/../../VirtualMachine/vm/../../Bytecode/chunk/../value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.file 38 "Compilation/compiler/../../VirtualMachine/vm/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x26
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x2
	.long	.LASF729
	.file 39 "Compilation/compiler/../../VirtualMachine/vm/../../Language/table/../../common/common.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x27
	.byte	0x4
	.file 40 "Compilation/compiler/../../VirtualMachine/vm/../../Language/table/../../Bytecode/value/value.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x28
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF730
	.byte	0x4
	.byte	0x4
	.file 41 "Compilation/compiler/../../Bytecode/debug/debug.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x29
	.byte	0x5
	.uleb128 0x2
	.long	.LASF731
	.file 42 "Compilation/compiler/../../Bytecode/debug/../chunk/chunk.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2a
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF733
	.file 43 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x2b
	.byte	0x7
	.long	.Ldebug_macro26
	.byte	0x4
	.file 44 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x2c
	.byte	0x5
	.uleb128 0x2
	.long	.LASF736
	.file 45 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2d
	.byte	0x5
	.uleb128 0x2
	.long	.LASF737
	.byte	0x4
	.byte	0x4
	.file 46 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x5
	.uleb128 0x2
	.long	.LASF738
	.byte	0x4
	.file 47 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x2f
	.byte	0x5
	.uleb128 0x2
	.long	.LASF739
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x2
	.long	.LASF740
	.byte	0x4
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro27
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.file 48 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x30
	.byte	0x7
	.long	.Ldebug_macro29
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro30
	.file 49 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.byte	0x3
	.uleb128 0x30d
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.file 50 "/usr/include/stdlib.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x32
	.byte	0x5
	.uleb128 0x18
	.long	.LASF405
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro31
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF767
	.file 51 "/usr/include/x86_64-linux-gnu/bits/floatn.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x33
	.byte	0x7
	.long	.Ldebug_macro32
	.file 52 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x78
	.uleb128 0x34
	.byte	0x5
	.uleb128 0x15
	.long	.LASF775
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x15
	.long	.LASF509
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro33
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro34
	.file 53 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.byte	0x3
	.uleb128 0x3f5
	.uleb128 0x35
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
	.long	.LASF673
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
	.long	.LASF674
	.byte	0x5
	.uleb128 0x20
	.long	.LASF675
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
	.section	.debug_macro,"G",@progbits,wm4.value.h.93.ea04d39224bdd560e06214733f3719e5,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF676
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF677
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF678
	.byte	0x5
	.uleb128 0x60
	.long	.LASF679
	.byte	0x5
	.uleb128 0x61
	.long	.LASF680
	.byte	0x5
	.uleb128 0x62
	.long	.LASF681
	.byte	0x5
	.uleb128 0x63
	.long	.LASF682
	.byte	0x5
	.uleb128 0x64
	.long	.LASF683
	.byte	0x5
	.uleb128 0x65
	.long	.LASF684
	.byte	0x5
	.uleb128 0x66
	.long	.LASF685
	.byte	0x5
	.uleb128 0x67
	.long	.LASF686
	.byte	0x5
	.uleb128 0x68
	.long	.LASF687
	.byte	0x5
	.uleb128 0x69
	.long	.LASF688
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF689
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF690
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF691
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF692
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF693
	.byte	0x5
	.uleb128 0x70
	.long	.LASF694
	.byte	0x5
	.uleb128 0x71
	.long	.LASF695
	.byte	0x5
	.uleb128 0x72
	.long	.LASF696
	.byte	0x5
	.uleb128 0x73
	.long	.LASF697
	.byte	0x5
	.uleb128 0x74
	.long	.LASF698
	.byte	0x5
	.uleb128 0x75
	.long	.LASF699
	.byte	0x5
	.uleb128 0x76
	.long	.LASF700
	.byte	0x5
	.uleb128 0x77
	.long	.LASF701
	.byte	0x5
	.uleb128 0x78
	.long	.LASF702
	.byte	0x5
	.uleb128 0x79
	.long	.LASF703
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF704
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF705
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF706
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF707
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF708
	.byte	0x5
	.uleb128 0x80
	.long	.LASF709
	.byte	0x5
	.uleb128 0x81
	.long	.LASF710
	.byte	0x5
	.uleb128 0x82
	.long	.LASF711
	.byte	0x5
	.uleb128 0x83
	.long	.LASF712
	.byte	0x5
	.uleb128 0x84
	.long	.LASF713
	.byte	0x5
	.uleb128 0x85
	.long	.LASF714
	.byte	0x5
	.uleb128 0x86
	.long	.LASF715
	.byte	0x5
	.uleb128 0x87
	.long	.LASF716
	.byte	0x5
	.uleb128 0x88
	.long	.LASF717
	.byte	0x5
	.uleb128 0x89
	.long	.LASF718
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF719
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.object.h.9.58f78145e32d247aac212c60dfa360d4,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x9
	.long	.LASF722
	.byte	0x5
	.uleb128 0xb
	.long	.LASF723
	.byte	0x5
	.uleb128 0xd
	.long	.LASF724
	.byte	0x5
	.uleb128 0xe
	.long	.LASF725
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.24.5c1b97eef3c86b7a2549420f69f4f128,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF732
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF405
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro25:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF674
	.byte	0x5
	.uleb128 0x20
	.long	.LASF675
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro26:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.long	.LASF734
	.byte	0x5
	.uleb128 0x27
	.long	.LASF735
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_FILE.h.19.0888ac70396abe1031c03d393554032f,comdat
.Ldebug_macro27:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF741
	.byte	0x5
	.uleb128 0x66
	.long	.LASF742
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF743
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF744
	.byte	0x5
	.uleb128 0x70
	.long	.LASF745
	.byte	0x5
	.uleb128 0x72
	.long	.LASF746
	.byte	0x5
	.uleb128 0x73
	.long	.LASF747
	.byte	0x5
	.uleb128 0x75
	.long	.LASF748
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.93.0122ffbd02ddfe34dfaf44a2e3561c5b,comdat
.Ldebug_macro28:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF749
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF750
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF751
	.byte	0x5
	.uleb128 0x63
	.long	.LASF752
	.byte	0x5
	.uleb128 0x68
	.long	.LASF753
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF754
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF755
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF756
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.19.de8a40c165be4f8437982ec2cd6fd8b4,comdat
.Ldebug_macro29:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF757
	.byte	0x5
	.uleb128 0x19
	.long	.LASF758
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF759
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF760
	.byte	0x6
	.uleb128 0x24
	.long	.LASF761
	.byte	0x5
	.uleb128 0x25
	.long	.LASF762
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.141.d7a290e19ca077c9e4aa7c43ede17a73,comdat
.Ldebug_macro30:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF763
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF764
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF765
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.28.2cffa49d94c5d85f4538f55f7b59771d,comdat
.Ldebug_macro31:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF674
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF766
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF675
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatn.h.20.80c7cf8a8dfad237004b28d051d5afda,comdat
.Ldebug_macro32:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF768
	.byte	0x5
	.uleb128 0x21
	.long	.LASF769
	.byte	0x5
	.uleb128 0x29
	.long	.LASF770
	.byte	0x5
	.uleb128 0x31
	.long	.LASF771
	.byte	0x5
	.uleb128 0x37
	.long	.LASF772
	.byte	0x5
	.uleb128 0x42
	.long	.LASF773
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF774
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatncommon.h.34.7e1840d7dfb19e9bdb51aeb077d76637,comdat
.Ldebug_macro33:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF776
	.byte	0x5
	.uleb128 0x23
	.long	.LASF777
	.byte	0x5
	.uleb128 0x24
	.long	.LASF778
	.byte	0x5
	.uleb128 0x25
	.long	.LASF779
	.byte	0x5
	.uleb128 0x26
	.long	.LASF780
	.byte	0x5
	.uleb128 0x34
	.long	.LASF781
	.byte	0x5
	.uleb128 0x35
	.long	.LASF782
	.byte	0x5
	.uleb128 0x36
	.long	.LASF783
	.byte	0x5
	.uleb128 0x37
	.long	.LASF784
	.byte	0x5
	.uleb128 0x38
	.long	.LASF785
	.byte	0x5
	.uleb128 0x39
	.long	.LASF786
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF787
	.byte	0x5
	.uleb128 0x46
	.long	.LASF788
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF789
	.byte	0x5
	.uleb128 0x69
	.long	.LASF790
	.byte	0x5
	.uleb128 0x71
	.long	.LASF791
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF792
	.byte	0x5
	.uleb128 0x97
	.long	.LASF793
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF794
	.byte	0x5
	.uleb128 0xab
	.long	.LASF795
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF796
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.71.39700ac5536cfafa1b6db501afc46864,comdat
.Ldebug_macro34:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x47
	.long	.LASF797
	.byte	0x5
	.uleb128 0x51
	.long	.LASF798
	.byte	0x5
	.uleb128 0x56
	.long	.LASF799
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF800
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF801
	.byte	0x5
	.uleb128 0x60
	.long	.LASF802
	.byte	0x5
	.uleb128 0x327
	.long	.LASF803
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF881:
	.string	"TK_QUESTION"
.LASF614:
	.string	"INT32_MAX (2147483647)"
.LASF1156:
	.string	"literal"
.LASF749:
	.string	"_IOFBF 0"
.LASF677:
	.string	"IS_NIL(value) ((value).type == VAL_NIL)"
.LASF558:
	.string	"__STD_TYPE typedef"
.LASF824:
	.string	"int8_t"
.LASF225:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF283:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1036:
	.string	"chunk"
.LASF1128:
	.string	"getRule"
.LASF1111:
	.string	"parser"
.LASF1012:
	.string	"OP_LESS"
.LASF108:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF805:
	.string	"size_t"
.LASF945:
	.string	"TK_EQI16"
.LASF345:
	.string	"value_h "
.LASF495:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF969:
	.string	"TK_IF"
.LASF220:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF994:
	.string	"start"
.LASF752:
	.string	"BUFSIZ 8192"
.LASF1135:
	.string	"resolveLocal"
.LASF687:
	.string	"IS_U64(value) ((value).type == VAL_U64)"
.LASF902:
	.string	"TK_TILDE"
.LASF790:
	.string	"__f64(x) x ##f64"
.LASF93:
	.string	"__SIZE_WIDTH__ 64"
.LASF505:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF282:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF1109:
	.string	"scopeDepth"
.LASF19:
	.string	"__LP64__ 1"
.LASF802:
	.string	"MB_CUR_MAX (__ctype_get_mb_cur_max ())"
.LASF270:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF422:
	.string	"__USE_XOPEN2K8XSI"
.LASF754:
	.string	"SEEK_SET 0"
.LASF238:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF491:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF1076:
	.string	"_IO_codecvt"
.LASF433:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF1091:
	.string	"PREC_COMPARISON"
.LASF446:
	.string	"__GLIBC__ 2"
.LASF993:
	.string	"TokenType"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF590:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF393:
	.string	"_WCHAR_T_H "
.LASF660:
	.string	"INT16_C(c) c"
.LASF826:
	.string	"int32_t"
.LASF886:
	.string	"TK_SEMICOLON"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF139:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF981:
	.string	"TK_FIELD"
.LASF863:
	.string	"values"
.LASF479:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF248:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF1056:
	.string	"_IO_save_end"
.LASF136:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF679:
	.string	"IS_NUMBER(value) ((value).type != VAL_NIL && (value).type != VAL_BOOL);"
.LASF843:
	.string	"VAL_I16"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF273:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF763:
	.string	"stdin stdin"
.LASF162:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF825:
	.string	"int16_t"
.LASF887:
	.string	"TK_COLON"
.LASF200:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1165:
	.string	"emitConstant"
.LASF1106:
	.string	"Local"
.LASF1084:
	.string	"panicMode"
.LASF36:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF1018:
	.string	"OP_EXPONENTIATE"
.LASF123:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF1167:
	.string	"constant"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF1108:
	.string	"localCount"
.LASF922:
	.string	"TK_USDLLEQ"
.LASF629:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF697:
	.string	"AS_I32(value) ((value).as.i32)"
.LASF1049:
	.string	"_IO_write_base"
.LASF482:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF290:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF891:
	.string	"TK_MINUS"
.LASF601:
	.string	"__STD_TYPE"
.LASF315:
	.string	"__x86_64 1"
.LASF639:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF458:
	.string	"__P(args) args"
.LASF885:
	.string	"TK_DOTDOTDOT"
.LASF340:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF1065:
	.string	"_lock"
.LASF838:
	.string	"VAL_UNDEFINED"
.LASF202:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF105:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF571:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF709:
	.string	"U8_VAL(value) ((Value){VAL_U8, {.u8 = value}})"
.LASF399:
	.string	"__need_wchar_t"
.LASF196:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF1137:
	.string	"identifierConstant"
.LASF888:
	.string	"TK_LTTILDE"
.LASF832:
	.string	"type"
.LASF358:
	.string	"__PTRDIFF_T "
.LASF643:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF360:
	.string	"_BSD_PTRDIFF_T_ "
.LASF777:
	.string	"__HAVE_FLOAT32 1"
.LASF1144:
	.string	"canAssign"
.LASF1132:
	.string	"local"
.LASF1054:
	.string	"_IO_save_base"
.LASF910:
	.string	"TK_USDCEQ"
.LASF664:
	.string	"UINT16_C(c) c"
.LASF211:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF638:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF381:
	.string	"__size_t "
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF608:
	.string	"INT8_MIN (-128)"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF555:
	.string	"__ULONG32_TYPE unsigned int"
.LASF723:
	.string	"IS_STRING(value) isObjType(value, OBJ_STRING)"
.LASF448:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF265:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF472:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF168:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF413:
	.string	"__USE_POSIX2"
.LASF617:
	.string	"UINT16_MAX (65535)"
.LASF845:
	.string	"VAL_I32"
.LASF288:
	.string	"__NO_INLINE__ 1"
.LASF410:
	.string	"__USE_ISOC95"
.LASF517:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF1058:
	.string	"_chain"
.LASF836:
	.string	"chars"
.LASF744:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF333:
	.string	"__CET__ 3"
.LASF235:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF1157:
	.string	"binary"
.LASF941:
	.string	"TK_TILDEEQ"
.LASF210:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF1152:
	.string	"setOp"
.LASF1006:
	.string	"OP_SET_GLOBAL"
.LASF1186:
	.string	"errorAt"
.LASF1085:
	.string	"Parser"
.LASF880:
	.string	"TK_BANGBANG"
.LASF412:
	.string	"__USE_POSIX"
.LASF475:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF955:
	.string	"TK_LT"
.LASF269:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF698:
	.string	"AS_U32(value) ((value).as.u32)"
.LASF400:
	.string	"NULL"
.LASF936:
	.string	"TK_SLASHEQ"
.LASF599:
	.string	"_BITS_TIME64_H 1"
.LASF255:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF855:
	.string	"f128"
.LASF877:
	.string	"TK_RBRACELPAREN"
.LASF1107:
	.string	"locals"
.LASF703:
	.string	"AS_F128(value) ((value).as.f128)"
.LASF899:
	.string	"TK_AMP"
.LASF655:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF522:
	.string	"__stub_fchflags "
.LASF304:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF352:
	.string	"_STDDEF_H "
.LASF1169:
	.string	"emitJump"
.LASF1023:
	.string	"OP_RETURN"
.LASF781:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF1166:
	.string	"makeConstant"
.LASF973:
	.string	"TK_PUTS"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF268:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF387:
	.string	"_T_WCHAR "
.LASF138:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF421:
	.string	"__USE_XOPEN2K8"
.LASF1001:
	.string	"OP_NIL"
.LASF490:
	.string	"__always_inline"
.LASF1158:
	.string	"rule"
.LASF919:
	.string	"TK_COLONULEQ"
.LASF1041:
	.string	"strings"
.LASF232:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF431:
	.string	"__GLIBC_USE_ISOC2X"
.LASF610:
	.string	"INT32_MIN (-2147483647-1)"
.LASF319:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF1120:
	.string	"ifStatement"
.LASF435:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF784:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF806:
	.string	"long int"
.LASF543:
	.string	"__TIMESIZE __WORDSIZE"
.LASF242:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF346:
	.string	"common_h "
.LASF249:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF436:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF112:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF199:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF279:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF1150:
	.string	"namedVariable"
.LASF765:
	.string	"stderr stderr"
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
.LASF937:
	.string	"TK_MODEQ"
.LASF294:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF306:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF261:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1075:
	.string	"_IO_marker"
.LASF585:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF198:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF1010:
	.string	"OP_EQUAL"
.LASF1176:
	.string	"matchPrevious"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF645:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF809:
	.string	"short unsigned int"
.LASF977:
	.string	"TK_THIS"
.LASF578:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF239:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF488:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF377:
	.string	"_SIZE_T_DECLARED "
.LASF460:
	.string	"__CONCAT(x,y) x ## y"
.LASF764:
	.string	"stdout stdout"
.LASF882:
	.string	"TK_COMMA"
.LASF1131:
	.string	"declareVariable"
.LASF1185:
	.string	"error"
.LASF1038:
	.string	"stackTop"
.LASF889:
	.string	"TK_TILDEGT"
.LASF453:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF342:
	.string	"__STDC_IEC_559__ 1"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF953:
	.string	"TK_EQF128"
.LASF652:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF512:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF672:
	.string	"UINT8_COUNT (UINT8_MAX + 1)"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF118:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF788:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF405:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF341:
	.string	"_STDC_PREDEF_H 1"
.LASF896:
	.string	"TK_AMPAMP"
.LASF379:
	.string	"_GCC_SIZE_T "
.LASF16:
	.string	"__PIE__ 2"
.LASF218:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF275:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF965:
	.string	"TK_ENUM"
.LASF450:
	.string	"__PMT"
.LASF801:
	.string	"EXIT_SUCCESS 0"
.LASF565:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF154:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF443:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF157:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF678:
	.string	"IS_BOOL(value) ((value).type == VAL_BOOL)"
.LASF454:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF926:
	.string	"TK_USDFEQ"
.LASF812:
	.string	"signed char"
.LASF551:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF867:
	.string	"TK_LEFT_PAREN"
.LASF828:
	.string	"uint8_t"
.LASF847:
	.string	"VAL_I64"
.LASF204:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF1044:
	.string	"_IO_FILE"
.LASF287:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF1160:
	.string	"beginScope"
.LASF947:
	.string	"TK_EQI32"
.LASF1095:
	.string	"PREC_UNARY"
.LASF164:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF854:
	.string	"boolean"
.LASF1118:
	.string	"putsStatement"
.LASF297:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF92:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF124:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF451:
	.string	"__LEAF , __leaf__"
.LASF207:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF508:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF576:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF246:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF726:
	.string	"scanner_h "
.LASF1025:
	.string	"LineStart"
.LASF1172:
	.string	"byte1"
.LASF1173:
	.string	"byte2"
.LASF536:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF462:
	.string	"__ptr_t void *"
.LASF376:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF808:
	.string	"unsigned char"
.LASF786:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF1168:
	.string	"emitReturn"
.LASF203:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF1069:
	.string	"_freeres_list"
.LASF459:
	.string	"__PMT(args) args"
.LASF1112:
	.string	"compilingChunk"
.LASF1161:
	.string	"endCompiler"
.LASF1189:
	.string	"currentChunk"
.LASF630:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF1163:
	.string	"patchJump"
.LASF145:
	.string	"__GCC_IEC_559 2"
.LASF706:
	.string	"NIL_VAL ((Value){VAL_NIL, {.f64 = 0}})"
.LASF252:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF688:
	.string	"IS_F32(value) ((value).type == VAL_F32)"
.LASF425:
	.string	"__USE_FILE_OFFSET64"
.LASF542:
	.string	"_BITS_TYPES_H 1"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF534:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF681:
	.string	"IS_U8(value) ((value).type == VAL_U8)"
.LASF841:
	.string	"VAL_I8"
.LASF970:
	.string	"TK_IN"
.LASF107:
	.string	"__UINT16_MAX__ 0xffff"
.LASF127:
	.string	"__UINT32_C(c) c ## U"
.LASF1009:
	.string	"OP_GET_LOCAL"
.LASF785:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF330:
	.string	"__SSE2_MATH__ 1"
.LASF1170:
	.string	"instruction"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF566:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF609:
	.string	"INT16_MIN (-32767-1)"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF856:
	.string	"_Bool"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF120:
	.string	"__INT64_C(c) c ## L"
.LASF492:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF520:
	.string	"__stub___compat_bdflush "
.LASF289:
	.string	"__STRICT_ANSI__ 1"
.LASF374:
	.string	"_SIZE_T_DEFINED_ "
.LASF693:
	.string	"AS_I8(value) ((value).as.i8)"
.LASF1032:
	.string	"value"
.LASF97:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF586:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF230:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF307:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF625:
	.string	"INT_LEAST16_MAX (32767)"
.LASF74:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF823:
	.string	"char"
.LASF155:
	.string	"__FLT_MAX_EXP__ 128"
.LASF623:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF291:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF774:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF766:
	.string	"__need_wchar_t "
.LASF1117:
	.string	"synchronize"
.LASF699:
	.string	"AS_I64(value) ((value).as.i64)"
.LASF79:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF533:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF581:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF1140:
	.string	"newIndex"
.LASF1134:
	.string	"addLocal"
.LASF696:
	.string	"AS_U16(value) ((value).as.u16)"
.LASF959:
	.string	"TK_EQEQ"
.LASF995:
	.string	"line"
.LASF548:
	.string	"__SLONGWORD_TYPE long int"
.LASF430:
	.string	"__KERNEL_STRICT_NAMES"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF1125:
	.string	"noTokenExpression"
.LASF861:
	.string	"capacity"
.LASF337:
	.string	"__unix 1"
.LASF1194:
	.string	"_IO_lock_t"
.LASF669:
	.string	"_GCC_WRAP_STDINT_H "
.LASF733:
	.string	"__need___va_list "
.LASF816:
	.string	"__uint16_t"
.LASF1021:
	.string	"OP_PUTS"
.LASF419:
	.string	"__USE_XOPEN2K"
.LASF600:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF712:
	.string	"I32_VAL(value) ((Value){VAL_I32, {.i32 = value}})"
.LASF420:
	.string	"__USE_XOPEN2KXSI"
.LASF106:
	.string	"__UINT8_MAX__ 0xff"
.LASF160:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF700:
	.string	"AS_U64(value) ((value).as.u64)"
.LASF798:
	.string	"__lldiv_t_defined 1"
.LASF493:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF527:
	.string	"__stub_sigreturn "
.LASF717:
	.string	"F64_VAL(value) ((Value){VAL_F64, {.f64 = value}})"
.LASF1102:
	.string	"precedence"
.LASF176:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF1114:
	.string	"source"
.LASF331:
	.string	"__SEG_FS 1"
.LASF691:
	.string	"IS_OBJ(value) ((value).type == VAL_OBJ)"
.LASF636:
	.string	"INT_FAST8_MAX (127)"
.LASF624:
	.string	"INT_LEAST8_MAX (127)"
.LASF73:
	.string	"__GXX_ABI_VERSION 1013"
.LASF1096:
	.string	"PREC_CALL"
.LASF553:
	.string	"__UWORD_TYPE unsigned long int"
.LASF156:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF1046:
	.string	"_IO_read_ptr"
.LASF226:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF949:
	.string	"TK_EQI64"
.LASF665:
	.string	"UINT32_C(c) c ## U"
.LASF894:
	.string	"TK_MOD"
.LASF644:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF414:
	.string	"__USE_POSIX199309"
.LASF615:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF344:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF1105:
	.string	"depth"
.LASF794:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF72:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF804:
	.string	"ptrdiff_t"
.LASF214:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF729:
	.string	"table_h "
.LASF743:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF972:
	.string	"TK_NIL"
.LASF975:
	.string	"TK_SUPER"
.LASF447:
	.string	"__GLIBC_MINOR__ 31"
.LASF984:
	.string	"TK_IDENTIFIER"
.LASF423:
	.string	"__USE_LARGEFILE"
.LASF997:
	.string	"current"
.LASF647:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF418:
	.string	"__USE_UNIX98"
.LASF61:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF434:
	.string	"__KERNEL_STRICT_NAMES "
.LASF740:
	.string	"__FILE_defined 1"
.LASF911:
	.string	"TK_COLONUCEQ"
.LASF1183:
	.string	"advance"
.LASF564:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF718:
	.string	"F128_VAL(value) ((Value){VAL_F128, {.f128 = value}})"
.LASF299:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1094:
	.string	"PREC_EXPONENT"
.LASF549:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF741:
	.string	"__struct_FILE_defined 1"
.LASF382:
	.string	"__need_size_t"
.LASF303:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1057:
	.string	"_markers"
.LASF593:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF873:
	.string	"TK_LTLBRACE"
.LASF339:
	.string	"__ELF__ 1"
.LASF908:
	.string	"TK_USDEQ"
.LASF80:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF1019:
	.string	"OP_NOT"
.LASF96:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF674:
	.string	"__need_size_t "
.LASF760:
	.string	"FILENAME_MAX 4096"
.LASF632:
	.string	"INT_FAST8_MIN (-128)"
.LASF192:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF762:
	.string	"FOPEN_MAX 16"
.LASF526:
	.string	"__stub_setlogin "
.LASF909:
	.string	"TK_COLONCEQ"
.LASF595:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF1042:
	.string	"objects"
.LASF1182:
	.string	"scout"
.LASF241:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF539:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF735:
	.string	"__GNUC_VA_LIST "
.LASF110:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF1013:
	.string	"OP_ADD"
.LASF348:
	.string	"bool _Bool"
.LASF890:
	.string	"TK_PLUS"
.LASF1050:
	.string	"_IO_write_ptr"
.LASF100:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF1177:
	.string	"match"
.LASF122:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF390:
	.string	"_BSD_WCHAR_T_ "
.LASF596:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF731:
	.string	"debug_h "
.LASF262:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF757:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF641:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF172:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF913:
	.string	"TK_COLONIEQ"
.LASF1007:
	.string	"OP_GET_GLOBAL"
.LASF507:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF758:
	.string	"L_tmpnam 20"
.LASF424:
	.string	"__USE_LARGEFILE64"
.LASF1100:
	.string	"prefix"
.LASF685:
	.string	"IS_U32(value) ((value).type == VAL_U32)"
.LASF473:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF115:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF149:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF821:
	.string	"__off_t"
.LASF642:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF575:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF633:
	.string	"INT_FAST16_MIN (-9223372036854775807L-1)"
.LASF635:
	.string	"INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF277:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF811:
	.string	"__int8_t"
.LASF401:
	.string	"NULL ((void *)0)"
.LASF727:
	.string	"vm_h "
.LASF931:
	.string	"TK_COLONSEQ"
.LASF1127:
	.string	"markInitialized"
.LASF1066:
	.string	"_offset"
.LASF736:
	.string	"_____fpos_t_defined 1"
.LASF588:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF286:
	.string	"__USER_LABEL_PREFIX__ "
.LASF541:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF1073:
	.string	"_unused2"
.LASF554:
	.string	"__SLONG32_TYPE int"
.LASF776:
	.string	"__HAVE_FLOAT16 0"
.LASF670:
	.string	"DEBUG_PRINT_CODE "
.LASF1138:
	.string	"index"
.LASF561:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF1195:
	.string	"compile"
.LASF782:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF1005:
	.string	"OP_DEFINE_GLOBAL"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF406:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF943:
	.string	"TK_EQI8"
.LASF408:
	.string	"__USE_ISOC11"
.LASF935:
	.string	"TK_STAREQ"
.LASF484:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF604:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF240:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF71:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF1148:
	.string	"operatorType"
.LASF254:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF676:
	.string	"IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)"
.LASF1159:
	.string	"endScope"
.LASF961:
	.string	"TK_CASE"
.LASF121:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF163:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF343:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF820:
	.string	"__uint64_t"
.LASF102:
	.string	"__INT8_MAX__ 0x7f"
.LASF648:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF577:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF918:
	.string	"TK_USDLEQ"
.LASF524:
	.string	"__stub_lchmod "
.LASF1030:
	.string	"lines"
.LASF616:
	.string	"UINT8_MAX (255)"
.LASF653:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF280:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF146:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF957:
	.string	"TK_LTEQ"
.LASF15:
	.string	"__pie__ 2"
.LASF3:
	.string	"__GNUC__ 9"
.LASF923:
	.string	"TK_COLONULLEQ"
.LASF1123:
	.string	"varDeclaration"
.LASF253:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF634:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
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
.LASF898:
	.string	"TK_CARETCARET"
.LASF682:
	.string	"IS_I16(value) ((value).type == VAL_I16)"
.LASF426:
	.string	"__USE_MISC"
.LASF471:
	.string	"__glibc_c99_flexarr_available 1"
.LASF1048:
	.string	"_IO_read_base"
.LASF964:
	.string	"TK_ELSIF"
.LASF498:
	.string	"__restrict_arr __restrict"
.LASF323:
	.string	"__k8__ 1"
.LASF18:
	.string	"_LP64 1"
.LASF133:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF131:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF1122:
	.string	"expressionStatement"
.LASF463:
	.string	"__BEGIN_DECLS "
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF992:
	.string	"TK_ENDEXPRESSION"
.LASF675:
	.string	"__need_NULL "
.LASF407:
	.string	"_FEATURES_H 1"
.LASF40:
	.string	"__INTMAX_TYPE__ long int"
.LASF194:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF694:
	.string	"AS_U8(value) ((value).as.u8)"
.LASF403:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF1145:
	.string	"infixRule"
.LASF967:
	.string	"TK_DEF"
.LASF481:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF732:
	.string	"_STDIO_H 1"
.LASF962:
	.string	"TK_CLASS"
.LASF296:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF792:
	.string	"__f64x(x) x ##f64x"
.LASF680:
	.string	"IS_I8(value) ((value).type == VAL_I8)"
.LASF169:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF559:
	.string	"_BITS_TYPESIZES_H 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF445:
	.string	"__GNU_LIBRARY__ 6"
.LASF1078:
	.string	"stdin"
.LASF247:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_MANT_DIG__ 24"
.LASF991:
	.string	"TK_NEWLINE"
.LASF361:
	.string	"___int_ptrdiff_t_h "
.LASF988:
	.string	"TK_STRING"
.LASF844:
	.string	"VAL_U16"
.LASF94:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF1171:
	.string	"emitBytes"
.LASF1113:
	.string	"rules"
.LASF216:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF356:
	.string	"_T_PTRDIFF_ "
.LASF1061:
	.string	"_old_offset"
.LASF871:
	.string	"TK_LEFT_BRACK"
.LASF427:
	.string	"__USE_ATFILE"
.LASF13:
	.string	"__pic__ 2"
.LASF701:
	.string	"AS_F32(value) ((value).as.f32)"
.LASF1130:
	.string	"errorMessage"
.LASF326:
	.string	"__SSE__ 1"
.LASF98:
	.string	"__INTMAX_WIDTH__ 64"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF305:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF293:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF594:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF386:
	.string	"_T_WCHAR_ "
.LASF705:
	.string	"UNDEFINED_VAL ((Value){VAL_UNDEFINED})"
.LASF116:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF980:
	.string	"TK_WHILE"
.LASF1028:
	.string	"lineCount"
.LASF1020:
	.string	"OP_NEGATE"
.LASF114:
	.string	"__INT16_C(c) c"
.LASF301:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF986:
	.string	"TK_LINE"
.LASF818:
	.string	"__uint32_t"
.LASF372:
	.string	"_SIZE_T_ "
.LASF150:
	.string	"__FLT_RADIX__ 2"
.LASF1081:
	.string	"long long int"
.LASF368:
	.string	"_SYS_SIZE_T_H "
.LASF43:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF1133:
	.string	"defineVariable"
.LASF1191:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF193:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1000:
	.string	"OP_CONSTANT_LONG"
.LASF190:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF314:
	.string	"__amd64__ 1"
.LASF89:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF883:
	.string	"TK_DOT"
.LASF14:
	.string	"__PIC__ 2"
.LASF1136:
	.string	"identifiersEqual"
.LASF404:
	.string	"_STDINT_H 1"
.LASF787:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF132:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF748:
	.string	"_IO_USER_LOCK 0x8000"
.LASF302:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF487:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF503:
	.string	"__attribute_copy__"
.LASF212:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF316:
	.string	"__x86_64__ 1"
.LASF388:
	.string	"__WCHAR_T "
.LASF858:
	.string	"double"
.LASF134:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF1037:
	.string	"stack"
.LASF456:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF41:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF1051:
	.string	"_IO_write_end"
.LASF853:
	.string	"ValueType"
.LASF1154:
	.string	"number"
.LASF719:
	.string	"OBJ_VAL(object) ((Value){VAL_OBJ, {.obj = (Obj*)object}})"
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
.LASF974:
	.string	"TK_STRUCT"
.LASF846:
	.string	"VAL_U32"
.LASF1062:
	.string	"_cur_column"
.LASF308:
	.string	"__SSP_STRONG__ 3"
.LASF920:
	.string	"TK_USDULEQ"
.LASF869:
	.string	"TK_LEFT_BRACE"
.LASF773:
	.string	"__f128(x) x ##f128"
.LASF140:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF546:
	.string	"__S32_TYPE int"
.LASF713:
	.string	"U32_VAL(value) ((Value){VAL_U32, {.u32 = value}})"
.LASF795:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF915:
	.string	"TK_COLONUIEQ"
.LASF903:
	.string	"TK_GTGTGT"
.LASF550:
	.string	"__SQUAD_TYPE long int"
.LASF725:
	.string	"AS_CSTRING(value) (((ObjString*)AS_OBJ(value))->chars)"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF117:
	.string	"__INT32_C(c) c"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF70:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF429:
	.string	"__USE_FORTIFY_LEVEL"
.LASF354:
	.string	"_ANSI_STDDEF_H "
.LASF753:
	.string	"EOF (-1)"
.LASF862:
	.string	"count"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF260:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF322:
	.string	"__k8 1"
.LASF1090:
	.string	"PREC_EQUALITY"
.LASF906:
	.string	"TK_COLONCOLON"
.LASF979:
	.string	"TK_WHEN"
.LASF1052:
	.string	"_IO_buf_base"
.LASF769:
	.string	"__HAVE_FLOAT128 1"
.LASF834:
	.string	"ObjString"
.LASF1153:
	.string	"string"
.LASF1016:
	.string	"OP_DIVIDE"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF810:
	.string	"unsigned int"
.LASF469:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF63:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF738:
	.string	"_____fpos64_t_defined 1"
.LASF153:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF221:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF355:
	.string	"_PTRDIFF_T "
.LASF996:
	.string	"Token"
.LASF946:
	.string	"TK_EQU16"
.LASF1143:
	.string	"prefixRule"
.LASF501:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF999:
	.string	"OP_CONSTANT"
.LASF1180:
	.string	"consume"
.LASF243:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF219:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF152:
	.string	"__FLT_DIG__ 6"
.LASF347:
	.string	"_STDBOOL_H "
.LASF1015:
	.string	"OP_MULTIPLY"
.LASF397:
	.string	"_WCHAR_T_DECLARED "
.LASF1124:
	.string	"block"
.LASF147:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF978:
	.string	"TK_TRUE"
.LASF158:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF900:
	.string	"TK_PIPE"
.LASF1011:
	.string	"OP_GREATER"
.LASF1040:
	.string	"globalValues"
.LASF231:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF547:
	.string	"__U32_TYPE unsigned int"
.LASF113:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF357:
	.string	"_T_PTRDIFF "
.LASF88:
	.string	"__LONG_WIDTH__ 64"
.LASF478:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF227:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF998:
	.string	"Scanner"
.LASF467:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
.LASF523:
	.string	"__stub_gtty "
.LASF0:
	.string	"__STDC__ 1"
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
.LASF1089:
	.string	"PREC_LOGIC"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF540:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF921:
	.string	"TK_COLONLLEQ"
.LASF489:
	.string	"__wur "
.LASF466:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF987:
	.string	"TK_STATIC_FIELD"
.LASF714:
	.string	"I64_VAL(value) ((Value){VAL_I64, {.i64 = value}})"
.LASF86:
	.string	"__SHRT_WIDTH__ 16"
.LASF868:
	.string	"TK_RIGHT_PAREN"
.LASF278:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1045:
	.string	"_flags"
.LASF850:
	.string	"VAL_F64"
.LASF349:
	.string	"true 1"
.LASF363:
	.string	"_PTRDIFF_T_DECLARED "
.LASF1024:
	.string	"offset"
.LASF324:
	.string	"__code_model_small__ 1"
.LASF951:
	.string	"TK_EQF32"
.LASF960:
	.string	"TK_BANGEQ"
.LASF563:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF711:
	.string	"U16_VAL(value) ((Value){VAL_U16, {.u16 = value}})"
.LASF295:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF170:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF722:
	.string	"OBJ_TYPE(value) (AS_OBJ(value)->type)"
.LASF1072:
	.string	"_mode"
.LASF570:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF864:
	.string	"ValueArray"
.LASF511:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF1110:
	.string	"Compiler"
.LASF510:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF461:
	.string	"__STRING(x) #x"
.LASF532:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF504:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF95:
	.string	"__INTMAX_C(c) c ## L"
.LASF442:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF1067:
	.string	"_codecvt"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF402:
	.string	"__need_NULL"
.LASF197:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF378:
	.string	"___int_size_t_h "
.LASF1033:
	.string	"Entry"
.LASF385:
	.string	"_WCHAR_T "
.LASF780:
	.string	"__HAVE_FLOAT128X 0"
.LASF848:
	.string	"VAL_U64"
.LASF161:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF264:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF948:
	.string	"TK_EQU32"
.LASF689:
	.string	"IS_F64(value) ((value).type == VAL_F64)"
.LASF362:
	.string	"_GCC_PTRDIFF_T "
.LASF525:
	.string	"__stub_revoke "
.LASF514:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF1193:
	.string	"/mnt/d/coding portfolio/fortissimolanguage"
.LASF779:
	.string	"__HAVE_FLOAT32X 1"
.LASF842:
	.string	"VAL_U8"
.LASF516:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF367:
	.string	"_SIZE_T "
.LASF966:
	.string	"TK_FALSE"
.LASF384:
	.string	"__WCHAR_T__ "
.LASF1149:
	.string	"variable"
.LASF692:
	.string	"AS_BOOL(value) ((value).as.boolean)"
.LASF751:
	.string	"_IONBF 2"
.LASF622:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF1082:
	.string	"previous"
.LASF470:
	.string	"__flexarr []"
.LASF739:
	.string	"____FILE_defined 1"
.LASF859:
	.string	"long double"
.LASF849:
	.string	"VAL_F32"
.LASF535:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X 0"
.LASF572:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF1162:
	.string	"initCompiler"
.LASF263:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF223:
	.string	"__FLT128_DIG__ 33"
.LASF111:
	.string	"__INT8_C(c) c"
.LASF201:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1151:
	.string	"getOp"
.LASF907:
	.string	"TK_COLONEQ"
.LASF167:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF371:
	.string	"__SIZE_T "
.LASF1074:
	.string	"FILE"
.LASF47:
	.string	"__INT32_TYPE__ int"
.LASF1027:
	.string	"constants"
.LASF591:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF195:
	.string	"__FLT32_DIG__ 6"
.LASF650:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF409:
	.string	"__USE_ISOC99"
.LASF580:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF875:
	.string	"TK_LTLPAREN"
.LASF707:
	.string	"BOOL_VAL(value) ((Value){VAL_BOOL, {.boolean = value}})"
.LASF1119:
	.string	"declaration"
.LASF417:
	.string	"__USE_XOPEN_EXTENDED"
.LASF1083:
	.string	"hadError"
.LASF772:
	.string	"__HAVE_FLOAT64X_LONG_DOUBLE 1"
.LASF191:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF292:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF244:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF6:
	.string	"__VERSION__ \"9.3.0\""
.LASF396:
	.string	"_GCC_WCHAR_T "
.LASF983:
	.string	"TK_NUMBER"
.LASF631:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF519:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF724:
	.string	"AS_STRING(value) ((ObjString*)AS_OBJ(value))"
.LASF234:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF607:
	.string	"__intptr_t_defined "
.LASF598:
	.string	"__FD_SETSIZE 1024"
.LASF48:
	.string	"__INT64_TYPE__ long int"
.LASF897:
	.string	"TK_PIPEPIPE"
.LASF215:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1060:
	.string	"_flags2"
.LASF271:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF250:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF455:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF710:
	.string	"I16_VAL(value) ((Value){VAL_I16, {.i16 = value}})"
.LASF933:
	.string	"TK_PLUSEQ"
.LASF905:
	.string	"TK_LTLT"
.LASF755:
	.string	"SEEK_CUR 1"
.LASF75:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF411:
	.string	"__USE_ISOCXX11"
.LASF375:
	.string	"_SIZE_T_DEFINED "
.LASF81:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF1147:
	.string	"unary"
.LASF835:
	.string	"length"
.LASF829:
	.string	"uint16_t"
.LASF990:
	.string	"TK_EOF"
.LASF557:
	.string	"__U64_TYPE unsigned long int"
.LASF1142:
	.string	"parsePrecedence"
.LASF257:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF69:
	.string	"__INTPTR_TYPE__ long int"
.LASF628:
	.string	"UINT_LEAST8_MAX (255)"
.LASF807:
	.string	"long unsigned int"
.LASF985:
	.string	"TK_INTERPOLATION"
.LASF952:
	.string	"TK_EQF64"
.LASF1003:
	.string	"OP_FALSE"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF370:
	.string	"_T_SIZE "
.LASF334:
	.string	"__gnu_linux__ 1"
.LASF721:
	.string	"object_h "
.LASF237:
	.string	"__FLT32X_DIG__ 15"
.LASF432:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF415:
	.string	"__USE_POSIX199506"
.LASF661:
	.string	"INT32_C(c) c"
.LASF783:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF142:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF912:
	.string	"TK_USDUCEQ"
.LASF666:
	.string	"UINT64_C(c) c ## UL"
.LASF799:
	.string	"RAND_MAX 2147483647"
.LASF1070:
	.string	"_freeres_buf"
.LASF317:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF756:
	.string	"SEEK_END 2"
.LASF328:
	.string	"__FXSR__ 1"
.LASF1088:
	.string	"PREC_CONDITIONAL"
.LASF1097:
	.string	"PREC_PRIMARY"
.LASF963:
	.string	"TK_ELSE"
.LASF1116:
	.string	"statement"
.LASF228:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF509:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF309:
	.string	"__SIZEOF_INT128__ 16"
.LASF950:
	.string	"TK_EQU64"
.LASF529:
	.string	"__stub_stty "
.LASF1002:
	.string	"OP_TRUE"
.LASF683:
	.string	"IS_U16(value) ((value).type == VAL_U16)"
.LASF640:
	.string	"UINT_FAST8_MAX (255)"
.LASF568:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF468:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF976:
	.string	"TK_RETURN"
.LASF119:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF556:
	.string	"__S64_TYPE long int"
.LASF373:
	.string	"_BSD_SIZE_T_ "
.LASF813:
	.string	"__uint8_t"
.LASF416:
	.string	"__USE_XOPEN"
.LASF389:
	.string	"_WCHAR_T_ "
.LASF1004:
	.string	"OP_POP"
.LASF1184:
	.string	"errorAtCurrent"
.LASF778:
	.string	"__HAVE_FLOAT64 1"
.LASF767:
	.string	"_STDLIB_H 1"
.LASF1086:
	.string	"PREC_NONE"
.LASF884:
	.string	"TK_DOTDOT"
.LASF618:
	.string	"UINT32_MAX (4294967295U)"
.LASF500:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF84:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF814:
	.string	"__int16_t"
.LASF1055:
	.string	"_IO_backup_base"
.LASF1064:
	.string	"_shortbuf"
.LASF927:
	.string	"TK_COLONDEQ"
.LASF129:
	.string	"__UINT64_C(c) c ## UL"
.LASF573:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF656:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF531:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF673:
	.string	"_STRING_H 1"
.LASF602:
	.string	"_BITS_WCHAR_H 1"
.LASF924:
	.string	"TK_USDULLEQ"
.LASF662:
	.string	"INT64_C(c) c ## L"
.LASF686:
	.string	"IS_I64(value) ((value).type == VAL_I64)"
.LASF925:
	.string	"TK_COLONFEQ"
.LASF173:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF768:
	.string	"_BITS_FLOATN_H "
.LASF258:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF1126:
	.string	"global"
.LASF439:
	.string	"__USE_ISOC99 1"
.LASF537:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF1129:
	.string	"parseVariable"
.LASF822:
	.string	"__off64_t"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF259:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF4:
	.string	"__GNUC_MINOR__ 3"
.LASF1026:
	.string	"code"
.LASF954:
	.string	"TK_EQS"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF702:
	.string	"AS_F64(value) ((value).as.f64)"
.LASF300:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF771:
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
.LASF720:
	.string	"compiler_h "
.LASF383:
	.string	"__wchar_t__ "
.LASF668:
	.string	"UINTMAX_C(c) c ## UL"
.LASF1188:
	.string	"expression"
.LASF597:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF971:
	.string	"TK_LET"
.LASF327:
	.string	"__SSE2__ 1"
.LASF944:
	.string	"TK_EQU8"
.LASF1053:
	.string	"_IO_buf_end"
.LASF583:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF515:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF775:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF494:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF285:
	.string	"__REGISTER_PREFIX__ "
.LASF284:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF166:
	.string	"__DBL_DIG__ 15"
.LASF1039:
	.string	"globalNames"
.LASF603:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF789:
	.string	"__f32(x) x ##f32"
.LASF1179:
	.string	"verify"
.LASF486:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF874:
	.string	"TK_RBRACEGT"
.LASF928:
	.string	"TK_USDDEQ"
.LASF1104:
	.string	"name"
.LASF1192:
	.string	"Compilation/compiler/compiler.c"
.LASF281:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF793:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF1093:
	.string	"PREC_FACTOR"
.LASF217:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF574:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF464:
	.string	"__END_DECLS "
.LASF332:
	.string	"__SEG_GS 1"
.LASF1175:
	.string	"byte"
.LASF1014:
	.string	"OP_SUBTRACT"
.LASF914:
	.string	"TK_USDIEQ"
.LASF761:
	.string	"FOPEN_MAX"
.LASF654:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF320:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF611:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF866:
	.string	"ObjType"
.LASF109:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF989:
	.string	"TK_ERROR"
.LASF1080:
	.string	"stderr"
.LASF329:
	.string	"__SSE_MATH__ 1"
.LASF815:
	.string	"short int"
.LASF1164:
	.string	"jump"
.LASF83:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF125:
	.string	"__UINT16_C(c) c"
.LASF1098:
	.string	"Precedence"
.LASF930:
	.string	"TK_USDLDEQ"
.LASF831:
	.string	"uint64_t"
.LASF506:
	.string	"__WORDSIZE 64"
.LASF852:
	.string	"VAL_OBJ"
.LASF497:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF892:
	.string	"TK_STAR"
.LASF932:
	.string	"TK_USDSEQ"
.LASF659:
	.string	"INT8_C(c) c"
.LASF612:
	.string	"INT8_MAX (127)"
.LASF141:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF592:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF938:
	.string	"TK_AMPEQ"
.LASF879:
	.string	"TK_BANG"
.LASF1043:
	.string	"scanner"
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
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF274:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF1063:
	.string	"_vtable_offset"
.LASF171:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF1174:
	.string	"emitByte"
.LASF359:
	.string	"_PTRDIFF_T_ "
.LASF474:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF715:
	.string	"U64_VAL(value) ((Value){VAL_U64, {.u64 = value}})"
.LASF449:
	.string	"_SYS_CDEFS_H 1"
.LASF895:
	.string	"TK_STARSTAR"
.LASF392:
	.string	"_WCHAR_T_DEFINED "
.LASF737:
	.string	"____mbstate_t_defined 1"
.LASF103:
	.string	"__INT16_MAX__ 0x7fff"
.LASF477:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF552:
	.string	"__SWORD_TYPE long int"
.LASF480:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF839:
	.string	"VAL_NIL"
.LASF87:
	.string	"__INT_WIDTH__ 32"
.LASF366:
	.string	"__SIZE_T__ "
.LASF483:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF222:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF982:
	.string	"TK_NAME"
.LASF649:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF646:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF101:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF745:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF901:
	.string	"TK_CARET"
.LASF870:
	.string	"TK_RIGHT_BRACE"
.LASF1190:
	.string	"makeToken"
.LASF791:
	.string	"__f32x(x) x ##f32x"
.LASF934:
	.string	"TK_MINUSEQ"
.LASF872:
	.string	"TK_RIGHT_BRACK"
.LASF267:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF350:
	.string	"false 0"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF544:
	.string	"__S16_TYPE short int"
.LASF311:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF658:
	.string	"WINT_MAX (4294967295u)"
.LASF704:
	.string	"AS_OBJ(value) ((value).as.obj)"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF437:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF819:
	.string	"__int64_t"
.LASF619:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF391:
	.string	"_WCHAR_T_DEFINED_ "
.LASF728:
	.string	"chunk_h "
.LASF440:
	.string	"__USE_ISOC95 1"
.LASF205:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF663:
	.string	"UINT8_C(c) c"
.LASF1087:
	.string	"PREC_ASSIGNMENT"
.LASF1077:
	.string	"_IO_wide_data"
.LASF52:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF840:
	.string	"VAL_BOOL"
.LASF394:
	.string	"___int_wchar_t_h "
.LASF298:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF770:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF513:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF582:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF496:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF37:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF325:
	.string	"__MMX__ 1"
.LASF1047:
	.string	"_IO_read_end"
.LASF942:
	.string	"TK_EQ"
.LASF939:
	.string	"TK_PIPEEQ"
.LASF1141:
	.string	"endExpression"
.LASF797:
	.string	"__ldiv_t_defined 1"
.LASF958:
	.string	"TK_GTEQ"
.LASF233:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF91:
	.string	"__WINT_WIDTH__ 32"
.LASF560:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF1092:
	.string	"PREC_TERM"
.LASF1035:
	.string	"Table"
.LASF77:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF860:
	.string	"Value"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF398:
	.string	"_BSD_WCHAR_T_"
.LASF695:
	.string	"AS_I16(value) ((value).as.i16)"
.LASF626:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF587:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF1008:
	.string	"OP_SET_LOCAL"
.LASF438:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF562:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF621:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF968:
	.string	"TK_FOR"
.LASF144:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF321:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF1059:
	.string	"_fileno"
.LASF465:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF313:
	.string	"__amd64 1"
.LASF876:
	.string	"TK_RPARENLBRACE"
.LASF188:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF338:
	.string	"__unix__ 1"
.LASF457:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF476:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF395:
	.string	"__INT_WCHAR_T_H "
.LASF1178:
	.string	"verifyPrevious"
.LASF613:
	.string	"INT16_MAX (32767)"
.LASF657:
	.string	"WINT_MIN (0u)"
.LASF1068:
	.string	"_wide_data"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF708:
	.string	"I8_VAL(value) ((Value){VAL_I8, {.i8 = value}})"
.LASF78:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF104:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF1187:
	.string	"token"
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
.LASF851:
	.string	"VAL_F128"
.LASF878:
	.string	"TK_RPARENGT"
.LASF746:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF916:
	.string	"TK_USDUIEQ"
.LASF1101:
	.string	"infix"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF803:
	.string	"__COMPAR_FN_T "
.LASF1146:
	.string	"conditional"
.LASF579:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF605:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF857:
	.string	"float"
.LASF1079:
	.string	"stdout"
.LASF206:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF637:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF229:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF336:
	.string	"__linux__ 1"
.LASF441:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF1181:
	.string	"message"
.LASF444:
	.string	"__GNU_LIBRARY__"
.LASF1099:
	.string	"ParseFn"
.LASF538:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF351:
	.string	"__bool_true_false_are_defined 1"
.LASF671:
	.string	"DEBUG_TRACE_EXECUTION "
.LASF830:
	.string	"uint32_t"
.LASF51:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF174:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF734:
	.string	"__need___va_list"
.LASF1034:
	.string	"entries"
.LASF318:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF865:
	.string	"OBJ_STRING"
.LASF126:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF528:
	.string	"__stub_sstk "
.LASF684:
	.string	"IS_I32(value) ((value).type == VAL_I32)"
.LASF1115:
	.string	"compiler"
.LASF747:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF730:
	.string	"STACK_MAX 256"
.LASF817:
	.string	"__int32_t"
.LASF690:
	.string	"IS_F128(value) ((value).type == VAL_F128)"
.LASF827:
	.string	"int64_t"
.LASF800:
	.string	"EXIT_FAILURE 1"
.LASF956:
	.string	"TK_GT"
.LASF452:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF796:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF569:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF904:
	.string	"TK_GTGT"
.LASF353:
	.string	"_STDDEF_H_ "
.LASF236:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF1029:
	.string	"lineCapacity"
.LASF90:
	.string	"__WCHAR_WIDTH__ 32"
.LASF893:
	.string	"TK_SLASH"
.LASF1017:
	.string	"OP_MODULATE"
.LASF742:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF1031:
	.string	"Chunk"
.LASF940:
	.string	"TK_CARETEQ"
.LASF1155:
	.string	"grouping"
.LASF251:
	.string	"__FLT64X_DIG__ 18"
.LASF837:
	.string	"hash"
.LASF917:
	.string	"TK_COLONLEQ"
.LASF545:
	.string	"__U16_TYPE unsigned short int"
.LASF272:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1121:
	.string	"thenJump"
.LASF1022:
	.string	"OP_JUMP_IF_FALSE"
.LASF143:
	.string	"__INTPTR_WIDTH__ 64"
.LASF335:
	.string	"__linux 1"
.LASF833:
	.string	"next"
.LASF135:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF175:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF606:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF256:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF530:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF929:
	.string	"TK_COLONLDEQ"
.LASF1139:
	.string	"identifier"
.LASF1071:
	.string	"__pad5"
.LASF651:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF750:
	.string	"_IOLBF 1"
.LASF716:
	.string	"F32_VAL(value) ((Value){VAL_F32, {.f32 = value}})"
.LASF165:
	.string	"__DBL_MANT_DIG__ 53"
.LASF667:
	.string	"INTMAX_C(c) c ## L"
.LASF1103:
	.string	"ParseRule"
.LASF137:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF499:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF76:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF128:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF759:
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
