	.file	"matrix.c"
	.section	.rodata
.LC0:
	.string	"matrix.c"
.LC1:
	.string	"s!=0"
	.text
	.globl	make_vector
	.type	make_vector, @function
make_vector:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L2
	movl	$__PRETTY_FUNCTION__.3748, %ecx
	movl	$20, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L2:
	movl	-36(%rbp), %eax
	movl	$8, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	make_vector, .-make_vector
	.section	.rodata
.LC2:
	.string	"i<v.size"
	.text
	.globl	v_get
	.type	v_get, @function
v_get:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, -36(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	ja	.L5
	movl	$__PRETTY_FUNCTION__.3753, %ecx
	movl	$27, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L5:
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	v_get, .-v_get
	.globl	v_set
	.type	v_set, @function
v_set:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	ja	.L8
	movl	$__PRETTY_FUNCTION__.3759, %ecx
	movl	$32, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L8:
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	v_set, .-v_set
	.globl	v_add
	.type	v_add, @function
v_add:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	ja	.L10
	movl	$__PRETTY_FUNCTION__.3765, %ecx
	movl	$37, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L10:
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	v_add, .-v_add
	.section	.rodata
.LC3:
	.string	"r!=0 && c!=0"
	.text
	.globl	make_matrix
	.type	make_matrix, @function
make_matrix:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L12
	cmpl	$0, -24(%rbp)
	jne	.L13
.L12:
	movl	$__PRETTY_FUNCTION__.3773, %ecx
	movl	$44, %edx
	movl	$.LC0, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L13:
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %eax
	movl	$8, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	make_matrix, .-make_matrix
	.section	.rodata
.LC4:
	.string	"i<m.row_size && j<m.col_size"
	.text
	.globl	m_get
	.type	m_get, @function
m_get:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jbe	.L16
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	ja	.L17
.L16:
	movl	$__PRETTY_FUNCTION__.3779, %ecx
	movl	$52, %edx
	movl	$.LC0, %esi
	movl	$.LC4, %edi
	call	__assert_fail
.L17:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	m_get, .-m_get
	.globl	m_set
	.type	m_set, @function
m_set:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jbe	.L20
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	ja	.L21
.L20:
	movl	$__PRETTY_FUNCTION__.3786, %ecx
	movl	$57, %edx
	movl	$.LC0, %esi
	movl	$.LC4, %edi
	call	__assert_fail
.L21:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	m_set, .-m_set
	.globl	m_add
	.type	m_add, @function
m_add:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jbe	.L23
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	ja	.L24
.L23:
	movl	$__PRETTY_FUNCTION__.3793, %ecx
	movl	$62, %edx
	movl	$.LC0, %esi
	movl	$.LC4, %edi
	call	__assert_fail
.L24:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	addl	%esi, %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	(%rax), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, (%rdx)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	m_add, .-m_add
	.globl	peek_row
	.type	peek_row, @function
peek_row:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	peek_row, .-peek_row
	.section	.rodata
.LC6:
	.string	"v1.size==v2.size"
	.text
	.globl	scalar_prod
	.type	scalar_prod, @function
scalar_prod:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%edx, %eax
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	movl	-32(%rbp), %edx
	movl	-48(%rbp), %eax
	cmpl	%eax, %edx
	je	.L27
	movl	$__PRETTY_FUNCTION__.3805, %ecx
	movl	$75, %edx
	movl	$.LC0, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L27:
	movl	$0, -4(%rbp)
	jmp	.L28
.L29:
	movl	-4(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	v_get
	movsd	%xmm0, -56(%rbp)
	movl	-4(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	v_get
	mulsd	-56(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -4(%rbp)
.L28:
	movl	-4(%rbp), %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jb	.L29
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	scalar_prod, .-scalar_prod
	.section	.rodata
.LC7:
	.string	"m.col_size == v.size"
	.text
	.globl	apply
	.type	apply, @function
apply:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -80(%rbp)
	movq	%rdi, -72(%rbp)
	movl	%edx, %eax
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	make_vector
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movl	-76(%rbp), %edx
	movl	-96(%rbp), %eax
	cmpl	%eax, %edx
	je	.L32
	movl	$__PRETTY_FUNCTION__.3816, %ecx
	movl	$85, %edx
	movl	$.LC0, %esi
	movl	$.LC7, %edi
	call	__assert_fail
.L32:
	movl	$0, -20(%rbp)
	jmp	.L33
.L34:
	leaq	-48(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	peek_row
	movl	-96(%rbp), %edx
	movq	-88(%rbp), %rcx
	movl	-48(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%esi, %edi
	movq	%rax, %rsi
	call	scalar_prod
	movsd	%xmm0, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	-64(%rbp), %esi
	movq	-56(%rbp), %rcx
	movq	%rax, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movl	%esi, %edi
	movq	%rcx, %rsi
	call	v_set
	addl	$1, -20(%rbp)
.L33:
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	ja	.L34
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movl	%ecx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	apply, .-apply
	.section	.rodata
.LC8:
	.string	" %.2f"
.LC9:
	.string	" ]"
	.text
	.globl	v_print_h
	.type	v_print_h, @function
v_print_h:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$91, %edi
	call	putchar
	movl	$0, -4(%rbp)
	jmp	.L37
.L38:
	movl	-4(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	v_get
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC8, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -4(%rbp)
.L37:
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	ja	.L38
	movl	$.LC9, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	v_print_h, .-v_print_h
	.section	.rodata
.LC10:
	.string	"[ %.2f ]\n"
	.text
	.globl	v_print
	.type	v_print, @function
v_print:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L40
.L41:
	movl	-4(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	v_get
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC10, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -4(%rbp)
.L40:
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	ja	.L41
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	v_print, .-v_print
	.globl	m_print
	.type	m_print, @function
m_print:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L43
.L44:
	leaq	-32(%rbp), %rdx
	movl	-4(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	peek_row
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edi
	movq	%rax, %rsi
	call	v_print_h
	addl	$1, -4(%rbp)
.L43:
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	ja	.L44
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	m_print, .-m_print
	.globl	make_rotation_matrix
	.type	make_rotation_matrix, @function
make_rotation_matrix:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	movl	$2, %esi
	movl	$2, %edi
	call	make_matrix
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	call	cos
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movl	$0, %ecx
	movl	$0, %edx
	call	m_set
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	call	cos
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movl	$1, %ecx
	movl	$1, %edx
	call	m_set
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	call	sin
	movsd	.LC11(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	m_set
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	call	sin
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movl	$0, %ecx
	movl	$1, %edx
	call	m_set
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	make_rotation_matrix, .-make_rotation_matrix
	.globl	main
	.type	main, @function
main:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movabsq	$4614256656543962353, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	call	make_rotation_matrix
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$2, %edi
	call	make_vector
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movsd	.LC14(%rip), %xmm0
	movl	$0, %edx
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	v_set
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movsd	.LC15(%rip), %xmm0
	movl	$1, %edx
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	v_set
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	apply
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	m_print
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %edi
	movq	%rax, %rsi
	call	v_print
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3748, @object
	.size	__PRETTY_FUNCTION__.3748, 12
__PRETTY_FUNCTION__.3748:
	.string	"make_vector"
	.type	__PRETTY_FUNCTION__.3753, @object
	.size	__PRETTY_FUNCTION__.3753, 6
__PRETTY_FUNCTION__.3753:
	.string	"v_get"
	.type	__PRETTY_FUNCTION__.3759, @object
	.size	__PRETTY_FUNCTION__.3759, 6
__PRETTY_FUNCTION__.3759:
	.string	"v_set"
	.type	__PRETTY_FUNCTION__.3765, @object
	.size	__PRETTY_FUNCTION__.3765, 6
__PRETTY_FUNCTION__.3765:
	.string	"v_add"
	.type	__PRETTY_FUNCTION__.3773, @object
	.size	__PRETTY_FUNCTION__.3773, 12
__PRETTY_FUNCTION__.3773:
	.string	"make_matrix"
	.type	__PRETTY_FUNCTION__.3779, @object
	.size	__PRETTY_FUNCTION__.3779, 6
__PRETTY_FUNCTION__.3779:
	.string	"m_get"
	.type	__PRETTY_FUNCTION__.3786, @object
	.size	__PRETTY_FUNCTION__.3786, 6
__PRETTY_FUNCTION__.3786:
	.string	"m_set"
	.type	__PRETTY_FUNCTION__.3793, @object
	.size	__PRETTY_FUNCTION__.3793, 6
__PRETTY_FUNCTION__.3793:
	.string	"m_add"
	.type	__PRETTY_FUNCTION__.3805, @object
	.size	__PRETTY_FUNCTION__.3805, 12
__PRETTY_FUNCTION__.3805:
	.string	"scalar_prod"
	.type	__PRETTY_FUNCTION__.3816, @object
	.size	__PRETTY_FUNCTION__.3816, 6
__PRETTY_FUNCTION__.3816:
	.string	"apply"
	.align 16
.LC11:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC13:
	.long	0
	.long	1075314688
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.long	0
	.long	-1074790400
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
	.section	.note.GNU-stack,"",@progbits
