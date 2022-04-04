	.file	"scanner.c"
	.text
.Ltext0:
	.comm	scanner,24,16
	.comm	token,24,16
	.globl	initScanner
	.type	initScanner, @function
initScanner:
.LFB0:
	.file 1 "Tokenization/scanner/scanner.c"
	.loc 1 17 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 18 19
	movq	-8(%rbp), %rax
	movq	%rax, scanner(%rip)
	.loc 1 19 21
	movq	-8(%rbp), %rax
	movq	%rax, 8+scanner(%rip)
	.loc 1 20 18
	movw	$1, 16+scanner(%rip)
	.loc 1 21 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	initScanner, .-initScanner
	.type	isAlpha, @function
isAlpha:
.LFB1:
	.loc 1 23 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 24 61
	cmpb	$96, -4(%rbp)
	jle	.L3
	.loc 1 24 22 discriminator 1
	cmpb	$122, -4(%rbp)
	jle	.L4
.L3:
	.loc 1 24 35 discriminator 4
	cmpb	$64, -4(%rbp)
	jle	.L5
	.loc 1 24 48 discriminator 5
	cmpb	$90, -4(%rbp)
	jle	.L4
.L5:
	.loc 1 24 61 discriminator 8
	cmpb	$95, -4(%rbp)
	jne	.L6
.L4:
	.loc 1 24 61 is_stmt 0 discriminator 9
	movl	$1, %eax
	jmp	.L7
.L6:
	.loc 1 24 61 discriminator 10
	movl	$0, %eax
.L7:
	.loc 1 24 61 discriminator 12
	andl	$1, %eax
	.loc 1 25 1 is_stmt 1 discriminator 12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	isAlpha, .-isAlpha
	.type	isDigit, @function
isDigit:
.LFB2:
	.loc 1 27 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 28 21
	cmpb	$47, -4(%rbp)
	jle	.L10
	.loc 1 28 21 is_stmt 0 discriminator 1
	cmpb	$57, -4(%rbp)
	jg	.L10
	.loc 1 28 21 discriminator 3
	movl	$1, %eax
	jmp	.L11
.L10:
	.loc 1 28 21 discriminator 4
	movl	$0, %eax
.L11:
	.loc 1 28 21 discriminator 6
	andl	$1, %eax
	.loc 1 29 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	isDigit, .-isDigit
	.type	isAtEnd, @function
isAtEnd:
.LFB3:
	.loc 1 31 21
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 32 20
	movq	8+scanner(%rip), %rax
	.loc 1 32 12
	movzbl	(%rax), %eax
	.loc 1 32 29
	testb	%al, %al
	sete	%al
	.loc 1 33 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	isAtEnd, .-isAtEnd
	.type	checkChar, @function
checkChar:
.LFB4:
	.loc 1 40 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 41 20
	movq	8+scanner(%rip), %rax
	.loc 1 41 12
	movzbl	(%rax), %eax
	.loc 1 42 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	checkChar, .-checkChar
	.type	checkNextChar, @function
checkNextChar:
.LFB5:
	.loc 1 44 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 45 8
	movl	$0, %eax
	call	isAtEnd
	.loc 1 45 7
	testb	%al, %al
	je	.L18
	.loc 1 45 26 discriminator 1
	movl	$0, %eax
	jmp	.L19
.L18:
	.loc 1 46 19
	movq	8+scanner(%rip), %rax
	.loc 1 46 27
	addq	$1, %rax
	movzbl	(%rax), %eax
.L19:
	.loc 1 47 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	checkNextChar, .-checkNextChar
	.type	nextChar, @function
nextChar:
.LFB6:
	.loc 1 49 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 50 16
	movl	$0, %eax
	call	checkChar
	movb	%al, -1(%rbp)
	.loc 1 51 12
	movq	8+scanner(%rip), %rax
	.loc 1 51 20
	addq	$1, %rax
	movq	%rax, 8+scanner(%rip)
	.loc 1 52 7
	cmpb	$10, -1(%rbp)
	jne	.L21
	.loc 1 52 26 discriminator 1
	movzwl	16+scanner(%rip), %eax
	.loc 1 52 31 discriminator 1
	addl	$1, %eax
	movw	%ax, 16+scanner(%rip)
.L21:
	.loc 1 53 12
	movzbl	-1(%rbp), %eax
	.loc 1 54 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	nextChar, .-nextChar
	.type	compareChar, @function
compareChar:
.LFB7:
	.loc 1 56 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 57 8
	movl	$0, %eax
	call	checkChar
	.loc 1 57 7
	cmpb	%al, -4(%rbp)
	je	.L24
	.loc 1 57 32 discriminator 1
	movl	$0, %eax
	jmp	.L25
.L24:
	.loc 1 58 5
	movl	$0, %eax
	call	nextChar
	.loc 1 59 11
	movl	$1, %eax
.L25:
	.loc 1 60 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	compareChar, .-compareChar
	.type	makeToken, @function
makeToken:
.LFB8:
	.loc 1 62 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	.loc 1 64 16
	movl	-44(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 65 26
	movq	scanner(%rip), %rax
	.loc 1 65 17
	movq	%rax, -24(%rbp)
	.loc 1 66 33
	movq	8+scanner(%rip), %rdx
	.loc 1 66 51
	movq	scanner(%rip), %rax
	.loc 1 66 42
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 66 18
	movw	%ax, -16(%rbp)
	.loc 1 67 25
	movzwl	16+scanner(%rip), %eax
	.loc 1 67 16
	movw	%ax, -14(%rbp)
	.loc 1 68 12
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 1 69 1
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	makeToken, .-makeToken
	.type	makeTwoCharToken, @function
makeTwoCharToken:
.LFB9:
	.loc 1 73 70
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movb	%al, -28(%rbp)
	.loc 1 73 70
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 74 22
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	compareChar
	.loc 1 74 12
	testb	%al, %al
	je	.L29
	.loc 1 74 12 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax
	jmp	.L30
.L29:
	.loc 1 74 12 discriminator 2
	movl	-36(%rbp), %eax
.L30:
	.loc 1 74 12 discriminator 4
	movq	-24(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	makeToken
	.loc 1 75 1 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	.loc 1 75 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L32:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	makeTwoCharToken, .-makeTwoCharToken
	.type	errorToken, @function
errorToken:
.LFB10:
	.loc 1 77 47 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 79 16
	movl	$119, -32(%rbp)
	.loc 1 80 17
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 81 29
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 81 18
	movw	%ax, -16(%rbp)
	.loc 1 82 25
	movzwl	16+scanner(%rip), %eax
	.loc 1 82 16
	movw	%ax, -14(%rbp)
	.loc 1 83 12
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 1 84 1
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	errorToken, .-errorToken
	.section	.rodata
.LC0:
	.string	"char: %d\n"
	.text
	.type	invalidToken, @function
invalidToken:
.LFB11:
	.loc 1 86 36
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
	.loc 1 86 36
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 88 5
	movabsq	$8386658464824651349, %rax
	movabsq	$7021781869991584869, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$4838871760032330851, %rax
	movq	%rax, -32(%rbp)
	movw	$39, -24(%rbp)
	.loc 1 89 12
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 89 27
	leaq	-2(%rax), %rdx
	.loc 1 89 32
	movzbl	-52(%rbp), %eax
	movb	%al, -48(%rbp,%rdx)
	.loc 1 91 5
	movzbl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 92 5
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 93 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	invalidToken, .-invalidToken
	.type	skipLineComment, @function
skipLineComment:
.LFB12:
	.loc 1 95 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 96 10
	jmp	.L38
.L40:
	.loc 1 97 9
	movl	$0, %eax
	call	nextChar
.L38:
	.loc 1 96 11
	movl	$0, %eax
	call	checkChar
	.loc 1 96 10
	cmpb	$10, %al
	je	.L41
	.loc 1 96 35 discriminator 1
	movl	$0, %eax
	call	isAtEnd
	.loc 1 96 34 discriminator 1
	xorl	$1, %eax
	.loc 1 96 31 discriminator 1
	testb	%al, %al
	jne	.L40
.L41:
	.loc 1 99 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	skipLineComment, .-skipLineComment
	.section	.rodata
.LC1:
	.string	"Unterminated block comment."
	.text
	.type	skipBlockComment, @function
skipBlockComment:
.LFB13:
	.loc 1 101 31
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 101 31
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 102 5
	movl	$0, %eax
	call	nextChar
	.loc 1 103 5
	movl	$0, %eax
	call	nextChar
	.loc 1 104 9
	movl	$1, -12(%rbp)
	.loc 1 105 10
	jmp	.L43
.L48:
	.loc 1 107 12
	movl	$0, %eax
	call	isAtEnd
	.loc 1 107 11
	testb	%al, %al
	je	.L44
	.loc 1 108 13
	leaq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	errorToken
	.loc 1 108 56
	jmp	.L42
.L44:
	.loc 1 111 12
	movl	$0, %eax
	call	checkChar
	.loc 1 111 11
	cmpb	$35, %al
	jne	.L46
	.loc 1 111 34 discriminator 1
	movl	$0, %eax
	call	checkNextChar
	.loc 1 111 31 discriminator 1
	cmpb	$124, %al
	jne	.L46
	.loc 1 112 13
	movl	$0, %eax
	call	nextChar
	.loc 1 113 13
	movl	$0, %eax
	call	nextChar
	.loc 1 114 20
	addl	$1, -12(%rbp)
	.loc 1 115 13
	jmp	.L43
.L46:
	.loc 1 118 12
	movl	$0, %eax
	call	checkChar
	.loc 1 118 11
	cmpb	$124, %al
	jne	.L47
	.loc 1 118 34 discriminator 1
	movl	$0, %eax
	call	checkNextChar
	.loc 1 118 31 discriminator 1
	cmpb	$35, %al
	jne	.L47
	.loc 1 119 13
	movl	$0, %eax
	call	nextChar
	.loc 1 120 13
	movl	$0, %eax
	call	nextChar
	.loc 1 121 20
	subl	$1, -12(%rbp)
	.loc 1 122 13
	jmp	.L43
.L47:
	.loc 1 125 9
	movl	$0, %eax
	call	nextChar
.L43:
	.loc 1 105 10
	cmpl	$0, -12(%rbp)
	jg	.L48
.L42:
	.loc 1 127 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	skipBlockComment, .-skipBlockComment
	.type	skipWhitespace, @function
skipWhitespace:
.LFB14:
	.loc 1 129 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.L58:
.LBB2:
	.loc 1 131 20
	movl	$0, %eax
	call	checkChar
	movb	%al, -1(%rbp)
	.loc 1 132 9
	movsbl	-1(%rbp), %eax
	cmpl	$35, %eax
	je	.L51
	cmpl	$35, %eax
	jg	.L59
	cmpl	$32, %eax
	je	.L53
	cmpl	$32, %eax
	jg	.L59
	cmpl	$9, %eax
	je	.L53
	cmpl	$13, %eax
	jne	.L59
.L53:
	.loc 1 136 17
	movl	$0, %eax
	call	nextChar
	.loc 1 137 17
	jmp	.L54
.L51:
	.loc 1 144 20
	movl	$0, %eax
	call	checkNextChar
	.loc 1 144 19
	cmpb	$124, %al
	jne	.L55
	.loc 1 144 43 discriminator 1
	movl	$0, %eax
	call	skipBlockComment
	.loc 1 146 17 discriminator 1
	jmp	.L60
.L55:
	.loc 1 145 22
	movl	$0, %eax
	call	skipLineComment
.L60:
	.loc 1 146 17
	nop
.L54:
.LBE2:
	.loc 1 130 12
	jmp	.L58
.L59:
.LBB3:
	.loc 1 148 17
	nop
.LBE3:
	.loc 1 151 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	skipWhitespace, .-skipWhitespace
	.type	checkKeyword, @function
checkKeyword:
.LFB15:
	.loc 1 155 97
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%esi, %eax
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%edi, %edx
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	.loc 1 156 15
	movq	8+scanner(%rip), %rdx
	.loc 1 156 33
	movq	scanner(%rip), %rax
	.loc 1 156 24
	movq	%rdx, %rcx
	subq	%rax, %rcx
	.loc 1 156 49
	movswl	-4(%rbp), %edx
	movswl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 1 156 7
	cmpq	%rax, %rcx
	jne	.L62
	.loc 1 156 61 discriminator 1
	movswq	-8(%rbp), %rdx
	.loc 1 156 75 discriminator 1
	movq	scanner(%rip), %rcx
	.loc 1 156 61 discriminator 1
	movswq	-4(%rbp), %rax
	.loc 1 156 82 discriminator 1
	addq	%rax, %rcx
	.loc 1 156 61 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	.loc 1 156 58 discriminator 1
	testl	%eax, %eax
	jne	.L62
	.loc 1 157 16
	movl	-20(%rbp), %eax
	jmp	.L63
.L62:
	.loc 1 159 12
	movl	$114, %eax
.L63:
	.loc 1 160 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	checkKeyword, .-checkKeyword
	.section	.rodata
.LC2:
	.string	"se"
.LC3:
	.string	"ass"
.LC4:
	.string	""
.LC5:
	.string	"ef"
.LC6:
	.string	"f"
.LC7:
	.string	"lse"
.LC8:
	.string	"r"
.LC9:
	.string	"n"
.LC10:
	.string	"="
.LC11:
	.string	"t"
.LC12:
	.string	"il"
.LC13:
	.string	"uts"
.LC14:
	.string	"eturn"
.LC15:
	.string	"uper"
.LC16:
	.string	"is"
.LC17:
	.string	"ue"
.LC18:
	.string	"le"
	.text
	.type	identifierType, @function
identifierType:
.LFB16:
	.loc 1 162 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 163 19
	movq	scanner(%rip), %rax
	.loc 1 163 25
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$99, %eax
	cmpl	$20, %eax
	ja	.L65
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L67(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L67(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L67:
	.long	.L79-.L67
	.long	.L78-.L67
	.long	.L77-.L67
	.long	.L76-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L75-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L74-.L67
	.long	.L65-.L67
	.long	.L73-.L67
	.long	.L65-.L67
	.long	.L72-.L67
	.long	.L65-.L67
	.long	.L71-.L67
	.long	.L70-.L67
	.long	.L69-.L67
	.long	.L68-.L67
	.long	.L65-.L67
	.long	.L66-.L67
	.text
.L79:
	.loc 1 165 23
	movq	8+scanner(%rip), %rdx
	.loc 1 165 41
	movq	scanner(%rip), %rax
	.loc 1 165 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 165 15
	cmpq	$1, %rax
	jle	.L110
	.loc 1 166 31
	movq	scanner(%rip), %rax
	.loc 1 166 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L81
	cmpl	$108, %eax
	jg	.L110
	cmpl	$61, %eax
	je	.L82
	cmpl	$97, %eax
	jne	.L110
	.loc 1 167 38
	movl	$93, %ecx
	leaq	.LC2(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L81:
	.loc 1 168 38
	movl	$94, %ecx
	leaq	.LC3(%rip), %rdx
	movl	$3, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L82:
	.loc 1 169 38
	movl	$75, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L78:
	.loc 1 174 23
	movq	8+scanner(%rip), %rdx
	.loc 1 174 41
	movq	scanner(%rip), %rax
	.loc 1 174 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 174 15
	cmpq	$1, %rax
	jle	.L77
	.loc 1 175 31
	movq	scanner(%rip), %rax
	.loc 1 175 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	je	.L84
	cmpl	$101, %eax
	jne	.L77
	.loc 1 176 38
	movl	$98, %ecx
	leaq	.LC5(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L84:
	.loc 1 177 38
	movl	$84, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L77:
	.loc 1 181 23
	movq	8+scanner(%rip), %rdx
	.loc 1 181 41
	movq	scanner(%rip), %rax
	.loc 1 181 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 181 15
	cmpq	$1, %rax
	jle	.L111
	.loc 1 182 31
	movq	scanner(%rip), %rax
	.loc 1 182 37
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$101, %eax
	je	.L86
	cmpl	$105, %eax
	je	.L87
	.loc 1 187 13
	jmp	.L111
.L86:
	.loc 1 183 38
	movl	$95, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$4, %edi
	call	checkKeyword
	jmp	.L83
.L87:
	.loc 1 184 38
	movl	$96, %ecx
	leaq	.LC6(%rip), %rdx
	movl	$1, %esi
	movl	$4, %edi
	call	checkKeyword
	jmp	.L83
.L76:
	.loc 1 189 23
	movq	8+scanner(%rip), %rdx
	.loc 1 189 41
	movq	scanner(%rip), %rax
	.loc 1 189 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 189 15
	cmpq	$1, %rax
	jle	.L112
	.loc 1 190 31
	movq	scanner(%rip), %rax
	.loc 1 190 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$111, %eax
	je	.L89
	cmpl	$111, %eax
	jg	.L112
	cmpl	$61, %eax
	je	.L90
	cmpl	$97, %eax
	jne	.L112
	.loc 1 191 38
	movl	$97, %ecx
	leaq	.LC7(%rip), %rdx
	movl	$3, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L89:
	.loc 1 192 38
	movl	$99, %ecx
	leaq	.LC8(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L90:
	.loc 1 193 38
	movl	$83, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L75:
	.loc 1 198 23
	movq	8+scanner(%rip), %rdx
	.loc 1 198 41
	movq	scanner(%rip), %rax
	.loc 1 198 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 198 15
	cmpq	$1, %rax
	jle	.L113
	.loc 1 199 31
	movq	scanner(%rip), %rax
	.loc 1 199 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$110, %eax
	je	.L92
	cmpl	$110, %eax
	jg	.L113
	cmpl	$61, %eax
	je	.L93
	cmpl	$102, %eax
	jne	.L113
	.loc 1 200 38
	movl	$100, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L92:
	.loc 1 201 38
	movl	$101, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L93:
	.loc 1 202 38
	movl	$77, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L74:
	.loc 1 207 23
	movq	8+scanner(%rip), %rdx
	.loc 1 207 41
	movq	scanner(%rip), %rax
	.loc 1 207 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 207 15
	cmpq	$1, %rax
	jle	.L114
	.loc 1 208 31
	movq	scanner(%rip), %rax
	.loc 1 208 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L95
	cmpl	$108, %eax
	jg	.L114
	cmpl	$101, %eax
	je	.L96
	cmpl	$101, %eax
	jg	.L114
	cmpl	$61, %eax
	je	.L97
	cmpl	$100, %eax
	jne	.L114
	.loc 1 209 38
	movl	$85, %ecx
	leaq	.LC10(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L96:
	.loc 1 210 38
	movl	$102, %ecx
	leaq	.LC11(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L95:
	.loc 1 211 38
	movl	$81, %ecx
	leaq	.LC10(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L97:
	.loc 1 212 38
	movl	$79, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L73:
	.loc 1 216 26
	movl	$103, %ecx
	leaq	.LC12(%rip), %rdx
	movl	$2, %esi
	movl	$1, %edi
	call	checkKeyword
	jmp	.L83
.L72:
	.loc 1 217 26
	movl	$104, %ecx
	leaq	.LC13(%rip), %rdx
	movl	$3, %esi
	movl	$1, %edi
	call	checkKeyword
	jmp	.L83
.L71:
	.loc 1 218 26
	movl	$106, %ecx
	leaq	.LC14(%rip), %rdx
	movl	$5, %esi
	movl	$1, %edi
	call	checkKeyword
	jmp	.L83
.L70:
	.loc 1 220 24
	movq	8+scanner(%rip), %rdx
	.loc 1 220 42
	movq	scanner(%rip), %rax
	.loc 1 220 33
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 220 16
	cmpq	$1, %rax
	jle	.L115
	.loc 1 221 31
	movq	scanner(%rip), %rax
	.loc 1 221 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	je	.L99
	cmpl	$117, %eax
	jne	.L115
	.loc 1 222 38
	movl	$105, %ecx
	leaq	.LC15(%rip), %rdx
	movl	$4, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L99:
	.loc 1 223 38
	movl	$86, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L69:
	.loc 1 228 23
	movq	8+scanner(%rip), %rdx
	.loc 1 228 41
	movq	scanner(%rip), %rax
	.loc 1 228 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 228 15
	cmpq	$1, %rax
	jle	.L116
	.loc 1 229 31
	movq	scanner(%rip), %rax
	.loc 1 229 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$104, %eax
	je	.L101
	cmpl	$114, %eax
	je	.L102
	.loc 1 234 13
	jmp	.L116
.L101:
	.loc 1 230 38
	movl	$107, %ecx
	leaq	.LC16(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L102:
	.loc 1 231 38
	movl	$108, %ecx
	leaq	.LC17(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L68:
	.loc 1 236 23
	movq	8+scanner(%rip), %rdx
	.loc 1 236 41
	movq	scanner(%rip), %rax
	.loc 1 236 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 236 15
	cmpq	$1, %rax
	jle	.L66
	.loc 1 237 31
	movq	scanner(%rip), %rax
	.loc 1 237 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L103
	cmpl	$108, %eax
	jg	.L66
	cmpl	$99, %eax
	je	.L104
	cmpl	$105, %eax
	je	.L105
	jmp	.L66
.L104:
	.loc 1 238 46
	movl	$76, %ecx
	leaq	.LC10(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L105:
	.loc 1 239 46
	movl	$78, %ecx
	leaq	.LC10(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L83
.L103:
	.loc 1 241 47 discriminator 8
	movq	scanner(%rip), %rax
	.loc 1 241 53 discriminator 8
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	je	.L106
	cmpl	$108, %eax
	jne	.L66
	.loc 1 242 54
	movl	$82, %ecx
	leaq	.LC10(%rip), %rdx
	movl	$1, %esi
	movl	$3, %edi
	call	checkKeyword
	jmp	.L83
.L106:
	.loc 1 243 54
	movl	$80, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movl	$3, %edi
	call	checkKeyword
	jmp	.L83
.L66:
	.loc 1 248 23
	movq	8+scanner(%rip), %rdx
	.loc 1 248 41
	movq	scanner(%rip), %rax
	.loc 1 248 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 248 15
	cmpq	$1, %rax
	jle	.L117
	.loc 1 249 31
	movq	scanner(%rip), %rax
	.loc 1 249 37
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$101, %eax
	je	.L108
	cmpl	$105, %eax
	je	.L109
	.loc 1 254 13
	jmp	.L117
.L108:
	.loc 1 250 38
	movl	$109, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$1, %esi
	movl	$3, %edi
	call	checkKeyword
	jmp	.L83
.L109:
	.loc 1 251 38
	movl	$110, %ecx
	leaq	.LC18(%rip), %rdx
	movl	$2, %esi
	movl	$3, %edi
	call	checkKeyword
	jmp	.L83
.L110:
	.loc 1 172 13
	nop
	jmp	.L65
.L111:
	.loc 1 187 13
	nop
	jmp	.L65
.L112:
	.loc 1 196 13
	nop
	jmp	.L65
.L113:
	.loc 1 205 13
	nop
	jmp	.L65
.L114:
	.loc 1 215 13
	nop
	jmp	.L65
.L115:
	.loc 1 226 13
	nop
	jmp	.L65
.L116:
	.loc 1 234 13
	nop
	jmp	.L65
.L117:
	.loc 1 254 13
	nop
.L65:
	.loc 1 256 12
	movl	$114, %eax
.L83:
	.loc 1 257 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	identifierType, .-identifierType
	.type	identifier, @function
identifier:
.LFB17:
	.loc 1 259 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 259 26
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 260 10
	jmp	.L119
.L120:
	.loc 1 260 57 discriminator 4
	movl	$0, %eax
	call	nextChar
.L119:
	.loc 1 260 19 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 1 260 11 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isAlpha
	.loc 1 260 10 discriminator 1
	testb	%al, %al
	jne	.L120
	.loc 1 260 43 discriminator 3
	movl	$0, %eax
	call	checkChar
	.loc 1 260 35 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 1 260 32 discriminator 3
	testb	%al, %al
	jne	.L120
	.loc 1 261 12
	movl	$0, %eax
	call	identifierType
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	makeToken
	.loc 1 262 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L122
	call	__stack_chk_fail@PLT
.L122:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	identifier, .-identifier
	.type	number, @function
number:
.LFB18:
	.loc 1 264 22
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 264 22
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 265 10
	jmp	.L124
.L125:
	.loc 1 265 33 discriminator 2
	movl	$0, %eax
	call	nextChar
.L124:
	.loc 1 265 19 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 1 265 11 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 1 265 10 discriminator 1
	testb	%al, %al
	jne	.L125
	.loc 1 268 8
	movl	$0, %eax
	call	checkChar
	.loc 1 268 7
	cmpb	$46, %al
	jne	.L126
	.loc 1 268 38 discriminator 1
	movl	$0, %eax
	call	checkNextChar
	.loc 1 268 30 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 1 268 27 discriminator 1
	testb	%al, %al
	je	.L126
	.loc 1 269 9
	movl	$0, %eax
	call	nextChar
	.loc 1 270 14
	jmp	.L127
.L128:
	.loc 1 270 37 discriminator 2
	movl	$0, %eax
	call	nextChar
.L127:
	.loc 1 270 23 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 1 270 15 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 1 270 14 discriminator 1
	testb	%al, %al
	jne	.L128
.L126:
	.loc 1 273 12
	movq	-24(%rbp), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	makeToken
	.loc 1 274 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	number, .-number
	.section	.rodata
.LC19:
	.string	"Unterminated string."
	.text
	.type	string, @function
string:
.LFB19:
	.loc 1 276 22
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 276 22
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 277 10
	jmp	.L132
.L135:
	.loc 1 278 12
	movl	$0, %eax
	call	checkChar
	.loc 1 278 11
	cmpb	$10, %al
	jne	.L133
	.loc 1 278 40 discriminator 1
	movzwl	16+scanner(%rip), %eax
	.loc 1 278 45 discriminator 1
	addl	$1, %eax
	movw	%ax, 16+scanner(%rip)
.L133:
	.loc 1 279 9
	movl	$0, %eax
	call	nextChar
.L132:
	.loc 1 277 12
	movl	$0, %eax
	call	checkChar
	.loc 1 277 10
	cmpb	$34, %al
	je	.L134
	.loc 1 277 34 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 1 277 31 discriminator 1
	cmpb	$39, %al
	je	.L134
	.loc 1 277 57 discriminator 2
	movl	$0, %eax
	call	checkChar
	.loc 1 277 54 discriminator 2
	cmpb	$96, %al
	je	.L134
	.loc 1 277 81 discriminator 3
	movl	$0, %eax
	call	isAtEnd
	.loc 1 277 80 discriminator 3
	xorl	$1, %eax
	.loc 1 277 77 discriminator 3
	testb	%al, %al
	jne	.L135
.L134:
	.loc 1 282 8
	movl	$0, %eax
	call	isAtEnd
	.loc 1 282 7
	testb	%al, %al
	je	.L136
	.loc 1 282 26 discriminator 1
	movq	-24(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	errorToken
	jmp	.L131
.L136:
	.loc 1 284 5
	movl	$0, %eax
	call	nextChar
	.loc 1 285 12
	movq	-24(%rbp), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	makeToken
.L131:
	.loc 1 286 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L138
	call	__stack_chk_fail@PLT
.L138:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	string, .-string
	.section	.rodata
.LC20:
	.string	"Unexpected character."
	.text
	.globl	scanToken
	.type	scanToken, @function
scanToken:
.LFB20:
	.loc 1 288 18
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 288 18
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 289 5
	movl	$0, %eax
	call	skipWhitespace
	.loc 1 290 28
	movq	8+scanner(%rip), %rax
	.loc 1 290 19
	movq	%rax, scanner(%rip)
	.loc 1 292 8
	movl	$0, %eax
	call	isAtEnd
	.loc 1 292 7
	testb	%al, %al
	je	.L140
	.loc 1 292 26 discriminator 1
	movq	-24(%rbp), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L140:
	.loc 1 294 17
	movl	$0, %eax
	call	nextChar
	.loc 1 294 13
	movb	%al, -9(%rbp)
	.loc 1 295 8
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isAlpha
	.loc 1 295 7
	testb	%al, %al
	je	.L142
	.loc 1 295 27 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	identifier
	jmp	.L139
.L142:
	.loc 1 296 8
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 1 296 7
	testb	%al, %al
	je	.L143
	.loc 1 296 27 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	number
	jmp	.L139
.L143:
	.loc 1 298 5
	movzbl	-9(%rbp), %eax
	subl	$10, %eax
	cmpl	$116, %eax
	ja	.L144
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L146(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L146(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L146:
	.long	.L213-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L170-.L146
	.long	.L149-.L146
	.long	.L144-.L146
	.long	.L169-.L146
	.long	.L168-.L146
	.long	.L167-.L146
	.long	.L149-.L146
	.long	.L166-.L146
	.long	.L165-.L146
	.long	.L164-.L146
	.long	.L163-.L146
	.long	.L162-.L146
	.long	.L161-.L146
	.long	.L160-.L146
	.long	.L159-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L158-.L146
	.long	.L157-.L146
	.long	.L156-.L146
	.long	.L155-.L146
	.long	.L154-.L146
	.long	.L153-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L152-.L146
	.long	.L144-.L146
	.long	.L151-.L146
	.long	.L150-.L146
	.long	.L144-.L146
	.long	.L149-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L144-.L146
	.long	.L148-.L146
	.long	.L144-.L146
	.long	.L147-.L146
	.long	.L145-.L146
	.text
.L166:
	.loc 1 300 26
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L165:
	.loc 1 302 16
	movl	$62, %edi
	call	compareChar
	.loc 1 302 15
	testb	%al, %al
	je	.L172
	.loc 1 302 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L172:
	.loc 1 303 20
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movl	$123, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L148:
	.loc 1 304 26
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L147:
	.loc 1 306 16
	movl	$62, %edi
	call	compareChar
	.loc 1 306 15
	testb	%al, %al
	je	.L173
	.loc 1 306 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L173:
	.loc 1 307 20
	movq	-24(%rbp), %rax
	movl	$3, %ecx
	movl	$10, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L152:
	.loc 1 308 26
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L151:
	.loc 1 309 26
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L170:
	.loc 1 313 16
	movl	$33, %edi
	call	compareChar
	.loc 1 313 15
	testb	%al, %al
	je	.L174
	.loc 1 313 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L174:
	.loc 1 314 20
	movq	-24(%rbp), %rax
	movl	$12, %ecx
	movl	$92, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L153:
	.loc 1 315 26
	movq	-24(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L162:
	.loc 1 316 26
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L160:
	.loc 1 318 16
	movl	$46, %edi
	call	compareChar
	.loc 1 318 15
	testb	%al, %al
	je	.L175
	.loc 1 319 24
	movq	-24(%rbp), %rax
	movl	$17, %ecx
	movl	$18, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L175:
	.loc 1 320 27
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L157:
	.loc 1 321 26
	movq	-24(%rbp), %rax
	movl	$19, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L155:
	.loc 1 324 26
	movq	-24(%rbp), %rax
	movl	$74, %ecx
	movl	$91, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L156:
	.loc 1 326 16
	movl	$60, %edi
	call	compareChar
	.loc 1 326 15
	testb	%al, %al
	je	.L176
	.loc 1 326 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L176:
	.loc 1 327 16
	movl	$123, %edi
	call	compareChar
	.loc 1 327 15
	testb	%al, %al
	je	.L177
	.loc 1 327 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L177:
	.loc 1 328 16
	movl	$40, %edi
	call	compareChar
	.loc 1 328 15
	testb	%al, %al
	je	.L178
	.loc 1 328 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L178:
	.loc 1 329 20
	movq	-24(%rbp), %rax
	movl	$87, %ecx
	movl	$89, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L154:
	.loc 1 331 16
	movl	$62, %edi
	call	compareChar
	.loc 1 331 15
	testb	%al, %al
	je	.L179
	.loc 1 331 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$37, %ecx
	movl	$36, %edx
	movl	$62, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L179:
	.loc 1 332 20
	movq	-24(%rbp), %rax
	movl	$88, %ecx
	movl	$90, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L163:
	.loc 1 334 26
	movq	-24(%rbp), %rax
	movl	$23, %ecx
	movl	$65, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L161:
	.loc 1 335 26
	movq	-24(%rbp), %rax
	movl	$24, %ecx
	movl	$66, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L164:
	.loc 1 337 16
	movl	$42, %edi
	call	compareChar
	.loc 1 337 15
	testb	%al, %al
	je	.L180
	.loc 1 337 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L180:
	.loc 1 338 20
	movq	-24(%rbp), %rax
	movl	$25, %ecx
	movl	$67, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L159:
	.loc 1 339 26
	movq	-24(%rbp), %rax
	movl	$26, %ecx
	movl	$68, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L168:
	.loc 1 340 26
	movq	-24(%rbp), %rax
	movl	$27, %ecx
	movl	$69, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L167:
	.loc 1 344 16
	movl	$38, %edi
	call	compareChar
	.loc 1 344 15
	testb	%al, %al
	je	.L181
	.loc 1 344 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$29, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L181:
	.loc 1 345 20
	movq	-24(%rbp), %rax
	movl	$32, %ecx
	movl	$70, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L150:
	.loc 1 347 16
	movl	$94, %edi
	call	compareChar
	.loc 1 347 15
	testb	%al, %al
	je	.L182
	.loc 1 347 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L182:
	.loc 1 348 20
	movq	-24(%rbp), %rax
	movl	$34, %ecx
	movl	$72, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L145:
	.loc 1 350 16
	movl	$62, %edi
	call	compareChar
	.loc 1 350 15
	testb	%al, %al
	je	.L183
	.loc 1 350 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$22, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L183:
	.loc 1 351 20
	movq	-24(%rbp), %rax
	movl	$35, %ecx
	movl	$73, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L139
.L149:
	.loc 1 363 20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	string
	jmp	.L139
.L158:
	.loc 1 367 16
	movl	$99, %edi
	call	compareChar
	.loc 1 367 15
	testb	%al, %al
	je	.L184
	.loc 1 367 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 367 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L184:
	.loc 1 368 16
	movl	$100, %edi
	call	compareChar
	.loc 1 368 15
	testb	%al, %al
	je	.L185
	.loc 1 368 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 368 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L185:
	.loc 1 369 16
	movl	$102, %edi
	call	compareChar
	.loc 1 369 15
	testb	%al, %al
	je	.L186
	.loc 1 369 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 369 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L186:
	.loc 1 370 16
	movl	$105, %edi
	call	compareChar
	.loc 1 370 15
	testb	%al, %al
	je	.L187
	.loc 1 370 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 370 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L187:
	.loc 1 371 16
	movl	$108, %edi
	call	compareChar
	.loc 1 371 15
	testb	%al, %al
	je	.L188
	.loc 1 372 20
	movl	$100, %edi
	call	compareChar
	.loc 1 372 19
	testb	%al, %al
	je	.L189
	.loc 1 372 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 372 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L189:
	.loc 1 373 20
	movl	$108, %edi
	call	compareChar
	.loc 1 373 19
	testb	%al, %al
	je	.L190
	.loc 1 373 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 373 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L190:
	.loc 1 374 20
	movl	$61, %edi
	call	compareChar
	.loc 1 374 19
	testb	%al, %al
	je	.L188
	.loc 1 374 45 discriminator 1
	movq	-24(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L188:
	.loc 1 376 16
	movl	$115, %edi
	call	compareChar
	.loc 1 376 15
	testb	%al, %al
	je	.L191
	.loc 1 376 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 376 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L191:
	.loc 1 377 16
	movl	$117, %edi
	call	compareChar
	.loc 1 377 15
	testb	%al, %al
	je	.L192
	.loc 1 378 20
	movl	$99, %edi
	call	compareChar
	.loc 1 378 19
	testb	%al, %al
	je	.L193
	.loc 1 378 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 378 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L193:
	.loc 1 379 20
	movl	$105, %edi
	call	compareChar
	.loc 1 379 19
	testb	%al, %al
	je	.L194
	.loc 1 379 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 379 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L194:
	.loc 1 380 20
	movl	$108, %edi
	call	compareChar
	.loc 1 380 19
	testb	%al, %al
	je	.L192
	.loc 1 381 24
	movl	$108, %edi
	call	compareChar
	.loc 1 381 23
	testb	%al, %al
	je	.L195
	.loc 1 381 42 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 1 381 61 discriminator 1
	movq	-24(%rbp), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L195:
	.loc 1 382 24
	movl	$61, %edi
	call	compareChar
	.loc 1 382 23
	testb	%al, %al
	je	.L192
	.loc 1 382 49 discriminator 1
	movq	-24(%rbp), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L192:
	.loc 1 385 16
	movl	$58, %edi
	call	compareChar
	.loc 1 385 15
	testb	%al, %al
	je	.L196
	.loc 1 385 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L196:
	.loc 1 386 16
	movl	$0, %edi
	call	compareChar
	.loc 1 386 15
	testb	%al, %al
	je	.L169
	.loc 1 386 42 discriminator 1
	movq	-24(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L169:
	.loc 1 389 23
	movq	8+scanner(%rip), %rdx
	.loc 1 389 41
	movq	scanner(%rip), %rax
	.loc 1 389 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 389 15
	cmpq	$1, %rax
	jle	.L216
	.loc 1 390 31
	movq	scanner(%rip), %rax
	.loc 1 390 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$61, %eax
	cmpl	$56, %eax
	ja	.L216
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L199(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L199(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L199:
	.long	.L206-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L205-.L199
	.long	.L204-.L199
	.long	.L216-.L199
	.long	.L203-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L202-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L201-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L216-.L199
	.long	.L200-.L199
	.long	.L216-.L199
	.long	.L198-.L199
	.text
.L205:
	.loc 1 391 38
	movq	-24(%rbp), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L204:
	.loc 1 392 38
	movq	-24(%rbp), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L203:
	.loc 1 393 38
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L202:
	.loc 1 394 38
	movq	-24(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L201:
	.loc 1 395 45 discriminator 2
	movq	scanner(%rip), %rax
	.loc 1 395 51 discriminator 2
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L207
	cmpl	$108, %eax
	jg	.L200
	cmpl	$61, %eax
	je	.L208
	cmpl	$100, %eax
	jne	.L200
	.loc 1 396 42
	movq	-24(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L207:
	.loc 1 397 42
	movq	-24(%rbp), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L208:
	.loc 1 398 42
	movq	-24(%rbp), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L200:
	.loc 1 400 38
	movq	-24(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L198:
	.loc 1 401 45 discriminator 3
	movq	scanner(%rip), %rax
	.loc 1 401 51 discriminator 3
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L209
	cmpl	$108, %eax
	jg	.L206
	cmpl	$99, %eax
	je	.L210
	cmpl	$105, %eax
	je	.L211
	jmp	.L206
.L210:
	.loc 1 402 42
	movq	-24(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L211:
	.loc 1 403 42
	movq	-24(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L209:
	.loc 1 404 49 discriminator 4
	movq	scanner(%rip), %rax
	.loc 1 404 55 discriminator 4
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	je	.L212
	cmpl	$108, %eax
	jne	.L206
	.loc 1 405 53 discriminator 5
	movq	scanner(%rip), %rax
	.loc 1 405 59 discriminator 5
	addq	$4, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	jne	.L212
	.loc 1 405 81
	movq	-24(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L212:
	.loc 1 406 46
	movq	-24(%rbp), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L206:
	.loc 1 409 38
	movq	-24(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L214:
	.loc 1 419 21
	movl	$0, %eax
	call	nextChar
	.loc 1 420 28
	movzwl	16+scanner(%rip), %eax
	.loc 1 420 33
	addl	$1, %eax
	movw	%ax, 16+scanner(%rip)
.L213:
	.loc 1 418 23
	movl	$0, %eax
	call	checkChar
	.loc 1 418 22
	cmpb	$10, %al
	je	.L214
	.loc 1 422 24
	movq	-24(%rbp), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L139
.L216:
	.loc 1 414 13
	nop
.L144:
	.loc 1 424 5
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	invalidToken
	.loc 1 425 12
	movq	-24(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	errorToken
.L139:
	.loc 1 426 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L215
	call	__stack_chk_fail@PLT
.L215:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	scanToken, .-scanToken
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 6 "Tokenization/scanner/scanner.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa9b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF920
	.byte	0xc
	.long	.LASF921
	.long	.LASF922
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF710
	.uleb128 0x3
	.long	.LASF715
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x44
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF711
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF712
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF713
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF714
	.uleb128 0x3
	.long	.LASF716
	.byte	0x3
	.byte	0x25
	.byte	0x15
	.long	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF717
	.uleb128 0x3
	.long	.LASF718
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x52
	.uleb128 0x3
	.long	.LASF719
	.byte	0x3
	.byte	0x27
	.byte	0x1a
	.long	0x92
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF720
	.uleb128 0x3
	.long	.LASF721
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x31
	.uleb128 0x3
	.long	.LASF722
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x31
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xb9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF723
	.uleb128 0x3
	.long	.LASF724
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x67
	.uleb128 0x7
	.long	0xc0
	.uleb128 0x3
	.long	.LASF725
	.byte	0x4
	.byte	0x19
	.byte	0x13
	.long	0x86
	.uleb128 0x3
	.long	.LASF726
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.long	0x7a
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x6
	.byte	0x6
	.byte	0xe
	.long	0x3da
	.uleb128 0x9
	.long	.LASF727
	.byte	0
	.uleb128 0x9
	.long	.LASF728
	.byte	0x1
	.uleb128 0x9
	.long	.LASF729
	.byte	0x2
	.uleb128 0x9
	.long	.LASF730
	.byte	0x3
	.uleb128 0x9
	.long	.LASF731
	.byte	0x4
	.uleb128 0x9
	.long	.LASF732
	.byte	0x5
	.uleb128 0x9
	.long	.LASF733
	.byte	0x6
	.uleb128 0x9
	.long	.LASF734
	.byte	0x7
	.uleb128 0x9
	.long	.LASF735
	.byte	0x8
	.uleb128 0x9
	.long	.LASF736
	.byte	0x9
	.uleb128 0x9
	.long	.LASF737
	.byte	0xa
	.uleb128 0x9
	.long	.LASF738
	.byte	0xb
	.uleb128 0x9
	.long	.LASF739
	.byte	0xc
	.uleb128 0x9
	.long	.LASF740
	.byte	0xd
	.uleb128 0x9
	.long	.LASF741
	.byte	0xe
	.uleb128 0x9
	.long	.LASF742
	.byte	0xf
	.uleb128 0x9
	.long	.LASF743
	.byte	0x10
	.uleb128 0x9
	.long	.LASF744
	.byte	0x11
	.uleb128 0x9
	.long	.LASF745
	.byte	0x12
	.uleb128 0x9
	.long	.LASF746
	.byte	0x13
	.uleb128 0x9
	.long	.LASF747
	.byte	0x14
	.uleb128 0x9
	.long	.LASF748
	.byte	0x15
	.uleb128 0x9
	.long	.LASF749
	.byte	0x16
	.uleb128 0x9
	.long	.LASF750
	.byte	0x17
	.uleb128 0x9
	.long	.LASF751
	.byte	0x18
	.uleb128 0x9
	.long	.LASF752
	.byte	0x19
	.uleb128 0x9
	.long	.LASF753
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF754
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF755
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF756
	.byte	0x1d
	.uleb128 0x9
	.long	.LASF757
	.byte	0x1e
	.uleb128 0x9
	.long	.LASF758
	.byte	0x1f
	.uleb128 0x9
	.long	.LASF759
	.byte	0x20
	.uleb128 0x9
	.long	.LASF760
	.byte	0x21
	.uleb128 0x9
	.long	.LASF761
	.byte	0x22
	.uleb128 0x9
	.long	.LASF762
	.byte	0x23
	.uleb128 0x9
	.long	.LASF763
	.byte	0x24
	.uleb128 0x9
	.long	.LASF764
	.byte	0x25
	.uleb128 0x9
	.long	.LASF765
	.byte	0x26
	.uleb128 0x9
	.long	.LASF766
	.byte	0x27
	.uleb128 0x9
	.long	.LASF767
	.byte	0x28
	.uleb128 0x9
	.long	.LASF768
	.byte	0x29
	.uleb128 0x9
	.long	.LASF769
	.byte	0x2a
	.uleb128 0x9
	.long	.LASF770
	.byte	0x2b
	.uleb128 0x9
	.long	.LASF771
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF772
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF773
	.byte	0x2e
	.uleb128 0x9
	.long	.LASF774
	.byte	0x2f
	.uleb128 0x9
	.long	.LASF775
	.byte	0x30
	.uleb128 0x9
	.long	.LASF776
	.byte	0x31
	.uleb128 0x9
	.long	.LASF777
	.byte	0x32
	.uleb128 0x9
	.long	.LASF778
	.byte	0x33
	.uleb128 0x9
	.long	.LASF779
	.byte	0x34
	.uleb128 0x9
	.long	.LASF780
	.byte	0x35
	.uleb128 0x9
	.long	.LASF781
	.byte	0x36
	.uleb128 0x9
	.long	.LASF782
	.byte	0x37
	.uleb128 0x9
	.long	.LASF783
	.byte	0x38
	.uleb128 0x9
	.long	.LASF784
	.byte	0x39
	.uleb128 0x9
	.long	.LASF785
	.byte	0x3a
	.uleb128 0x9
	.long	.LASF786
	.byte	0x3b
	.uleb128 0x9
	.long	.LASF787
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF788
	.byte	0x3d
	.uleb128 0x9
	.long	.LASF789
	.byte	0x3e
	.uleb128 0x9
	.long	.LASF790
	.byte	0x3f
	.uleb128 0x9
	.long	.LASF791
	.byte	0x40
	.uleb128 0x9
	.long	.LASF792
	.byte	0x41
	.uleb128 0x9
	.long	.LASF793
	.byte	0x42
	.uleb128 0x9
	.long	.LASF794
	.byte	0x43
	.uleb128 0x9
	.long	.LASF795
	.byte	0x44
	.uleb128 0x9
	.long	.LASF796
	.byte	0x45
	.uleb128 0x9
	.long	.LASF797
	.byte	0x46
	.uleb128 0x9
	.long	.LASF798
	.byte	0x47
	.uleb128 0x9
	.long	.LASF799
	.byte	0x48
	.uleb128 0x9
	.long	.LASF800
	.byte	0x49
	.uleb128 0x9
	.long	.LASF801
	.byte	0x4a
	.uleb128 0x9
	.long	.LASF802
	.byte	0x4b
	.uleb128 0x9
	.long	.LASF803
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF804
	.byte	0x4d
	.uleb128 0x9
	.long	.LASF805
	.byte	0x4e
	.uleb128 0x9
	.long	.LASF806
	.byte	0x4f
	.uleb128 0x9
	.long	.LASF807
	.byte	0x50
	.uleb128 0x9
	.long	.LASF808
	.byte	0x51
	.uleb128 0x9
	.long	.LASF809
	.byte	0x52
	.uleb128 0x9
	.long	.LASF810
	.byte	0x53
	.uleb128 0x9
	.long	.LASF811
	.byte	0x54
	.uleb128 0x9
	.long	.LASF812
	.byte	0x55
	.uleb128 0x9
	.long	.LASF813
	.byte	0x56
	.uleb128 0x9
	.long	.LASF814
	.byte	0x57
	.uleb128 0x9
	.long	.LASF815
	.byte	0x58
	.uleb128 0x9
	.long	.LASF816
	.byte	0x59
	.uleb128 0x9
	.long	.LASF817
	.byte	0x5a
	.uleb128 0x9
	.long	.LASF818
	.byte	0x5b
	.uleb128 0x9
	.long	.LASF819
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF820
	.byte	0x5d
	.uleb128 0x9
	.long	.LASF821
	.byte	0x5e
	.uleb128 0x9
	.long	.LASF822
	.byte	0x5f
	.uleb128 0x9
	.long	.LASF823
	.byte	0x60
	.uleb128 0x9
	.long	.LASF824
	.byte	0x61
	.uleb128 0x9
	.long	.LASF825
	.byte	0x62
	.uleb128 0x9
	.long	.LASF826
	.byte	0x63
	.uleb128 0x9
	.long	.LASF827
	.byte	0x64
	.uleb128 0x9
	.long	.LASF828
	.byte	0x65
	.uleb128 0x9
	.long	.LASF829
	.byte	0x66
	.uleb128 0x9
	.long	.LASF830
	.byte	0x67
	.uleb128 0x9
	.long	.LASF831
	.byte	0x68
	.uleb128 0x9
	.long	.LASF832
	.byte	0x69
	.uleb128 0x9
	.long	.LASF833
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF834
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF835
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF836
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF837
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF838
	.byte	0x6f
	.uleb128 0x9
	.long	.LASF839
	.byte	0x70
	.uleb128 0x9
	.long	.LASF840
	.byte	0x71
	.uleb128 0x9
	.long	.LASF841
	.byte	0x72
	.uleb128 0x9
	.long	.LASF842
	.byte	0x73
	.uleb128 0x9
	.long	.LASF843
	.byte	0x74
	.uleb128 0x9
	.long	.LASF844
	.byte	0x75
	.uleb128 0x9
	.long	.LASF845
	.byte	0x76
	.uleb128 0x9
	.long	.LASF846
	.byte	0x77
	.uleb128 0x9
	.long	.LASF847
	.byte	0x78
	.uleb128 0x9
	.long	.LASF848
	.byte	0x79
	.uleb128 0x9
	.long	.LASF849
	.byte	0x7a
	.byte	0
	.uleb128 0x3
	.long	.LASF850
	.byte	0x6
	.byte	0x9c
	.byte	0x3
	.long	0xe9
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.long	0x424
	.uleb128 0xb
	.long	.LASF851
	.byte	0x6
	.byte	0x9f
	.byte	0xf
	.long	0x3da
	.byte	0
	.uleb128 0xb
	.long	.LASF852
	.byte	0x6
	.byte	0xa0
	.byte	0x13
	.long	0x424
	.byte	0x8
	.uleb128 0xb
	.long	.LASF853
	.byte	0x6
	.byte	0xa1
	.byte	0xd
	.long	0xd1
	.byte	0x10
	.uleb128 0xb
	.long	.LASF854
	.byte	0x6
	.byte	0xa2
	.byte	0xd
	.long	0xd1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcc
	.uleb128 0x3
	.long	.LASF855
	.byte	0x6
	.byte	0xa3
	.byte	0x3
	.long	0x3e6
	.uleb128 0xc
	.long	.LASF923
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x5bd
	.uleb128 0xb
	.long	.LASF856
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x4b
	.byte	0
	.uleb128 0xb
	.long	.LASF857
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xb3
	.byte	0x8
	.uleb128 0xb
	.long	.LASF858
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xb3
	.byte	0x10
	.uleb128 0xb
	.long	.LASF859
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xb3
	.byte	0x18
	.uleb128 0xb
	.long	.LASF860
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xb3
	.byte	0x20
	.uleb128 0xb
	.long	.LASF861
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xb3
	.byte	0x28
	.uleb128 0xb
	.long	.LASF862
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xb3
	.byte	0x30
	.uleb128 0xb
	.long	.LASF863
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xb3
	.byte	0x38
	.uleb128 0xb
	.long	.LASF864
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xb3
	.byte	0x40
	.uleb128 0xb
	.long	.LASF865
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xb3
	.byte	0x48
	.uleb128 0xb
	.long	.LASF866
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xb3
	.byte	0x50
	.uleb128 0xb
	.long	.LASF867
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xb3
	.byte	0x58
	.uleb128 0xb
	.long	.LASF868
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x5d6
	.byte	0x60
	.uleb128 0xb
	.long	.LASF869
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x5dc
	.byte	0x68
	.uleb128 0xb
	.long	.LASF870
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x4b
	.byte	0x70
	.uleb128 0xb
	.long	.LASF871
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x4b
	.byte	0x74
	.uleb128 0xb
	.long	.LASF872
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x99
	.byte	0x78
	.uleb128 0xb
	.long	.LASF873
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x59
	.byte	0x80
	.uleb128 0xb
	.long	.LASF874
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x73
	.byte	0x82
	.uleb128 0xb
	.long	.LASF875
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x5e2
	.byte	0x83
	.uleb128 0xb
	.long	.LASF876
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x5f2
	.byte	0x88
	.uleb128 0xb
	.long	.LASF877
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xa5
	.byte	0x90
	.uleb128 0xb
	.long	.LASF878
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x5fd
	.byte	0x98
	.uleb128 0xb
	.long	.LASF879
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x608
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF880
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x5dc
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF881
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xb1
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF882
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x38
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF883
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x4b
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF884
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x60e
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF885
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x436
	.uleb128 0xd
	.long	.LASF924
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF886
	.uleb128 0x6
	.byte	0x8
	.long	0x5d1
	.uleb128 0x6
	.byte	0x8
	.long	0x436
	.uleb128 0xf
	.long	0xb9
	.long	0x5f2
	.uleb128 0x10
	.long	0x44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c9
	.uleb128 0xe
	.long	.LASF887
	.uleb128 0x6
	.byte	0x8
	.long	0x5f8
	.uleb128 0xe
	.long	.LASF888
	.uleb128 0x6
	.byte	0x8
	.long	0x603
	.uleb128 0xf
	.long	0xb9
	.long	0x61e
	.uleb128 0x10
	.long	0x44
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.long	.LASF889
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x62a
	.uleb128 0x6
	.byte	0x8
	.long	0x5bd
	.uleb128 0x11
	.long	.LASF890
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x62a
	.uleb128 0x11
	.long	.LASF891
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x62a
	.uleb128 0xa
	.byte	0x18
	.byte	0x1
	.byte	0x8
	.byte	0x9
	.long	0x679
	.uleb128 0xb
	.long	.LASF852
	.byte	0x1
	.byte	0x9
	.byte	0x13
	.long	0x424
	.byte	0
	.uleb128 0xb
	.long	.LASF892
	.byte	0x1
	.byte	0xa
	.byte	0x13
	.long	0x424
	.byte	0x8
	.uleb128 0xb
	.long	.LASF854
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.long	0xd1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF893
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.long	0x648
	.uleb128 0x12
	.long	.LASF894
	.byte	0x1
	.byte	0xe
	.byte	0x9
	.long	0x679
	.uleb128 0x9
	.byte	0x3
	.quad	scanner
	.uleb128 0x12
	.long	.LASF895
	.byte	0x1
	.byte	0xf
	.byte	0x7
	.long	0x42a
	.uleb128 0x9
	.byte	0x3
	.quad	token
	.uleb128 0x13
	.long	.LASF925
	.byte	0x1
	.value	0x120
	.byte	0x7
	.long	0x42a
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e3
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.value	0x126
	.byte	0xd
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x15
	.long	.LASF896
	.byte	0x1
	.value	0x114
	.byte	0xe
	.long	0x42a
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF897
	.byte	0x1
	.value	0x108
	.byte	0xe
	.long	0x42a
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF898
	.byte	0x1
	.value	0x103
	.byte	0xe
	.long	0x42a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF899
	.byte	0x1
	.byte	0xa2
	.byte	0x12
	.long	0x3da
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF905
	.byte	0x1
	.byte	0x9b
	.byte	0x12
	.long	0x3da
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x7bd
	.uleb128 0x18
	.long	.LASF852
	.byte	0x1
	.byte	0x9b
	.byte	0x27
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF853
	.byte	0x1
	.byte	0x9b
	.byte	0x36
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF900
	.byte	0x1
	.byte	0x9b
	.byte	0x4c
	.long	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF851
	.byte	0x1
	.byte	0x9b
	.byte	0x5c
	.long	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF901
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ef
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.uleb128 0x1b
	.string	"c"
	.byte	0x1
	.byte	0x83
	.byte	0x10
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF902
	.byte	0x1
	.byte	0x65
	.byte	0xd
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x81d
	.uleb128 0x1c
	.long	.LASF903
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.long	.LASF926
	.byte	0x1
	.byte	0x5f
	.byte	0xd
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF912
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x873
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x56
	.byte	0x22
	.long	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF904
	.byte	0x1
	.byte	0x57
	.byte	0xd
	.long	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0xdd
	.long	0x883
	.uleb128 0x10
	.long	0x44
	.byte	0x19
	.byte	0
	.uleb128 0x17
	.long	.LASF906
	.byte	0x1
	.byte	0x4d
	.byte	0xe
	.long	0x42a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c4
	.uleb128 0x18
	.long	.LASF907
	.byte	0x1
	.byte	0x4d
	.byte	0x27
	.long	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF895
	.byte	0x1
	.byte	0x4e
	.byte	0xb
	.long	0x42a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.long	.LASF908
	.byte	0x1
	.byte	0x49
	.byte	0xe
	.long	0x42a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x912
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x49
	.byte	0x26
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"one"
	.byte	0x1
	.byte	0x49
	.byte	0x33
	.long	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"two"
	.byte	0x1
	.byte	0x49
	.byte	0x42
	.long	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x20
	.long	.LASF909
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.long	0x42a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x953
	.uleb128 0x18
	.long	.LASF851
	.byte	0x1
	.byte	0x3e
	.byte	0x22
	.long	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	.LASF895
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.long	0x42a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.long	.LASF910
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.long	0x983
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x983
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x38
	.byte	0x1f
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF911
	.uleb128 0x21
	.long	.LASF913
	.byte	0x1
	.byte	0x31
	.byte	0xf
	.long	0xc0
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ba
	.uleb128 0x1b
	.string	"c"
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x16
	.long	.LASF914
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.long	0xc0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF915
	.byte	0x1
	.byte	0x28
	.byte	0xf
	.long	0xc0
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF916
	.byte	0x1
	.byte	0x1f
	.byte	0xc
	.long	0x983
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF917
	.byte	0x1
	.byte	0x1b
	.byte	0xc
	.long	0x983
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xa44
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x1b
	.byte	0x1b
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF918
	.byte	0x1
	.byte	0x17
	.byte	0xc
	.long	0x983
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xa74
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x17
	.byte	0x1b
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF927
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF919
	.byte	0x1
	.byte	0x11
	.byte	0x20
	.long	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
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
	.uleb128 0x22
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
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
	.file 10 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.file 11 "Tokenization/scanner/../../common/common.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x2
	.long	.LASF345
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xd
	.file 14 "/usr/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro5
	.file 15 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF405
	.file 16 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro6
	.file 17 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1cd
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro7
	.file 18 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x1c4
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 19 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x1c5
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x15
	.long	.LASF508
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 20 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x1e5
	.uleb128 0x14
	.file 21 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x15
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
	.long	.LASF541
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 22 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x18
	.long	.LASF542
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.file 23 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 24 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x6
	.uleb128 0xe1
	.long	.LASF600
	.byte	0x4
	.file 25 "/usr/include/x86_64-linux-gnu/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x14
	.long	.LASF604
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x14
	.long	.LASF605
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF668
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.long	.LASF672
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xf
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
	.byte	0x5
	.uleb128 0x23
	.long	.LASF676
	.file 26 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.file 27 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x2
	.long	.LASF679
	.file 28 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0x2
	.long	.LASF680
	.byte	0x4
	.byte	0x4
	.file 29 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x2
	.long	.LASF681
	.byte	0x4
	.file 30 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x2
	.long	.LASF682
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.file 31 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro26
	.file 32 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.byte	0x3
	.uleb128 0x30d
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.file 33 "/usr/include/string.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x21
	.byte	0x7
	.long	.Ldebug_macro27
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro21
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
	.long	.LASF346
	.byte	0x5
	.uleb128 0x21
	.long	.LASF347
	.byte	0x5
	.uleb128 0x22
	.long	.LASF348
	.byte	0x5
	.uleb128 0x23
	.long	.LASF349
	.byte	0x5
	.uleb128 0x34
	.long	.LASF350
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.27677723d43e5b5a7afdf8d798429f1d,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF351
	.byte	0x5
	.uleb128 0x28
	.long	.LASF352
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF353
	.byte	0x5
	.uleb128 0x83
	.long	.LASF354
	.byte	0x5
	.uleb128 0x84
	.long	.LASF355
	.byte	0x5
	.uleb128 0x85
	.long	.LASF356
	.byte	0x5
	.uleb128 0x86
	.long	.LASF357
	.byte	0x5
	.uleb128 0x87
	.long	.LASF358
	.byte	0x5
	.uleb128 0x88
	.long	.LASF359
	.byte	0x5
	.uleb128 0x89
	.long	.LASF360
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF361
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF362
	.byte	0x6
	.uleb128 0x9b
	.long	.LASF363
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF364
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF365
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF366
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF367
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF368
	.byte	0x5
	.uleb128 0xba
	.long	.LASF369
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF370
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF371
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF372
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF373
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF374
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF375
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF376
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF377
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF378
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF379
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF380
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF381
	.byte	0x5
	.uleb128 0x104
	.long	.LASF382
	.byte	0x5
	.uleb128 0x105
	.long	.LASF383
	.byte	0x5
	.uleb128 0x106
	.long	.LASF384
	.byte	0x5
	.uleb128 0x107
	.long	.LASF385
	.byte	0x5
	.uleb128 0x108
	.long	.LASF386
	.byte	0x5
	.uleb128 0x109
	.long	.LASF387
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF388
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF389
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF390
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF391
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF392
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF393
	.byte	0x5
	.uleb128 0x110
	.long	.LASF394
	.byte	0x5
	.uleb128 0x111
	.long	.LASF395
	.byte	0x5
	.uleb128 0x112
	.long	.LASF396
	.byte	0x6
	.uleb128 0x11f
	.long	.LASF397
	.byte	0x6
	.uleb128 0x154
	.long	.LASF398
	.byte	0x6
	.uleb128 0x186
	.long	.LASF399
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF400
	.byte	0x6
	.uleb128 0x191
	.long	.LASF401
	.byte	0x5
	.uleb128 0x196
	.long	.LASF402
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.23.022efde71688fcb285fe42cc87d41ee3,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF403
	.byte	0x5
	.uleb128 0x19
	.long	.LASF404
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.27245cfc2802812683deaaadc4051edf,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF406
	.byte	0x6
	.uleb128 0x78
	.long	.LASF407
	.byte	0x6
	.uleb128 0x79
	.long	.LASF408
	.byte	0x6
	.uleb128 0x7a
	.long	.LASF409
	.byte	0x6
	.uleb128 0x7b
	.long	.LASF410
	.byte	0x6
	.uleb128 0x7c
	.long	.LASF411
	.byte	0x6
	.uleb128 0x7d
	.long	.LASF412
	.byte	0x6
	.uleb128 0x7e
	.long	.LASF413
	.byte	0x6
	.uleb128 0x7f
	.long	.LASF414
	.byte	0x6
	.uleb128 0x80
	.long	.LASF415
	.byte	0x6
	.uleb128 0x81
	.long	.LASF416
	.byte	0x6
	.uleb128 0x82
	.long	.LASF417
	.byte	0x6
	.uleb128 0x83
	.long	.LASF418
	.byte	0x6
	.uleb128 0x84
	.long	.LASF419
	.byte	0x6
	.uleb128 0x85
	.long	.LASF420
	.byte	0x6
	.uleb128 0x86
	.long	.LASF421
	.byte	0x6
	.uleb128 0x87
	.long	.LASF422
	.byte	0x6
	.uleb128 0x88
	.long	.LASF423
	.byte	0x6
	.uleb128 0x89
	.long	.LASF424
	.byte	0x6
	.uleb128 0x8a
	.long	.LASF425
	.byte	0x6
	.uleb128 0x8b
	.long	.LASF426
	.byte	0x6
	.uleb128 0x8c
	.long	.LASF427
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF428
	.byte	0x6
	.uleb128 0x8e
	.long	.LASF429
	.byte	0x6
	.uleb128 0x8f
	.long	.LASF430
	.byte	0x6
	.uleb128 0x90
	.long	.LASF431
	.byte	0x6
	.uleb128 0x91
	.long	.LASF432
	.byte	0x5
	.uleb128 0x96
	.long	.LASF433
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF434
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF435
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF436
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF437
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF438
	.byte	0x5
	.uleb128 0xff
	.long	.LASF439
	.byte	0x5
	.uleb128 0x193
	.long	.LASF440
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF441
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF442
	.byte	0x6
	.uleb128 0x1bf
	.long	.LASF443
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF444
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF445
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF446
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF447
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.19.0d545e69f14b328423facbc3c055a47a,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF448
	.byte	0x2
	.uleb128 0x22
	.string	"__P"
	.byte	0x6
	.uleb128 0x23
	.long	.LASF449
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF450
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF451
	.byte	0x5
	.uleb128 0x37
	.long	.LASF452
	.byte	0x5
	.uleb128 0x38
	.long	.LASF453
	.byte	0x5
	.uleb128 0x39
	.long	.LASF454
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF455
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF456
	.byte	0x5
	.uleb128 0x63
	.long	.LASF457
	.byte	0x5
	.uleb128 0x64
	.long	.LASF458
	.byte	0x5
	.uleb128 0x69
	.long	.LASF459
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF460
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF461
	.byte	0x5
	.uleb128 0x75
	.long	.LASF462
	.byte	0x5
	.uleb128 0x76
	.long	.LASF463
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF464
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF465
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF466
	.byte	0x5
	.uleb128 0x81
	.long	.LASF467
	.byte	0x5
	.uleb128 0x82
	.long	.LASF468
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF469
	.byte	0x5
	.uleb128 0x90
	.long	.LASF470
	.byte	0x5
	.uleb128 0xae
	.long	.LASF471
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF472
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF473
	.byte	0x5
	.uleb128 0xba
	.long	.LASF474
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF475
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF476
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF477
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF478
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF479
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF480
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF481
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF482
	.byte	0x5
	.uleb128 0x105
	.long	.LASF483
	.byte	0x5
	.uleb128 0x112
	.long	.LASF484
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF485
	.byte	0x5
	.uleb128 0x125
	.long	.LASF486
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF487
	.byte	0x5
	.uleb128 0x136
	.long	.LASF488
	.byte	0x6
	.uleb128 0x13e
	.long	.LASF489
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF490
	.byte	0x5
	.uleb128 0x148
	.long	.LASF491
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF492
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF493
	.byte	0x5
	.uleb128 0x164
	.long	.LASF494
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF495
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF496
	.byte	0x5
	.uleb128 0x183
	.long	.LASF497
	.byte	0x5
	.uleb128 0x192
	.long	.LASF498
	.byte	0x5
	.uleb128 0x193
	.long	.LASF499
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF500
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF501
	.byte	0x6
	.uleb128 0x1b3
	.long	.LASF502
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF503
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF504
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.baf119258a1e53d8dba67ceac44ab6bc,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF505
	.byte	0x5
	.uleb128 0xc
	.long	.LASF506
	.byte	0x5
	.uleb128 0xe
	.long	.LASF507
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.475.fb75d2e4416aa349344e6f45f683bf28,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF509
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF510
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF511
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF512
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF513
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF514
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF515
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF516
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF517
	.byte	0x5
	.uleb128 0x200
	.long	.LASF518
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.6ce4c34010988db072c080326a6b6319,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF519
	.byte	0x5
	.uleb128 0xb
	.long	.LASF520
	.byte	0x5
	.uleb128 0xc
	.long	.LASF521
	.byte	0x5
	.uleb128 0xd
	.long	.LASF522
	.byte	0x5
	.uleb128 0xe
	.long	.LASF523
	.byte	0x5
	.uleb128 0xf
	.long	.LASF524
	.byte	0x5
	.uleb128 0x10
	.long	.LASF525
	.byte	0x5
	.uleb128 0x11
	.long	.LASF526
	.byte	0x5
	.uleb128 0x12
	.long	.LASF527
	.byte	0x5
	.uleb128 0x13
	.long	.LASF528
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.37.d9274df4cc0172452960ad9644fa5579,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x25
	.long	.LASF529
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF530
	.byte	0x6
	.uleb128 0x31
	.long	.LASF531
	.byte	0x5
	.uleb128 0x35
	.long	.LASF532
	.byte	0x6
	.uleb128 0x37
	.long	.LASF533
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF534
	.byte	0x6
	.uleb128 0x42
	.long	.LASF535
	.byte	0x5
	.uleb128 0x46
	.long	.LASF536
	.byte	0x6
	.uleb128 0x48
	.long	.LASF537
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF538
	.byte	0x6
	.uleb128 0x51
	.long	.LASF539
	.byte	0x5
	.uleb128 0x55
	.long	.LASF540
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.109.56eb9ae966b255288cc544f18746a7ff,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF543
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF544
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF545
	.byte	0x5
	.uleb128 0x70
	.long	.LASF546
	.byte	0x5
	.uleb128 0x71
	.long	.LASF547
	.byte	0x5
	.uleb128 0x72
	.long	.LASF548
	.byte	0x5
	.uleb128 0x80
	.long	.LASF549
	.byte	0x5
	.uleb128 0x81
	.long	.LASF550
	.byte	0x5
	.uleb128 0x82
	.long	.LASF551
	.byte	0x5
	.uleb128 0x83
	.long	.LASF552
	.byte	0x5
	.uleb128 0x84
	.long	.LASF553
	.byte	0x5
	.uleb128 0x85
	.long	.LASF554
	.byte	0x5
	.uleb128 0x86
	.long	.LASF555
	.byte	0x5
	.uleb128 0x87
	.long	.LASF556
	.byte	0x5
	.uleb128 0x89
	.long	.LASF557
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.2c64f817c0dc4b6fb2a2c619d717be26,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF558
	.byte	0x5
	.uleb128 0x22
	.long	.LASF559
	.byte	0x5
	.uleb128 0x23
	.long	.LASF560
	.byte	0x5
	.uleb128 0x26
	.long	.LASF561
	.byte	0x5
	.uleb128 0x27
	.long	.LASF562
	.byte	0x5
	.uleb128 0x28
	.long	.LASF563
	.byte	0x5
	.uleb128 0x29
	.long	.LASF564
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF565
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF566
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF567
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF568
	.byte	0x5
	.uleb128 0x33
	.long	.LASF569
	.byte	0x5
	.uleb128 0x34
	.long	.LASF570
	.byte	0x5
	.uleb128 0x35
	.long	.LASF571
	.byte	0x5
	.uleb128 0x36
	.long	.LASF572
	.byte	0x5
	.uleb128 0x37
	.long	.LASF573
	.byte	0x5
	.uleb128 0x38
	.long	.LASF574
	.byte	0x5
	.uleb128 0x39
	.long	.LASF575
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF576
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF577
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF578
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF579
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF580
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF581
	.byte	0x5
	.uleb128 0x40
	.long	.LASF582
	.byte	0x5
	.uleb128 0x41
	.long	.LASF583
	.byte	0x5
	.uleb128 0x42
	.long	.LASF584
	.byte	0x5
	.uleb128 0x43
	.long	.LASF585
	.byte	0x5
	.uleb128 0x44
	.long	.LASF586
	.byte	0x5
	.uleb128 0x45
	.long	.LASF587
	.byte	0x5
	.uleb128 0x46
	.long	.LASF588
	.byte	0x5
	.uleb128 0x47
	.long	.LASF589
	.byte	0x5
	.uleb128 0x48
	.long	.LASF590
	.byte	0x5
	.uleb128 0x49
	.long	.LASF591
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF592
	.byte	0x5
	.uleb128 0x50
	.long	.LASF593
	.byte	0x5
	.uleb128 0x53
	.long	.LASF594
	.byte	0x5
	.uleb128 0x56
	.long	.LASF595
	.byte	0x5
	.uleb128 0x59
	.long	.LASF596
	.byte	0x5
	.uleb128 0x61
	.long	.LASF597
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time64.h.24.a8166ae916ec910dab0d8987098d42ee,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF598
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF599
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.20.510818a05484290d697a517509bf4b2d,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF601
	.byte	0x5
	.uleb128 0x22
	.long	.LASF602
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF603
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.88.7e8071bbba3b822ff5b29420f80324ec,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x58
	.long	.LASF606
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF120
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF129
	.byte	0x5
	.uleb128 0x74
	.long	.LASF607
	.byte	0x5
	.uleb128 0x75
	.long	.LASF608
	.byte	0x5
	.uleb128 0x76
	.long	.LASF609
	.byte	0x5
	.uleb128 0x77
	.long	.LASF610
	.byte	0x5
	.uleb128 0x79
	.long	.LASF611
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF612
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF613
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF614
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF615
	.byte	0x5
	.uleb128 0x80
	.long	.LASF616
	.byte	0x5
	.uleb128 0x81
	.long	.LASF617
	.byte	0x5
	.uleb128 0x82
	.long	.LASF618
	.byte	0x5
	.uleb128 0x86
	.long	.LASF619
	.byte	0x5
	.uleb128 0x87
	.long	.LASF620
	.byte	0x5
	.uleb128 0x88
	.long	.LASF621
	.byte	0x5
	.uleb128 0x89
	.long	.LASF622
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF623
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF624
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF625
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF626
	.byte	0x5
	.uleb128 0x91
	.long	.LASF627
	.byte	0x5
	.uleb128 0x92
	.long	.LASF628
	.byte	0x5
	.uleb128 0x93
	.long	.LASF629
	.byte	0x5
	.uleb128 0x94
	.long	.LASF630
	.byte	0x5
	.uleb128 0x98
	.long	.LASF631
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF632
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF633
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF634
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF635
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF636
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF637
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF638
	.byte	0x5
	.uleb128 0xad
	.long	.LASF639
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF640
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF641
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF642
	.byte	0x5
	.uleb128 0xba
	.long	.LASF643
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF644
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF645
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF646
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF647
	.byte	0x5
	.uleb128 0xca
	.long	.LASF648
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF649
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF650
	.byte	0x5
	.uleb128 0xde
	.long	.LASF651
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF652
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF653
	.byte	0x5
	.uleb128 0xef
	.long	.LASF654
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF655
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF656
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF657
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF658
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF659
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF660
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF661
	.byte	0x5
	.uleb128 0x102
	.long	.LASF662
	.byte	0x5
	.uleb128 0x103
	.long	.LASF663
	.byte	0x5
	.uleb128 0x104
	.long	.LASF664
	.byte	0x5
	.uleb128 0x106
	.long	.LASF665
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF666
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF667
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.8.90fda59c54c961fc19350e2cd5261a6b,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF669
	.byte	0x5
	.uleb128 0x9
	.long	.LASF670
	.byte	0x5
	.uleb128 0xb
	.long	.LASF671
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.24.5c1b97eef3c86b7a2549420f69f4f128,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF673
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF404
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.31.87b3c285aeba93fe355ad19123070832,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF405
	.byte	0x6
	.uleb128 0x25
	.long	.LASF529
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF530
	.byte	0x6
	.uleb128 0x31
	.long	.LASF531
	.byte	0x5
	.uleb128 0x35
	.long	.LASF532
	.byte	0x6
	.uleb128 0x37
	.long	.LASF533
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF534
	.byte	0x6
	.uleb128 0x42
	.long	.LASF535
	.byte	0x5
	.uleb128 0x46
	.long	.LASF536
	.byte	0x6
	.uleb128 0x48
	.long	.LASF537
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF538
	.byte	0x6
	.uleb128 0x51
	.long	.LASF539
	.byte	0x5
	.uleb128 0x55
	.long	.LASF540
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
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
	.long	.LASF363
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF381
	.byte	0x6
	.uleb128 0x154
	.long	.LASF398
	.byte	0x6
	.uleb128 0x186
	.long	.LASF399
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF400
	.byte	0x6
	.uleb128 0x191
	.long	.LASF401
	.byte	0x5
	.uleb128 0x196
	.long	.LASF402
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.long	.LASF677
	.byte	0x5
	.uleb128 0x27
	.long	.LASF678
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_FILE.h.19.0888ac70396abe1031c03d393554032f,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF684
	.byte	0x5
	.uleb128 0x66
	.long	.LASF685
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF686
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF687
	.byte	0x5
	.uleb128 0x70
	.long	.LASF688
	.byte	0x5
	.uleb128 0x72
	.long	.LASF689
	.byte	0x5
	.uleb128 0x73
	.long	.LASF690
	.byte	0x5
	.uleb128 0x75
	.long	.LASF691
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.93.0122ffbd02ddfe34dfaf44a2e3561c5b,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF692
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF693
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF694
	.byte	0x5
	.uleb128 0x63
	.long	.LASF695
	.byte	0x5
	.uleb128 0x68
	.long	.LASF696
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF697
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF698
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF699
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.19.de8a40c165be4f8437982ec2cd6fd8b4,comdat
.Ldebug_macro25:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF700
	.byte	0x5
	.uleb128 0x19
	.long	.LASF701
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF702
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF703
	.byte	0x6
	.uleb128 0x24
	.long	.LASF704
	.byte	0x5
	.uleb128 0x25
	.long	.LASF705
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.141.d7a290e19ca077c9e4aa7c43ede17a73,comdat
.Ldebug_macro26:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF706
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF707
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF708
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.23.93403f89af7dba8212345449bb14b09d,comdat
.Ldebug_macro27:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF709
	.byte	0x5
	.uleb128 0x19
	.long	.LASF404
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro28:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF674
	.byte	0x5
	.uleb128 0x20
	.long	.LASF675
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF613:
	.string	"INT32_MAX (2147483647)"
.LASF692:
	.string	"_IOFBF 0"
.LASF557:
	.string	"__STD_TYPE typedef"
.LASF724:
	.string	"int8_t"
.LASF225:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF283:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF51:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF298:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF108:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF715:
	.string	"size_t"
.LASF228:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF706:
	.string	"stdin stdin"
.LASF833:
	.string	"TOKEN_RETURN"
.LASF852:
	.string	"start"
.LASF695:
	.string	"BUFSIZ 8192"
.LASF93:
	.string	"__SIZE_WIDTH__ 64"
.LASF504:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF919:
	.string	"source"
.LASF19:
	.string	"__LP64__ 1"
.LASF270:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF421:
	.string	"__USE_XOPEN2K8XSI"
.LASF697:
	.string	"SEEK_SET 0"
.LASF214:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF744:
	.string	"TOKEN_DOTDOT"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF887:
	.string	"_IO_codecvt"
.LASF509:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF469:
	.string	"__flexarr []"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF589:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF782:
	.string	"TOKEN_COLONULLEQ"
.LASF837:
	.string	"TOKEN_WHILE"
.LASF443:
	.string	"__GNU_LIBRARY__"
.LASF139:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF170:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF867:
	.string	"_IO_save_end"
.LASF136:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF721:
	.string	"__off_t"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF273:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF775:
	.string	"TOKEN_USDUIEQ"
.LASF162:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF725:
	.string	"int16_t"
.LASF915:
	.string	"checkChar"
.LASF200:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF792:
	.string	"TOKEN_PLUSEQ"
.LASF402:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF36:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF123:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF628:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF860:
	.string	"_IO_write_base"
.LASF481:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF290:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF918:
	.string	"isAlpha"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF716:
	.string	"__int8_t"
.LASF315:
	.string	"__x86_64 1"
.LASF638:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF457:
	.string	"__P(args) args"
.LASF876:
	.string	"_lock"
.LASF365:
	.string	"__SIZE_T__ "
.LASF844:
	.string	"TOKEN_STATIC_FIELD"
.LASF923:
	.string	"_IO_FILE"
.LASF199:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF729:
	.string	"TOKEN_LEFT_BRACE"
.LASF570:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF731:
	.string	"TOKEN_LEFT_BRACK"
.LASF913:
	.string	"nextChar"
.LASF398:
	.string	"__need_wchar_t"
.LASF196:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF773:
	.string	"TOKEN_USDIEQ"
.LASF851:
	.string	"type"
.LASF642:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF359:
	.string	"_BSD_PTRDIFF_T_ "
.LASF387:
	.string	"__WCHAR_T "
.LASF865:
	.string	"_IO_save_base"
.LASF663:
	.string	"UINT16_C(c) c"
.LASF211:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF380:
	.string	"__size_t "
.LASF607:
	.string	"INT8_MIN (-128)"
.LASF137:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF554:
	.string	"__ULONG32_TYPE unsigned int"
.LASF447:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF471:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF369:
	.string	"_T_SIZE "
.LASF791:
	.string	"TOKEN_USDSEQ"
.LASF781:
	.string	"TOKEN_USDLLEQ"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF754:
	.string	"TOKEN_MOD"
.LASF769:
	.string	"TOKEN_USDCEQ"
.LASF281:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF637:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF869:
	.string	"_chain"
.LASF629:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF333:
	.string	"__CET__ 3"
.LASF235:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF424:
	.string	"__USE_FILE_OFFSET64"
.LASF210:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF873:
	.string	"_cur_column"
.LASF411:
	.string	"__USE_POSIX"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF269:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF219:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF399:
	.string	"NULL"
.LASF673:
	.string	"_STDIO_H 1"
.LASF598:
	.string	"_BITS_TIME64_H 1"
.LASF255:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF584:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF69:
	.string	"__INTPTR_TYPE__ long int"
.LASF521:
	.string	"__stub_fchflags "
.LASF351:
	.string	"_STDDEF_H "
.LASF40:
	.string	"__INTMAX_TYPE__ long int"
.LASF579:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF786:
	.string	"TOKEN_COLONDEQ"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF268:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF386:
	.string	"_T_WCHAR "
.LASF138:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF420:
	.string	"__USE_XOPEN2K8"
.LASF248:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF757:
	.string	"TOKEN_PIPEPIPE"
.LASF772:
	.string	"TOKEN_COLONIEQ"
.LASF232:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF430:
	.string	"__GLIBC_USE_ISOC2X"
.LASF609:
	.string	"INT32_MIN (-2147483647-1)"
.LASF319:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF445:
	.string	"__GLIBC__ 2"
.LASF434:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF710:
	.string	"long int"
.LASF542:
	.string	"__TIMESIZE __WORDSIZE"
.LASF242:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF345:
	.string	"common_h "
.LASF249:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF435:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF112:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF279:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF790:
	.string	"TOKEN_COLONSEQ"
.LASF431:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF224:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF920:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
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
.LASF597:
	.string	"__FD_SETSIZE 1024"
.LASF261:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF886:
	.string	"_IO_marker"
.LASF917:
	.string	"isDigit"
.LASF198:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF798:
	.string	"TOKEN_PIPEEQ"
.LASF705:
	.string	"FOPEN_MAX 16"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF713:
	.string	"short unsigned int"
.LASF812:
	.string	"TOKEN_LDEQ"
.LASF577:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF360:
	.string	"___int_ptrdiff_t_h "
.LASF487:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF376:
	.string	"_SIZE_T_DECLARED "
.LASF459:
	.string	"__CONCAT(x,y) x ## y"
.LASF707:
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
.LASF478:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF651:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF671:
	.string	"UINT8_COUNT (UINT8_MAX + 1)"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF118:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF914:
	.string	"checkNextChar"
.LASF404:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF761:
	.string	"TOKEN_CARET"
.LASF16:
	.string	"__PIE__ 2"
.LASF218:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF275:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF472:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF530:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF154:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF442:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF908:
	.string	"makeTwoCharToken"
.LASF157:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF717:
	.string	"signed char"
.LASF726:
	.string	"uint8_t"
.LASF544:
	.string	"__U16_TYPE unsigned short int"
.LASF204:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF461:
	.string	"__ptr_t void *"
.LASF287:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF888:
	.string	"_IO_wide_data"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF559:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF297:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF473:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF124:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF450:
	.string	"__LEAF , __leaf__"
.LASF676:
	.string	"__need___va_list "
.LASF575:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF246:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF213:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF133:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF432:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF375:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF377:
	.string	"___int_size_t_h "
.LASF438:
	.string	"__USE_ISOC99 1"
.LASF203:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF156:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF458:
	.string	"__PMT(args) args"
.LASF282:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF280:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF168:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF750:
	.string	"TOKEN_PLUS"
.LASF846:
	.string	"TOKEN_ERROR"
.LASF252:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF92:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF169:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF759:
	.string	"TOKEN_AMP"
.LASF127:
	.string	"__UINT32_C(c) c ## U"
.LASF758:
	.string	"TOKEN_CARETCARET"
.LASF330:
	.string	"__SSE2_MATH__ 1"
.LASF95:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF608:
	.string	"INT16_MIN (-32767-1)"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF911:
	.string	"_Bool"
.LASF120:
	.string	"__INT64_C(c) c ## L"
.LASF497:
	.string	"__restrict_arr __restrict"
.LASF818:
	.string	"TOKEN_EQEQ"
.LASF289:
	.string	"__STRICT_ANSI__ 1"
.LASF373:
	.string	"_SIZE_T_DEFINED_ "
.LASF466:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
.LASF585:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF230:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF140:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF441:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF624:
	.string	"INT_LEAST16_MAX (32767)"
.LASF723:
	.string	"char"
.LASF195:
	.string	"__FLT32_DIG__ 6"
.LASF622:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF291:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF532:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF674:
	.string	"__need_size_t "
.LASF547:
	.string	"__SLONGWORD_TYPE long int"
.LASF513:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF600:
	.string	"__STD_TYPE"
.LASF494:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF316:
	.string	"__x86_64__ 1"
.LASF924:
	.string	"_IO_lock_t"
.LASF849:
	.string	"TOKEN_ENDEXPRESSION"
.LASF910:
	.string	"compareChar"
.LASF418:
	.string	"__USE_XOPEN2K"
.LASF788:
	.string	"TOKEN_COLONLDEQ"
.LASF599:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF523:
	.string	"__stub_lchmod "
.LASF106:
	.string	"__UINT8_MAX__ 0xff"
.LASF160:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF253:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF753:
	.string	"TOKEN_SLASH"
.LASF492:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF535:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF427:
	.string	"__USE_GNU"
.LASF176:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF743:
	.string	"TOKEN_DOT"
.LASF364:
	.string	"__size_t__ "
.LASF331:
	.string	"__SEG_FS 1"
.LASF635:
	.string	"INT_FAST8_MAX (127)"
.LASF623:
	.string	"INT_LEAST8_MAX (127)"
.LASF73:
	.string	"__GXX_ABI_VERSION 1013"
.LASF669:
	.string	"DEBUG_PRINT_CODE "
.LASF113:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF857:
	.string	"_IO_read_ptr"
.LASF226:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF664:
	.string	"UINT32_C(c) c ## U"
.LASF643:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF413:
	.string	"__USE_POSIX199309"
.LASF614:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF344:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF72:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF708:
	.string	"stderr stderr"
.LASF683:
	.string	"__FILE_defined 1"
.LASF686:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF633:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF446:
	.string	"__GLIBC_MINOR__ 31"
.LASF889:
	.string	"stdin"
.LASF892:
	.string	"current"
.LASF646:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF299:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF417:
	.string	"__USE_UNIX98"
.LASF61:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF433:
	.string	"__KERNEL_STRICT_NAMES "
.LASF563:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF691:
	.string	"_IO_USER_LOCK 0x8000"
.LASF807:
	.string	"TOKEN_ULEQ"
.LASF14:
	.string	"__PIC__ 2"
.LASF394:
	.string	"__INT_WCHAR_T_H "
.LASF728:
	.string	"TOKEN_RIGHT_PAREN"
.LASF912:
	.string	"invalidToken"
.LASF303:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF868:
	.string	"_markers"
.LASF592:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF339:
	.string	"__ELF__ 1"
.LASF670:
	.string	"DEBUG_TRACE_EXECUTION "
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF80:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF207:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF415:
	.string	"__USE_XOPEN"
.LASF631:
	.string	"INT_FAST8_MIN (-128)"
.LASF192:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF734:
	.string	"TOKEN_RBRACEGT"
.LASF525:
	.string	"__stub_setlogin "
.LASF594:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF672:
	.string	"scanner_h "
.LASF762:
	.string	"TOKEN_TILDE"
.LASF538:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF749:
	.string	"TOKEN_TILDEGT"
.LASF842:
	.string	"TOKEN_INTERPOLATION"
.LASF767:
	.string	"TOKEN_USDEQ"
.LASF899:
	.string	"identifierType"
.LASF347:
	.string	"bool _Bool"
.LASF718:
	.string	"__uint8_t"
.LASF100:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF122:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF389:
	.string	"_BSD_WCHAR_T_ "
.LASF595:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF262:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF700:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF307:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF640:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF172:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF533:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF506:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF701:
	.string	"L_tmpnam 20"
.LASF680:
	.string	"____mbstate_t_defined 1"
.LASF838:
	.string	"TOKEN_FIELD"
.LASF115:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF149:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF810:
	.string	"TOKEN_FEQ"
.LASF641:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF574:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF632:
	.string	"INT_FAST16_MIN (-9223372036854775807L-1)"
.LASF634:
	.string	"INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF277:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF534:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X 0"
.LASF400:
	.string	"NULL ((void *)0)"
.LASF747:
	.string	"TOKEN_COLON"
.LASF738:
	.string	"TOKEN_RPARENGT"
.LASF745:
	.string	"TOKEN_DOTDOTDOT"
.LASF877:
	.string	"_offset"
.LASF334:
	.string	"__gnu_linux__ 1"
.LASF286:
	.string	"__USER_LABEL_PREFIX__ "
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF662:
	.string	"UINT8_C(c) c"
.LASF553:
	.string	"__SLONG32_TYPE int"
.LASF110:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF304:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF405:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF407:
	.string	"__USE_ISOC11"
.LASF507:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF240:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF71:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF751:
	.string	"TOKEN_MINUS"
.LASF256:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF121:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF163:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF343:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF832:
	.string	"TOKEN_SUPER"
.LASF647:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF576:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF306:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF541:
	.string	"_BITS_TYPES_H 1"
.LASF615:
	.string	"UINT8_MAX (255)"
.LASF652:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF797:
	.string	"TOKEN_AMPEQ"
.LASF146:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF15:
	.string	"__pie__ 2"
.LASF3:
	.string	"__GNUC__ 9"
.LASF439:
	.string	"__USE_ISOC95 1"
.LASF517:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF189:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF266:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF368:
	.string	"_T_SIZE_ "
.LASF148:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF900:
	.string	"rest"
.LASF85:
	.string	"__SCHAR_WIDTH__ 8"
.LASF703:
	.string	"FILENAME_MAX 4096"
.LASF470:
	.string	"__glibc_c99_flexarr_available 1"
.LASF859:
	.string	"_IO_read_base"
.LASF323:
	.string	"__k8__ 1"
.LASF18:
	.string	"_LP64 1"
.LASF854:
	.string	"line"
.LASF131:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF462:
	.string	"__BEGIN_DECLS "
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF452:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF675:
	.string	"__need_NULL "
.LASF406:
	.string	"_FEATURES_H 1"
.LASF884:
	.string	"_unused2"
.LASF194:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF834:
	.string	"TOKEN_THIS"
.LASF603:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF806:
	.string	"TOKEN_LEQ"
.LASF480:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF778:
	.string	"TOKEN_COLONULEQ"
.LASF296:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF558:
	.string	"_BITS_TYPESIZES_H 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF247:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_MANT_DIG__ 24"
.LASF819:
	.string	"TOKEN_BANGEQ"
.LASF94:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF216:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF355:
	.string	"_T_PTRDIFF_ "
.LASF872:
	.string	"_old_offset"
.LASF96:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF843:
	.string	"TOKEN_LINE"
.LASF239:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF904:
	.string	"errMsg"
.LASF756:
	.string	"TOKEN_AMPAMP"
.LASF98:
	.string	"__INTMAX_WIDTH__ 64"
.LASF925:
	.string	"scanToken"
.LASF820:
	.string	"TOKEN_CASE"
.LASF305:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF293:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF593:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF233:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF385:
	.string	"_T_WCHAR_ "
.LASF785:
	.string	"TOKEN_USDFEQ"
.LASF116:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF511:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF241:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF412:
	.string	"__USE_POSIX2"
.LASF301:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF381:
	.string	"__need_size_t"
.LASF789:
	.string	"TOKEN_USDLDEQ"
.LASF371:
	.string	"_SIZE_T_ "
.LASF847:
	.string	"TOKEN_EOF"
.LASF150:
	.string	"__FLT_RADIX__ 2"
.LASF206:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF735:
	.string	"TOKEN_LTLPAREN"
.LASF43:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF193:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF401:
	.string	"__need_NULL"
.LASF190:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF314:
	.string	"__amd64__ 1"
.LASF89:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF354:
	.string	"_PTRDIFF_T "
.LASF403:
	.string	"_STDINT_H 1"
.LASF132:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF742:
	.string	"TOKEN_COMMA"
.LASF880:
	.string	"_freeres_list"
.LASF302:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF787:
	.string	"TOKEN_USDDEQ"
.LASF105:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF486:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF502:
	.string	"__attribute_copy__"
.LASF212:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF627:
	.string	"UINT_LEAST8_MAX (255)"
.LASF793:
	.string	"TOKEN_MINUSEQ"
.LASF548:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF134:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF803:
	.string	"TOKEN_UCEQ"
.LASF831:
	.string	"TOKEN_PUTS"
.LASF455:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF41:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF153:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF862:
	.string	"_IO_write_end"
.LASF897:
	.string	"number"
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF484:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF310:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF130:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF501:
	.string	"__attribute_nonstring__ __attribute__ ((__nonstring__))"
.LASF449:
	.string	"__PMT"
.LASF659:
	.string	"INT16_C(c) c"
.LASF341:
	.string	"_STDC_PREDEF_H 1"
.LASF308:
	.string	"__SSP_STRONG__ 3"
.LASF783:
	.string	"TOKEN_USDULLEQ"
.LASF836:
	.string	"TOKEN_WHEN"
.LASF545:
	.string	"__S32_TYPE int"
.LASF784:
	.string	"TOKEN_COLONFEQ"
.LASF580:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF549:
	.string	"__SQUAD_TYPE long int"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF117:
	.string	"__INT32_C(c) c"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF419:
	.string	"__USE_XOPEN2KXSI"
.LASF70:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF428:
	.string	"__USE_FORTIFY_LEVEL"
.LASF353:
	.string	"_ANSI_STDDEF_H "
.LASF696:
	.string	"EOF (-1)"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF260:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF322:
	.string	"__k8 1"
.LASF690:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF516:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF863:
	.string	"_IO_buf_base"
.LASF835:
	.string	"TOKEN_TRUE"
.LASF760:
	.string	"TOKEN_PIPE"
.LASF896:
	.string	"string"
.LASF855:
	.string	"Token"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF714:
	.string	"unsigned int"
.LASF602:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF63:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF681:
	.string	"_____fpos64_t_defined 1"
.LASF379:
	.string	"_SIZET_ "
.LASF221:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF500:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF668:
	.string	"_GCC_WRAP_STDINT_H "
.LASF425:
	.string	"__USE_MISC"
.LASF243:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF422:
	.string	"__USE_LARGEFILE"
.LASF152:
	.string	"__FLT_DIG__ 6"
.LASF346:
	.string	"_STDBOOL_H "
.LASF396:
	.string	"_WCHAR_T_DECLARED "
.LASF905:
	.string	"checkKeyword"
.LASF147:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF586:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF158:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF74:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF882:
	.string	"__pad5"
.LASF546:
	.string	"__U32_TYPE unsigned int"
.LASF356:
	.string	"_T_PTRDIFF "
.LASF88:
	.string	"__LONG_WIDTH__ 64"
.LASF477:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF829:
	.string	"TOKEN_LET"
.LASF227:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF489:
	.string	"__always_inline"
.LASF145:
	.string	"__GCC_IEC_559 2"
.LASF893:
	.string	"Scanner"
.LASF830:
	.string	"TOKEN_NIL"
.LASF97:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF499:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF522:
	.string	"__stub_gtty "
.LASF383:
	.string	"__WCHAR_T__ "
.LASF626:
	.string	"INT_LEAST64_MAX (__INT64_C(9223372036854775807))"
.LASF312:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF583:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF619:
	.string	"INT_LEAST8_MIN (-128)"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF395:
	.string	"_GCC_WCHAR_T "
.LASF539:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF730:
	.string	"TOKEN_RIGHT_BRACE"
.LASF488:
	.string	"__wur "
.LASF732:
	.string	"TOKEN_RIGHT_BRACK"
.LASF349:
	.string	"false 0"
.LASF86:
	.string	"__SHRT_WIDTH__ 16"
.LASF278:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF856:
	.string	"_flags"
.LASF348:
	.string	"true 1"
.LASF362:
	.string	"_PTRDIFF_T_DECLARED "
.LASF552:
	.string	"__UWORD_TYPE unsigned long int"
.LASF324:
	.string	"__code_model_small__ 1"
.LASF444:
	.string	"__GNU_LIBRARY__ 6"
.LASF562:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF238:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF164:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF295:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF883:
	.string	"_mode"
.LASF569:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF453:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF510:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF104:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF460:
	.string	"__STRING(x) #x"
.LASF825:
	.string	"TOKEN_DEF"
.LASF712:
	.string	"unsigned char"
.LASF503:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF878:
	.string	"_codecvt"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF755:
	.string	"TOKEN_STARSTAR"
.LASF197:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF678:
	.string	"__GNUC_VA_LIST "
.LASF384:
	.string	"_WCHAR_T "
.LASF161:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF264:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF679:
	.string	"_____fpos_t_defined 1"
.LASF765:
	.string	"TOKEN_LTLT"
.LASF361:
	.string	"_GCC_PTRDIFF_T "
.LASF524:
	.string	"__stub_revoke "
.LASF770:
	.string	"TOKEN_COLONUCEQ"
.LASF922:
	.string	"/mnt/d/coding portfolio/fortissimolanguage"
.LASF454:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF515:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF366:
	.string	"_SIZE_T "
.LASF392:
	.string	"_WCHAR_T_H "
.LASF693:
	.string	"_IOLBF 1"
.LASF694:
	.string	"_IONBF 2"
.LASF621:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF78:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF874:
	.string	"_vtable_offset"
.LASF91:
	.string	"__WINT_WIDTH__ 32"
.LASF682:
	.string	"____FILE_defined 1"
.LASF474:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF571:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF779:
	.string	"TOKEN_USDULEQ"
.LASF263:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF223:
	.string	"__FLT128_DIG__ 33"
.LASF111:
	.string	"__INT8_C(c) c"
.LASF201:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF352:
	.string	"_STDDEF_H_ "
.LASF167:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF370:
	.string	"__SIZE_T "
.LASF903:
	.string	"nesting"
.LASF885:
	.string	"FILE"
.LASF47:
	.string	"__INT32_TYPE__ int"
.LASF590:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF409:
	.string	"__USE_ISOC95"
.LASF649:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF408:
	.string	"__USE_ISOC99"
.LASF850:
	.string	"TokenType"
.LASF766:
	.string	"TOKEN_COLONCOLON"
.LASF416:
	.string	"__USE_XOPEN_EXTENDED"
.LASF191:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF490:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF292:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF244:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF6:
	.string	"__VERSION__ \"9.3.0\""
.LASF630:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF794:
	.string	"TOKEN_STAREQ"
.LASF801:
	.string	"TOKEN_EQ"
.LASF234:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF606:
	.string	"__intptr_t_defined "
.LASF48:
	.string	"__INT64_TYPE__ long int"
.LASF841:
	.string	"TOKEN_IDENTIFIER"
.LASF901:
	.string	"skipWhitespace"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF871:
	.string	"_flags2"
.LASF746:
	.string	"TOKEN_SEMICOLON"
.LASF271:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF250:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF605:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF698:
	.string	"SEEK_CUR 1"
.LASF777:
	.string	"TOKEN_USDLEQ"
.LASF75:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF410:
	.string	"__USE_ISOCXX11"
.LASF374:
	.string	"_SIZE_T_DEFINED "
.LASF81:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF573:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF853:
	.string	"length"
.LASF556:
	.string	"__U64_TYPE unsigned long int"
.LASF357:
	.string	"__PTRDIFF_T "
.LASF257:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF826:
	.string	"TOKEN_FOR"
.LASF921:
	.string	"Tokenization/scanner/scanner.c"
.LASF822:
	.string	"TOKEN_ELSE"
.LASF916:
	.string	"isAtEnd"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF736:
	.string	"TOKEN_RPARENLBRACE"
.LASF237:
	.string	"__FLT32X_DIG__ 15"
.LASF483:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF414:
	.string	"__USE_POSIX199506"
.LASF660:
	.string	"INT32_C(c) c"
.LASF142:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF665:
	.string	"UINT64_C(c) c ## UL"
.LASF881:
	.string	"_freeres_buf"
.LASF317:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF699:
	.string	"SEEK_END 2"
.LASF328:
	.string	"__FXSR__ 1"
.LASF505:
	.string	"__WORDSIZE 64"
.LASF391:
	.string	"_WCHAR_T_DEFINED "
.LASF508:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF805:
	.string	"TOKEN_UIEQ"
.LASF309:
	.string	"__SIZEOF_INT128__ 16"
.LASF13:
	.string	"__pic__ 2"
.LASF528:
	.string	"__stub_stty "
.LASF467:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF119:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF555:
	.string	"__S64_TYPE long int"
.LASF372:
	.string	"_BSD_SIZE_T_ "
.LASF465:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF906:
	.string	"errorToken"
.LASF388:
	.string	"_WCHAR_T_ "
.LASF325:
	.string	"__MMX__ 1"
.LASF845:
	.string	"TOKEN_STRING"
.LASF776:
	.string	"TOKEN_COLONLEQ"
.LASF617:
	.string	"UINT32_MAX (4294967295U)"
.LASF809:
	.string	"TOKEN_ULLEQ"
.LASF84:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF719:
	.string	"__int16_t"
.LASF866:
	.string	"_IO_backup_base"
.LASF875:
	.string	"_shortbuf"
.LASF129:
	.string	"__UINT64_C(c) c ## UL"
.LASF572:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF655:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF159:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF709:
	.string	"_STRING_H 1"
.LASF601:
	.string	"_BITS_WCHAR_H 1"
.LASF661:
	.string	"INT64_C(c) c ## L"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF173:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF258:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF667:
	.string	"UINTMAX_C(c) c ## UL"
.LASF527:
	.string	"__stub_sstk "
.LASF823:
	.string	"TOKEN_ELSIF"
.LASF799:
	.string	"TOKEN_CARETEQ"
.LASF79:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF722:
	.string	"__off64_t"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF802:
	.string	"TOKEN_CEQ"
.LASF259:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF4:
	.string	"__GNUC_MINOR__ 3"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF300:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF741:
	.string	"TOKEN_QUESTION"
.LASF245:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF520:
	.string	"__stub_chflags "
.LASF688:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF821:
	.string	"TOKEN_CLASS"
.LASF927:
	.string	"initScanner"
.LASF588:
	.string	"__TIMER_T_TYPE void *"
.LASF178:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF220:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF808:
	.string	"TOKEN_LLEQ"
.LASF596:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF327:
	.string	"__SSE2__ 1"
.LASF848:
	.string	"TOKEN_NEWLINE"
.LASF864:
	.string	"_IO_buf_end"
.LASF582:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF733:
	.string	"TOKEN_LTLBRACE"
.LASF514:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF493:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF285:
	.string	"__REGISTER_PREFIX__ "
.LASF284:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF166:
	.string	"__DBL_DIG__ 15"
.LASF704:
	.string	"FOPEN_MAX"
.LASF485:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF816:
	.string	"TOKEN_LTEQ"
.LASF752:
	.string	"TOKEN_STAR"
.LASF639:
	.string	"UINT_FAST8_MAX (255)"
.LASF217:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF827:
	.string	"TOKEN_IF"
.LASF463:
	.string	"__END_DECLS "
.LASF332:
	.string	"__SEG_GS 1"
.LASF202:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF739:
	.string	"TOKEN_BANG"
.LASF340:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF828:
	.string	"TOKEN_IN"
.LASF653:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF320:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF610:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF109:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF891:
	.string	"stderr"
.LASF329:
	.string	"__SSE_MATH__ 1"
.LASF720:
	.string	"short int"
.LASF448:
	.string	"_SYS_CDEFS_H 1"
.LASF763:
	.string	"TOKEN_GTGTGT"
.LASF367:
	.string	"_SYS_SIZE_T_H "
.LASF125:
	.string	"__UINT16_C(c) c"
.LASF727:
	.string	"TOKEN_LEFT_PAREN"
.LASF436:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF496:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF288:
	.string	"__NO_INLINE__ 1"
.LASF658:
	.string	"INT8_C(c) c"
.LASF611:
	.string	"INT8_MAX (127)"
.LASF254:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF475:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF894:
	.string	"scanner"
.LASF177:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF531:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF99:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF208:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF62:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF839:
	.string	"TOKEN_NAME"
.LASF771:
	.string	"TOKEN_USDUCEQ"
.LASF550:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF274:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF363:
	.string	"__need_ptrdiff_t"
.LASF171:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF526:
	.string	"__stub_sigreturn "
.LASF358:
	.string	"_PTRDIFF_T_ "
.LASF587:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF774:
	.string	"TOKEN_COLONUIEQ"
.LASF567:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF103:
	.string	"__INT16_MAX__ 0x7fff"
.LASF476:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF551:
	.string	"__SWORD_TYPE long int"
.LASF479:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF87:
	.string	"__INT_WIDTH__ 32"
.LASF482:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF222:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF564:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF648:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF645:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF101:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF909:
	.string	"makeToken"
.LASF267:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF543:
	.string	"__S16_TYPE short int"
.LASF311:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF657:
	.string	"WINT_MAX (4294967295u)"
.LASF654:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF0:
	.string	"__STDC__ 1"
.LASF618:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF817:
	.string	"TOKEN_GTEQ"
.LASF815:
	.string	"TOKEN_GT"
.LASF144:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF491:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF205:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF265:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF52:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF393:
	.string	"___int_wchar_t_h "
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF512:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF902:
	.string	"skipBlockComment"
.LASF581:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF495:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF37:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF229:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF858:
	.string	"_IO_read_end"
.LASF687:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF796:
	.string	"TOKEN_MODEQ"
.LASF616:
	.string	"UINT16_MAX (65535)"
.LASF215:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF378:
	.string	"_GCC_SIZE_T "
.LASF740:
	.string	"TOKEN_BANGBANG"
.LASF77:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF397:
	.string	"_BSD_WCHAR_T_"
.LASF519:
	.string	"__stub___compat_bdflush "
.LASF625:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF780:
	.string	"TOKEN_COLONLLEQ"
.LASF437:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF561:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF620:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF83:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF426:
	.string	"__USE_ATFILE"
.LASF321:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF870:
	.string	"_fileno"
.LASF464:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF313:
	.string	"__amd64 1"
.LASF814:
	.string	"TOKEN_LT"
.LASF188:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF338:
	.string	"__unix__ 1"
.LASF456:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF800:
	.string	"TOKEN_TILDEEQ"
.LASF518:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF612:
	.string	"INT16_MAX (32767)"
.LASF748:
	.string	"TOKEN_LTTILDE"
.LASF656:
	.string	"WINT_MIN (0u)"
.LASF879:
	.string	"_wide_data"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF565:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF895:
	.string	"token"
.LASF795:
	.string	"TOKEN_SLASHEQ"
.LASF82:
	.string	"__WINT_MIN__ 0U"
.LASF566:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF102:
	.string	"__INT8_MAX__ 0x7f"
.LASF209:
	.string	"__FLT64_DIG__ 15"
.LASF276:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF737:
	.string	"TOKEN_RBRACELPAREN"
.LASF926:
	.string	"skipLineComment"
.LASF689:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF578:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF604:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF890:
	.string	"stdout"
.LASF382:
	.string	"__wchar_t__ "
.LASF768:
	.string	"TOKEN_COLONCEQ"
.LASF636:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF536:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF326:
	.string	"__SSE__ 1"
.LASF336:
	.string	"__linux__ 1"
.LASF440:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF907:
	.string	"message"
.LASF540:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF537:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF350:
	.string	"__bool_true_false_are_defined 1"
.LASF764:
	.string	"TOKEN_GTGT"
.LASF591:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF174:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF677:
	.string	"__need___va_list"
.LASF861:
	.string	"_IO_write_ptr"
.LASF318:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF126:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF684:
	.string	"__struct_FILE_defined 1"
.LASF644:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF468:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF451:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF840:
	.string	"TOKEN_NUMBER"
.LASF568:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF429:
	.string	"__KERNEL_STRICT_NAMES"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF236:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF90:
	.string	"__WCHAR_WIDTH__ 32"
.LASF423:
	.string	"__USE_LARGEFILE64"
.LASF685:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF114:
	.string	"__INT16_C(c) c"
.LASF251:
	.string	"__FLT64X_DIG__ 18"
.LASF811:
	.string	"TOKEN_DEQ"
.LASF824:
	.string	"TOKEN_FALSE"
.LASF272:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF143:
	.string	"__INTPTR_WIDTH__ 64"
.LASF335:
	.string	"__linux 1"
.LASF390:
	.string	"_WCHAR_T_DEFINED_ "
.LASF804:
	.string	"TOKEN_IEQ"
.LASF135:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF175:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF529:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF898:
	.string	"identifier"
.LASF650:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF165:
	.string	"__DBL_MANT_DIG__ 53"
.LASF666:
	.string	"INTMAX_C(c) c ## L"
.LASF711:
	.string	"long unsigned int"
.LASF813:
	.string	"TOKEN_SEQ"
.LASF560:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF498:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF76:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF128:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF107:
	.string	"__UINT16_MAX__ 0xffff"
.LASF702:
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
