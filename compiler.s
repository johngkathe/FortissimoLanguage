	.file	"compiler.c"
	.text
.Ltext0:
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
.LFB1:
	.file 1 "Compilation/compiler/compiler.c"
	.loc 1 62 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 63 12
	movq	compilingChunk(%rip), %rax
	.loc 1 64 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
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
.LFB2:
	.loc 1 66 55
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
	.loc 1 67 14
	movzbl	49+parser(%rip), %eax
	.loc 1 67 7
	testb	%al, %al
	jne	.L8
	.loc 1 68 22
	movb	$1, 49+parser(%rip)
	.loc 1 69 44
	movq	-8(%rbp), %rax
	movzwl	18(%rax), %eax
	.loc 1 69 5
	movswl	%ax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 71 13
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 71 7
	cmpl	$120, %eax
	jne	.L6
	.loc 1 72 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	jmp	.L7
.L6:
	.loc 1 73 21
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 73 15
	cmpl	$119, %eax
	je	.L7
	.loc 1 75 9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 75 43
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 1 75 9
	movswl	%ax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L7:
	.loc 1 78 5
	movq	stderr(%rip), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 79 21
	movb	$1, 48+parser(%rip)
	jmp	.L3
.L8:
	.loc 1 67 26
	nop
.L3:
	.loc 1 80 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	errorAt, .-errorAt
	.type	error, @function
error:
.LFB3:
	.loc 1 82 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 83 5
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	24+parser(%rip), %rdi
	call	errorAt
	.loc 1 84 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	error, .-error
	.type	errorAtCurrent, @function
errorAtCurrent:
.LFB4:
	.loc 1 86 48
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 87 5
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	parser(%rip), %rdi
	call	errorAt
	.loc 1 88 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	errorAtCurrent, .-errorAtCurrent
	.type	advance, @function
advance:
.LFB5:
	.loc 1 90 22
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 90 22
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 91 21
	movq	parser(%rip), %rax
	movq	8+parser(%rip), %rdx
	movq	%rax, 24+parser(%rip)
	movq	%rdx, 32+parser(%rip)
	movq	16+parser(%rip), %rax
	movq	%rax, 40+parser(%rip)
.L14:
	.loc 1 94 26
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
	.loc 1 95 26
	movl	parser(%rip), %eax
	.loc 1 95 11
	cmpl	$119, %eax
	jne	.L17
	.loc 1 96 38
	movq	8+parser(%rip), %rax
	.loc 1 96 9
	movq	%rax, %rdi
	call	errorAtCurrent
	.loc 1 94 24
	jmp	.L14
.L17:
	.loc 1 95 9
	nop
	.loc 1 98 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	advance, .-advance
	.type	consume, @function
consume:
.LFB6:
	.loc 1 100 57
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
	.loc 1 101 22
	movl	parser(%rip), %eax
	.loc 1 101 7
	cmpl	%eax, -4(%rbp)
	jne	.L19
	.loc 1 102 9
	movl	$0, %eax
	call	advance
	.loc 1 103 9
	jmp	.L18
.L19:
	.loc 1 106 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	errorAtCurrent
.L18:
	.loc 1 107 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	consume, .-consume
	.type	verify, @function
verify:
.LFB7:
	.loc 1 109 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 110 26
	movl	parser(%rip), %eax
	.loc 1 110 32
	cmpl	%eax, -4(%rbp)
	sete	%al
	.loc 1 111 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	verify, .-verify
	.type	match, @function
match:
.LFB8:
	.loc 1 113 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 114 9
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	verify
	.loc 1 114 8
	xorl	$1, %eax
	.loc 1 114 7
	testb	%al, %al
	je	.L24
	.loc 1 114 29 discriminator 1
	movl	$0, %eax
	jmp	.L25
.L24:
	.loc 1 115 5
	movl	$0, %eax
	call	advance
	.loc 1 116 11
	movl	$1, %eax
.L25:
	.loc 1 117 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	match, .-match
	.type	emitByte, @function
emitByte:
.LFB9:
	.loc 1 119 35
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
	.loc 1 120 53
	movzwl	42+parser(%rip), %eax
	.loc 1 120 5
	movswl	%ax, %r12d
	movzbl	-20(%rbp), %ebx
	movl	$0, %eax
	call	currentChunk
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	writeChunk@PLT
	.loc 1 121 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	emitByte, .-emitByte
	.type	emitBytes, @function
emitBytes:
.LFB10:
	.loc 1 123 52
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
	.loc 1 124 5
	movzbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	emitByte
	.loc 1 125 5
	movzbl	-8(%rbp), %eax
	movl	%eax, %edi
	call	emitByte
	.loc 1 126 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	emitBytes, .-emitBytes
	.type	emitJump, @function
emitJump:
.LFB11:
	.loc 1 128 41
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
	.loc 1 129 5
	movzbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	emitByte
	.loc 1 131 5
	movl	$255, %edi
	call	emitByte
	.loc 1 132 5
	movl	$255, %edi
	call	emitByte
	.loc 1 133 12
	movl	$0, %eax
	call	currentChunk
	.loc 1 133 26
	movzwl	(%rax), %eax
	cwtl
	.loc 1 133 34
	subl	$2, %eax
	.loc 1 134 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	emitJump, .-emitJump
	.type	emitReturn, @function
emitReturn:
.LFB12:
	.loc 1 136 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 137 5
	movl	$24, %edi
	call	emitByte
	.loc 1 138 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	emitReturn, .-emitReturn
	.section	.rodata
	.align 8
.LC4:
	.string	"Too many constants in one chunk."
	.text
	.type	makeConstant, @function
makeConstant:
.LFB13:
	.loc 1 140 41
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 141 20
	movl	$0, %eax
	call	currentChunk
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	addConstant@PLT
	addq	$32, %rsp
	.loc 1 141 9
	cwtl
	movl	%eax, -4(%rbp)
	.loc 1 142 7
	cmpl	$255, -4(%rbp)
	jle	.L32
	.loc 1 143 9
	leaq	.LC4(%rip), %rdi
	call	error
	.loc 1 144 16
	movl	$0, %eax
	jmp	.L33
.L32:
	.loc 1 146 12
	movl	-4(%rbp), %eax
.L33:
	.loc 1 147 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	makeConstant, .-makeConstant
	.type	emitConstant, @function
emitConstant:
.LFB14:
	.loc 1 149 38
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 150 28
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	makeConstant
	addq	$32, %rsp
	.loc 1 150 5
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	emitBytes
	.loc 1 151 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	emitConstant, .-emitConstant
	.type	patchJump, @function
patchJump:
.LFB15:
	.loc 1 153 38
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
	.loc 1 155 20
	movl	$0, %eax
	call	currentChunk
	.loc 1 155 34
	movzwl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 155 42
	movzwl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 155 51
	subl	$2, %eax
	.loc 1 155 13
	movw	%ax, -10(%rbp)
	.loc 1 161 34
	movzwl	-10(%rbp), %eax
	sarw	$8, %ax
	movl	%eax, %ebx
	.loc 1 161 5
	movl	$0, %eax
	call	currentChunk
	.loc 1 161 19
	movq	8(%rax), %rdx
	.loc 1 161 25
	movswq	-28(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 161 34
	movl	%ebx, %edx
	movb	%dl, (%rax)
	.loc 1 162 5
	movl	$0, %eax
	call	currentChunk
	.loc 1 162 19
	movq	8(%rax), %rax
	.loc 1 162 25
	movswq	-28(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	.loc 1 162 38
	movzwl	-10(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 163 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	patchJump, .-patchJump
	.type	initCompiler, @function
initCompiler:
.LFB16:
	.loc 1 165 45
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 166 26
	movq	-8(%rbp), %rax
	movw	$0, 8192(%rax)
	.loc 1 167 26
	movq	-8(%rbp), %rax
	movw	$0, 8194(%rax)
	.loc 1 168 13
	movq	-8(%rbp), %rax
	movq	%rax, current(%rip)
	.loc 1 169 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	initCompiler, .-initCompiler
	.section	.rodata
.LC5:
	.string	"code"
	.text
	.type	endCompiler, @function
endCompiler:
.LFB17:
	.loc 1 171 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 172 5
	movl	$0, %eax
	call	emitReturn
	.loc 1 174 15
	movzbl	48+parser(%rip), %eax
	.loc 1 174 8
	xorl	$1, %eax
	.loc 1 174 7
	testb	%al, %al
	je	.L39
	.loc 1 175 9
	movl	$0, %eax
	call	currentChunk
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	disassembleChunk@PLT
.L39:
	.loc 1 177 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	endCompiler, .-endCompiler
	.type	beginScope, @function
beginScope:
.LFB18:
	.loc 1 179 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 180 12
	movq	current(%rip), %rax
	movzwl	8194(%rax), %edx
	.loc 1 180 24
	addl	$1, %edx
	movw	%dx, 8194(%rax)
	.loc 1 181 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	beginScope, .-beginScope
	.type	endScope, @function
endScope:
.LFB19:
	.loc 1 183 23
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 184 12
	movq	current(%rip), %rax
	movzwl	8194(%rax), %edx
	.loc 1 184 24
	subl	$1, %edx
	movw	%dx, 8194(%rax)
	.loc 1 186 10
	jmp	.L42
.L44:
	.loc 1 187 9
	movl	$5, %edi
	call	emitByte
	.loc 1 188 16
	movq	current(%rip), %rax
	movzwl	8192(%rax), %edx
	.loc 1 188 28
	subl	$1, %edx
	movw	%dx, 8192(%rax)
.L42:
	.loc 1 186 18
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	.loc 1 186 10
	testw	%ax, %ax
	jle	.L45
	.loc 1 186 45 discriminator 1
	movq	current(%rip), %rdx
	.loc 1 186 61 discriminator 1
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	cwtl
	.loc 1 186 74 discriminator 1
	subl	$1, %eax
	.loc 1 186 78 discriminator 1
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	addq	$24, %rax
	movzwl	(%rax), %edx
	.loc 1 186 94 discriminator 1
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 1 186 35 discriminator 1
	cmpw	%ax, %dx
	jg	.L44
.L45:
	.loc 1 190 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	endScope, .-endScope
	.type	binary, @function
binary:
.LFB20:
	.loc 1 201 34
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
	.loc 1 202 15
	movl	24+parser(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 1 203 23
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	getRule
	movq	%rax, -8(%rbp)
	.loc 1 204 38
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 204 51
	addl	$1, %eax
	.loc 1 204 5
	movl	%eax, %edi
	call	parsePrecedence
	movl	-12(%rbp), %eax
	subl	$23, %eax
	cmpl	$69, %eax
	ja	.L62
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L49(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L49(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L49:
	.long	.L60-.L49
	.long	.L59-.L49
	.long	.L58-.L49
	.long	.L57-.L49
	.long	.L56-.L49
	.long	.L55-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L62-.L49
	.long	.L54-.L49
	.long	.L53-.L49
	.long	.L52-.L49
	.long	.L51-.L49
	.long	.L50-.L49
	.long	.L48-.L49
	.text
.L50:
	.loc 1 207 26
	movl	$11, %edi
	call	emitByte
	.loc 1 207 9
	jmp	.L61
.L48:
	.loc 1 208 28
	movl	$20, %esi
	movl	$11, %edi
	call	emitBytes
	.loc 1 208 9
	jmp	.L61
.L54:
	.loc 1 209 24
	movl	$13, %edi
	call	emitByte
	.loc 1 209 9
	jmp	.L61
.L53:
	.loc 1 210 24
	movl	$12, %edi
	call	emitByte
	.loc 1 210 9
	jmp	.L61
.L52:
	.loc 1 211 26
	movl	$20, %esi
	movl	$12, %edi
	call	emitBytes
	.loc 1 211 9
	jmp	.L61
.L51:
	.loc 1 212 26
	movl	$20, %esi
	movl	$13, %edi
	call	emitBytes
	.loc 1 212 9
	jmp	.L61
.L60:
	.loc 1 213 26
	movl	$14, %edi
	call	emitByte
	.loc 1 213 9
	jmp	.L61
.L59:
	.loc 1 214 27
	movl	$15, %edi
	call	emitByte
	.loc 1 214 9
	jmp	.L61
.L58:
	.loc 1 215 26
	movl	$16, %edi
	call	emitByte
	.loc 1 215 9
	jmp	.L61
.L57:
	.loc 1 216 27
	movl	$17, %edi
	call	emitByte
	.loc 1 216 9
	jmp	.L61
.L56:
	.loc 1 217 25
	movl	$18, %edi
	call	emitByte
	.loc 1 217 9
	jmp	.L61
.L55:
	.loc 1 218 30
	movl	$19, %edi
	call	emitByte
	.loc 1 218 9
	jmp	.L61
.L62:
	.loc 1 219 9
	nop
.L61:
	.loc 1 221 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	binary, .-binary
	.type	literal, @function
literal:
.LFB21:
	.loc 1 223 35
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
	.loc 1 224 28
	movl	24+parser(%rip), %eax
	.loc 1 224 5
	cmpl	$108, %eax
	je	.L64
	cmpl	$108, %eax
	ja	.L70
	cmpl	$103, %eax
	je	.L66
	cmpl	$103, %eax
	ja	.L70
	cmpl	$12, %eax
	je	.L67
	cmpl	$97, %eax
	je	.L68
	.loc 1 229 18
	jmp	.L70
.L67:
	.loc 1 225 26
	movl	$20, %edi
	call	emitByte
	.loc 1 225 9
	jmp	.L63
.L68:
	.loc 1 226 27
	movl	$4, %edi
	call	emitByte
	.loc 1 226 9
	jmp	.L63
.L66:
	.loc 1 227 25
	movl	$2, %edi
	call	emitByte
	.loc 1 227 9
	jmp	.L63
.L64:
	.loc 1 228 26
	movl	$3, %edi
	call	emitByte
	.loc 1 228 9
	jmp	.L63
.L70:
	.loc 1 229 18
	nop
.L63:
	.loc 1 231 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	literal, .-literal
	.section	.rodata
.LC6:
	.string	"Expect ')' after expression."
	.text
	.type	grouping, @function
grouping:
.LFB22:
	.loc 1 233 36
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
	.loc 1 234 5
	movl	$0, %eax
	call	expression
	.loc 1 235 5
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	call	consume
	.loc 1 236 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	grouping, .-grouping
	.type	number, @function
number:
.LFB23:
	.loc 1 238 34
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
	.loc 1 239 42
	movq	32+parser(%rip), %rax
	.loc 1 239 20
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtod@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	.loc 1 240 26
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$12, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 1 240 5
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	call	emitConstant
	addq	$32, %rsp
	.loc 1 241 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	number, .-number
	.type	string, @function
string:
.LFB24:
	.loc 1 243 34
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
	.loc 1 244 26
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$14, -32(%rbp)
	.loc 1 244 103
	movzwl	40+parser(%rip), %eax
	.loc 1 244 111
	subl	$2, %eax
	.loc 1 244 50
	cwtl
	.loc 1 244 76
	movq	32+parser(%rip), %rdx
	.loc 1 244 50
	addq	$1, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	copyString@PLT
	.loc 1 244 26
	movq	%rax, -16(%rbp)
	.loc 1 244 5
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	call	emitConstant
	addq	$32, %rsp
	.loc 1 245 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	string, .-string
	.type	namedVariable, @function
namedVariable:
.LFB25:
	.loc 1 247 53
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
	.loc 1 250 19
	movq	current(%rip), %rax
	leaq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	resolveLocal
	.loc 1 250 13
	movw	%ax, -2(%rbp)
	.loc 1 251 7
	cmpw	$-1, -2(%rbp)
	je	.L75
	.loc 1 252 15
	movb	$9, -3(%rbp)
	.loc 1 253 15
	movb	$10, -4(%rbp)
	jmp	.L76
.L75:
	.loc 1 255 15
	leaq	16(%rbp), %rdi
	call	identifierConstant
	.loc 1 255 13
	movzbl	%al, %eax
	movw	%ax, -2(%rbp)
	.loc 1 256 15
	movb	$7, -3(%rbp)
	.loc 1 257 15
	movb	$8, -4(%rbp)
.L76:
	.loc 1 260 7
	cmpb	$0, -20(%rbp)
	je	.L77
	.loc 1 260 21 discriminator 1
	movl	$1, %edi
	call	match
	.loc 1 260 18 discriminator 1
	testb	%al, %al
	je	.L77
	.loc 1 261 9
	movl	$0, %eax
	call	expression
	.loc 1 262 26
	movzwl	-2(%rbp), %eax
	.loc 1 262 9
	movzbl	%al, %edx
	movzbl	-3(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	emitBytes
	jmp	.L78
.L77:
	.loc 1 264 26
	movzwl	-2(%rbp), %eax
	.loc 1 264 9
	movzbl	%al, %edx
	movzbl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	emitBytes
	.loc 1 266 1
	nop
.L78:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	namedVariable, .-namedVariable
	.type	variable, @function
variable:
.LFB26:
	.loc 1 268 36
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
	.loc 1 269 5
	movzbl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	40+parser(%rip)
	pushq	32+parser(%rip)
	pushq	24+parser(%rip)
	movl	%eax, %edi
	call	namedVariable
	addq	$32, %rsp
	.loc 1 270 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	variable, .-variable
	.type	unary, @function
unary:
.LFB27:
	.loc 1 272 33
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
	.loc 1 273 15
	movl	24+parser(%rip), %eax
	movl	%eax, -4(%rbp)
	.loc 1 276 5
	movl	$9, %edi
	call	parsePrecedence
	.loc 1 279 5
	cmpl	$12, -4(%rbp)
	je	.L81
	cmpl	$24, -4(%rbp)
	je	.L82
	.loc 1 282 18
	jmp	.L80
.L81:
	.loc 1 280 26
	movl	$20, %edi
	call	emitByte
	.loc 1 280 9
	jmp	.L80
.L82:
	.loc 1 281 27
	movl	$21, %edi
	call	emitByte
	.loc 1 281 9
	nop
.L80:
	.loc 1 284 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	unary, .-unary
	.section	.rodata
	.align 8
.LC7:
	.string	"Expect ':' after then branch of conditional operator."
	.text
	.type	conditional, @function
conditional:
.LFB28:
	.loc 1 286 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 288 5
	movl	$2, %edi
	call	parsePrecedence
	.loc 1 290 5
	leaq	.LC7(%rip), %rsi
	movl	$20, %edi
	call	consume
	.loc 1 293 5
	movl	$1, %edi
	call	parsePrecedence
	.loc 1 294 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	conditional, .-conditional
	.globl	rules
	.section	.data.rel.local,"aw"
	.align 32
	.type	rules, @object
	.size	rules, 2904
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
	.zero	816
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
	.zero	24
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
.LFB29:
	.loc 1 377 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	.loc 1 378 5
	movl	$0, %eax
	call	advance
	.loc 1 379 26
	movl	24+parser(%rip), %eax
	movl	%eax, %edi
	call	getRule
	.loc 1 379 13
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 380 7
	cmpq	$0, -16(%rbp)
	jne	.L87
	.loc 1 381 9
	leaq	.LC8(%rip), %rdi
	call	error
	.loc 1 382 9
	jmp	.L86
.L87:
	.loc 1 385 9
	cmpl	$1, -36(%rbp)
	setbe	%al
	movb	%al, -17(%rbp)
	.loc 1 386 5
	movzbl	-17(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL0:
	.loc 1 388 10
	jmp	.L89
.L90:
.LBB2:
	.loc 1 389 9
	movl	$0, %eax
	call	advance
	.loc 1 390 29
	movl	24+parser(%rip), %eax
	movl	%eax, %edi
	call	getRule
	.loc 1 390 17
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 391 9
	movzbl	-17(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL1:
.L89:
.LBE2:
	.loc 1 388 25
	movl	parser(%rip), %eax
	movl	%eax, %edi
	call	getRule
	.loc 1 388 53
	movl	16(%rax), %eax
	.loc 1 388 10
	cmpl	%eax, -36(%rbp)
	jbe	.L90
	.loc 1 394 7
	cmpb	$0, -17(%rbp)
	je	.L86
	.loc 1 394 21 discriminator 1
	movl	$39, %edi
	call	match
	.loc 1 394 18 discriminator 1
	testb	%al, %al
	je	.L86
	.loc 1 395 9
	leaq	.LC9(%rip), %rdi
	call	error
.L86:
	.loc 1 397 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	parsePrecedence, .-parsePrecedence
	.type	endExpression, @function
endExpression:
.LFB30:
	.loc 1 399 28
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 400 22
	movl	parser(%rip), %eax
	.loc 1 400 7
	cmpl	$19, %eax
	jne	.L91
	.loc 1 401 9
	movl	$0, %eax
	call	advance
	.loc 1 402 9
	nop
.L91:
	.loc 1 405 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	endExpression, .-endExpression
	.type	identifierConstant, @function
identifierConstant:
.LFB31:
	.loc 1 407 47
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	.loc 1 407 47
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 409 57
	movq	-136(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 1 409 29
	movswl	%ax, %edx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	copyString@PLT
	movq	%rax, -120(%rbp)
	.loc 1 410 8
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	8216+vm(%rip), %rdi
	call	tableGet@PLT
	.loc 1 410 7
	testb	%al, %al
	je	.L94
	.loc 1 411 36
	movsd	-96(%rbp), %xmm0
	.loc 1 411 16
	cvttsd2sil	%xmm0, %eax
	jmp	.L96
.L94:
	.loc 1 414 48
	movzwl	8242+vm(%rip), %eax
	.loc 1 414 13
	movb	%al, -121(%rbp)
	.loc 1 415 47
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	.loc 1 415 5
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	leaq	8240+vm(%rip), %rdi
	call	writeValueArray@PLT
	addq	$32, %rsp
	.loc 1 417 51
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$12, -48(%rbp)
	.loc 1 417 72
	movzbl	-121(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	.loc 1 417 51
	movsd	%xmm0, -32(%rbp)
	.loc 1 417 5
	movq	-120(%rbp), %rax
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rsi
	leaq	8216+vm(%rip), %rdi
	call	tableSet@PLT
	addq	$32, %rsp
	.loc 1 418 12
	movzbl	-121(%rbp), %eax
.L96:
	.loc 1 419 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L97
	.loc 1 419 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	identifierConstant, .-identifierConstant
	.type	identifiersEqual, @function
identifiersEqual:
.LFB32:
	.loc 1 421 48 is_stmt 1
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
	.loc 1 422 9
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %edx
	.loc 1 422 22
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 1 422 7
	cmpw	%ax, %dx
	je	.L99
	.loc 1 422 38 discriminator 1
	movl	$0, %eax
	jmp	.L100
.L99:
	.loc 1 423 40
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 1 423 12
	movswq	%ax, %rdx
	.loc 1 423 30
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 423 20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 423 12
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 1 423 50
	testl	%eax, %eax
	sete	%al
.L100:
	.loc 1 424 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	identifiersEqual, .-identifiersEqual
	.section	.rodata
	.align 8
.LC10:
	.string	"Cannot read local variable in its own initializer."
	.text
	.type	resolveLocal, @function
resolveLocal:
.LFB33:
	.loc 1 426 57
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
	.loc 1 427 31
	movq	-24(%rbp), %rax
	movzwl	8192(%rax), %eax
	cwtl
	.loc 1 427 44
	subl	$1, %eax
	.loc 1 427 19
	cltq
	movq	%rax, -16(%rbp)
	.loc 1 427 5
	jmp	.L102
.L106:
.LBB4:
	.loc 1 428 16
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 429 12
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	identifiersEqual
	.loc 1 429 11
	testb	%al, %al
	je	.L103
	.loc 1 430 21
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	.loc 1 430 15
	cmpw	$-1, %ax
	jne	.L104
	.loc 1 431 17
	leaq	.LC10(%rip), %rdi
	call	error
.L104:
	.loc 1 433 20
	movq	-16(%rbp), %rax
	jmp	.L105
.L103:
.LBE4:
	.loc 1 427 58 discriminator 2
	subq	$1, -16(%rbp)
.L102:
	.loc 1 427 5 discriminator 1
	cmpq	$0, -16(%rbp)
	jns	.L106
.LBE3:
	.loc 1 436 12
	movl	$-1, %eax
.L105:
	.loc 1 437 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	resolveLocal, .-resolveLocal
	.section	.rodata
	.align 8
.LC11:
	.string	"Too many local variables in function."
	.text
	.type	addLocal, @function
addLocal:
.LFB34:
	.loc 1 439 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 440 15
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	.loc 1 440 7
	cmpw	$256, %ax
	jne	.L108
	.loc 1 441 9
	leaq	.LC11(%rip), %rdi
	call	error
	.loc 1 442 9
	jmp	.L107
.L108:
	.loc 1 445 28
	movq	current(%rip), %rcx
	.loc 1 445 44
	movq	current(%rip), %rax
	movzwl	8192(%rax), %edx
	.loc 1 445 56
	movl	%edx, %esi
	addl	$1, %esi
	movw	%si, 8192(%rax)
	movswl	%dx, %eax
	.loc 1 445 12
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 446 17
	movq	-8(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 1 448 18
	movq	-8(%rbp), %rax
	movw	$-1, 24(%rax)
.L107:
	.loc 1 449 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	addLocal, .-addLocal
	.section	.rodata
	.align 8
.LC12:
	.string	"Already a variable with this name in this scope."
	.text
	.type	declareVariable, @function
declareVariable:
.LFB35:
	.loc 1 451 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 452 15
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 1 452 7
	testw	%ax, %ax
	je	.L118
	.loc 1 454 12
	leaq	24+parser(%rip), %rax
	movq	%rax, -16(%rbp)
.LBB5:
	.loc 1 456 30
	movq	current(%rip), %rax
	movzwl	8192(%rax), %eax
	cwtl
	.loc 1 456 43
	subl	$1, %eax
	.loc 1 456 19
	cltq
	movq	%rax, -24(%rbp)
	.loc 1 456 5
	jmp	.L113
.L117:
.LBB6:
	.loc 1 457 32
	movq	current(%rip), %rax
	.loc 1 457 16
	movq	-24(%rbp), %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 458 17
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	.loc 1 458 11
	cmpw	$-1, %ax
	je	.L114
	.loc 1 458 39 discriminator 1
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %edx
	.loc 1 458 56 discriminator 1
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 1 458 31 discriminator 1
	cmpw	%ax, %dx
	jl	.L119
.L114:
	.loc 1 461 12
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	identifiersEqual
	.loc 1 461 11
	testb	%al, %al
	je	.L116
	.loc 1 462 13
	leaq	.LC12(%rip), %rdi
	call	error
.L116:
.LBE6:
	.loc 1 456 57 discriminator 2
	subq	$1, -24(%rbp)
.L113:
	.loc 1 456 5 discriminator 1
	cmpq	$0, -24(%rbp)
	jns	.L117
	jmp	.L115
.L119:
.LBB7:
	.loc 1 459 13
	nop
.L115:
.LBE7:
.LBE5:
	.loc 1 465 5
	subq	$8, %rsp
	movq	-16(%rbp), %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	call	addLocal
	addq	$32, %rsp
	jmp	.L110
.L118:
	.loc 1 452 34
	nop
.L110:
	.loc 1 466 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	declareVariable, .-declareVariable
	.type	parseVariable, @function
parseVariable:
.LFB36:
	.loc 1 468 57
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 469 5
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$114, %edi
	call	consume
	.loc 1 471 5
	movl	$0, %eax
	call	declareVariable
	.loc 1 472 15
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 1 472 7
	testw	%ax, %ax
	jle	.L121
	.loc 1 472 40 discriminator 1
	movl	$0, %eax
	jmp	.L122
.L121:
	.loc 1 474 12
	leaq	24+parser(%rip), %rdi
	call	identifierConstant
.L122:
	.loc 1 475 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	parseVariable, .-parseVariable
	.type	markInitialized, @function
markInitialized:
.LFB37:
	.loc 1 477 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 478 61
	movq	current(%rip), %rax
	.loc 1 478 12
	movq	current(%rip), %rcx
	.loc 1 478 28
	movq	current(%rip), %rdx
	movzwl	8192(%rdx), %edx
	movswl	%dx, %edx
	.loc 1 478 41
	subl	$1, %edx
	.loc 1 478 61
	movzwl	8194(%rax), %eax
	.loc 1 478 52
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rcx, %rdx
	addq	$24, %rdx
	movw	%ax, (%rdx)
	.loc 1 479 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	markInitialized, .-markInitialized
	.type	defineVariable, @function
defineVariable:
.LFB38:
	.loc 1 481 43
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
	.loc 1 482 15
	movq	current(%rip), %rax
	movzwl	8194(%rax), %eax
	.loc 1 482 7
	testw	%ax, %ax
	jle	.L125
	.loc 1 483 9
	movl	$0, %eax
	call	markInitialized
	.loc 1 484 9
	jmp	.L124
.L125:
	.loc 1 487 5
	movzbl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$6, %edi
	call	emitBytes
.L124:
	.loc 1 488 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	defineVariable, .-defineVariable
	.type	getRule, @function
getRule:
.LFB39:
	.loc 1 490 42
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 491 12
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	rules(%rip), %rdx
	addq	%rdx, %rax
	.loc 1 492 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	getRule, .-getRule
	.type	expression, @function
expression:
.LFB40:
	.loc 1 494 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 495 5
	movl	$1, %edi
	call	parsePrecedence
	.loc 1 496 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	expression, .-expression
	.section	.rodata
.LC13:
	.string	"Expected '}>' after block."
	.text
	.type	block, @function
block:
.LFB41:
	.loc 1 498 20
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 499 10
	jmp	.L131
.L133:
	.loc 1 500 9
	movl	$0, %eax
	call	declaration
.L131:
	.loc 1 499 12
	movl	$7, %edi
	call	verify
	.loc 1 499 11
	xorl	$1, %eax
	.loc 1 499 10
	testb	%al, %al
	je	.L132
	.loc 1 499 39 discriminator 1
	movl	$120, %edi
	call	verify
	.loc 1 499 38 discriminator 1
	xorl	$1, %eax
	.loc 1 499 35 discriminator 1
	testb	%al, %al
	jne	.L133
.L132:
	.loc 1 503 5
	leaq	.LC13(%rip), %rsi
	movl	$7, %edi
	call	consume
	.loc 1 504 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
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
	.type	letDeclaration, @function
letDeclaration:
.LFB42:
	.loc 1 506 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 507 22
	leaq	.LC14(%rip), %rdi
	call	parseVariable
	movb	%al, -1(%rbp)
	.loc 1 517 8
	movl	$39, %edi
	call	match
	.loc 1 517 7
	testb	%al, %al
	je	.L135
	.loc 1 518 9
	movl	$0, %eax
	call	expression
	.loc 1 520 9
	leaq	.LC15(%rip), %rsi
	movl	$121, %edi
	call	consume
	.loc 1 521 9
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	defineVariable
	.loc 1 527 1
	jmp	.L137
.L135:
	.loc 1 522 15
	movl	$74, %edi
	call	match
	.loc 1 522 14
	testb	%al, %al
	je	.L137
	.loc 1 523 9
	movl	$1, %edi
	call	variable
	.loc 1 524 9
	leaq	.LC16(%rip), %rsi
	movl	$121, %edi
	call	consume
	.loc 1 525 9
	movl	$5, %edi
	call	emitByte
.L137:
	.loc 1 527 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	letDeclaration, .-letDeclaration
	.type	expressionStatement, @function
expressionStatement:
.LFB43:
	.loc 1 529 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 530 5
	movl	$0, %eax
	call	expression
	.loc 1 531 5
	leaq	.LC16(%rip), %rsi
	movl	$121, %edi
	call	consume
	.loc 1 532 5
	movl	$5, %edi
	call	emitByte
	.loc 1 533 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	expressionStatement, .-expressionStatement
	.section	.rodata
.LC17:
	.string	"Expected '(' after 'if'"
.LC18:
	.string	"Expected ')' after condition."
	.text
	.type	ifStatement, @function
ifStatement:
.LFB44:
	.loc 1 535 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 536 5
	leaq	.LC17(%rip), %rsi
	movl	$0, %edi
	call	consume
	.loc 1 537 5
	movl	$0, %eax
	call	expression
	.loc 1 538 5
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	call	consume
	.loc 1 540 24
	movl	$23, %edi
	call	emitJump
	.loc 1 540 13
	movw	%ax, -2(%rbp)
	.loc 1 541 5
	movl	$0, %eax
	call	statement
	.loc 1 543 5
	movswl	-2(%rbp), %eax
	movl	%eax, %edi
	call	patchJump
	.loc 1 544 5
	movl	$0, %eax
	call	statement
	.loc 1 545 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ifStatement, .-ifStatement
	.type	putsStatement, @function
putsStatement:
.LFB45:
	.loc 1 547 28
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 548 5
	movl	$0, %eax
	call	expression
	.loc 1 549 5
	leaq	.LC16(%rip), %rsi
	movl	$121, %edi
	call	consume
	.loc 1 550 5
	movl	$22, %edi
	call	emitByte
	.loc 1 551 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	putsStatement, .-putsStatement
	.type	synchronize, @function
synchronize:
.LFB46:
	.loc 1 553 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 554 22
	movb	$0, 49+parser(%rip)
	.loc 1 556 10
	jmp	.L142
.L148:
	.loc 1 557 27
	movl	24+parser(%rip), %eax
	.loc 1 557 11
	cmpl	$121, %eax
	je	.L149
	.loc 1 558 30
	movl	parser(%rip), %eax
	subl	$94, %eax
	cmpl	$16, %eax
	ja	.L145
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L147(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L147(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L147:
	.long	.L150-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L150-.L147
	.long	.L150-.L147
	.long	.L150-.L147
	.long	.L145-.L147
	.long	.L150-.L147
	.long	.L145-.L147
	.long	.L150-.L147
	.long	.L145-.L147
	.long	.L150-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L150-.L147
	.text
.L145:
	.loc 1 571 9
	movl	$0, %eax
	call	advance
.L142:
	.loc 1 556 25
	movl	parser(%rip), %eax
	.loc 1 556 10
	cmpl	$120, %eax
	jne	.L148
	jmp	.L141
.L149:
	.loc 1 557 51
	nop
	jmp	.L141
.L150:
	.loc 1 567 17
	nop
.L141:
	.loc 1 573 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	synchronize, .-synchronize
	.type	declaration, @function
declaration:
.LFB47:
	.loc 1 575 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 576 22
	leaq	.LC14(%rip), %rdi
	call	parseVariable
	movb	%al, -1(%rbp)
	.loc 1 578 8
	movl	$39, %edi
	call	match
	.loc 1 578 7
	testb	%al, %al
	je	.L152
	.loc 1 579 9
	movl	$0, %eax
	call	expression
	.loc 1 580 9
	leaq	.LC15(%rip), %rsi
	movl	$121, %edi
	call	consume
	.loc 1 581 9
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	defineVariable
	jmp	.L153
.L152:
	.loc 1 583 9
	movl	$1, %edi
	call	variable
	.loc 1 584 9
	leaq	.LC16(%rip), %rsi
	movl	$121, %edi
	call	consume
	.loc 1 585 9
	movl	$5, %edi
	call	emitByte
.L153:
	.loc 1 587 14
	movzbl	49+parser(%rip), %eax
	.loc 1 587 7
	testb	%al, %al
	je	.L155
	.loc 1 587 26 discriminator 1
	movl	$0, %eax
	call	synchronize
.L155:
	.loc 1 588 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	declaration, .-declaration
	.type	statement, @function
statement:
.LFB48:
	.loc 1 590 24
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 591 14
	movzbl	49+parser(%rip), %eax
	.loc 1 591 7
	testb	%al, %al
	je	.L157
	.loc 1 591 26 discriminator 1
	movl	$0, %eax
	call	synchronize
.L157:
	.loc 1 592 26
	movl	parser(%rip), %eax
	.loc 1 592 5
	cmpl	$120, %eax
	je	.L164
	cmpl	$120, %eax
	ja	.L159
	cmpl	$104, %eax
	je	.L160
	cmpl	$104, %eax
	ja	.L159
	cmpl	$6, %eax
	je	.L161
	cmpl	$100, %eax
	je	.L162
	jmp	.L159
.L160:
	.loc 1 594 13
	movl	$0, %eax
	call	advance
	.loc 1 595 13
	movl	$0, %eax
	call	putsStatement
	.loc 1 596 13
	jmp	.L163
.L162:
	.loc 1 599 13
	movl	$0, %eax
	call	advance
	.loc 1 600 13
	movl	$0, %eax
	call	ifStatement
	.loc 1 601 13
	jmp	.L163
.L161:
	.loc 1 604 13
	movl	$0, %eax
	call	advance
	.loc 1 605 13
	movl	$0, %eax
	call	beginScope
	.loc 1 606 13
	movl	$0, %eax
	call	block
	.loc 1 607 13
	movl	$0, %eax
	call	endScope
	.loc 1 608 13
	jmp	.L163
.L159:
	.loc 1 612 13
	movl	$0, %eax
	call	declaration
	.loc 1 613 13
	jmp	.L163
.L164:
	.loc 1 610 9
	nop
.L163:
	.loc 1 616 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	statement, .-statement
	.globl	compile
	.type	compile, @function
compile:
.LFB49:
	.loc 1 638 48
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
	.loc 1 638 48
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 639 5
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	call	initScanner@PLT
	.loc 1 641 5
	leaq	-8208(%rbp), %rax
	movq	%rax, %rdi
	call	initCompiler
	.loc 1 642 20
	movq	-8224(%rbp), %rax
	movq	%rax, compilingChunk(%rip)
	.loc 1 644 21
	movb	$0, 48+parser(%rip)
	.loc 1 645 22
	movb	$0, 49+parser(%rip)
	.loc 1 647 5
	movl	$0, %eax
	call	advance
	.loc 1 649 10
	jmp	.L166
.L167:
	.loc 1 651 9
	movl	$0, %eax
	call	statement
.L166:
	.loc 1 649 12
	movl	$120, %edi
	call	match
	.loc 1 649 11
	xorl	$1, %eax
	.loc 1 649 10
	testb	%al, %al
	jne	.L167
	.loc 1 654 5
	movl	$0, %eax
	call	endCompiler
	.loc 1 655 19
	movzbl	48+parser(%rip), %eax
	movzbl	%al, %eax
	.loc 1 655 5
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 1 655 12
	andl	$1, %eax
	.loc 1 656 1
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L169
	call	__stack_chk_fail@PLT
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	compile, .-compile
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 6 "Compilation/compiler/../../Language/object/object.h"
	.file 7 "Compilation/compiler/../../Bytecode/value/value.h"
	.file 8 "Compilation/compiler/../../Tokenization/scanner/scanner.h"
	.file 9 "Compilation/compiler/../../VirtualMachine/vm/../../Bytecode/chunk/chunk.h"
	.file 10 "Compilation/compiler/../../VirtualMachine/vm/../../Language/table/table.h"
	.file 11 "Compilation/compiler/../../VirtualMachine/vm/vm.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 14 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17a7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1183
	.byte	0xc
	.long	.LASF1184
	.long	.LASF1185
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.long	.LASF804
	.byte	0x2
	.byte	0x8f
	.byte	0x12
	.long	0x3d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF806
	.uleb128 0x2
	.long	.LASF805
	.byte	0x2
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
	.byte	0x3
	.byte	0x25
	.byte	0x15
	.long	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF812
	.uleb128 0x2
	.long	.LASF813
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x5e
	.uleb128 0x2
	.long	.LASF814
	.byte	0x3
	.byte	0x27
	.byte	0x1a
	.long	0x9e
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF815
	.uleb128 0x2
	.long	.LASF816
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x65
	.uleb128 0x2
	.long	.LASF817
	.byte	0x3
	.byte	0x29
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.long	.LASF818
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x6c
	.uleb128 0x2
	.long	.LASF819
	.byte	0x3
	.byte	0x2c
	.byte	0x19
	.long	0x3d
	.uleb128 0x2
	.long	.LASF820
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x50
	.uleb128 0x2
	.long	.LASF821
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x3d
	.uleb128 0x2
	.long	.LASF822
	.byte	0x3
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
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x73
	.uleb128 0x7
	.long	0x10d
	.uleb128 0x2
	.long	.LASF825
	.byte	0x4
	.byte	0x19
	.byte	0x13
	.long	0x92
	.uleb128 0x2
	.long	.LASF826
	.byte	0x4
	.byte	0x1a
	.byte	0x13
	.long	0xb1
	.uleb128 0x2
	.long	.LASF827
	.byte	0x4
	.byte	0x1b
	.byte	0x13
	.long	0xc9
	.uleb128 0x2
	.long	.LASF828
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.long	0x86
	.uleb128 0x2
	.long	.LASF829
	.byte	0x5
	.byte	0x19
	.byte	0x14
	.long	0xa5
	.uleb128 0x2
	.long	.LASF830
	.byte	0x5
	.byte	0x1a
	.byte	0x14
	.long	0xbd
	.uleb128 0x2
	.long	.LASF831
	.byte	0x5
	.byte	0x1b
	.byte	0x14
	.long	0xd5
	.uleb128 0x8
	.string	"Obj"
	.byte	0x7
	.byte	0x9
	.byte	0x14
	.long	0x17e
	.uleb128 0x9
	.string	"Obj"
	.byte	0x10
	.byte	0x6
	.byte	0x14
	.byte	0x8
	.long	0x1a6
	.uleb128 0xa
	.long	.LASF832
	.byte	0x6
	.byte	0x15
	.byte	0xd
	.long	0x3b6
	.byte	0
	.uleb128 0xa
	.long	.LASF833
	.byte	0x6
	.byte	0x16
	.byte	0x11
	.long	0x3c2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF834
	.byte	0x7
	.byte	0xa
	.byte	0x1a
	.long	0x1b2
	.uleb128 0xb
	.long	.LASF834
	.byte	0x28
	.byte	0x6
	.byte	0x19
	.byte	0x8
	.long	0x1f4
	.uleb128 0xc
	.string	"obj"
	.byte	0x6
	.byte	0x1a
	.byte	0x9
	.long	0x172
	.byte	0
	.uleb128 0xa
	.long	.LASF835
	.byte	0x6
	.byte	0x1b
	.byte	0xd
	.long	0x11e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF836
	.byte	0x6
	.byte	0x1c
	.byte	0xd
	.long	0x3c8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF837
	.byte	0x6
	.byte	0x1d
	.byte	0xe
	.long	0x15a
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x7
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
	.byte	0x7
	.byte	0x48
	.byte	0x3
	.long	0x1f4
	.uleb128 0xf
	.byte	0x10
	.byte	0x7
	.byte	0x4c
	.byte	0x5
	.long	0x30d
	.uleb128 0x10
	.long	.LASF854
	.byte	0x7
	.byte	0x4d
	.byte	0xd
	.long	0x30d
	.uleb128 0x11
	.string	"ch"
	.byte	0x7
	.byte	0x4e
	.byte	0x10
	.long	0x10d
	.uleb128 0x11
	.string	"uCh"
	.byte	0x7
	.byte	0x4f
	.byte	0x11
	.long	0x142
	.uleb128 0x11
	.string	"in"
	.byte	0x7
	.byte	0x50
	.byte	0x11
	.long	0x11e
	.uleb128 0x11
	.string	"uIn"
	.byte	0x7
	.byte	0x51
	.byte	0x12
	.long	0x14e
	.uleb128 0x11
	.string	"lng"
	.byte	0x7
	.byte	0x52
	.byte	0x11
	.long	0x12a
	.uleb128 0x10
	.long	.LASF855
	.byte	0x7
	.byte	0x53
	.byte	0x12
	.long	0x15a
	.uleb128 0x11
	.string	"flt"
	.byte	0x7
	.byte	0x54
	.byte	0xf
	.long	0x314
	.uleb128 0x10
	.long	.LASF856
	.byte	0x7
	.byte	0x55
	.byte	0x11
	.long	0x136
	.uleb128 0x10
	.long	.LASF857
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.long	0x166
	.uleb128 0x11
	.string	"dbl"
	.byte	0x7
	.byte	0x57
	.byte	0x10
	.long	0x31b
	.uleb128 0x10
	.long	.LASF858
	.byte	0x7
	.byte	0x58
	.byte	0x15
	.long	0x322
	.uleb128 0x11
	.string	"obj"
	.byte	0x7
	.byte	0x59
	.byte	0xe
	.long	0x329
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF859
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF860
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF861
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF862
	.uleb128 0x6
	.byte	0x8
	.long	0x172
	.uleb128 0x12
	.byte	0x20
	.byte	0x7
	.byte	0x4a
	.byte	0x9
	.long	0x352
	.uleb128 0xa
	.long	.LASF832
	.byte	0x7
	.byte	0x4b
	.byte	0xf
	.long	0x25d
	.byte	0
	.uleb128 0xc
	.string	"as"
	.byte	0x7
	.byte	0x5a
	.byte	0x7
	.long	0x269
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF863
	.byte	0x7
	.byte	0x5b
	.byte	0x3
	.long	0x32f
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x8e
	.byte	0x9
	.long	0x38f
	.uleb128 0xa
	.long	.LASF864
	.byte	0x7
	.byte	0x8f
	.byte	0xd
	.long	0x11e
	.byte	0
	.uleb128 0xa
	.long	.LASF865
	.byte	0x7
	.byte	0x90
	.byte	0xd
	.long	0x11e
	.byte	0x2
	.uleb128 0xa
	.long	.LASF866
	.byte	0x7
	.byte	0x91
	.byte	0xc
	.long	0x38f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x352
	.uleb128 0x2
	.long	.LASF867
	.byte	0x7
	.byte	0x92
	.byte	0x3
	.long	0x35e
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x6
	.byte	0x10
	.byte	0xe
	.long	0x3b6
	.uleb128 0xe
	.long	.LASF868
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF869
	.byte	0x6
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
	.byte	0x8
	.byte	0x6
	.byte	0xe
	.long	0x6bf
	.uleb128 0xe
	.long	.LASF870
	.byte	0
	.uleb128 0xe
	.long	.LASF871
	.byte	0x1
	.uleb128 0xe
	.long	.LASF872
	.byte	0x2
	.uleb128 0xe
	.long	.LASF873
	.byte	0x3
	.uleb128 0xe
	.long	.LASF874
	.byte	0x4
	.uleb128 0xe
	.long	.LASF875
	.byte	0x5
	.uleb128 0xe
	.long	.LASF876
	.byte	0x6
	.uleb128 0xe
	.long	.LASF877
	.byte	0x7
	.uleb128 0xe
	.long	.LASF878
	.byte	0x8
	.uleb128 0xe
	.long	.LASF879
	.byte	0x9
	.uleb128 0xe
	.long	.LASF880
	.byte	0xa
	.uleb128 0xe
	.long	.LASF881
	.byte	0xb
	.uleb128 0xe
	.long	.LASF882
	.byte	0xc
	.uleb128 0xe
	.long	.LASF883
	.byte	0xd
	.uleb128 0xe
	.long	.LASF884
	.byte	0xe
	.uleb128 0xe
	.long	.LASF885
	.byte	0xf
	.uleb128 0xe
	.long	.LASF886
	.byte	0x10
	.uleb128 0xe
	.long	.LASF887
	.byte	0x11
	.uleb128 0xe
	.long	.LASF888
	.byte	0x12
	.uleb128 0xe
	.long	.LASF889
	.byte	0x13
	.uleb128 0xe
	.long	.LASF890
	.byte	0x14
	.uleb128 0xe
	.long	.LASF891
	.byte	0x15
	.uleb128 0xe
	.long	.LASF892
	.byte	0x16
	.uleb128 0xe
	.long	.LASF893
	.byte	0x17
	.uleb128 0xe
	.long	.LASF894
	.byte	0x18
	.uleb128 0xe
	.long	.LASF895
	.byte	0x19
	.uleb128 0xe
	.long	.LASF896
	.byte	0x1a
	.uleb128 0xe
	.long	.LASF897
	.byte	0x1b
	.uleb128 0xe
	.long	.LASF898
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF899
	.byte	0x1d
	.uleb128 0xe
	.long	.LASF900
	.byte	0x1e
	.uleb128 0xe
	.long	.LASF901
	.byte	0x1f
	.uleb128 0xe
	.long	.LASF902
	.byte	0x20
	.uleb128 0xe
	.long	.LASF903
	.byte	0x21
	.uleb128 0xe
	.long	.LASF904
	.byte	0x22
	.uleb128 0xe
	.long	.LASF905
	.byte	0x23
	.uleb128 0xe
	.long	.LASF906
	.byte	0x24
	.uleb128 0xe
	.long	.LASF907
	.byte	0x25
	.uleb128 0xe
	.long	.LASF908
	.byte	0x26
	.uleb128 0xe
	.long	.LASF909
	.byte	0x27
	.uleb128 0xe
	.long	.LASF910
	.byte	0x28
	.uleb128 0xe
	.long	.LASF911
	.byte	0x29
	.uleb128 0xe
	.long	.LASF912
	.byte	0x2a
	.uleb128 0xe
	.long	.LASF913
	.byte	0x2b
	.uleb128 0xe
	.long	.LASF914
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF915
	.byte	0x2d
	.uleb128 0xe
	.long	.LASF916
	.byte	0x2e
	.uleb128 0xe
	.long	.LASF917
	.byte	0x2f
	.uleb128 0xe
	.long	.LASF918
	.byte	0x30
	.uleb128 0xe
	.long	.LASF919
	.byte	0x31
	.uleb128 0xe
	.long	.LASF920
	.byte	0x32
	.uleb128 0xe
	.long	.LASF921
	.byte	0x33
	.uleb128 0xe
	.long	.LASF922
	.byte	0x34
	.uleb128 0xe
	.long	.LASF923
	.byte	0x35
	.uleb128 0xe
	.long	.LASF924
	.byte	0x36
	.uleb128 0xe
	.long	.LASF925
	.byte	0x37
	.uleb128 0xe
	.long	.LASF926
	.byte	0x38
	.uleb128 0xe
	.long	.LASF927
	.byte	0x39
	.uleb128 0xe
	.long	.LASF928
	.byte	0x3a
	.uleb128 0xe
	.long	.LASF929
	.byte	0x3b
	.uleb128 0xe
	.long	.LASF930
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF931
	.byte	0x3d
	.uleb128 0xe
	.long	.LASF932
	.byte	0x3e
	.uleb128 0xe
	.long	.LASF933
	.byte	0x3f
	.uleb128 0xe
	.long	.LASF934
	.byte	0x40
	.uleb128 0xe
	.long	.LASF935
	.byte	0x41
	.uleb128 0xe
	.long	.LASF936
	.byte	0x42
	.uleb128 0xe
	.long	.LASF937
	.byte	0x43
	.uleb128 0xe
	.long	.LASF938
	.byte	0x44
	.uleb128 0xe
	.long	.LASF939
	.byte	0x45
	.uleb128 0xe
	.long	.LASF940
	.byte	0x46
	.uleb128 0xe
	.long	.LASF941
	.byte	0x47
	.uleb128 0xe
	.long	.LASF942
	.byte	0x48
	.uleb128 0xe
	.long	.LASF943
	.byte	0x49
	.uleb128 0xe
	.long	.LASF944
	.byte	0x4a
	.uleb128 0xe
	.long	.LASF945
	.byte	0x4b
	.uleb128 0xe
	.long	.LASF946
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF947
	.byte	0x4d
	.uleb128 0xe
	.long	.LASF948
	.byte	0x4e
	.uleb128 0xe
	.long	.LASF949
	.byte	0x4f
	.uleb128 0xe
	.long	.LASF950
	.byte	0x50
	.uleb128 0xe
	.long	.LASF951
	.byte	0x51
	.uleb128 0xe
	.long	.LASF952
	.byte	0x52
	.uleb128 0xe
	.long	.LASF953
	.byte	0x53
	.uleb128 0xe
	.long	.LASF954
	.byte	0x54
	.uleb128 0xe
	.long	.LASF955
	.byte	0x55
	.uleb128 0xe
	.long	.LASF956
	.byte	0x56
	.uleb128 0xe
	.long	.LASF957
	.byte	0x57
	.uleb128 0xe
	.long	.LASF958
	.byte	0x58
	.uleb128 0xe
	.long	.LASF959
	.byte	0x59
	.uleb128 0xe
	.long	.LASF960
	.byte	0x5a
	.uleb128 0xe
	.long	.LASF961
	.byte	0x5b
	.uleb128 0xe
	.long	.LASF962
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF963
	.byte	0x5d
	.uleb128 0xe
	.long	.LASF964
	.byte	0x5e
	.uleb128 0xe
	.long	.LASF965
	.byte	0x5f
	.uleb128 0xe
	.long	.LASF966
	.byte	0x60
	.uleb128 0xe
	.long	.LASF967
	.byte	0x61
	.uleb128 0xe
	.long	.LASF968
	.byte	0x62
	.uleb128 0xe
	.long	.LASF969
	.byte	0x63
	.uleb128 0xe
	.long	.LASF970
	.byte	0x64
	.uleb128 0xe
	.long	.LASF971
	.byte	0x65
	.uleb128 0xe
	.long	.LASF972
	.byte	0x66
	.uleb128 0xe
	.long	.LASF973
	.byte	0x67
	.uleb128 0xe
	.long	.LASF974
	.byte	0x68
	.uleb128 0xe
	.long	.LASF975
	.byte	0x69
	.uleb128 0xe
	.long	.LASF976
	.byte	0x6a
	.uleb128 0xe
	.long	.LASF977
	.byte	0x6b
	.uleb128 0xe
	.long	.LASF978
	.byte	0x6c
	.uleb128 0xe
	.long	.LASF979
	.byte	0x6d
	.uleb128 0xe
	.long	.LASF980
	.byte	0x6e
	.uleb128 0xe
	.long	.LASF981
	.byte	0x6f
	.uleb128 0xe
	.long	.LASF982
	.byte	0x70
	.uleb128 0xe
	.long	.LASF983
	.byte	0x71
	.uleb128 0xe
	.long	.LASF984
	.byte	0x72
	.uleb128 0xe
	.long	.LASF985
	.byte	0x73
	.uleb128 0xe
	.long	.LASF986
	.byte	0x74
	.uleb128 0xe
	.long	.LASF987
	.byte	0x75
	.uleb128 0xe
	.long	.LASF988
	.byte	0x76
	.uleb128 0xe
	.long	.LASF989
	.byte	0x77
	.uleb128 0xe
	.long	.LASF990
	.byte	0x78
	.uleb128 0xe
	.long	.LASF991
	.byte	0x79
	.uleb128 0xe
	.long	.LASF992
	.byte	0x7a
	.byte	0
	.uleb128 0x2
	.long	.LASF993
	.byte	0x8
	.byte	0x9c
	.byte	0x3
	.long	0x3ce
	.uleb128 0x12
	.byte	0x18
	.byte	0x8
	.byte	0x9e
	.byte	0x9
	.long	0x709
	.uleb128 0xa
	.long	.LASF832
	.byte	0x8
	.byte	0x9f
	.byte	0xf
	.long	0x6bf
	.byte	0
	.uleb128 0xa
	.long	.LASF994
	.byte	0x8
	.byte	0xa0
	.byte	0x13
	.long	0x709
	.byte	0x8
	.uleb128 0xa
	.long	.LASF835
	.byte	0x8
	.byte	0xa1
	.byte	0xd
	.long	0x11e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF995
	.byte	0x8
	.byte	0xa2
	.byte	0xd
	.long	0x11e
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x119
	.uleb128 0x2
	.long	.LASF996
	.byte	0x8
	.byte	0xa3
	.byte	0x3
	.long	0x6cb
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x9
	.byte	0x9
	.byte	0xe
	.long	0x7c0
	.uleb128 0xe
	.long	.LASF997
	.byte	0
	.uleb128 0xe
	.long	.LASF998
	.byte	0x1
	.uleb128 0xe
	.long	.LASF999
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1000
	.byte	0x3
	.uleb128 0xe
	.long	.LASF1001
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1002
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1003
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1004
	.byte	0x7
	.uleb128 0xe
	.long	.LASF1005
	.byte	0x8
	.uleb128 0xe
	.long	.LASF1006
	.byte	0x9
	.uleb128 0xe
	.long	.LASF1007
	.byte	0xa
	.uleb128 0xe
	.long	.LASF1008
	.byte	0xb
	.uleb128 0xe
	.long	.LASF1009
	.byte	0xc
	.uleb128 0xe
	.long	.LASF1010
	.byte	0xd
	.uleb128 0xe
	.long	.LASF1011
	.byte	0xe
	.uleb128 0xe
	.long	.LASF1012
	.byte	0xf
	.uleb128 0xe
	.long	.LASF1013
	.byte	0x10
	.uleb128 0xe
	.long	.LASF1014
	.byte	0x11
	.uleb128 0xe
	.long	.LASF1015
	.byte	0x12
	.uleb128 0xe
	.long	.LASF1016
	.byte	0x13
	.uleb128 0xe
	.long	.LASF1017
	.byte	0x14
	.uleb128 0xe
	.long	.LASF1018
	.byte	0x15
	.uleb128 0xe
	.long	.LASF1019
	.byte	0x16
	.uleb128 0xe
	.long	.LASF1020
	.byte	0x17
	.uleb128 0xe
	.long	.LASF1021
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.byte	0x25
	.byte	0x9
	.long	0x7e4
	.uleb128 0xa
	.long	.LASF1022
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
	.long	.LASF1023
	.byte	0x9
	.byte	0x28
	.byte	0x3
	.long	0x7c0
	.uleb128 0x12
	.byte	0x30
	.byte	0x9
	.byte	0x2a
	.byte	0x9
	.long	0x855
	.uleb128 0xa
	.long	.LASF865
	.byte	0x9
	.byte	0x2b
	.byte	0xd
	.long	0x11e
	.byte	0
	.uleb128 0xa
	.long	.LASF864
	.byte	0x9
	.byte	0x2c
	.byte	0xd
	.long	0x11e
	.byte	0x2
	.uleb128 0xa
	.long	.LASF1024
	.byte	0x9
	.byte	0x2d
	.byte	0xe
	.long	0x855
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1025
	.byte	0x9
	.byte	0x2e
	.byte	0x10
	.long	0x395
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1026
	.byte	0x9
	.byte	0x2f
	.byte	0xd
	.long	0x11e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF1027
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x11e
	.byte	0x22
	.uleb128 0xa
	.long	.LASF1028
	.byte	0x9
	.byte	0x31
	.byte	0x10
	.long	0x85b
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x142
	.uleb128 0x6
	.byte	0x8
	.long	0x7e4
	.uleb128 0x2
	.long	.LASF1029
	.byte	0x9
	.byte	0x32
	.byte	0x3
	.long	0x7f0
	.uleb128 0x12
	.byte	0x30
	.byte	0xa
	.byte	0xa
	.byte	0x9
	.long	0x891
	.uleb128 0xc
	.string	"key"
	.byte	0xa
	.byte	0xb
	.byte	0x10
	.long	0x891
	.byte	0
	.uleb128 0xa
	.long	.LASF1030
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
	.long	.LASF1031
	.byte	0xa
	.byte	0xd
	.byte	0x3
	.long	0x86d
	.uleb128 0x12
	.byte	0x18
	.byte	0xa
	.byte	0xf
	.byte	0x9
	.long	0x8d4
	.uleb128 0xa
	.long	.LASF865
	.byte	0xa
	.byte	0x10
	.byte	0xc
	.long	0x44
	.byte	0
	.uleb128 0xa
	.long	.LASF864
	.byte	0xa
	.byte	0x11
	.byte	0xc
	.long	0x44
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1032
	.byte	0xa
	.byte	0x12
	.byte	0xc
	.long	0x8d4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x897
	.uleb128 0x2
	.long	.LASF1033
	.byte	0xa
	.byte	0x13
	.byte	0x3
	.long	0x8a3
	.uleb128 0x13
	.value	0x2060
	.byte	0xb
	.byte	0xc
	.byte	0x9
	.long	0x95d
	.uleb128 0xa
	.long	.LASF1034
	.byte	0xb
	.byte	0xd
	.byte	0xc
	.long	0x95d
	.byte	0
	.uleb128 0xc
	.string	"ip"
	.byte	0xb
	.byte	0xe
	.byte	0xe
	.long	0x855
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1035
	.byte	0xb
	.byte	0xf
	.byte	0xb
	.long	0x963
	.byte	0x10
	.uleb128 0x14
	.long	.LASF1036
	.byte	0xb
	.byte	0x10
	.byte	0xc
	.long	0x38f
	.value	0x2010
	.uleb128 0x14
	.long	.LASF1037
	.byte	0xb
	.byte	0x12
	.byte	0xb
	.long	0x8da
	.value	0x2018
	.uleb128 0x14
	.long	.LASF1038
	.byte	0xb
	.byte	0x13
	.byte	0x10
	.long	0x395
	.value	0x2030
	.uleb128 0x14
	.long	.LASF1039
	.byte	0xb
	.byte	0x14
	.byte	0xb
	.long	0x8da
	.value	0x2040
	.uleb128 0x14
	.long	.LASF1040
	.byte	0xb
	.byte	0x15
	.byte	0xa
	.long	0x329
	.value	0x2058
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x861
	.uleb128 0x15
	.long	0x352
	.long	0x973
	.uleb128 0x16
	.long	0x50
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.string	"VM"
	.byte	0xb
	.byte	0x16
	.byte	0x3
	.long	0x8e6
	.uleb128 0x17
	.string	"vm"
	.byte	0xb
	.byte	0x1e
	.byte	0xb
	.long	0x973
	.uleb128 0xb
	.long	.LASF1041
	.byte	0xd8
	.byte	0xc
	.byte	0x31
	.byte	0x8
	.long	0xb10
	.uleb128 0xa
	.long	.LASF1042
	.byte	0xc
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF1043
	.byte	0xc
	.byte	0x36
	.byte	0x9
	.long	0xfb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1044
	.byte	0xc
	.byte	0x37
	.byte	0x9
	.long	0xfb
	.byte	0x10
	.uleb128 0xa
	.long	.LASF1045
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.long	0xfb
	.byte	0x18
	.uleb128 0xa
	.long	.LASF1046
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF1047
	.byte	0xc
	.byte	0x3a
	.byte	0x9
	.long	0xfb
	.byte	0x28
	.uleb128 0xa
	.long	.LASF1048
	.byte	0xc
	.byte	0x3b
	.byte	0x9
	.long	0xfb
	.byte	0x30
	.uleb128 0xa
	.long	.LASF1049
	.byte	0xc
	.byte	0x3c
	.byte	0x9
	.long	0xfb
	.byte	0x38
	.uleb128 0xa
	.long	.LASF1050
	.byte	0xc
	.byte	0x3d
	.byte	0x9
	.long	0xfb
	.byte	0x40
	.uleb128 0xa
	.long	.LASF1051
	.byte	0xc
	.byte	0x40
	.byte	0x9
	.long	0xfb
	.byte	0x48
	.uleb128 0xa
	.long	.LASF1052
	.byte	0xc
	.byte	0x41
	.byte	0x9
	.long	0xfb
	.byte	0x50
	.uleb128 0xa
	.long	.LASF1053
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.long	0xfb
	.byte	0x58
	.uleb128 0xa
	.long	.LASF1054
	.byte	0xc
	.byte	0x44
	.byte	0x16
	.long	0xb29
	.byte	0x60
	.uleb128 0xa
	.long	.LASF1055
	.byte	0xc
	.byte	0x46
	.byte	0x14
	.long	0xb2f
	.byte	0x68
	.uleb128 0xa
	.long	.LASF1056
	.byte	0xc
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xa
	.long	.LASF1057
	.byte	0xc
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xa
	.long	.LASF1058
	.byte	0xc
	.byte	0x4a
	.byte	0xb
	.long	0xe1
	.byte	0x78
	.uleb128 0xa
	.long	.LASF1059
	.byte	0xc
	.byte	0x4d
	.byte	0x12
	.long	0x65
	.byte	0x80
	.uleb128 0xa
	.long	.LASF1060
	.byte	0xc
	.byte	0x4e
	.byte	0xf
	.long	0x7f
	.byte	0x82
	.uleb128 0xa
	.long	.LASF1061
	.byte	0xc
	.byte	0x4f
	.byte	0x8
	.long	0xb35
	.byte	0x83
	.uleb128 0xa
	.long	.LASF1062
	.byte	0xc
	.byte	0x51
	.byte	0xf
	.long	0xb45
	.byte	0x88
	.uleb128 0xa
	.long	.LASF1063
	.byte	0xc
	.byte	0x59
	.byte	0xd
	.long	0xed
	.byte	0x90
	.uleb128 0xa
	.long	.LASF1064
	.byte	0xc
	.byte	0x5b
	.byte	0x17
	.long	0xb50
	.byte	0x98
	.uleb128 0xa
	.long	.LASF1065
	.byte	0xc
	.byte	0x5c
	.byte	0x19
	.long	0xb5b
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF1066
	.byte	0xc
	.byte	0x5d
	.byte	0x14
	.long	0xb2f
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF1067
	.byte	0xc
	.byte	0x5e
	.byte	0x9
	.long	0xf9
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF1068
	.byte	0xc
	.byte	0x5f
	.byte	0xa
	.long	0x44
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF1069
	.byte	0xc
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF1070
	.byte	0xc
	.byte	0x62
	.byte	0x8
	.long	0xb61
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF1071
	.byte	0xd
	.byte	0x7
	.byte	0x19
	.long	0x989
	.uleb128 0x18
	.long	.LASF1186
	.byte	0xc
	.byte	0x2b
	.byte	0xe
	.uleb128 0x19
	.long	.LASF1072
	.uleb128 0x6
	.byte	0x8
	.long	0xb24
	.uleb128 0x6
	.byte	0x8
	.long	0x989
	.uleb128 0x15
	.long	0x101
	.long	0xb45
	.uleb128 0x16
	.long	0x50
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb1c
	.uleb128 0x19
	.long	.LASF1073
	.uleb128 0x6
	.byte	0x8
	.long	0xb4b
	.uleb128 0x19
	.long	.LASF1074
	.uleb128 0x6
	.byte	0x8
	.long	0xb56
	.uleb128 0x15
	.long	0x101
	.long	0xb71
	.uleb128 0x16
	.long	0x50
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.long	.LASF1075
	.byte	0xe
	.byte	0x89
	.byte	0xe
	.long	0xb7d
	.uleb128 0x6
	.byte	0x8
	.long	0xb10
	.uleb128 0x1a
	.long	.LASF1076
	.byte	0xe
	.byte	0x8a
	.byte	0xe
	.long	0xb7d
	.uleb128 0x1a
	.long	.LASF1077
	.byte	0xe
	.byte	0x8b
	.byte	0xe
	.long	0xb7d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1078
	.uleb128 0x12
	.byte	0x38
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.long	0xbe0
	.uleb128 0xa
	.long	.LASF1079
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.long	0x70f
	.byte	0
	.uleb128 0xa
	.long	.LASF1080
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.long	0x70f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF1081
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.long	0x30d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF1082
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.long	0x30d
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.long	.LASF1083
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.long	0xba2
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.long	0xc43
	.uleb128 0xe
	.long	.LASF1084
	.byte	0
	.uleb128 0xe
	.long	.LASF1085
	.byte	0x1
	.uleb128 0xe
	.long	.LASF1086
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1087
	.byte	0x3
	.uleb128 0xe
	.long	.LASF1088
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1089
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1090
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1091
	.byte	0x7
	.uleb128 0xe
	.long	.LASF1092
	.byte	0x8
	.uleb128 0xe
	.long	.LASF1093
	.byte	0x9
	.uleb128 0xe
	.long	.LASF1094
	.byte	0xa
	.uleb128 0xe
	.long	.LASF1095
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF1096
	.byte	0x1
	.byte	0x25
	.byte	0x3
	.long	0xbec
	.uleb128 0x2
	.long	.LASF1097
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.long	0xc5b
	.uleb128 0x6
	.byte	0x8
	.long	0xc61
	.uleb128 0x1b
	.long	0xc6c
	.uleb128 0x1c
	.long	0x30d
	.byte	0
	.uleb128 0x12
	.byte	0x18
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.long	0xc9d
	.uleb128 0xa
	.long	.LASF1098
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.long	0xc4f
	.byte	0
	.uleb128 0xa
	.long	.LASF1099
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.long	0xc4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF1100
	.byte	0x1
	.byte	0x2c
	.byte	0x10
	.long	0xc43
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF1101
	.byte	0x1
	.byte	0x2d
	.byte	0x3
	.long	0xc6c
	.uleb128 0x12
	.byte	0x20
	.byte	0x1
	.byte	0x2f
	.byte	0x9
	.long	0xccd
	.uleb128 0xa
	.long	.LASF1102
	.byte	0x1
	.byte	0x30
	.byte	0xb
	.long	0x70f
	.byte	0
	.uleb128 0xa
	.long	.LASF1103
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.long	0x11e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF1104
	.byte	0x1
	.byte	0x32
	.byte	0x3
	.long	0xca9
	.uleb128 0x13
	.value	0x2008
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.long	0xd0d
	.uleb128 0xa
	.long	.LASF1105
	.byte	0x1
	.byte	0x35
	.byte	0xb
	.long	0xd0d
	.byte	0
	.uleb128 0x14
	.long	.LASF1106
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.long	0x11e
	.value	0x2000
	.uleb128 0x14
	.long	.LASF1107
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.long	0x11e
	.value	0x2002
	.byte	0
	.uleb128 0x15
	.long	0xccd
	.long	0xd1d
	.uleb128 0x16
	.long	0x50
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF1108
	.byte	0x1
	.byte	0x38
	.byte	0x3
	.long	0xcd9
	.uleb128 0x1d
	.long	.LASF1109
	.byte	0x1
	.byte	0x3a
	.byte	0x8
	.long	0xbe0
	.uleb128 0x9
	.byte	0x3
	.quad	parser
	.uleb128 0x1d
	.long	.LASF1079
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.long	0xd55
	.uleb128 0x9
	.byte	0x3
	.quad	current
	.uleb128 0x6
	.byte	0x8
	.long	0xd1d
	.uleb128 0x1d
	.long	.LASF1110
	.byte	0x1
	.byte	0x3c
	.byte	0x8
	.long	0x95d
	.uleb128 0x9
	.byte	0x3
	.quad	compilingChunk
	.uleb128 0x15
	.long	0xc9d
	.long	0xd81
	.uleb128 0x16
	.long	0x50
	.byte	0x78
	.byte	0
	.uleb128 0x1e
	.long	.LASF1111
	.byte	0x1
	.value	0x128
	.byte	0xb
	.long	0xd71
	.uleb128 0x9
	.byte	0x3
	.quad	rules
	.uleb128 0x1f
	.long	.LASF1187
	.byte	0x1
	.value	0x27e
	.byte	0x5
	.long	0x30d
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xdf2
	.uleb128 0x20
	.long	.LASF1112
	.byte	0x1
	.value	0x27e
	.byte	0x1b
	.long	0x709
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8232
	.uleb128 0x20
	.long	.LASF1034
	.byte	0x1
	.value	0x27e
	.byte	0x2a
	.long	0x95d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x21
	.long	.LASF1113
	.byte	0x1
	.value	0x280
	.byte	0xe
	.long	0xd1d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8224
	.byte	0
	.uleb128 0x22
	.long	.LASF1115
	.byte	0x1
	.value	0x24e
	.byte	0xd
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF1118
	.byte	0x1
	.value	0x23f
	.byte	0xd
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xe3d
	.uleb128 0x21
	.long	.LASF1114
	.byte	0x1
	.value	0x240
	.byte	0xd
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x22
	.long	.LASF1116
	.byte	0x1
	.value	0x229
	.byte	0xd
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF1117
	.byte	0x1
	.value	0x223
	.byte	0xd
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF1119
	.byte	0x1
	.value	0x217
	.byte	0xd
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0xea3
	.uleb128 0x21
	.long	.LASF1120
	.byte	0x1
	.value	0x21c
	.byte	0xd
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x22
	.long	.LASF1121
	.byte	0x1
	.value	0x211
	.byte	0xd
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF1122
	.byte	0x1
	.value	0x1fa
	.byte	0xd
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xeee
	.uleb128 0x21
	.long	.LASF1114
	.byte	0x1
	.value	0x1fb
	.byte	0xd
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x22
	.long	.LASF1123
	.byte	0x1
	.value	0x1f2
	.byte	0xd
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF1124
	.byte	0x1
	.value	0x1ee
	.byte	0xd
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF1126
	.byte	0x1
	.value	0x1ea
	.byte	0x13
	.long	0xf58
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xf58
	.uleb128 0x20
	.long	.LASF832
	.byte	0x1
	.value	0x1ea
	.byte	0x25
	.long	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc9d
	.uleb128 0x25
	.long	.LASF1131
	.byte	0x1
	.value	0x1e1
	.byte	0xd
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xf8e
	.uleb128 0x20
	.long	.LASF1114
	.byte	0x1
	.value	0x1e1
	.byte	0x24
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF1125
	.byte	0x1
	.value	0x1dd
	.byte	0xd
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF1127
	.byte	0x1
	.value	0x1d4
	.byte	0x10
	.long	0x142
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xfdd
	.uleb128 0x20
	.long	.LASF1128
	.byte	0x1
	.value	0x1d4
	.byte	0x2c
	.long	0x709
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF1129
	.byte	0x1
	.value	0x1c3
	.byte	0xd
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1043
	.uleb128 0x21
	.long	.LASF1102
	.byte	0x1
	.value	0x1c6
	.byte	0xc
	.long	0x1043
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1c8
	.byte	0x13
	.long	0x31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.long	.LASF1130
	.byte	0x1
	.value	0x1c9
	.byte	0x10
	.long	0x1049
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x70f
	.uleb128 0x6
	.byte	0x8
	.long	0xccd
	.uleb128 0x25
	.long	.LASF1132
	.byte	0x1
	.value	0x1b7
	.byte	0xd
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x108f
	.uleb128 0x20
	.long	.LASF1102
	.byte	0x1
	.value	0x1b7
	.byte	0x1c
	.long	0x70f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF1130
	.byte	0x1
	.value	0x1bd
	.byte	0xc
	.long	0x1049
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF1133
	.byte	0x1
	.value	0x1aa
	.byte	0xc
	.long	0x57
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1115
	.uleb128 0x20
	.long	.LASF1113
	.byte	0x1
	.value	0x1aa
	.byte	0x23
	.long	0xd55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF1102
	.byte	0x1
	.value	0x1aa
	.byte	0x34
	.long	0x1043
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1ab
	.byte	0x13
	.long	0x31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	.LASF1130
	.byte	0x1
	.value	0x1ac
	.byte	0x10
	.long	0x1049
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF1134
	.byte	0x1
	.value	0x1a5
	.byte	0xc
	.long	0x30d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1155
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x1a5
	.byte	0x24
	.long	0x1043
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x1a5
	.byte	0x2e
	.long	0x1043
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF1135
	.byte	0x1
	.value	0x197
	.byte	0x10
	.long	0x142
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x11bd
	.uleb128 0x20
	.long	.LASF1102
	.byte	0x1
	.value	0x197
	.byte	0x2a
	.long	0x1043
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.long	.LASF1136
	.byte	0x1
	.value	0x198
	.byte	0xb
	.long	0x352
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF1137
	.byte	0x1
	.value	0x199
	.byte	0x10
	.long	0x891
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF1138
	.byte	0x1
	.value	0x19e
	.byte	0xd
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.byte	0
	.uleb128 0x22
	.long	.LASF1139
	.byte	0x1
	.value	0x18f
	.byte	0xd
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF1140
	.byte	0x1
	.value	0x179
	.byte	0xd
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x124a
	.uleb128 0x20
	.long	.LASF1100
	.byte	0x1
	.value	0x179
	.byte	0x28
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF1141
	.byte	0x1
	.value	0x17b
	.byte	0xd
	.long	0xc4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF1142
	.byte	0x1
	.value	0x181
	.byte	0x9
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x28
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF1143
	.byte	0x1
	.value	0x186
	.byte	0x11
	.long	0xc4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF1144
	.byte	0x1
	.value	0x11e
	.byte	0xd
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF1145
	.byte	0x1
	.value	0x110
	.byte	0xd
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a5
	.uleb128 0x20
	.long	.LASF1142
	.byte	0x1
	.value	0x110
	.byte	0x17
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF1146
	.byte	0x1
	.value	0x111
	.byte	0xf
	.long	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF1147
	.byte	0x1
	.value	0x10c
	.byte	0xd
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x12d5
	.uleb128 0x20
	.long	.LASF1142
	.byte	0x1
	.value	0x10c
	.byte	0x1a
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF1148
	.byte	0x1
	.byte	0xf7
	.byte	0xd
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x133f
	.uleb128 0x2d
	.long	.LASF1102
	.byte	0x1
	.byte	0xf7
	.byte	0x21
	.long	0x70f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.byte	0xf7
	.byte	0x2b
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF1149
	.byte	0x1
	.byte	0xf9
	.byte	0xd
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF1150
	.byte	0x1
	.byte	0xf9
	.byte	0x14
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x2f
	.string	"arg"
	.byte	0x1
	.byte	0xfa
	.byte	0xd
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x2c
	.long	.LASF1151
	.byte	0x1
	.byte	0xf3
	.byte	0xd
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x136d
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.byte	0xf3
	.byte	0x18
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2c
	.long	.LASF1152
	.byte	0x1
	.byte	0xee
	.byte	0xd
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x13ab
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.byte	0xee
	.byte	0x18
	.long	0x30d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	.LASF1030
	.byte	0x1
	.byte	0xef
	.byte	0xc
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2c
	.long	.LASF1153
	.byte	0x1
	.byte	0xe9
	.byte	0xd
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x13d9
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.byte	0xe9
	.byte	0x1a
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF1154
	.byte	0x1
	.byte	0xdf
	.byte	0xd
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1407
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.byte	0xdf
	.byte	0x19
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF1155
	.byte	0x1
	.byte	0xc9
	.byte	0xd
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1453
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.byte	0xc9
	.byte	0x18
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF1146
	.byte	0x1
	.byte	0xca
	.byte	0xf
	.long	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF1156
	.byte	0x1
	.byte	0xcb
	.byte	0x10
	.long	0xf58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF1157
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1158
	.byte	0x1
	.byte	0xb3
	.byte	0xd
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1159
	.byte	0x1
	.byte	0xab
	.byte	0xd
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF1160
	.byte	0x1
	.byte	0xa5
	.byte	0xd
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x14cf
	.uleb128 0x2d
	.long	.LASF1113
	.byte	0x1
	.byte	0xa5
	.byte	0x24
	.long	0xd55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1161
	.byte	0x1
	.byte	0x99
	.byte	0xd
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x150c
	.uleb128 0x2d
	.long	.LASF1022
	.byte	0x1
	.byte	0x99
	.byte	0x1f
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF1162
	.byte	0x1
	.byte	0x9b
	.byte	0xd
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x2c
	.long	.LASF1163
	.byte	0x1
	.byte	0x95
	.byte	0xd
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x153a
	.uleb128 0x2d
	.long	.LASF1030
	.byte	0x1
	.byte	0x95
	.byte	0x20
	.long	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	.LASF1164
	.byte	0x1
	.byte	0x8c
	.byte	0x10
	.long	0x142
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x157b
	.uleb128 0x2d
	.long	.LASF1030
	.byte	0x1
	.byte	0x8c
	.byte	0x23
	.long	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF1165
	.byte	0x1
	.byte	0x8d
	.byte	0x9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF1166
	.byte	0x1
	.byte	0x88
	.byte	0xd
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF1167
	.byte	0x1
	.byte	0x80
	.byte	0xc
	.long	0x57
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c7
	.uleb128 0x2d
	.long	.LASF1168
	.byte	0x1
	.byte	0x80
	.byte	0x1d
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF1169
	.byte	0x1
	.byte	0x7b
	.byte	0xd
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1604
	.uleb128 0x2d
	.long	.LASF1170
	.byte	0x1
	.byte	0x7b
	.byte	0x1f
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF1171
	.byte	0x1
	.byte	0x7b
	.byte	0x2e
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1172
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1632
	.uleb128 0x2d
	.long	.LASF1173
	.byte	0x1
	.byte	0x77
	.byte	0x1e
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x33
	.long	.LASF1174
	.byte	0x1
	.byte	0x71
	.byte	0xc
	.long	0x30d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1664
	.uleb128 0x2d
	.long	.LASF832
	.byte	0x1
	.byte	0x71
	.byte	0x1c
	.long	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF1175
	.byte	0x1
	.byte	0x6d
	.byte	0xc
	.long	0x30d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1696
	.uleb128 0x2d
	.long	.LASF832
	.byte	0x1
	.byte	0x6d
	.byte	0x1d
	.long	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d3
	.uleb128 0x2d
	.long	.LASF832
	.byte	0x1
	.byte	0x64
	.byte	0x1f
	.long	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF1177
	.byte	0x1
	.byte	0x64
	.byte	0x31
	.long	0x16d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x108
	.uleb128 0x30
	.long	.LASF1178
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF1179
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1721
	.uleb128 0x2d
	.long	.LASF1177
	.byte	0x1
	.byte	0x56
	.byte	0x28
	.long	0x16d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1180
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x174f
	.uleb128 0x2d
	.long	.LASF1177
	.byte	0x1
	.byte	0x52
	.byte	0x1f
	.long	0x16d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1181
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x178c
	.uleb128 0x2d
	.long	.LASF1182
	.byte	0x1
	.byte	0x42
	.byte	0x1c
	.long	0x1043
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1177
	.byte	0x1
	.byte	0x42
	.byte	0x2f
	.long	0x16d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1188
	.byte	0x1
	.byte	0x3e
	.byte	0xf
	.long	0x95d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x14
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.file 15 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x7
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x14
	.long	.LASF605
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x2
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
	.uleb128 0x6
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
	.uleb128 0x8
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
	.uleb128 0x2
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
	.uleb128 0x2
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
	.uleb128 0x2
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
	.section	.debug_macro,"G",@progbits,wm4.value.h.93.bfaea07e85ae46c62b090a885a200a26,comdat
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
.LASF614:
	.string	"INT32_MAX (2147483647)"
.LASF1154:
	.string	"literal"
.LASF749:
	.string	"_IOFBF 0"
.LASF711:
	.string	"UINT_VAL(value) ((Value){VAL_UINT, {.uIn = value}})"
.LASF677:
	.string	"IS_NIL(value) ((value).type == VAL_NIL)"
.LASF558:
	.string	"__STD_TYPE typedef"
.LASF533:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF1108:
	.string	"Compiler"
.LASF824:
	.string	"int8_t"
.LASF225:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF283:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1034:
	.string	"chunk"
.LASF1126:
	.string	"getRule"
.LASF51:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF1010:
	.string	"OP_LESS"
.LASF108:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF805:
	.string	"size_t"
.LASF843:
	.string	"VAL_INT"
.LASF345:
	.string	"value_h "
.LASF228:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF763:
	.string	"stdin stdin"
.LASF976:
	.string	"TOKEN_RETURN"
.LASF994:
	.string	"start"
.LASF752:
	.string	"BUFSIZ 8192"
.LASF1133:
	.string	"resolveLocal"
.LASF790:
	.string	"__f64(x) x ##f64"
.LASF93:
	.string	"__SIZE_WIDTH__ 64"
.LASF505:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF282:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF1107:
	.string	"scopeDepth"
.LASF19:
	.string	"__LP64__ 1"
.LASF270:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF422:
	.string	"__USE_XOPEN2K8XSI"
.LASF1072:
	.string	"_IO_marker"
.LASF238:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF491:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF887:
	.string	"TOKEN_DOTDOT"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF1073:
	.string	"_IO_codecvt"
.LASF433:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF1089:
	.string	"PREC_COMPARISON"
.LASF993:
	.string	"TokenType"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF590:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF393:
	.string	"_WCHAR_T_H "
.LASF925:
	.string	"TOKEN_COLONULLEQ"
.LASF826:
	.string	"int32_t"
.LASF980:
	.string	"TOKEN_WHILE"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF139:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF170:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF866:
	.string	"values"
.LASF248:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF1053:
	.string	"_IO_save_end"
.LASF98:
	.string	"__INTMAX_WIDTH__ 64"
.LASF679:
	.string	"IS_NUMBER(value) ((value).type != VAL_NIL && (value).type != VAL_BOOL);"
.LASF821:
	.string	"__off_t"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF273:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF918:
	.string	"TOKEN_USDUIEQ"
.LASF162:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF825:
	.string	"int16_t"
.LASF200:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1163:
	.string	"emitConstant"
.LASF1104:
	.string	"Local"
.LASF1082:
	.string	"panicMode"
.LASF36:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF1016:
	.string	"OP_EXPONENTIATE"
.LASF123:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF1165:
	.string	"constant"
.LASF542:
	.string	"_BITS_TYPES_H 1"
.LASF629:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF694:
	.string	"AS_UCHAR(value) ((value).as.uCh)"
.LASF1046:
	.string	"_IO_write_base"
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
.LASF683:
	.string	"IS_UINT(value) ((value).type == VAL_UINT)"
.LASF1062:
	.string	"_lock"
.LASF838:
	.string	"VAL_UNDEFINED"
.LASF987:
	.string	"TOKEN_STATIC_FIELD"
.LASF929:
	.string	"TOKEN_COLONDEQ"
.LASF1041:
	.string	"_IO_FILE"
.LASF199:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF872:
	.string	"TOKEN_LEFT_BRACE"
.LASF1096:
	.string	"Precedence"
.LASF874:
	.string	"TOKEN_LEFT_BRACK"
.LASF399:
	.string	"__need_wchar_t"
.LASF196:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF1135:
	.string	"identifierConstant"
.LASF916:
	.string	"TOKEN_USDIEQ"
.LASF446:
	.string	"__GLIBC__ 2"
.LASF832:
	.string	"type"
.LASF643:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF360:
	.string	"_BSD_PTRDIFF_T_ "
.LASF777:
	.string	"__HAVE_FLOAT32 1"
.LASF1142:
	.string	"canAssign"
.LASF1130:
	.string	"local"
.LASF1051:
	.string	"_IO_save_base"
.LASF1120:
	.string	"thenJump"
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
.LASF137:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF319:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF555:
	.string	"__ULONG32_TYPE unsigned int"
.LASF715:
	.string	"LONGLONG_VAL(value) ((Value){VAL_LONGLONG, {.lnglng = value}})"
.LASF448:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF265:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF472:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF1116:
	.string	"synchronize"
.LASF934:
	.string	"TOKEN_USDSEQ"
.LASF924:
	.string	"TOKEN_USDLLEQ"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF897:
	.string	"TOKEN_MOD"
.LASF413:
	.string	"__USE_POSIX2"
.LASF617:
	.string	"UINT16_MAX (65535)"
.LASF638:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF410:
	.string	"__USE_ISOC95"
.LASF1055:
	.string	"_chain"
.LASF836:
	.string	"chars"
.LASF630:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF333:
	.string	"__CET__ 3"
.LASF235:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF974:
	.string	"TOKEN_PUTS"
.LASF210:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF1150:
	.string	"setOp"
.LASF1004:
	.string	"OP_SET_GLOBAL"
.LASF1083:
	.string	"Parser"
.LASF412:
	.string	"__USE_POSIX"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF269:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF400:
	.string	"NULL"
.LASF1172:
	.string	"emitByte"
.LASF599:
	.string	"_BITS_TIME64_H 1"
.LASF255:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF1105:
	.string	"locals"
.LASF69:
	.string	"__INTPTR_TYPE__ long int"
.LASF522:
	.string	"__stub_fchflags "
.LASF352:
	.string	"_STDDEF_H "
.LASF1167:
	.string	"emitJump"
.LASF1021:
	.string	"OP_RETURN"
.LASF781:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF1164:
	.string	"makeConstant"
.LASF254:
	.string	"__FLT64X_MAX_EXP__ 16384"
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
.LASF999:
	.string	"OP_NIL"
.LASF900:
	.string	"TOKEN_PIPEPIPE"
.LASF915:
	.string	"TOKEN_COLONIEQ"
.LASF426:
	.string	"__USE_MISC"
.LASF1039:
	.string	"strings"
.LASF232:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF431:
	.string	"__GLIBC_USE_ISOC2X"
.LASF610:
	.string	"INT32_MIN (-2147483647-1)"
.LASF901:
	.string	"TOKEN_CARETCARET"
.LASF1119:
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
.LASF904:
	.string	"TOKEN_CARET"
.LASF1181:
	.string	"errorAt"
.LASF279:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF1148:
	.string	"namedVariable"
.LASF933:
	.string	"TOKEN_COLONSEQ"
.LASF1047:
	.string	"_IO_write_ptr"
.LASF743:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF940:
	.string	"TOKEN_AMPEQ"
.LASF224:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF213:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF337:
	.string	"__unix 1"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF294:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF1140:
	.string	"parsePrecedence"
.LASF261:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF102:
	.string	"__INT8_MAX__ 0x7f"
.LASF585:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF198:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF941:
	.string	"TOKEN_PIPEEQ"
.LASF762:
	.string	"FOPEN_MAX 16"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF645:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF809:
	.string	"short unsigned int"
.LASF955:
	.string	"TOKEN_LDEQ"
.LASF578:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF699:
	.string	"AS_FLOAT(value) ((value).as.flt)"
.LASF361:
	.string	"___int_ptrdiff_t_h "
.LASF488:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF377:
	.string	"_SIZE_T_DECLARED "
.LASF460:
	.string	"__CONCAT(x,y) x ## y"
.LASF764:
	.string	"stdout stdout"
.LASF1129:
	.string	"declareVariable"
.LASF1112:
	.string	"source"
.LASF1180:
	.string	"error"
.LASF1036:
	.string	"stackTop"
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
.LASF571:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF672:
	.string	"UINT8_COUNT (UINT8_MAX + 1)"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF118:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF773:
	.string	"__f128(x) x ##f128"
.LASF405:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF341:
	.string	"_STDC_PREDEF_H 1"
.LASF1027:
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
.LASF801:
	.string	"EXIT_SUCCESS 0"
.LASF154:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF443:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF495:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF157:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF678:
	.string	"IS_BOOL(value) ((value).type == VAL_BOOL)"
.LASF454:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF812:
	.string	"signed char"
.LASF551:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF750:
	.string	"_IOLBF 1"
.LASF828:
	.string	"uint8_t"
.LASF576:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF545:
	.string	"__U16_TYPE unsigned short int"
.LASF204:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF1122:
	.string	"letDeclaration"
.LASF287:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF1158:
	.string	"beginScope"
.LASF1093:
	.string	"PREC_UNARY"
.LASF164:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF854:
	.string	"boolean"
.LASF1117:
	.string	"putsStatement"
.LASF297:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF700:
	.string	"AS_LONGLONG(value) ((value).as.lnglng)"
.LASF92:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF124:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF451:
	.string	"__LEAF , __leaf__"
.LASF733:
	.string	"__need___va_list "
.LASF508:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF706:
	.string	"NIL_VAL ((Value){VAL_NIL, {.dbl = 0}})"
.LASF538:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF246:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF1023:
	.string	"LineStart"
.LASF1170:
	.string	"byte1"
.LASF1171:
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
.LASF1166:
	.string	"emitReturn"
.LASF203:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF1066:
	.string	"_freeres_list"
.LASF459:
	.string	"__PMT(args) args"
.LASF340:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF1159:
	.string	"endCompiler"
.LASF1188:
	.string	"currentChunk"
.LASF168:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF1161:
	.string	"patchJump"
.LASF40:
	.string	"__INTMAX_TYPE__ long int"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF425:
	.string	"__USE_FILE_OFFSET64"
.LASF844:
	.string	"VAL_UINT"
.LASF848:
	.string	"VAL_LONGLONG"
.LASF501:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF727:
	.string	"vm_h "
.LASF214:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF107:
	.string	"__UINT16_MAX__ 0xffff"
.LASF902:
	.string	"TOKEN_AMP"
.LASF127:
	.string	"__UINT32_C(c) c ## U"
.LASF1007:
	.string	"OP_GET_LOCAL"
.LASF785:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF330:
	.string	"__SSE2_MATH__ 1"
.LASF95:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF566:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF609:
	.string	"INT16_MIN (-32767-1)"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF693:
	.string	"AS_CHAR(value) ((value).as.ch)"
.LASF859:
	.string	"_Bool"
.LASF120:
	.string	"__INT64_C(c) c ## L"
.LASF492:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF984:
	.string	"TOKEN_IDENTIFIER"
.LASF289:
	.string	"__STRICT_ANSI__ 1"
.LASF374:
	.string	"_SIZE_T_DEFINED_ "
.LASF259:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF1030:
	.string	"value"
.LASF97:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF586:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF230:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF713:
	.string	"ULONG_VAL(value) ((Value){VAL_ULONG, {.uLng = value}})"
.LASF856:
	.string	"lnglng"
.LASF307:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF625:
	.string	"INT_LEAST16_MAX (32767)"
.LASF823:
	.string	"char"
.LASF195:
	.string	"__FLT32_DIG__ 6"
.LASF623:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF291:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF774:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF766:
	.string	"__need_wchar_t "
.LASF64:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF166:
	.string	"__DBL_DIG__ 15"
.LASF842:
	.string	"VAL_UCHAR"
.LASF1132:
	.string	"addLocal"
.LASF939:
	.string	"TOKEN_MODEQ"
.LASF674:
	.string	"__need_size_t "
.LASF995:
	.string	"line"
.LASF548:
	.string	"__SLONGWORD_TYPE long int"
.LASF430:
	.string	"__KERNEL_STRICT_NAMES"
.LASF807:
	.string	"long unsigned int"
.LASF864:
	.string	"capacity"
.LASF316:
	.string	"__x86_64__ 1"
.LASF1186:
	.string	"_IO_lock_t"
.LASF992:
	.string	"TOKEN_ENDEXPRESSION"
.LASF816:
	.string	"__uint16_t"
.LASF1019:
	.string	"OP_PUTS"
.LASF419:
	.string	"__USE_XOPEN2K"
.LASF931:
	.string	"TOKEN_COLONLDEQ"
.LASF765:
	.string	"stderr stderr"
.LASF420:
	.string	"__USE_XOPEN2KXSI"
.LASF106:
	.string	"__UINT8_MAX__ 0xff"
.LASF160:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF798:
	.string	"__lldiv_t_defined 1"
.LASF896:
	.string	"TOKEN_SLASH"
.LASF493:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF527:
	.string	"__stub_sigreturn "
.LASF428:
	.string	"__USE_GNU"
.LASF1100:
	.string	"precedence"
.LASF176:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF886:
	.string	"TOKEN_DOT"
.LASF365:
	.string	"__size_t__ "
.LASF703:
	.string	"AS_DOUBLELONG(value) ((value).as.dbllng)"
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
.LASF1094:
	.string	"PREC_CALL"
.LASF553:
	.string	"__UWORD_TYPE unsigned long int"
.LASF113:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF946:
	.string	"TOKEN_UCEQ"
.LASF1043:
	.string	"_IO_read_ptr"
.LASF226:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF689:
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
.LASF1103:
	.string	"depth"
.LASF754:
	.string	"SEEK_SET 0"
.LASF72:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF804:
	.string	"ptrdiff_t"
.LASF729:
	.string	"table_h "
.LASF394:
	.string	"___int_wchar_t_h "
.LASF634:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF723:
	.string	"IS_STRING(value) isObjType(value, OBJ_STRING)"
.LASF447:
	.string	"__GLIBC_MINOR__ 31"
.LASF919:
	.string	"TOKEN_COLONLEQ"
.LASF423:
	.string	"__USE_LARGEFILE"
.LASF1079:
	.string	"current"
.LASF647:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF299:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF418:
	.string	"__USE_UNIX98"
.LASF61:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF434:
	.string	"__KERNEL_STRICT_NAMES "
.LASF740:
	.string	"__FILE_defined 1"
.LASF500:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF1178:
	.string	"advance"
.LASF564:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF748:
	.string	"_IO_USER_LOCK 0x8000"
.LASF950:
	.string	"TOKEN_ULEQ"
.LASF893:
	.string	"TOKEN_PLUS"
.LASF1092:
	.string	"PREC_EXPONENT"
.LASF871:
	.string	"TOKEN_RIGHT_PAREN"
.LASF741:
	.string	"__struct_FILE_defined 1"
.LASF382:
	.string	"__need_size_t"
.LASF303:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1118:
	.string	"declaration"
.LASF1054:
	.string	"_markers"
.LASF593:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF339:
	.string	"__ELF__ 1"
.LASF671:
	.string	"DEBUG_TRACE_EXECUTION "
.LASF80:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF1017:
	.string	"OP_NOT"
.LASF207:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF760:
	.string	"FILENAME_MAX 4096"
.LASF632:
	.string	"INT_FAST8_MIN (-128)"
.LASF192:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF877:
	.string	"TOKEN_RBRACEGT"
.LASF526:
	.string	"__stub_setlogin "
.LASF716:
	.string	"ULONGLONG_VAL(value) ((Value){VAL_ULONGLONG, {.uLnglng = value}})"
.LASF595:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF1040:
	.string	"objects"
.LASF726:
	.string	"scanner_h "
.LASF905:
	.string	"TOKEN_TILDE"
.LASF539:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF892:
	.string	"TOKEN_TILDEGT"
.LASF110:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF985:
	.string	"TOKEN_INTERPOLATION"
.LASF910:
	.string	"TOKEN_USDEQ"
.LASF1011:
	.string	"OP_ADD"
.LASF348:
	.string	"bool _Bool"
.LASF719:
	.string	"OBJ_VAL(object) ((Value){VAL_OBJ, {.obj = (Obj*)object}})"
.LASF829:
	.string	"uint16_t"
.LASF718:
	.string	"DOUBLELONG_VAL(value) ((Value){VAL_DOUBLELONG, {.dbllng = value}})"
.LASF100:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF1174:
	.string	"match"
.LASF122:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF301:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF596:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF799:
	.string	"RAND_MAX 2147483647"
.LASF262:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF757:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF641:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF172:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF534:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF712:
	.string	"LONG_VAL(value) ((Value){VAL_LONG, {.lng = value}})"
.LASF507:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF758:
	.string	"L_tmpnam 20"
.LASF424:
	.string	"__USE_LARGEFILE64"
.LASF1098:
	.string	"prefix"
.LASF981:
	.string	"TOKEN_FIELD"
.LASF115:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF149:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF953:
	.string	"TOKEN_FEQ"
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
.LASF890:
	.string	"TOKEN_COLON"
.LASF881:
	.string	"TOKEN_RPARENGT"
.LASF1125:
	.string	"markInitialized"
.LASF888:
	.string	"TOKEN_DOTDOTDOT"
.LASF1063:
	.string	"_offset"
.LASF334:
	.string	"__gnu_linux__ 1"
.LASF286:
	.string	"__USER_LABEL_PREFIX__ "
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF496:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF541:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF554:
	.string	"__SLONG32_TYPE int"
.LASF776:
	.string	"__HAVE_FLOAT16 0"
.LASF670:
	.string	"DEBUG_PRINT_CODE "
.LASF1136:
	.string	"index"
.LASF561:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF304:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF782:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF1003:
	.string	"OP_DEFINE_GLOBAL"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF406:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF408:
	.string	"__USE_ISOC11"
.LASF959:
	.string	"TOKEN_LTEQ"
.LASF484:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF604:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF240:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF71:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF894:
	.string	"TOKEN_MINUS"
.LASF1146:
	.string	"operatorType"
.LASF256:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF676:
	.string	"IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)"
.LASF1157:
	.string	"endScope"
.LASF702:
	.string	"AS_DOUBLE(value) ((value).as.dbl)"
.LASF121:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF163:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF343:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF820:
	.string	"__uint64_t"
.LASF975:
	.string	"TOKEN_SUPER"
.LASF648:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF577:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF306:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF524:
	.string	"__stub_lchmod "
.LASF1028:
	.string	"lines"
.LASF616:
	.string	"UINT8_MAX (255)"
.LASF653:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF280:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF146:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF15:
	.string	"__pie__ 2"
.LASF3:
	.string	"__GNUC__ 9"
.LASF253:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF680:
	.string	"IS_CHAR(value) ((value).type == VAL_CHAR)"
.LASF518:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF189:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF1057:
	.string	"_flags2"
.LASF369:
	.string	"_T_SIZE_ "
.LASF148:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF85:
	.string	"__SCHAR_WIDTH__ 8"
.LASF471:
	.string	"__glibc_c99_flexarr_available 1"
.LASF1045:
	.string	"_IO_read_base"
.LASF710:
	.string	"INT_VAL(value) ((Value){VAL_INT, {.in = value}})"
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
.LASF1121:
	.string	"expressionStatement"
.LASF463:
	.string	"__BEGIN_DECLS "
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF453:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF675:
	.string	"__need_NULL "
.LASF407:
	.string	"_FEATURES_H 1"
.LASF1070:
	.string	"_unused2"
.LASF194:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF977:
	.string	"TOKEN_THIS"
.LASF1143:
	.string	"infixRule"
.LASF481:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF921:
	.string	"TOKEN_COLONULEQ"
.LASF296:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF792:
	.string	"__f64x(x) x ##f64x"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF169:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF559:
	.string	"_BITS_TYPESIZES_H 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF1075:
	.string	"stdin"
.LASF247:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_MANT_DIG__ 24"
.LASF855:
	.string	"uLng"
.LASF682:
	.string	"IS_INT(value) ((value).type == VAL_INT)"
.LASF851:
	.string	"VAL_DOUBLELONG"
.LASF94:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF1169:
	.string	"emitBytes"
.LASF1111:
	.string	"rules"
.LASF216:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF356:
	.string	"_T_PTRDIFF_ "
.LASF1058:
	.string	"_old_offset"
.LASF427:
	.string	"__USE_ATFILE"
.LASF96:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF986:
	.string	"TOKEN_LINE"
.LASF239:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF1128:
	.string	"errorMessage"
.LASF899:
	.string	"TOKEN_AMPAMP"
.LASF704:
	.string	"AS_OBJ(value) ((value).as.obj)"
.LASF1106:
	.string	"localCount"
.LASF690:
	.string	"IS_DOUBLELONG(value) ((value).type == VAL_DOUBLELONG)"
.LASF1127:
	.string	"parseVariable"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF963:
	.string	"TOKEN_CASE"
.LASF293:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF594:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF364:
	.string	"__need_ptrdiff_t"
.LASF688:
	.string	"IS_ULONGLONG(value) ((value).type == VAL_ULONGLONG)"
.LASF386:
	.string	"_T_WCHAR_ "
.LASF928:
	.string	"TOKEN_USDFEQ"
.LASF116:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF794:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF512:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF1026:
	.string	"lineCount"
.LASF1018:
	.string	"OP_NEGATE"
.LASF818:
	.string	"__uint32_t"
.LASF932:
	.string	"TOKEN_USDLDEQ"
.LASF372:
	.string	"_SIZE_T_ "
.LASF990:
	.string	"TOKEN_EOF"
.LASF150:
	.string	"__FLT_RADIX__ 2"
.LASF1078:
	.string	"long long int"
.LASF43:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF1131:
	.string	"defineVariable"
.LASF1183:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF961:
	.string	"TOKEN_EQEQ"
.LASF193:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF998:
	.string	"OP_CONSTANT_LONG"
.LASF190:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF314:
	.string	"__amd64__ 1"
.LASF89:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF14:
	.string	"__PIC__ 2"
.LASF1134:
	.string	"identifiersEqual"
.LASF404:
	.string	"_STDINT_H 1"
.LASF787:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF132:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF885:
	.string	"TOKEN_COMMA"
.LASF302:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF930:
	.string	"TOKEN_USDDEQ"
.LASF105:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF487:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF503:
	.string	"__attribute_copy__"
.LASF212:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF841:
	.string	"VAL_CHAR"
.LASF388:
	.string	"__WCHAR_T "
.LASF549:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF861:
	.string	"double"
.LASF134:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF1035:
	.string	"stack"
.LASF456:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF41:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF1048:
	.string	"_IO_write_end"
.LASF853:
	.string	"ValueType"
.LASF1152:
	.string	"number"
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
.LASF1008:
	.string	"OP_EQUAL"
.LASF450:
	.string	"__PMT"
.LASF660:
	.string	"INT16_C(c) c"
.LASF1059:
	.string	"_cur_column"
.LASF308:
	.string	"__SSP_STRONG__ 3"
.LASF878:
	.string	"TOKEN_LTLPAREN"
.LASF979:
	.string	"TOKEN_WHEN"
.LASF546:
	.string	"__S32_TYPE int"
.LASF202:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF927:
	.string	"TOKEN_COLONFEQ"
.LASF581:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF714:
	.string	"FLOAT_VAL(value) ((Value){VAL_FLOAT, {.flt = value}})"
.LASF550:
	.string	"__SQUAD_TYPE long int"
.LASF725:
	.string	"AS_CSTRING(value) (((ObjString*)AS_OBJ(value))->chars)"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1074:
	.string	"_IO_wide_data"
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
.LASF865:
	.string	"count"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF260:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF322:
	.string	"__k8 1"
.LASF1088:
	.string	"PREC_EQUALITY"
.LASF517:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF1049:
	.string	"_IO_buf_base"
.LASF769:
	.string	"__HAVE_FLOAT128 1"
.LASF978:
	.string	"TOKEN_TRUE"
.LASF903:
	.string	"TOKEN_PIPE"
.LASF1151:
	.string	"string"
.LASF1014:
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
.LASF1141:
	.string	"prefixRule"
.LASF669:
	.string	"_GCC_WRAP_STDINT_H "
.LASF997:
	.string	"OP_CONSTANT"
.LASF1176:
	.string	"consume"
.LASF243:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF219:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF152:
	.string	"__FLT_DIG__ 6"
.LASF347:
	.string	"_STDBOOL_H "
.LASF1013:
	.string	"OP_MULTIPLY"
.LASF397:
	.string	"_WCHAR_T_DECLARED "
.LASF1123:
	.string	"block"
.LASF147:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF587:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF158:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF74:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF1009:
	.string	"OP_GREATER"
.LASF1038:
	.string	"globalValues"
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
.LASF972:
	.string	"TOKEN_LET"
.LASF227:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF490:
	.string	"__always_inline"
.LASF145:
	.string	"__GCC_IEC_559 2"
.LASF717:
	.string	"DOUBLE_VAL(value) ((Value){VAL_DOUBLE, {.dbl = value}})"
.LASF474:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
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
.LASF1087:
	.string	"PREC_LOGIC"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF540:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF873:
	.string	"TOKEN_RIGHT_BRACE"
.LASF489:
	.string	"__wur "
.LASF466:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF793:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF875:
	.string	"TOKEN_RIGHT_BRACK"
.LASF350:
	.string	"false 0"
.LASF788:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF86:
	.string	"__SHRT_WIDTH__ 16"
.LASF730:
	.string	"STACK_MAX 256"
.LASF278:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1042:
	.string	"_flags"
.LASF1005:
	.string	"OP_GET_GLOBAL"
.LASF349:
	.string	"true 1"
.LASF363:
	.string	"_PTRDIFF_T_DECLARED "
.LASF1022:
	.string	"offset"
.LASF324:
	.string	"__code_model_small__ 1"
.LASF445:
	.string	"__GNU_LIBRARY__ 6"
.LASF563:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF295:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF795:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF687:
	.string	"IS_LONGLONG(value) ((value).type == VAL_LONGLONG)"
.LASF1069:
	.string	"_mode"
.LASF570:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF867:
	.string	"ValueArray"
.LASF511:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF104:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF510:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF461:
	.string	"__STRING(x) #x"
.LASF968:
	.string	"TOKEN_DEF"
.LASF504:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF846:
	.string	"VAL_ULONG"
.LASF442:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF1064:
	.string	"_codecvt"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF402:
	.string	"__need_NULL"
.LASF898:
	.string	"TOKEN_STARSTAR"
.LASF197:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF378:
	.string	"___int_size_t_h "
.LASF735:
	.string	"__GNUC_VA_LIST "
.LASF1031:
	.string	"Entry"
.LASF385:
	.string	"_WCHAR_T "
.LASF241:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF780:
	.string	"__HAVE_FLOAT128X 0"
.LASF161:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF264:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF736:
	.string	"_____fpos_t_defined 1"
.LASF908:
	.string	"TOKEN_LTLT"
.LASF797:
	.string	"__ldiv_t_defined 1"
.LASF362:
	.string	"_GCC_PTRDIFF_T "
.LASF525:
	.string	"__stub_revoke "
.LASF913:
	.string	"TOKEN_COLONUCEQ"
.LASF514:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF1185:
	.string	"/mnt/d/coding portfolio/fortissimolanguage"
.LASF779:
	.string	"__HAVE_FLOAT32X 1"
.LASF1155:
	.string	"binary"
.LASF516:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF367:
	.string	"_SIZE_T "
.LASF383:
	.string	"__wchar_t__ "
.LASF266:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF1147:
	.string	"variable"
.LASF692:
	.string	"AS_BOOL(value) ((value).as.boolean)"
.LASF751:
	.string	"_IONBF 2"
.LASF622:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF1080:
	.string	"previous"
.LASF470:
	.string	"__flexarr []"
.LASF739:
	.string	"____FILE_defined 1"
.LASF862:
	.string	"long double"
.LASF475:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF572:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF1160:
	.string	"initCompiler"
.LASF922:
	.string	"TOKEN_USDULEQ"
.LASF263:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF223:
	.string	"__FLT128_DIG__ 33"
.LASF111:
	.string	"__INT8_C(c) c"
.LASF201:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1149:
	.string	"getOp"
.LASF353:
	.string	"_STDDEF_H_ "
.LASF167:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF371:
	.string	"__SIZE_T "
.LASF1071:
	.string	"FILE"
.LASF136:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF47:
	.string	"__INT32_TYPE__ int"
.LASF403:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF1025:
	.string	"constants"
.LASF252:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF591:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF936:
	.string	"TOKEN_MINUSEQ"
.LASF650:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF409:
	.string	"__USE_ISOC99"
.LASF580:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF707:
	.string	"BOOL_VAL(value) ((Value){VAL_BOOL, {.boolean = value}})"
.LASF695:
	.string	"AS_INT(value) ((value).as.in)"
.LASF909:
	.string	"TOKEN_COLONCOLON"
.LASF417:
	.string	"__USE_XOPEN_EXTENDED"
.LASF1081:
	.string	"hadError"
.LASF772:
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
.LASF1145:
	.string	"unary"
.LASF631:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF937:
	.string	"TOKEN_STAREQ"
.LASF944:
	.string	"TOKEN_EQ"
.LASF234:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF607:
	.string	"__intptr_t_defined "
.LASF598:
	.string	"__FD_SETSIZE 1024"
.LASF48:
	.string	"__INT64_TYPE__ long int"
.LASF215:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF889:
	.string	"TOKEN_SEMICOLON"
.LASF271:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF250:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF455:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF850:
	.string	"VAL_DOUBLE"
.LASF755:
	.string	"SEEK_CUR 1"
.LASF920:
	.string	"TOKEN_USDLEQ"
.LASF75:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF411:
	.string	"__USE_ISOCXX11"
.LASF375:
	.string	"_SIZE_T_DEFINED "
.LASF81:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF574:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF835:
	.string	"length"
.LASF1086:
	.string	"PREC_CONDITIONAL"
.LASF557:
	.string	"__U64_TYPE unsigned long int"
.LASF358:
	.string	"__PTRDIFF_T "
.LASF257:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF969:
	.string	"TOKEN_FOR"
.LASF628:
	.string	"UINT_LEAST8_MAX (255)"
.LASF965:
	.string	"TOKEN_ELSE"
.LASF778:
	.string	"__HAVE_FLOAT64 1"
.LASF1168:
	.string	"instruction"
.LASF935:
	.string	"TOKEN_PLUSEQ"
.LASF1001:
	.string	"OP_FALSE"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF370:
	.string	"_T_SIZE "
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF879:
	.string	"TOKEN_RPARENLBRACE"
.LASF237:
	.string	"__FLT32X_DIG__ 15"
.LASF686:
	.string	"IS_FLOAT(value) ((value).type == VAL_FLOAT)"
.LASF432:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF415:
	.string	"__USE_POSIX199506"
.LASF681:
	.string	"IS_UCHAR(value) ((value).type == VAL_UCHAR)"
.LASF661:
	.string	"INT32_C(c) c"
.LASF783:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF142:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF666:
	.string	"UINT64_C(c) c ## UL"
.LASF1067:
	.string	"_freeres_buf"
.LASF317:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF756:
	.string	"SEEK_END 2"
.LASF328:
	.string	"__FXSR__ 1"
.LASF1095:
	.string	"PREC_PRIMARY"
.LASF506:
	.string	"__WORDSIZE 64"
.LASF1115:
	.string	"statement"
.LASF849:
	.string	"VAL_ULONGLONG"
.LASF509:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF948:
	.string	"TOKEN_UIEQ"
.LASF309:
	.string	"__SIZEOF_INT128__ 16"
.LASF13:
	.string	"__pic__ 2"
.LASF529:
	.string	"__stub_stty "
.LASF1000:
	.string	"OP_TRUE"
.LASF1156:
	.string	"rule"
.LASF640:
	.string	"UINT_FAST8_MAX (255)"
.LASF568:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF468:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF722:
	.string	"OBJ_TYPE(value) (AS_OBJ(value)->type)"
.LASF926:
	.string	"TOKEN_USDULLEQ"
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
.LASF325:
	.string	"__MMX__ 1"
.LASF988:
	.string	"TOKEN_STRING"
.LASF1002:
	.string	"OP_POP"
.LASF1179:
	.string	"errorAtCurrent"
.LASF767:
	.string	"_STDLIB_H 1"
.LASF1084:
	.string	"PREC_NONE"
.LASF618:
	.string	"UINT32_MAX (4294967295U)"
.LASF952:
	.string	"TOKEN_ULLEQ"
.LASF84:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF814:
	.string	"__int16_t"
.LASF1052:
	.string	"_IO_backup_base"
.LASF1061:
	.string	"_shortbuf"
.LASF129:
	.string	"__UINT64_C(c) c ## UL"
.LASF573:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF1175:
	.string	"verify"
.LASF656:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF159:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF673:
	.string	"_STRING_H 1"
.LASF602:
	.string	"_BITS_WCHAR_H 1"
.LASF1187:
	.string	"compile"
.LASF697:
	.string	"AS_LONG(value) ((value).as.lng)"
.LASF662:
	.string	"INT64_C(c) c ## L"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF390:
	.string	"_BSD_WCHAR_T_ "
.LASF173:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF768:
	.string	"_BITS_FLOATN_H "
.LASF258:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF1114:
	.string	"global"
.LASF439:
	.string	"__USE_ISOC99 1"
.LASF966:
	.string	"TOKEN_ELSIF"
.LASF942:
	.string	"TOKEN_CARETEQ"
.LASF79:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF822:
	.string	"__off64_t"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF945:
	.string	"TOKEN_CEQ"
.LASF156:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF4:
	.string	"__GNUC_MINOR__ 3"
.LASF1024:
	.string	"code"
.LASF366:
	.string	"__SIZE_T__ "
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF300:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF884:
	.string	"TOKEN_QUESTION"
.LASF245:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF521:
	.string	"__stub_chflags "
.LASF964:
	.string	"TOKEN_CLASS"
.LASF380:
	.string	"_SIZET_ "
.LASF589:
	.string	"__TIMER_T_TYPE void *"
.LASF178:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF720:
	.string	"compiler_h "
.LASF220:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF951:
	.string	"TOKEN_LLEQ"
.LASF668:
	.string	"UINTMAX_C(c) c ## UL"
.LASF1124:
	.string	"expression"
.LASF597:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF327:
	.string	"__SSE2__ 1"
.LASF991:
	.string	"TOKEN_NEWLINE"
.LASF1050:
	.string	"_IO_buf_end"
.LASF583:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF701:
	.string	"AS_ULONGLONG(value) ((value).as.uLnglng)"
.LASF876:
	.string	"TOKEN_LTLBRACE"
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
.LASF989:
	.string	"TOKEN_ERROR"
.LASF1037:
	.string	"globalNames"
.LASF603:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF789:
	.string	"__f32(x) x ##f32"
.LASF1068:
	.string	"__pad5"
.LASF761:
	.string	"FOPEN_MAX"
.LASF486:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF1102:
	.string	"name"
.LASF1184:
	.string	"Compilation/compiler/compiler.c"
.LASF281:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF771:
	.string	"__HAVE_FLOAT64X 1"
.LASF895:
	.string	"TOKEN_STAR"
.LASF1091:
	.string	"PREC_FACTOR"
.LASF217:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF970:
	.string	"TOKEN_IF"
.LASF464:
	.string	"__END_DECLS "
.LASF332:
	.string	"__SEG_GS 1"
.LASF1173:
	.string	"byte"
.LASF882:
	.string	"TOKEN_BANG"
.LASF1012:
	.string	"OP_SUBTRACT"
.LASF971:
	.string	"TOKEN_IN"
.LASF654:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF320:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF611:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF869:
	.string	"ObjType"
.LASF109:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF1077:
	.string	"stderr"
.LASF329:
	.string	"__SSE_MATH__ 1"
.LASF815:
	.string	"short int"
.LASF1162:
	.string	"jump"
.LASF906:
	.string	"TOKEN_GTGTGT"
.LASF724:
	.string	"AS_STRING(value) ((ObjString*)AS_OBJ(value))"
.LASF368:
	.string	"_SYS_SIZE_T_H "
.LASF125:
	.string	"__UINT16_C(c) c"
.LASF870:
	.string	"TOKEN_LEFT_PAREN"
.LASF831:
	.string	"uint64_t"
.LASF852:
	.string	"VAL_OBJ"
.LASF497:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF288:
	.string	"__NO_INLINE__ 1"
.LASF449:
	.string	"_SYS_CDEFS_H 1"
.LASF659:
	.string	"INT8_C(c) c"
.LASF612:
	.string	"INT8_MAX (127)"
.LASF141:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF476:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF177:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF532:
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
.LASF982:
	.string	"TOKEN_NAME"
.LASF914:
	.string	"TOKEN_USDUCEQ"
.LASF698:
	.string	"AS_ULONG(value) ((value).as.uLng)"
.LASF857:
	.string	"uLnglng"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF705:
	.string	"UNDEFINED_VAL ((Value){VAL_UNDEFINED})"
.LASF274:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF1060:
	.string	"_vtable_offset"
.LASF171:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF359:
	.string	"_PTRDIFF_T_ "
.LASF588:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF917:
	.string	"TOKEN_COLONUIEQ"
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
.LASF483:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF222:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF565:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF649:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF646:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF101:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF745:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF721:
	.string	"object_h "
.LASF1138:
	.string	"newIndex"
.LASF802:
	.string	"MB_CUR_MAX (__ctype_get_mb_cur_max ())"
.LASF791:
	.string	"__f32x(x) x ##f32x"
.LASF592:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF267:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF709:
	.string	"UCHAR_VAL(value) ((Value){VAL_UCHAR, {.uCh = value}})"
.LASF731:
	.string	"debug_h "
.LASF544:
	.string	"__S16_TYPE short int"
.LASF311:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF658:
	.string	"WINT_MAX (4294967295u)"
.LASF655:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF949:
	.string	"TOKEN_LEQ"
.LASF819:
	.string	"__int64_t"
.LASF619:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF960:
	.string	"TOKEN_GTEQ"
.LASF958:
	.string	"TOKEN_GT"
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
.LASF1085:
	.string	"PREC_ASSIGNMENT"
.LASF847:
	.string	"VAL_FLOAT"
.LASF52:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF840:
	.string	"VAL_BOOL"
.LASF912:
	.string	"TOKEN_USDCEQ"
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
.LASF962:
	.string	"TOKEN_BANGEQ"
.LASF37:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF229:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF1044:
	.string	"_IO_read_end"
.LASF744:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF1139:
	.string	"endExpression"
.LASF732:
	.string	"_STDIO_H 1"
.LASF685:
	.string	"IS_ULONG(value) ((value).type == VAL_ULONG)"
.LASF834:
	.string	"ObjString"
.LASF233:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF883:
	.string	"TOKEN_BANGBANG"
.LASF845:
	.string	"VAL_LONG"
.LASF91:
	.string	"__WINT_WIDTH__ 32"
.LASF560:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF1090:
	.string	"PREC_TERM"
.LASF1033:
	.string	"Table"
.LASF77:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF863:
	.string	"Value"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF398:
	.string	"_BSD_WCHAR_T_"
.LASF520:
	.string	"__stub___compat_bdflush "
.LASF626:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF384:
	.string	"__WCHAR_T__ "
.LASF923:
	.string	"TOKEN_COLONLLEQ"
.LASF1006:
	.string	"OP_SET_LOCAL"
.LASF438:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF562:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF621:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF83:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF144:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF321:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF1056:
	.string	"_fileno"
.LASF465:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF313:
	.string	"__amd64 1"
.LASF957:
	.string	"TOKEN_LT"
.LASF188:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF338:
	.string	"__unix__ 1"
.LASF457:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF943:
	.string	"TOKEN_TILDEEQ"
.LASF395:
	.string	"__INT_WCHAR_T_H "
.LASF519:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF613:
	.string	"INT16_MAX (32767)"
.LASF891:
	.string	"TOKEN_LTTILDE"
.LASF657:
	.string	"WINT_MIN (0u)"
.LASF1065:
	.string	"_wide_data"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF437:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF78:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF1182:
	.string	"token"
.LASF938:
	.string	"TOKEN_SLASHEQ"
.LASF82:
	.string	"__WINT_MIN__ 0U"
.LASF567:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF209:
	.string	"__FLT64_DIG__ 15"
.LASF276:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF880:
	.string	"TOKEN_RBRACELPAREN"
.LASF112:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF746:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF1099:
	.string	"infix"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF803:
	.string	"__COMPAR_FN_T "
.LASF1144:
	.string	"conditional"
.LASF579:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF605:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF860:
	.string	"float"
.LASF1076:
	.string	"stdout"
.LASF206:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF911:
	.string	"TOKEN_COLONCEQ"
.LASF637:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF537:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF326:
	.string	"__SSE__ 1"
.LASF336:
	.string	"__linux__ 1"
.LASF441:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF1177:
	.string	"message"
.LASF444:
	.string	"__GNU_LIBRARY__"
.LASF1097:
	.string	"ParseFn"
.LASF973:
	.string	"TOKEN_NIL"
.LASF351:
	.string	"__bool_true_false_are_defined 1"
.LASF907:
	.string	"TOKEN_GTGT"
.LASF830:
	.string	"uint32_t"
.LASF174:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF734:
	.string	"__need___va_list"
.LASF1032:
	.string	"entries"
.LASF318:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF868:
	.string	"OBJ_STRING"
.LASF126:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF528:
	.string	"__stub_sstk "
.LASF1113:
	.string	"compiler"
.LASF747:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF817:
	.string	"__int32_t"
.LASF827:
	.string	"int64_t"
.LASF800:
	.string	"EXIT_FAILURE 1"
.LASF452:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF983:
	.string	"TOKEN_NUMBER"
.LASF796:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF569:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF128:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF696:
	.string	"AS_UINT(value) ((value).as.uIn)"
.LASF1109:
	.string	"parser"
.LASF236:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF90:
	.string	"__WCHAR_WIDTH__ 32"
.LASF1015:
	.string	"OP_MODULATE"
.LASF742:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF1029:
	.string	"Chunk"
.LASF114:
	.string	"__INT16_C(c) c"
.LASF1110:
	.string	"compilingChunk"
.LASF1153:
	.string	"grouping"
.LASF251:
	.string	"__FLT64X_DIG__ 18"
.LASF837:
	.string	"hash"
.LASF954:
	.string	"TOKEN_DEQ"
.LASF967:
	.string	"TOKEN_FALSE"
.LASF272:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF684:
	.string	"IS_LONG(value) ((value).type == VAL_LONG)"
.LASF1020:
	.string	"OP_JUMP_IF_FALSE"
.LASF143:
	.string	"__INTPTR_WIDTH__ 64"
.LASF335:
	.string	"__linux 1"
.LASF833:
	.string	"next"
.LASF947:
	.string	"TOKEN_IEQ"
.LASF135:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF708:
	.string	"CHAR_VAL(value) ((Value){VAL_CHAR, {.ch = value}})"
.LASF175:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF606:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF530:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF1137:
	.string	"identifier"
.LASF858:
	.string	"dbllng"
.LASF651:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF165:
	.string	"__DBL_MANT_DIG__ 53"
.LASF667:
	.string	"INTMAX_C(c) c ## L"
.LASF1101:
	.string	"ParseRule"
.LASF956:
	.string	"TOKEN_SEQ"
.LASF379:
	.string	"_GCC_SIZE_T "
.LASF499:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF76:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF140:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
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
