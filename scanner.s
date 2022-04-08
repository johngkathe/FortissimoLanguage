	.file	"scanner.c"
	.text
.Ltext0:
	.comm	scanner,24,16
	.type	makeToken, @function
makeToken:
.LFB0:
	.file 1 "Tokenization/scanner/scanner.h"
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
.LFE0:
	.size	makeToken, .-makeToken
	.comm	token,24,16
	.globl	initScanner
	.type	initScanner, @function
initScanner:
.LFB1:
	.file 2 "Tokenization/scanner/scanner.c"
	.loc 2 17 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 18 19
	movq	-8(%rbp), %rax
	movq	%rax, scanner(%rip)
	.loc 2 19 21
	movq	-8(%rbp), %rax
	movq	%rax, 8+scanner(%rip)
	.loc 2 20 18
	movw	$1, 16+scanner(%rip)
	.loc 2 21 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	initScanner, .-initScanner
	.type	isAlpha, @function
isAlpha:
.LFB2:
	.loc 2 23 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 24 61
	cmpb	$96, -4(%rbp)
	jle	.L5
	.loc 2 24 22 discriminator 1
	cmpb	$122, -4(%rbp)
	jle	.L6
.L5:
	.loc 2 24 35 discriminator 4
	cmpb	$64, -4(%rbp)
	jle	.L7
	.loc 2 24 48 discriminator 5
	cmpb	$90, -4(%rbp)
	jle	.L6
.L7:
	.loc 2 24 61 discriminator 8
	cmpb	$95, -4(%rbp)
	jne	.L8
.L6:
	.loc 2 24 61 is_stmt 0 discriminator 9
	movl	$1, %eax
	jmp	.L9
.L8:
	.loc 2 24 61 discriminator 10
	movl	$0, %eax
.L9:
	.loc 2 24 61 discriminator 12
	andl	$1, %eax
	.loc 2 25 1 is_stmt 1 discriminator 12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	isAlpha, .-isAlpha
	.type	isDigit, @function
isDigit:
.LFB3:
	.loc 2 27 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 28 21
	cmpb	$47, -4(%rbp)
	jle	.L12
	.loc 2 28 21 is_stmt 0 discriminator 1
	cmpb	$57, -4(%rbp)
	jg	.L12
	.loc 2 28 21 discriminator 3
	movl	$1, %eax
	jmp	.L13
.L12:
	.loc 2 28 21 discriminator 4
	movl	$0, %eax
.L13:
	.loc 2 28 21 discriminator 6
	andl	$1, %eax
	.loc 2 29 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	isDigit, .-isDigit
	.type	isAtEnd, @function
isAtEnd:
.LFB4:
	.loc 2 31 21
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 32 20
	movq	8+scanner(%rip), %rax
	.loc 2 32 12
	movzbl	(%rax), %eax
	.loc 2 32 29
	testb	%al, %al
	sete	%al
	.loc 2 33 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	isAtEnd, .-isAtEnd
	.type	checkChar, @function
checkChar:
.LFB5:
	.loc 2 40 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 41 20
	movq	8+scanner(%rip), %rax
	.loc 2 41 12
	movzbl	(%rax), %eax
	.loc 2 42 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	checkChar, .-checkChar
	.type	checkNextChar, @function
checkNextChar:
.LFB6:
	.loc 2 44 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 45 8
	movl	$0, %eax
	call	isAtEnd
	.loc 2 45 7
	testb	%al, %al
	je	.L20
	.loc 2 45 26 discriminator 1
	movl	$0, %eax
	jmp	.L21
.L20:
	.loc 2 46 19
	movq	8+scanner(%rip), %rax
	.loc 2 46 27
	addq	$1, %rax
	movzbl	(%rax), %eax
.L21:
	.loc 2 47 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	checkNextChar, .-checkNextChar
	.type	nextChar, @function
nextChar:
.LFB7:
	.loc 2 49 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 50 16
	movl	$0, %eax
	call	checkChar
	movb	%al, -1(%rbp)
	.loc 2 51 12
	movq	8+scanner(%rip), %rax
	.loc 2 51 20
	addq	$1, %rax
	movq	%rax, 8+scanner(%rip)
	.loc 2 52 7
	cmpb	$10, -1(%rbp)
	jne	.L23
	.loc 2 52 26 discriminator 1
	movzwl	16+scanner(%rip), %eax
	.loc 2 52 31 discriminator 1
	addl	$1, %eax
	movw	%ax, 16+scanner(%rip)
.L23:
	.loc 2 53 12
	movzbl	-1(%rbp), %eax
	.loc 2 54 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	nextChar, .-nextChar
	.type	compareChar, @function
compareChar:
.LFB8:
	.loc 2 56 33
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
	.loc 2 57 8
	movl	$0, %eax
	call	checkChar
	.loc 2 57 7
	cmpb	%al, -4(%rbp)
	je	.L26
	.loc 2 57 32 discriminator 1
	movl	$0, %eax
	jmp	.L27
.L26:
	.loc 2 58 5
	movl	$0, %eax
	call	nextChar
	.loc 2 59 11
	movl	$1, %eax
.L27:
	.loc 2 60 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	compareChar, .-compareChar
	.type	makeTwoCharToken, @function
makeTwoCharToken:
.LFB9:
	.loc 2 74 70
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
	.loc 2 74 70
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 75 22
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	compareChar
	.loc 2 75 12
	testb	%al, %al
	je	.L29
	.loc 2 75 12 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax
	jmp	.L30
.L29:
	.loc 2 75 12 discriminator 2
	movl	-36(%rbp), %eax
.L30:
	.loc 2 75 12 discriminator 4
	movq	-24(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	makeToken
	.loc 2 76 1 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	.loc 2 76 1 is_stmt 0
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
	.loc 2 78 47 is_stmt 1
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
	.loc 2 80 16
	movl	$122, -32(%rbp)
	.loc 2 81 17
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 82 29
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 82 18
	movw	%ax, -16(%rbp)
	.loc 2 83 25
	movzwl	16+scanner(%rip), %eax
	.loc 2 83 16
	movw	%ax, -14(%rbp)
	.loc 2 84 12
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	.loc 2 85 1
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
	.loc 2 87 36
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
	.loc 2 87 36
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 89 5
	movabsq	$8386658464824651349, %rax
	movabsq	$7021781869991584869, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$4838871760032330851, %rax
	movq	%rax, -32(%rbp)
	movw	$39, -24(%rbp)
	.loc 2 90 12
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 90 27
	leaq	-2(%rax), %rdx
	.loc 2 90 32
	movzbl	-52(%rbp), %eax
	movb	%al, -48(%rbp,%rdx)
	.loc 2 92 5
	movzbl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 93 5
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 94 1
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
	.loc 2 96 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 97 10
	jmp	.L38
.L40:
	.loc 2 98 9
	movl	$0, %eax
	call	nextChar
.L38:
	.loc 2 97 11
	movl	$0, %eax
	call	checkChar
	.loc 2 97 10
	cmpb	$10, %al
	je	.L41
	.loc 2 97 35 discriminator 1
	movl	$0, %eax
	call	isAtEnd
	.loc 2 97 34 discriminator 1
	xorl	$1, %eax
	.loc 2 97 31 discriminator 1
	testb	%al, %al
	jne	.L40
.L41:
	.loc 2 100 1
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
	.loc 2 102 31
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 102 31
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 103 5
	movl	$0, %eax
	call	nextChar
	.loc 2 104 5
	movl	$0, %eax
	call	nextChar
	.loc 2 105 9
	movl	$1, -12(%rbp)
	.loc 2 106 10
	jmp	.L43
.L48:
	.loc 2 108 12
	movl	$0, %eax
	call	isAtEnd
	.loc 2 108 11
	testb	%al, %al
	je	.L44
	.loc 2 109 13
	leaq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	errorToken
	.loc 2 109 56
	jmp	.L42
.L44:
	.loc 2 112 12
	movl	$0, %eax
	call	checkChar
	.loc 2 112 11
	cmpb	$35, %al
	jne	.L46
	.loc 2 112 34 discriminator 1
	movl	$0, %eax
	call	checkNextChar
	.loc 2 112 31 discriminator 1
	cmpb	$124, %al
	jne	.L46
	.loc 2 113 13
	movl	$0, %eax
	call	nextChar
	.loc 2 114 13
	movl	$0, %eax
	call	nextChar
	.loc 2 115 20
	addl	$1, -12(%rbp)
	.loc 2 116 13
	jmp	.L43
.L46:
	.loc 2 119 12
	movl	$0, %eax
	call	checkChar
	.loc 2 119 11
	cmpb	$124, %al
	jne	.L47
	.loc 2 119 34 discriminator 1
	movl	$0, %eax
	call	checkNextChar
	.loc 2 119 31 discriminator 1
	cmpb	$35, %al
	jne	.L47
	.loc 2 120 13
	movl	$0, %eax
	call	nextChar
	.loc 2 121 13
	movl	$0, %eax
	call	nextChar
	.loc 2 122 20
	subl	$1, -12(%rbp)
	.loc 2 123 13
	jmp	.L43
.L47:
	.loc 2 126 9
	movl	$0, %eax
	call	nextChar
.L43:
	.loc 2 106 10
	cmpl	$0, -12(%rbp)
	jg	.L48
.L42:
	.loc 2 128 1
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
	.loc 2 130 29
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.L60:
.LBB2:
	.loc 2 132 20
	movl	$0, %eax
	call	checkChar
	movb	%al, -1(%rbp)
	.loc 2 133 9
	movsbl	-1(%rbp), %eax
	subl	$9, %eax
	cmpl	$26, %eax
	ja	.L61
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L53(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L53(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L53:
	.long	.L54-.L53
	.long	.L55-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L54-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L54-.L53
	.long	.L61-.L53
	.long	.L61-.L53
	.long	.L52-.L53
	.text
.L54:
	.loc 2 137 17
	movl	$0, %eax
	call	nextChar
	.loc 2 138 17
	jmp	.L56
.L55:
	.loc 2 140 24
	movzwl	16+scanner(%rip), %eax
	.loc 2 140 29
	addl	$1, %eax
	movw	%ax, 16+scanner(%rip)
	.loc 2 141 17
	movl	$0, %eax
	call	nextChar
	.loc 2 142 17
	jmp	.L56
.L52:
	.loc 2 144 20
	movl	$0, %eax
	call	checkNextChar
	.loc 2 144 19
	cmpb	$124, %al
	jne	.L57
	.loc 2 144 43 discriminator 1
	movl	$0, %eax
	call	skipBlockComment
	.loc 2 146 17 discriminator 1
	jmp	.L62
.L57:
	.loc 2 145 22
	movl	$0, %eax
	call	skipLineComment
.L62:
	.loc 2 146 17
	nop
.L56:
.LBE2:
	.loc 2 131 12
	jmp	.L60
.L61:
.LBB3:
	.loc 2 148 17
	nop
.LBE3:
	.loc 2 151 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	skipWhitespace, .-skipWhitespace
	.type	checkKeyword, @function
checkKeyword:
.LFB15:
	.loc 2 155 97
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
	.loc 2 156 15
	movq	8+scanner(%rip), %rdx
	.loc 2 156 33
	movq	scanner(%rip), %rax
	.loc 2 156 24
	movq	%rdx, %rcx
	subq	%rax, %rcx
	.loc 2 156 49
	movswl	-4(%rbp), %edx
	movswl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 2 156 7
	cmpq	%rax, %rcx
	jne	.L64
	.loc 2 156 61 discriminator 1
	movswq	-8(%rbp), %rdx
	.loc 2 156 75 discriminator 1
	movq	scanner(%rip), %rcx
	.loc 2 156 61 discriminator 1
	movswq	-4(%rbp), %rax
	.loc 2 156 82 discriminator 1
	addq	%rax, %rcx
	.loc 2 156 61 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	.loc 2 156 58 discriminator 1
	testl	%eax, %eax
	jne	.L64
	.loc 2 157 16
	movl	-20(%rbp), %eax
	jmp	.L65
.L64:
	.loc 2 159 12
	movl	$117, %eax
.L65:
	.loc 2 160 1
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
	.string	"f"
.LC5:
	.string	""
.LC6:
	.string	"um"
.LC7:
	.string	"lse"
.LC8:
	.string	"r"
.LC9:
	.string	"n"
.LC10:
	.string	"t"
.LC11:
	.string	"il"
.LC12:
	.string	"uts"
.LC13:
	.string	"eturn"
.LC14:
	.string	"per"
.LC15:
	.string	"ruct"
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
	.loc 2 162 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 163 19
	movq	scanner(%rip), %rax
	.loc 2 163 25
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$99, %eax
	cmpl	$20, %eax
	ja	.L67
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L69(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L69(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L69:
	.long	.L80-.L69
	.long	.L79-.L69
	.long	.L78-.L69
	.long	.L77-.L69
	.long	.L67-.L69
	.long	.L67-.L69
	.long	.L76-.L69
	.long	.L67-.L69
	.long	.L67-.L69
	.long	.L75-.L69
	.long	.L67-.L69
	.long	.L74-.L69
	.long	.L67-.L69
	.long	.L73-.L69
	.long	.L67-.L69
	.long	.L72-.L69
	.long	.L71-.L69
	.long	.L70-.L69
	.long	.L67-.L69
	.long	.L67-.L69
	.long	.L68-.L69
	.text
.L80:
	.loc 2 165 23
	movq	8+scanner(%rip), %rdx
	.loc 2 165 41
	movq	scanner(%rip), %rax
	.loc 2 165 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 165 15
	cmpq	$1, %rax
	jle	.L105
	.loc 2 166 31
	movq	scanner(%rip), %rax
	.loc 2 166 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$97, %eax
	je	.L82
	cmpl	$108, %eax
	je	.L83
	.loc 2 171 13
	jmp	.L105
.L82:
	.loc 2 167 38
	movl	$94, %ecx
	leaq	.LC2(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L83:
	.loc 2 168 38
	movl	$95, %ecx
	leaq	.LC3(%rip), %rdx
	movl	$3, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L79:
	.loc 2 173 23
	movq	8+scanner(%rip), %rdx
	.loc 2 173 41
	movq	scanner(%rip), %rax
	.loc 2 173 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 173 15
	cmpq	$1, %rax
	jle	.L78
	.loc 2 174 31
	movq	scanner(%rip), %rax
	.loc 2 174 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$101, %eax
	jne	.L78
	.loc 2 175 38
	movl	$100, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L78:
	.loc 2 179 23
	movq	8+scanner(%rip), %rdx
	.loc 2 179 41
	movq	scanner(%rip), %rax
	.loc 2 179 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 179 15
	cmpq	$1, %rax
	jle	.L106
	.loc 2 180 31
	movq	scanner(%rip), %rax
	.loc 2 180 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L86
	cmpl	$110, %eax
	je	.L87
	.loc 2 190 13
	jmp	.L106
.L86:
	.loc 2 181 45 discriminator 3
	movq	scanner(%rip), %rax
	.loc 2 181 51 discriminator 3
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$115, %eax
	jne	.L87
	.loc 2 182 49 discriminator 4
	movq	scanner(%rip), %rax
	.loc 2 182 55 discriminator 4
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$101, %eax
	je	.L88
	cmpl	$105, %eax
	je	.L89
	jmp	.L87
.L88:
	.loc 2 183 46
	movl	$96, %ecx
	leaq	.LC5(%rip), %rdx
	movl	$0, %esi
	movl	$4, %edi
	call	checkKeyword
	jmp	.L84
.L89:
	.loc 2 184 46
	movl	$97, %ecx
	leaq	.LC4(%rip), %rdx
	movl	$1, %esi
	movl	$4, %edi
	call	checkKeyword
	jmp	.L84
.L87:
	.loc 2 187 38
	movl	$98, %ecx
	leaq	.LC6(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L77:
	.loc 2 192 23
	movq	8+scanner(%rip), %rdx
	.loc 2 192 41
	movq	scanner(%rip), %rax
	.loc 2 192 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 192 15
	cmpq	$1, %rax
	jle	.L107
	.loc 2 193 31
	movq	scanner(%rip), %rax
	.loc 2 193 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$97, %eax
	je	.L91
	cmpl	$111, %eax
	je	.L92
	.loc 2 198 13
	jmp	.L107
.L91:
	.loc 2 194 38
	movl	$99, %ecx
	leaq	.LC7(%rip), %rdx
	movl	$3, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L92:
	.loc 2 195 38
	movl	$101, %ecx
	leaq	.LC8(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L76:
	.loc 2 200 23
	movq	8+scanner(%rip), %rdx
	.loc 2 200 41
	movq	scanner(%rip), %rax
	.loc 2 200 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 200 15
	cmpq	$1, %rax
	jle	.L108
	.loc 2 201 31
	movq	scanner(%rip), %rax
	.loc 2 201 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$102, %eax
	je	.L94
	cmpl	$110, %eax
	je	.L95
	.loc 2 206 13
	jmp	.L108
.L94:
	.loc 2 202 38
	movl	$102, %ecx
	leaq	.LC5(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L95:
	.loc 2 203 38
	movl	$103, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L75:
	.loc 2 208 23
	movq	8+scanner(%rip), %rdx
	.loc 2 208 41
	movq	scanner(%rip), %rax
	.loc 2 208 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 208 15
	cmpq	$1, %rax
	jle	.L109
	.loc 2 209 31
	movq	scanner(%rip), %rax
	.loc 2 209 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$101, %eax
	jne	.L109
	.loc 2 210 38
	movl	$104, %ecx
	leaq	.LC10(%rip), %rdx
	movl	$1, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L74:
	.loc 2 214 26
	movl	$105, %ecx
	leaq	.LC11(%rip), %rdx
	movl	$2, %esi
	movl	$1, %edi
	call	checkKeyword
	jmp	.L84
.L73:
	.loc 2 215 26
	movl	$106, %ecx
	leaq	.LC12(%rip), %rdx
	movl	$3, %esi
	movl	$1, %edi
	call	checkKeyword
	jmp	.L84
.L72:
	.loc 2 216 26
	movl	$109, %ecx
	leaq	.LC13(%rip), %rdx
	movl	$5, %esi
	movl	$1, %edi
	call	checkKeyword
	jmp	.L84
.L71:
	.loc 2 218 24
	movq	8+scanner(%rip), %rdx
	.loc 2 218 42
	movq	scanner(%rip), %rax
	.loc 2 218 33
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 218 16
	cmpq	$1, %rax
	jle	.L110
	.loc 2 219 31
	movq	scanner(%rip), %rax
	.loc 2 219 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$116, %eax
	je	.L98
	cmpl	$117, %eax
	jne	.L110
	.loc 2 220 38
	movl	$108, %ecx
	leaq	.LC14(%rip), %rdx
	movl	$3, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L98:
	.loc 2 221 38
	movl	$107, %ecx
	leaq	.LC15(%rip), %rdx
	movl	$4, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L70:
	.loc 2 226 23
	movq	8+scanner(%rip), %rdx
	.loc 2 226 41
	movq	scanner(%rip), %rax
	.loc 2 226 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 226 15
	cmpq	$1, %rax
	jle	.L111
	.loc 2 227 31
	movq	scanner(%rip), %rax
	.loc 2 227 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$104, %eax
	je	.L100
	cmpl	$114, %eax
	je	.L101
	.loc 2 232 13
	jmp	.L111
.L100:
	.loc 2 228 38
	movl	$110, %ecx
	leaq	.LC16(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L101:
	.loc 2 229 38
	movl	$111, %ecx
	leaq	.LC17(%rip), %rdx
	movl	$2, %esi
	movl	$2, %edi
	call	checkKeyword
	jmp	.L84
.L68:
	.loc 2 234 23
	movq	8+scanner(%rip), %rdx
	.loc 2 234 41
	movq	scanner(%rip), %rax
	.loc 2 234 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 234 15
	cmpq	$1, %rax
	jle	.L112
	.loc 2 235 31
	movq	scanner(%rip), %rax
	.loc 2 235 37
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$101, %eax
	je	.L103
	cmpl	$105, %eax
	je	.L104
	.loc 2 240 13
	jmp	.L112
.L103:
	.loc 2 236 38
	movl	$112, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$1, %esi
	movl	$3, %edi
	call	checkKeyword
	jmp	.L84
.L104:
	.loc 2 237 38
	movl	$113, %ecx
	leaq	.LC18(%rip), %rdx
	movl	$2, %esi
	movl	$3, %edi
	call	checkKeyword
	jmp	.L84
.L105:
	.loc 2 171 13
	nop
	jmp	.L67
.L106:
	.loc 2 190 13
	nop
	jmp	.L67
.L107:
	.loc 2 198 13
	nop
	jmp	.L67
.L108:
	.loc 2 206 13
	nop
	jmp	.L67
.L109:
	.loc 2 213 13
	nop
	jmp	.L67
.L110:
	.loc 2 224 13
	nop
	jmp	.L67
.L111:
	.loc 2 232 13
	nop
	jmp	.L67
.L112:
	.loc 2 240 13
	nop
.L67:
	.loc 2 242 12
	movl	$117, %eax
.L84:
	.loc 2 243 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	identifierType, .-identifierType
	.type	identifier, @function
identifier:
.LFB17:
	.loc 2 245 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 245 26
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 246 10
	jmp	.L114
.L115:
	.loc 2 246 57 discriminator 4
	movl	$0, %eax
	call	nextChar
.L114:
	.loc 2 246 19 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 2 246 11 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isAlpha
	.loc 2 246 10 discriminator 1
	testb	%al, %al
	jne	.L115
	.loc 2 246 43 discriminator 3
	movl	$0, %eax
	call	checkChar
	.loc 2 246 35 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 2 246 32 discriminator 3
	testb	%al, %al
	jne	.L115
	.loc 2 247 12
	movl	$0, %eax
	call	identifierType
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	makeToken
	.loc 2 248 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
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
	.loc 2 250 22
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 250 22
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 251 10
	jmp	.L119
.L120:
	.loc 2 251 33 discriminator 2
	movl	$0, %eax
	call	nextChar
.L119:
	.loc 2 251 19 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 2 251 11 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 2 251 10 discriminator 1
	testb	%al, %al
	jne	.L120
	.loc 2 254 8
	movl	$0, %eax
	call	checkChar
	.loc 2 254 7
	cmpb	$46, %al
	jne	.L121
	.loc 2 254 38 discriminator 1
	movl	$0, %eax
	call	checkNextChar
	.loc 2 254 30 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 2 254 27 discriminator 1
	testb	%al, %al
	je	.L121
	.loc 2 255 9
	movl	$0, %eax
	call	nextChar
	.loc 2 256 14
	jmp	.L122
.L123:
	.loc 2 256 37 discriminator 2
	movl	$0, %eax
	call	nextChar
.L122:
	.loc 2 256 23 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 2 256 15 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 2 256 14 discriminator 1
	testb	%al, %al
	jne	.L123
.L121:
	.loc 2 259 12
	movq	-24(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	makeToken
	.loc 2 260 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L125
	call	__stack_chk_fail@PLT
.L125:
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
	.loc 2 262 22
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 262 22
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 263 10
	jmp	.L127
.L130:
	.loc 2 264 12
	movl	$0, %eax
	call	checkChar
	.loc 2 264 11
	cmpb	$10, %al
	jne	.L128
	.loc 2 264 40 discriminator 1
	movzwl	16+scanner(%rip), %eax
	.loc 2 264 45 discriminator 1
	addl	$1, %eax
	movw	%ax, 16+scanner(%rip)
.L128:
	.loc 2 265 9
	movl	$0, %eax
	call	nextChar
.L127:
	.loc 2 263 12
	movl	$0, %eax
	call	checkChar
	.loc 2 263 10
	cmpb	$34, %al
	je	.L129
	.loc 2 263 34 discriminator 1
	movl	$0, %eax
	call	checkChar
	.loc 2 263 31 discriminator 1
	cmpb	$39, %al
	je	.L129
	.loc 2 263 57 discriminator 2
	movl	$0, %eax
	call	checkChar
	.loc 2 263 54 discriminator 2
	cmpb	$96, %al
	je	.L129
	.loc 2 263 81 discriminator 3
	movl	$0, %eax
	call	isAtEnd
	.loc 2 263 80 discriminator 3
	xorl	$1, %eax
	.loc 2 263 77 discriminator 3
	testb	%al, %al
	jne	.L130
.L129:
	.loc 2 268 8
	movl	$0, %eax
	call	isAtEnd
	.loc 2 268 7
	testb	%al, %al
	je	.L131
	.loc 2 268 26 discriminator 1
	movq	-24(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	errorToken
	jmp	.L126
.L131:
	.loc 2 270 5
	movl	$0, %eax
	call	nextChar
	.loc 2 271 12
	movq	-24(%rbp), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	makeToken
.L126:
	.loc 2 272 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L133
	call	__stack_chk_fail@PLT
.L133:
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
	.loc 2 274 18
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 274 18
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 275 5
	movl	$0, %eax
	call	skipWhitespace
	.loc 2 276 28
	movq	8+scanner(%rip), %rax
	.loc 2 276 19
	movq	%rax, scanner(%rip)
	.loc 2 278 8
	movl	$0, %eax
	call	isAtEnd
	.loc 2 278 7
	testb	%al, %al
	je	.L135
	.loc 2 278 26 discriminator 1
	movq	-24(%rbp), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L135:
	.loc 2 280 17
	movl	$0, %eax
	call	nextChar
	.loc 2 280 13
	movb	%al, -9(%rbp)
	.loc 2 281 8
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isAlpha
	.loc 2 281 7
	testb	%al, %al
	je	.L137
	.loc 2 281 27 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	identifier
	jmp	.L134
.L137:
	.loc 2 282 8
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isDigit
	.loc 2 282 7
	testb	%al, %al
	je	.L138
	.loc 2 282 27 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	number
	jmp	.L134
.L138:
	.loc 2 284 5
	movzbl	-9(%rbp), %eax
	subl	$33, %eax
	cmpl	$93, %eax
	ja	.L139
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L141(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L141(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L141:
	.long	.L165-.L141
	.long	.L144-.L141
	.long	.L139-.L141
	.long	.L164-.L141
	.long	.L163-.L141
	.long	.L162-.L141
	.long	.L144-.L141
	.long	.L161-.L141
	.long	.L160-.L141
	.long	.L159-.L141
	.long	.L158-.L141
	.long	.L157-.L141
	.long	.L156-.L141
	.long	.L155-.L141
	.long	.L154-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L153-.L141
	.long	.L152-.L141
	.long	.L151-.L141
	.long	.L150-.L141
	.long	.L149-.L141
	.long	.L148-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L147-.L141
	.long	.L139-.L141
	.long	.L146-.L141
	.long	.L145-.L141
	.long	.L139-.L141
	.long	.L144-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L139-.L141
	.long	.L143-.L141
	.long	.L139-.L141
	.long	.L142-.L141
	.long	.L140-.L141
	.text
.L161:
	.loc 2 286 26
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L160:
	.loc 2 288 16
	movl	$62, %edi
	call	compareChar
	.loc 2 288 15
	testb	%al, %al
	je	.L166
	.loc 2 288 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L166:
	.loc 2 289 20
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movl	$123, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L143:
	.loc 2 290 26
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L142:
	.loc 2 292 16
	movl	$62, %edi
	call	compareChar
	.loc 2 292 15
	testb	%al, %al
	je	.L167
	.loc 2 292 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L167:
	.loc 2 293 20
	movq	-24(%rbp), %rax
	movl	$3, %ecx
	movl	$10, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L147:
	.loc 2 294 26
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L146:
	.loc 2 295 26
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L165:
	.loc 2 299 16
	movl	$33, %edi
	call	compareChar
	.loc 2 299 15
	testb	%al, %al
	je	.L168
	.loc 2 299 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L168:
	.loc 2 300 20
	movq	-24(%rbp), %rax
	movl	$12, %ecx
	movl	$93, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L148:
	.loc 2 301 26
	movq	-24(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L157:
	.loc 2 302 26
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L155:
	.loc 2 304 16
	movl	$46, %edi
	call	compareChar
	.loc 2 304 15
	testb	%al, %al
	je	.L169
	.loc 2 305 24
	movq	-24(%rbp), %rax
	movl	$17, %ecx
	movl	$18, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L169:
	.loc 2 306 27
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L152:
	.loc 2 307 26
	movq	-24(%rbp), %rax
	movl	$19, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L150:
	.loc 2 310 26
	movq	-24(%rbp), %rax
	movl	$75, %ecx
	movl	$92, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L151:
	.loc 2 312 16
	movl	$60, %edi
	call	compareChar
	.loc 2 312 15
	testb	%al, %al
	je	.L170
	.loc 2 312 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L170:
	.loc 2 313 16
	movl	$123, %edi
	call	compareChar
	.loc 2 313 15
	testb	%al, %al
	je	.L171
	.loc 2 313 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L171:
	.loc 2 314 16
	movl	$40, %edi
	call	compareChar
	.loc 2 314 15
	testb	%al, %al
	je	.L172
	.loc 2 314 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L172:
	.loc 2 315 20
	movq	-24(%rbp), %rax
	movl	$88, %ecx
	movl	$90, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L149:
	.loc 2 317 16
	movl	$62, %edi
	call	compareChar
	.loc 2 317 15
	testb	%al, %al
	je	.L173
	.loc 2 317 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$37, %ecx
	movl	$36, %edx
	movl	$62, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L173:
	.loc 2 318 20
	movq	-24(%rbp), %rax
	movl	$89, %ecx
	movl	$91, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L158:
	.loc 2 321 26
	movq	-24(%rbp), %rax
	movl	$23, %ecx
	movl	$66, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L156:
	.loc 2 322 26
	movq	-24(%rbp), %rax
	movl	$24, %ecx
	movl	$67, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L159:
	.loc 2 324 16
	movl	$42, %edi
	call	compareChar
	.loc 2 324 15
	testb	%al, %al
	je	.L174
	.loc 2 324 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L174:
	.loc 2 325 20
	movq	-24(%rbp), %rax
	movl	$25, %ecx
	movl	$68, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L154:
	.loc 2 326 26
	movq	-24(%rbp), %rax
	movl	$26, %ecx
	movl	$69, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L163:
	.loc 2 327 26
	movq	-24(%rbp), %rax
	movl	$27, %ecx
	movl	$70, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L162:
	.loc 2 331 16
	movl	$38, %edi
	call	compareChar
	.loc 2 331 15
	testb	%al, %al
	je	.L175
	.loc 2 331 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$29, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L175:
	.loc 2 332 20
	movq	-24(%rbp), %rax
	movl	$32, %ecx
	movl	$71, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L145:
	.loc 2 334 16
	movl	$94, %edi
	call	compareChar
	.loc 2 334 15
	testb	%al, %al
	je	.L176
	.loc 2 334 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L176:
	.loc 2 335 20
	movq	-24(%rbp), %rax
	movl	$34, %ecx
	movl	$73, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L140:
	.loc 2 337 16
	movl	$62, %edi
	call	compareChar
	.loc 2 337 15
	testb	%al, %al
	je	.L177
	.loc 2 337 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$22, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L177:
	.loc 2 338 20
	movq	-24(%rbp), %rax
	movl	$35, %ecx
	movl	$74, %edx
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeTwoCharToken
	jmp	.L134
.L144:
	.loc 2 350 20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	string
	jmp	.L134
.L153:
	.loc 2 354 16
	movl	$99, %edi
	call	compareChar
	.loc 2 354 15
	testb	%al, %al
	je	.L178
	.loc 2 354 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 354 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L178:
	.loc 2 355 16
	movl	$100, %edi
	call	compareChar
	.loc 2 355 15
	testb	%al, %al
	je	.L179
	.loc 2 355 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 355 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L179:
	.loc 2 356 16
	movl	$102, %edi
	call	compareChar
	.loc 2 356 15
	testb	%al, %al
	je	.L180
	.loc 2 356 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 356 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L180:
	.loc 2 357 16
	movl	$105, %edi
	call	compareChar
	.loc 2 357 15
	testb	%al, %al
	je	.L181
	.loc 2 357 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 357 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L181:
	.loc 2 358 16
	movl	$108, %edi
	call	compareChar
	.loc 2 358 15
	testb	%al, %al
	je	.L182
	.loc 2 359 20
	movl	$100, %edi
	call	compareChar
	.loc 2 359 19
	testb	%al, %al
	je	.L183
	.loc 2 359 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 359 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L183:
	.loc 2 360 20
	movl	$108, %edi
	call	compareChar
	.loc 2 360 19
	testb	%al, %al
	je	.L184
	.loc 2 360 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 360 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L184:
	.loc 2 361 20
	movl	$61, %edi
	call	compareChar
	.loc 2 361 19
	testb	%al, %al
	je	.L182
	.loc 2 361 45 discriminator 1
	movq	-24(%rbp), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L182:
	.loc 2 363 16
	movl	$115, %edi
	call	compareChar
	.loc 2 363 15
	testb	%al, %al
	je	.L185
	.loc 2 363 34 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 363 53 discriminator 1
	movq	-24(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L185:
	.loc 2 364 16
	movl	$117, %edi
	call	compareChar
	.loc 2 364 15
	testb	%al, %al
	je	.L186
	.loc 2 365 20
	movl	$99, %edi
	call	compareChar
	.loc 2 365 19
	testb	%al, %al
	je	.L187
	.loc 2 365 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 365 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L187:
	.loc 2 366 20
	movl	$105, %edi
	call	compareChar
	.loc 2 366 19
	testb	%al, %al
	je	.L188
	.loc 2 366 38 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 366 57 discriminator 1
	movq	-24(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L188:
	.loc 2 367 20
	movl	$108, %edi
	call	compareChar
	.loc 2 367 19
	testb	%al, %al
	je	.L186
	.loc 2 368 24
	movl	$108, %edi
	call	compareChar
	.loc 2 368 23
	testb	%al, %al
	je	.L189
	.loc 2 368 42 discriminator 1
	movl	$0, %eax
	call	nextChar
	.loc 2 368 61 discriminator 1
	movq	-24(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L189:
	.loc 2 369 24
	movl	$61, %edi
	call	compareChar
	.loc 2 369 23
	testb	%al, %al
	je	.L186
	.loc 2 369 49 discriminator 1
	movq	-24(%rbp), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L186:
	.loc 2 372 16
	movl	$58, %edi
	call	compareChar
	.loc 2 372 15
	testb	%al, %al
	je	.L190
	.loc 2 372 41 discriminator 1
	movq	-24(%rbp), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L190:
	.loc 2 373 16
	movl	$0, %edi
	call	compareChar
	.loc 2 373 15
	testb	%al, %al
	je	.L164
	.loc 2 373 42 discriminator 1
	movq	-24(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L164:
	.loc 2 376 23
	movq	8+scanner(%rip), %rdx
	.loc 2 376 41
	movq	scanner(%rip), %rax
	.loc 2 376 32
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 376 15
	cmpq	$1, %rax
	jle	.L208
	.loc 2 377 31
	movq	scanner(%rip), %rax
	.loc 2 377 37
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$61, %eax
	cmpl	$56, %eax
	ja	.L208
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L193(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L193(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L193:
	.long	.L200-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L199-.L193
	.long	.L198-.L193
	.long	.L208-.L193
	.long	.L197-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L196-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L195-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L208-.L193
	.long	.L194-.L193
	.long	.L208-.L193
	.long	.L192-.L193
	.text
.L199:
	.loc 2 378 38
	movq	-24(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L198:
	.loc 2 379 38
	movq	-24(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L197:
	.loc 2 380 38
	movq	-24(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L196:
	.loc 2 381 38
	movq	-24(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L195:
	.loc 2 382 45 discriminator 2
	movq	scanner(%rip), %rax
	.loc 2 382 51 discriminator 2
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L201
	cmpl	$108, %eax
	jg	.L194
	cmpl	$61, %eax
	je	.L202
	cmpl	$100, %eax
	jne	.L194
	.loc 2 383 42
	movq	-24(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L201:
	.loc 2 384 42
	movq	-24(%rbp), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L202:
	.loc 2 385 42
	movq	-24(%rbp), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L194:
	.loc 2 387 38
	movq	-24(%rbp), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L192:
	.loc 2 388 45 discriminator 3
	movq	scanner(%rip), %rax
	.loc 2 388 51 discriminator 3
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$108, %eax
	je	.L203
	cmpl	$108, %eax
	jg	.L200
	cmpl	$99, %eax
	je	.L204
	cmpl	$105, %eax
	je	.L205
	jmp	.L200
.L204:
	.loc 2 389 42
	movq	-24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L205:
	.loc 2 390 42
	movq	-24(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L203:
	.loc 2 391 49 discriminator 4
	movq	scanner(%rip), %rax
	.loc 2 391 55 discriminator 4
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	je	.L206
	cmpl	$108, %eax
	jne	.L200
	.loc 2 392 53 discriminator 5
	movq	scanner(%rip), %rax
	.loc 2 392 59 discriminator 5
	addq	$4, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	jne	.L206
	.loc 2 392 81
	movq	-24(%rbp), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L206:
	.loc 2 393 46
	movq	-24(%rbp), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L200:
	.loc 2 396 38
	movq	-24(%rbp), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	makeToken
	jmp	.L134
.L208:
	.loc 2 401 13
	nop
.L139:
	.loc 2 411 5
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	invalidToken
	.loc 2 412 12
	movq	-24(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	errorToken
.L134:
	.loc 2 413 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L207
	call	__stack_chk_fail@PLT
.L207:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	scanToken, .-scanToken
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xaab
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF925
	.byte	0xc
	.long	.LASF926
	.long	.LASF927
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x25
	.byte	0x15
	.long	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF717
	.uleb128 0x3
	.long	.LASF718
	.byte	0x4
	.byte	0x26
	.byte	0x17
	.long	0x52
	.uleb128 0x3
	.long	.LASF719
	.byte	0x4
	.byte	0x27
	.byte	0x1a
	.long	0x92
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF720
	.uleb128 0x3
	.long	.LASF721
	.byte	0x4
	.byte	0x98
	.byte	0x12
	.long	0x31
	.uleb128 0x3
	.long	.LASF722
	.byte	0x4
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
	.byte	0x5
	.byte	0x18
	.byte	0x12
	.long	0x67
	.uleb128 0x7
	.long	0xc0
	.uleb128 0x3
	.long	.LASF725
	.byte	0x5
	.byte	0x19
	.byte	0x13
	.long	0x86
	.uleb128 0x3
	.long	.LASF726
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.long	0x7a
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x1
	.byte	0x6
	.byte	0xe
	.long	0x3ec
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
	.uleb128 0x9
	.long	.LASF850
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF851
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF852
	.byte	0x7d
	.byte	0
	.uleb128 0x3
	.long	.LASF853
	.byte	0x1
	.byte	0xa2
	.byte	0x3
	.long	0xe9
	.uleb128 0xa
	.byte	0x18
	.byte	0x1
	.byte	0xa4
	.byte	0x9
	.long	0x436
	.uleb128 0xb
	.long	.LASF854
	.byte	0x1
	.byte	0xa5
	.byte	0xf
	.long	0x3ec
	.byte	0
	.uleb128 0xb
	.long	.LASF855
	.byte	0x1
	.byte	0xa6
	.byte	0x13
	.long	0x436
	.byte	0x8
	.uleb128 0xb
	.long	.LASF856
	.byte	0x1
	.byte	0xa7
	.byte	0xd
	.long	0xd1
	.byte	0x10
	.uleb128 0xb
	.long	.LASF857
	.byte	0x1
	.byte	0xa8
	.byte	0xd
	.long	0xd1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcc
	.uleb128 0x3
	.long	.LASF858
	.byte	0x1
	.byte	0xa9
	.byte	0x3
	.long	0x3f8
	.uleb128 0xa
	.byte	0x18
	.byte	0x1
	.byte	0xab
	.byte	0x9
	.long	0x479
	.uleb128 0xb
	.long	.LASF855
	.byte	0x1
	.byte	0xac
	.byte	0x13
	.long	0x436
	.byte	0
	.uleb128 0xb
	.long	.LASF859
	.byte	0x1
	.byte	0xad
	.byte	0x13
	.long	0x436
	.byte	0x8
	.uleb128 0xb
	.long	.LASF857
	.byte	0x1
	.byte	0xae
	.byte	0xd
	.long	0xd1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF860
	.byte	0x1
	.byte	0xaf
	.byte	0x3
	.long	0x448
	.uleb128 0xc
	.long	.LASF894
	.byte	0x1
	.byte	0xb1
	.byte	0x9
	.long	0x479
	.uleb128 0x9
	.byte	0x3
	.quad	scanner
	.uleb128 0xd
	.long	.LASF928
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x622
	.uleb128 0xb
	.long	.LASF861
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x4b
	.byte	0
	.uleb128 0xb
	.long	.LASF862
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xb3
	.byte	0x8
	.uleb128 0xb
	.long	.LASF863
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xb3
	.byte	0x10
	.uleb128 0xb
	.long	.LASF864
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xb3
	.byte	0x18
	.uleb128 0xb
	.long	.LASF865
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xb3
	.byte	0x20
	.uleb128 0xb
	.long	.LASF866
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xb3
	.byte	0x28
	.uleb128 0xb
	.long	.LASF867
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xb3
	.byte	0x30
	.uleb128 0xb
	.long	.LASF868
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xb3
	.byte	0x38
	.uleb128 0xb
	.long	.LASF869
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xb3
	.byte	0x40
	.uleb128 0xb
	.long	.LASF870
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xb3
	.byte	0x48
	.uleb128 0xb
	.long	.LASF871
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xb3
	.byte	0x50
	.uleb128 0xb
	.long	.LASF872
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xb3
	.byte	0x58
	.uleb128 0xb
	.long	.LASF873
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x63b
	.byte	0x60
	.uleb128 0xb
	.long	.LASF874
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x641
	.byte	0x68
	.uleb128 0xb
	.long	.LASF875
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x4b
	.byte	0x70
	.uleb128 0xb
	.long	.LASF876
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x4b
	.byte	0x74
	.uleb128 0xb
	.long	.LASF877
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x99
	.byte	0x78
	.uleb128 0xb
	.long	.LASF878
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x59
	.byte	0x80
	.uleb128 0xb
	.long	.LASF879
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x73
	.byte	0x82
	.uleb128 0xb
	.long	.LASF880
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x647
	.byte	0x83
	.uleb128 0xb
	.long	.LASF881
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x657
	.byte	0x88
	.uleb128 0xb
	.long	.LASF882
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xa5
	.byte	0x90
	.uleb128 0xb
	.long	.LASF883
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x662
	.byte	0x98
	.uleb128 0xb
	.long	.LASF884
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x66d
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF885
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x641
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF886
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xb1
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF887
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x38
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF888
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x4b
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF889
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x673
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF890
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x49b
	.uleb128 0xe
	.long	.LASF929
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF891
	.uleb128 0x6
	.byte	0x8
	.long	0x636
	.uleb128 0x6
	.byte	0x8
	.long	0x49b
	.uleb128 0x10
	.long	0xb9
	.long	0x657
	.uleb128 0x11
	.long	0x44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62e
	.uleb128 0xf
	.long	.LASF892
	.uleb128 0x6
	.byte	0x8
	.long	0x65d
	.uleb128 0xf
	.long	.LASF893
	.uleb128 0x6
	.byte	0x8
	.long	0x668
	.uleb128 0x10
	.long	0xb9
	.long	0x683
	.uleb128 0x11
	.long	0x44
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF895
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x68f
	.uleb128 0x6
	.byte	0x8
	.long	0x622
	.uleb128 0x12
	.long	.LASF896
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x68f
	.uleb128 0x12
	.long	.LASF897
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x68f
	.uleb128 0xc
	.long	.LASF898
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x43c
	.uleb128 0x9
	.byte	0x3
	.quad	token
	.uleb128 0x13
	.long	.LASF921
	.byte	0x2
	.value	0x112
	.byte	0x7
	.long	0x43c
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f5
	.uleb128 0x14
	.string	"c"
	.byte	0x2
	.value	0x118
	.byte	0xd
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x15
	.long	.LASF899
	.byte	0x2
	.value	0x106
	.byte	0xe
	.long	0x43c
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF900
	.byte	0x2
	.byte	0xfa
	.byte	0xe
	.long	0x43c
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF901
	.byte	0x2
	.byte	0xf5
	.byte	0xe
	.long	0x43c
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF902
	.byte	0x2
	.byte	0xa2
	.byte	0x12
	.long	0x3ec
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF908
	.byte	0x2
	.byte	0x9b
	.byte	0x12
	.long	0x3ec
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cd
	.uleb128 0x18
	.long	.LASF855
	.byte	0x2
	.byte	0x9b
	.byte	0x27
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF856
	.byte	0x2
	.byte	0x9b
	.byte	0x36
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF903
	.byte	0x2
	.byte	0x9b
	.byte	0x4c
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF854
	.byte	0x2
	.byte	0x9b
	.byte	0x5c
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF904
	.byte	0x2
	.byte	0x82
	.byte	0xd
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ff
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.uleb128 0x1b
	.string	"c"
	.byte	0x2
	.byte	0x84
	.byte	0x10
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF905
	.byte	0x2
	.byte	0x66
	.byte	0xd
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x82d
	.uleb128 0x1c
	.long	.LASF906
	.byte	0x2
	.byte	0x69
	.byte	0x9
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.long	.LASF930
	.byte	0x2
	.byte	0x60
	.byte	0xd
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF914
	.byte	0x2
	.byte	0x57
	.byte	0xd
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x883
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.byte	0x57
	.byte	0x22
	.long	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF907
	.byte	0x2
	.byte	0x58
	.byte	0xd
	.long	0x883
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x10
	.long	0xdd
	.long	0x893
	.uleb128 0x11
	.long	0x44
	.byte	0x19
	.byte	0
	.uleb128 0x17
	.long	.LASF909
	.byte	0x2
	.byte	0x4e
	.byte	0xe
	.long	0x43c
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d4
	.uleb128 0x18
	.long	.LASF910
	.byte	0x2
	.byte	0x4e
	.byte	0x27
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF898
	.byte	0x2
	.byte	0x4f
	.byte	0xb
	.long	0x43c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.long	.LASF911
	.byte	0x2
	.byte	0x4a
	.byte	0xe
	.long	0x43c
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x922
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.byte	0x4a
	.byte	0x26
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"one"
	.byte	0x2
	.byte	0x4a
	.byte	0x33
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"two"
	.byte	0x2
	.byte	0x4a
	.byte	0x42
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.long	.LASF912
	.byte	0x2
	.byte	0x38
	.byte	0xc
	.long	0x952
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x952
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
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
	.long	.LASF913
	.uleb128 0x20
	.long	.LASF915
	.byte	0x2
	.byte	0x31
	.byte	0xf
	.long	0xc0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x989
	.uleb128 0x1b
	.string	"c"
	.byte	0x2
	.byte	0x32
	.byte	0xc
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x16
	.long	.LASF916
	.byte	0x2
	.byte	0x2c
	.byte	0xf
	.long	0xc0
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF917
	.byte	0x2
	.byte	0x28
	.byte	0xf
	.long	0xc0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF918
	.byte	0x2
	.byte	0x1f
	.byte	0xc
	.long	0x952
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF919
	.byte	0x2
	.byte	0x1b
	.byte	0xc
	.long	0x952
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xa13
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.byte	0x1b
	.byte	0x1b
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF920
	.byte	0x2
	.byte	0x17
	.byte	0xc
	.long	0x952
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xa43
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.byte	0x17
	.byte	0x1b
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF922
	.byte	0x2
	.byte	0x11
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xa71
	.uleb128 0x18
	.long	.LASF923
	.byte	0x2
	.byte	0x11
	.byte	0x20
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF924
	.byte	0x1
	.byte	0xc1
	.byte	0xe
	.long	0x43c
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF854
	.byte	0x1
	.byte	0xc1
	.byte	0x22
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	.LASF898
	.byte	0x1
	.byte	0xc2
	.byte	0xb
	.long	0x43c
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x14
	.long	.LASF604
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x6
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
	.uleb128 0x1
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
	.uleb128 0x3
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
	.uleb128 0x3
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
.LASF741:
	.string	"TK_QUESTION"
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
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF228:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF829:
	.string	"TK_IF"
.LASF220:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF855:
	.string	"start"
.LASF695:
	.string	"BUFSIZ 8192"
.LASF762:
	.string	"TK_TILDE"
.LASF830:
	.string	"TK_IN"
.LASF504:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF282:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF19:
	.string	"__LP64__ 1"
.LASF739:
	.string	"TK_BANG"
.LASF270:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF421:
	.string	"__USE_XOPEN2K8XSI"
.LASF697:
	.string	"SEEK_SET 0"
.LASF214:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF229:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF892:
	.string	"_IO_codecvt"
.LASF444:
	.string	"__GNU_LIBRARY__ 6"
.LASF853:
	.string	"TokenType"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF589:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF659:
	.string	"INT16_C(c) c"
.LASF443:
	.string	"__GNU_LIBRARY__"
.LASF139:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF841:
	.string	"TK_FIELD"
.LASF208:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF478:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF872:
	.string	"_IO_save_end"
.LASF136:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF273:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF162:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF725:
	.string	"int16_t"
.LASF747:
	.string	"TK_COLON"
.LASF840:
	.string	"TK_WHILE"
.LASF200:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF766:
	.string	"TK_COLONCOLON"
.LASF402:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF36:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF607:
	.string	"INT8_MIN (-128)"
.LASF123:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF348:
	.string	"true 1"
.LASF782:
	.string	"TK_USDLLEQ"
.LASF628:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF865:
	.string	"_IO_write_base"
.LASF481:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF290:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF124:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF751:
	.string	"TK_MINUS"
.LASF600:
	.string	"__STD_TYPE"
.LASF315:
	.string	"__x86_64 1"
.LASF638:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF457:
	.string	"__P(args) args"
.LASF745:
	.string	"TK_DOTDOTDOT"
.LASF881:
	.string	"_lock"
.LASF365:
	.string	"__SIZE_T__ "
.LASF202:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF928:
	.string	"_IO_FILE"
.LASF835:
	.string	"TK_SUPER"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF105:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF570:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF915:
	.string	"nextChar"
.LASF398:
	.string	"__need_wchar_t"
.LASF196:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF445:
	.string	"__GLIBC__ 2"
.LASF854:
	.string	"type"
.LASF642:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF359:
	.string	"_BSD_PTRDIFF_T_ "
.LASF870:
	.string	"_IO_save_base"
.LASF770:
	.string	"TK_USDCEQ"
.LASF663:
	.string	"UINT16_C(c) c"
.LASF211:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF380:
	.string	"__size_t "
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF215:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF137:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF554:
	.string	"__ULONG32_TYPE unsigned int"
.LASF447:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF637:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF584:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF471:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF369:
	.string	"_T_SIZE "
.LASF168:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF616:
	.string	"UINT16_MAX (65535)"
.LASF281:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF288:
	.string	"__NO_INLINE__ 1"
.LASF874:
	.string	"_chain"
.LASF687:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF333:
	.string	"__CET__ 3"
.LASF235:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF801:
	.string	"TK_TILDEEQ"
.LASF210:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF878:
	.string	"_cur_column"
.LASF748:
	.string	"TK_LTTILDE"
.LASF740:
	.string	"TK_BANGBANG"
.LASF411:
	.string	"__USE_POSIX"
.LASF815:
	.string	"TK_LT"
.LASF269:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF399:
	.string	"NULL"
.LASF796:
	.string	"TK_SLASHEQ"
.LASF598:
	.string	"_BITS_TIME64_H 1"
.LASF255:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF737:
	.string	"TK_RBRACELPAREN"
.LASF825:
	.string	"TK_ENUM"
.LASF654:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF521:
	.string	"__stub_fchflags "
.LASF40:
	.string	"__INTMAX_TYPE__ long int"
.LASF579:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF833:
	.string	"TK_PUTS"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF434:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF386:
	.string	"_T_WCHAR "
.LASF138:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF420:
	.string	"__USE_XOPEN2K8"
.LASF248:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF489:
	.string	"__always_inline"
.LASF367:
	.string	"_SYS_SIZE_T_H "
.LASF779:
	.string	"TK_COLONULEQ"
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
.LASF805:
	.string	"TK_EQI16"
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
.LASF769:
	.string	"TK_COLONCEQ"
.LASF279:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF364:
	.string	"__size_t__ "
.LASF224:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF925:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF363:
	.string	"__need_ptrdiff_t"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF797:
	.string	"TK_MODEQ"
.LASF294:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF306:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF261:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF891:
	.string	"_IO_marker"
.LASF919:
	.string	"isDigit"
.LASF198:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF827:
	.string	"TK_DEF"
.LASF705:
	.string	"FOPEN_MAX 16"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF713:
	.string	"short unsigned int"
.LASF837:
	.string	"TK_THIS"
.LASF577:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF360:
	.string	"___int_ptrdiff_t_h "
.LASF199:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF474:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF459:
	.string	"__CONCAT(x,y) x ## y"
.LASF707:
	.string	"stdout stdout"
.LASF742:
	.string	"TK_COMMA"
.LASF141:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF231:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF749:
	.string	"TK_TILDEGT"
.LASF342:
	.string	"__STDC_IEC_559__ 1"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF813:
	.string	"TK_EQF128"
.LASF651:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF917:
	.string	"checkChar"
.LASF671:
	.string	"UINT8_COUNT (UINT8_MAX + 1)"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF118:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF916:
	.string	"checkNextChar"
.LASF404:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF341:
	.string	"_STDC_PREDEF_H 1"
.LASF756:
	.string	"TK_AMPAMP"
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
.LASF564:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF154:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF442:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF911:
	.string	"makeTwoCharToken"
.LASF157:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF786:
	.string	"TK_USDFEQ"
.LASF717:
	.string	"signed char"
.LASF550:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF727:
	.string	"TK_LEFT_PAREN"
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
.LASF807:
	.string	"TK_EQI32"
.LASF893:
	.string	"_IO_wide_data"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF559:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF524:
	.string	"__stub_revoke "
.LASF92:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF382:
	.string	"__wchar_t__ "
.LASF207:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF507:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF575:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF246:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF213:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF133:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF535:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF375:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF377:
	.string	"___int_size_t_h "
.LASF438:
	.string	"__USE_ISOC99 1"
.LASF203:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF581:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF156:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF458:
	.string	"__PMT(args) args"
.LASF280:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF629:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF145:
	.string	"__GCC_IEC_559 2"
.LASF252:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF424:
	.string	"__USE_FILE_OFFSET64"
.LASF541:
	.string	"_BITS_TYPES_H 1"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF107:
	.string	"__UINT16_MAX__ 0xffff"
.LASF127:
	.string	"__UINT32_C(c) c ## U"
.LASF6:
	.string	"__VERSION__ \"9.3.0\""
.LASF95:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF608:
	.string	"INT16_MIN (-32767-1)"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF913:
	.string	"_Bool"
.LASF120:
	.string	"__INT64_C(c) c ## L"
.LASF497:
	.string	"__restrict_arr __restrict"
.LASF519:
	.string	"__stub___compat_bdflush "
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
.LASF427:
	.string	"__USE_GNU"
.LASF441:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF624:
	.string	"INT_LEAST16_MAX (32767)"
.LASF74:
	.string	"__SCHAR_MAX__ 0x7f"
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
.LASF580:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF819:
	.string	"TK_EQEQ"
.LASF547:
	.string	"__SLONGWORD_TYPE long int"
.LASF513:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF494:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF337:
	.string	"__unix 1"
.LASF929:
	.string	"_IO_lock_t"
.LASF668:
	.string	"_GCC_WRAP_STDINT_H "
.LASF912:
	.string	"compareChar"
.LASF418:
	.string	"__USE_XOPEN2K"
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
.LASF492:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF526:
	.string	"__stub_sigreturn "
.LASF176:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF923:
	.string	"source"
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
.LASF862:
	.string	"_IO_read_ptr"
.LASF226:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF809:
	.string	"TK_EQI64"
.LASF664:
	.string	"UINT32_C(c) c ## U"
.LASF754:
	.string	"TK_MOD"
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
.LASF832:
	.string	"TK_NIL"
.LASF446:
	.string	"__GLIBC_MINOR__ 31"
.LASF895:
	.string	"stdin"
.LASF859:
	.string	"current"
.LASF646:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF417:
	.string	"__USE_UNIX98"
.LASF61:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF487:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF433:
	.string	"__KERNEL_STRICT_NAMES "
.LASF771:
	.string	"TK_COLONUCEQ"
.LASF563:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF691:
	.string	"_IO_USER_LOCK 0x8000"
.LASF299:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF14:
	.string	"__PIC__ 2"
.LASF394:
	.string	"__INT_WCHAR_T_H "
.LASF548:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF914:
	.string	"invalidToken"
.LASF303:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF873:
	.string	"_markers"
.LASF592:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF733:
	.string	"TK_LTLBRACE"
.LASF339:
	.string	"__ELF__ 1"
.LASF768:
	.string	"TK_USDEQ"
.LASF80:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF96:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF674:
	.string	"__need_size_t "
.LASF415:
	.string	"__USE_XOPEN"
.LASF631:
	.string	"INT_FAST8_MIN (-128)"
.LASF192:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF525:
	.string	"__stub_setlogin "
.LASF268:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF594:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF672:
	.string	"scanner_h "
.LASF241:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF538:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF678:
	.string	"__GNUC_VA_LIST "
.LASF844:
	.string	"TK_IDENTIFIER"
.LASF902:
	.string	"identifierType"
.LASF347:
	.string	"bool _Bool"
.LASF750:
	.string	"TK_PLUS"
.LASF93:
	.string	"__SIZE_WIDTH__ 64"
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
.LASF773:
	.string	"TK_COLONIEQ"
.LASF533:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF506:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF701:
	.string	"L_tmpnam 20"
.LASF680:
	.string	"____mbstate_t_defined 1"
.LASF115:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF149:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF721:
	.string	"__off_t"
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
.LASF791:
	.string	"TK_COLONSEQ"
.LASF882:
	.string	"_offset"
.LASF334:
	.string	"__gnu_linux__ 1"
.LASF286:
	.string	"__USER_LABEL_PREFIX__ "
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF826:
	.string	"TK_FALSE"
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
.LASF803:
	.string	"TK_EQI8"
.LASF407:
	.string	"__USE_ISOC11"
.LASF795:
	.string	"TK_STAREQ"
.LASF483:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF240:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF71:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF531:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF121:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF163:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF343:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF102:
	.string	"__INT8_MAX__ 0x7f"
.LASF647:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF576:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF778:
	.string	"TK_USDLEQ"
.LASF711:
	.string	"long unsigned int"
.LASF615:
	.string	"UINT8_MAX (255)"
.LASF652:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF451:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF146:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF817:
	.string	"TK_LTEQ"
.LASF15:
	.string	"__pie__ 2"
.LASF3:
	.string	"__GNUC__ 9"
.LASF783:
	.string	"TK_COLONULLEQ"
.LASF627:
	.string	"UINT_LEAST8_MAX (255)"
.LASF439:
	.string	"__USE_ISOC95 1"
.LASF633:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF517:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF189:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF876:
	.string	"_flags2"
.LASF368:
	.string	"_T_SIZE_ "
.LASF148:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF903:
	.string	"rest"
.LASF85:
	.string	"__SCHAR_WIDTH__ 8"
.LASF758:
	.string	"TK_CARETCARET"
.LASF703:
	.string	"FILENAME_MAX 4096"
.LASF470:
	.string	"__glibc_c99_flexarr_available 1"
.LASF864:
	.string	"_IO_read_base"
.LASF824:
	.string	"TK_ELSIF"
.LASF323:
	.string	"__k8__ 1"
.LASF18:
	.string	"_LP64 1"
.LASF857:
	.string	"line"
.LASF131:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF452:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF675:
	.string	"__need_NULL "
.LASF406:
	.string	"_FEATURES_H 1"
.LASF155:
	.string	"__FLT_MAX_EXP__ 128"
.LASF889:
	.string	"_unused2"
.LASF194:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF450:
	.string	"__LEAF , __leaf__"
.LASF603:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF480:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF822:
	.string	"TK_CLASS"
.LASF296:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF169:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF558:
	.string	"_BITS_TYPESIZES_H 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF247:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_MANT_DIG__ 24"
.LASF851:
	.string	"TK_NEWLINE"
.LASF848:
	.string	"TK_STRING"
.LASF94:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF216:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF355:
	.string	"_T_PTRDIFF_ "
.LASF877:
	.string	"_old_offset"
.LASF731:
	.string	"TK_LEFT_BRACK"
.LASF13:
	.string	"__pic__ 2"
.LASF239:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF907:
	.string	"errMsg"
.LASF326:
	.string	"__SSE__ 1"
.LASF98:
	.string	"__INTMAX_WIDTH__ 64"
.LASF921:
	.string	"scanToken"
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
.LASF116:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF511:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF412:
	.string	"__USE_POSIX2"
.LASF114:
	.string	"__INT16_C(c) c"
.LASF301:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF846:
	.string	"TK_LINE"
.LASF381:
	.string	"__need_size_t"
.LASF918:
	.string	"isAtEnd"
.LASF371:
	.string	"_SIZE_T_ "
.LASF920:
	.string	"isAlpha"
.LASF150:
	.string	"__FLT_RADIX__ 2"
.LASF821:
	.string	"TK_CASE"
.LASF930:
	.string	"skipLineComment"
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
.LASF743:
	.string	"TK_DOT"
.LASF354:
	.string	"_PTRDIFF_T "
.LASF403:
	.string	"_STDINT_H 1"
.LASF132:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF885:
	.string	"_freeres_list"
.LASF302:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF486:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF502:
	.string	"__attribute_copy__"
.LASF212:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF316:
	.string	"__x86_64__ 1"
.LASF387:
	.string	"__WCHAR_T "
.LASF134:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF455:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF41:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF153:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF91:
	.string	"__WINT_WIDTH__ 32"
.LASF900:
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
.LASF834:
	.string	"TK_STRUCT"
.LASF449:
	.string	"__PMT"
.LASF308:
	.string	"__SSP_STRONG__ 3"
.LASF780:
	.string	"TK_USDULEQ"
.LASF729:
	.string	"TK_LEFT_BRACE"
.LASF140:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF775:
	.string	"TK_COLONUIEQ"
.LASF763:
	.string	"TK_GTGTGT"
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
.LASF839:
	.string	"TK_WHEN"
.LASF868:
	.string	"_IO_buf_base"
.LASF899:
	.string	"string"
.LASF858:
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
.LASF806:
	.string	"TK_EQU16"
.LASF679:
	.string	"_____fpos_t_defined 1"
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
.LASF908:
	.string	"checkKeyword"
.LASF147:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF838:
	.string	"TK_TRUE"
.LASF158:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF760:
	.string	"TK_PIPE"
.LASF887:
	.string	"__pad5"
.LASF546:
	.string	"__U32_TYPE unsigned int"
.LASF356:
	.string	"_T_PTRDIFF "
.LASF88:
	.string	"__LONG_WIDTH__ 64"
.LASF477:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF227:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF860:
	.string	"Scanner"
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
.LASF781:
	.string	"TK_COLONLLEQ"
.LASF488:
	.string	"__wur "
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF847:
	.string	"TK_STATIC_FIELD"
.LASF86:
	.string	"__SHRT_WIDTH__ 16"
.LASF728:
	.string	"TK_RIGHT_PAREN"
.LASF278:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF861:
	.string	"_flags"
.LASF219:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF362:
	.string	"_PTRDIFF_T_DECLARED "
.LASF552:
	.string	"__UWORD_TYPE unsigned long int"
.LASF324:
	.string	"__code_model_small__ 1"
.LASF811:
	.string	"TK_EQF32"
.LASF820:
	.string	"TK_BANGEQ"
.LASF562:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF238:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF164:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF295:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF170:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF888:
	.string	"_mode"
.LASF569:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF453:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF510:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF104:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF509:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF460:
	.string	"__STRING(x) #x"
.LASF712:
	.string	"unsigned char"
.LASF503:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF883:
	.string	"_codecvt"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF197:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF384:
	.string	"_WCHAR_T "
.LASF161:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF264:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF808:
	.string	"TK_EQU32"
.LASF361:
	.string	"_GCC_PTRDIFF_T "
.LASF676:
	.string	"__need___va_list "
.LASF706:
	.string	"stdin stdin"
.LASF927:
	.string	"/mnt/d/coding portfolio/fortissimolanguage"
.LASF454:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF515:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF366:
	.string	"_SIZE_T "
.LASF392:
	.string	"_WCHAR_T_H "
.LASF266:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF694:
	.string	"_IONBF 2"
.LASF621:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF78:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF469:
	.string	"__flexarr []"
.LASF682:
	.string	"____FILE_defined 1"
.LASF571:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF765:
	.string	"TK_LTLT"
.LASF263:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF223:
	.string	"__FLT128_DIG__ 33"
.LASF111:
	.string	"__INT8_C(c) c"
.LASF201:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF767:
	.string	"TK_COLONEQ"
.LASF167:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF370:
	.string	"__SIZE_T "
.LASF906:
	.string	"nesting"
.LASF890:
	.string	"FILE"
.LASF47:
	.string	"__INT32_TYPE__ int"
.LASF297:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF590:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF409:
	.string	"__USE_ISOC95"
.LASF649:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF408:
	.string	"__USE_ISOC99"
.LASF735:
	.string	"TK_LTLPAREN"
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
.LASF462:
	.string	"__BEGIN_DECLS "
.LASF843:
	.string	"TK_NUMBER"
.LASF630:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF673:
	.string	"_STDIO_H 1"
.LASF716:
	.string	"__int8_t"
.LASF606:
	.string	"__intptr_t_defined "
.LASF597:
	.string	"__FD_SETSIZE 1024"
.LASF48:
	.string	"__INT64_TYPE__ long int"
.LASF757:
	.string	"TK_PIPEPIPE"
.LASF904:
	.string	"skipWhitespace"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF271:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF250:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF605:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF793:
	.string	"TK_PLUSEQ"
.LASF698:
	.string	"SEEK_CUR 1"
.LASF75:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF410:
	.string	"__USE_ISOCXX11"
.LASF374:
	.string	"_SIZE_T_DEFINED "
.LASF81:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF856:
	.string	"length"
.LASF850:
	.string	"TK_EOF"
.LASF556:
	.string	"__U64_TYPE unsigned long int"
.LASF357:
	.string	"__PTRDIFF_T "
.LASF257:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF69:
	.string	"__INTPTR_TYPE__ long int"
.LASF926:
	.string	"Tokenization/scanner/scanner.c"
.LASF746:
	.string	"TK_SEMICOLON"
.LASF845:
	.string	"TK_INTERPOLATION"
.LASF812:
	.string	"TK_EQF64"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF237:
	.string	"__FLT32X_DIG__ 15"
.LASF431:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF414:
	.string	"__USE_POSIX199506"
.LASF660:
	.string	"INT32_C(c) c"
.LASF142:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF772:
	.string	"TK_USDUCEQ"
.LASF665:
	.string	"UINT64_C(c) c ## UL"
.LASF886:
	.string	"_freeres_buf"
.LASF317:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF699:
	.string	"SEEK_END 2"
.LASF328:
	.string	"__FXSR__ 1"
.LASF823:
	.string	"TK_ELSE"
.LASF391:
	.string	"_WCHAR_T_DEFINED "
.LASF508:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF309:
	.string	"__SIZEOF_INT128__ 16"
.LASF810:
	.string	"TK_EQU64"
.LASF528:
	.string	"__stub_stty "
.LASF467:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF836:
	.string	"TK_RETURN"
.LASF119:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF555:
	.string	"__S64_TYPE long int"
.LASF372:
	.string	"_BSD_SIZE_T_ "
.LASF465:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF909:
	.string	"errorToken"
.LASF388:
	.string	"_WCHAR_T_ "
.LASF545:
	.string	"__S32_TYPE int"
.LASF744:
	.string	"TK_DOTDOT"
.LASF617:
	.string	"UINT32_MAX (4294967295U)"
.LASF84:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF719:
	.string	"__int16_t"
.LASF871:
	.string	"_IO_backup_base"
.LASF880:
	.string	"_shortbuf"
.LASF787:
	.string	"TK_COLONDEQ"
.LASF129:
	.string	"__UINT64_C(c) c ## UL"
.LASF572:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF655:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF709:
	.string	"_STRING_H 1"
.LASF852:
	.string	"TK_ENDEXPRESSION"
.LASF601:
	.string	"_BITS_WCHAR_H 1"
.LASF784:
	.string	"TK_USDULLEQ"
.LASF661:
	.string	"INT64_C(c) c ## L"
.LASF785:
	.string	"TK_COLONFEQ"
.LASF173:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF258:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF667:
	.string	"UINTMAX_C(c) c ## UL"
.LASF527:
	.string	"__stub_sstk "
.LASF79:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF722:
	.string	"__off64_t"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF259:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF4:
	.string	"__GNUC_MINOR__ 3"
.LASF814:
	.string	"TK_EQS"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF300:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF234:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF245:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF520:
	.string	"__stub_chflags "
.LASF688:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF922:
	.string	"initScanner"
.LASF588:
	.string	"__TIMER_T_TYPE void *"
.LASF178:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF596:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF831:
	.string	"TK_LET"
.LASF327:
	.string	"__SSE2__ 1"
.LASF804:
	.string	"TK_EQU8"
.LASF869:
	.string	"_IO_buf_end"
.LASF582:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
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
.LASF485:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF734:
	.string	"TK_RBRACEGT"
.LASF788:
	.string	"TK_USDDEQ"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF639:
	.string	"UINT_FAST8_MAX (255)"
.LASF217:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF573:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF463:
	.string	"__END_DECLS "
.LASF332:
	.string	"__SEG_GS 1"
.LASF704:
	.string	"FOPEN_MAX"
.LASF340:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF774:
	.string	"TK_USDIEQ"
.LASF432:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
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
.LASF849:
	.string	"TK_ERROR"
.LASF897:
	.string	"stderr"
.LASF329:
	.string	"__SSE_MATH__ 1"
.LASF720:
	.string	"short int"
.LASF351:
	.string	"_STDDEF_H "
.LASF83:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF125:
	.string	"__UINT16_C(c) c"
.LASF790:
	.string	"TK_USDLDEQ"
.LASF505:
	.string	"__WORDSIZE 64"
.LASF436:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF496:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF752:
	.string	"TK_STAR"
.LASF792:
	.string	"TK_USDSEQ"
.LASF658:
	.string	"INT8_C(c) c"
.LASF611:
	.string	"INT8_MAX (127)"
.LASF254:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF798:
	.string	"TK_AMPEQ"
.LASF475:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF894:
	.string	"scanner"
.LASF177:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF99:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF759:
	.string	"TK_AMP"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF62:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF448:
	.string	"_SYS_CDEFS_H 1"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF274:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF879:
	.string	"_vtable_offset"
.LASF171:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF358:
	.string	"_PTRDIFF_T_ "
.LASF587:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF473:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF755:
	.string	"TK_STARSTAR"
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
.LASF842:
	.string	"TK_NAME"
.LASF648:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF645:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF101:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF761:
	.string	"TK_CARET"
.LASF730:
	.string	"TK_RIGHT_BRACE"
.LASF924:
	.string	"makeToken"
.LASF794:
	.string	"TK_MINUSEQ"
.LASF732:
	.string	"TK_RIGHT_BRACK"
.LASF267:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF349:
	.string	"false 0"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF543:
	.string	"__S16_TYPE short int"
.LASF311:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF657:
	.string	"WINT_MAX (4294967295u)"
.LASF0:
	.string	"__STDC__ 1"
.LASF618:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
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
.LASF867:
	.string	"_IO_write_end"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF512:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF905:
	.string	"skipBlockComment"
.LASF376:
	.string	"_SIZE_T_DECLARED "
.LASF495:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF37:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF325:
	.string	"__MMX__ 1"
.LASF863:
	.string	"_IO_read_end"
.LASF802:
	.string	"TK_EQ"
.LASF799:
	.string	"TK_PIPEEQ"
.LASF330:
	.string	"__SSE2_MATH__ 1"
.LASF818:
	.string	"TK_GTEQ"
.LASF378:
	.string	"_GCC_SIZE_T "
.LASF77:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF397:
	.string	"_BSD_WCHAR_T_"
.LASF625:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF586:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF437:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF561:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF620:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF828:
	.string	"TK_FOR"
.LASF426:
	.string	"__USE_ATFILE"
.LASF321:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF875:
	.string	"_fileno"
.LASF464:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF313:
	.string	"__amd64 1"
.LASF736:
	.string	"TK_RPARENLBRACE"
.LASF188:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF338:
	.string	"__unix__ 1"
.LASF456:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF518:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF612:
	.string	"INT16_MAX (32767)"
.LASF656:
	.string	"WINT_MIN (0u)"
.LASF884:
	.string	"_wide_data"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF565:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF898:
	.string	"token"
.LASF82:
	.string	"__WINT_MIN__ 0U"
.LASF566:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF209:
	.string	"__FLT64_DIG__ 15"
.LASF276:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF159:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF738:
	.string	"TK_RPARENGT"
.LASF689:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF776:
	.string	"TK_USDUIEQ"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF578:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF604:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF896:
	.string	"stdout"
.LASF206:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF636:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF536:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF336:
	.string	"__linux__ 1"
.LASF440:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF910:
	.string	"message"
.LASF540:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF537:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF350:
	.string	"__bool_true_false_are_defined 1"
.LASF670:
	.string	"DEBUG_TRACE_EXECUTION "
.LASF591:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF174:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF677:
	.string	"__need___va_list"
.LASF866:
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
.LASF816:
	.string	"TK_GT"
.LASF568:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF764:
	.string	"TK_GTGT"
.LASF352:
	.string	"_STDDEF_H_ "
.LASF429:
	.string	"__KERNEL_STRICT_NAMES"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF236:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF90:
	.string	"__WCHAR_WIDTH__ 32"
.LASF753:
	.string	"TK_SLASH"
.LASF423:
	.string	"__USE_LARGEFILE64"
.LASF685:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF800:
	.string	"TK_CARETEQ"
.LASF251:
	.string	"__FLT64X_DIG__ 18"
.LASF777:
	.string	"TK_COLONLEQ"
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
.LASF135:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF175:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF256:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF529:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF789:
	.string	"TK_COLONLDEQ"
.LASF901:
	.string	"identifier"
.LASF650:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF693:
	.string	"_IOLBF 1"
.LASF165:
	.string	"__DBL_MANT_DIG__ 53"
.LASF666:
	.string	"INTMAX_C(c) c ## L"
.LASF560:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF498:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF76:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF128:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
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
