# 1 "Bytecode/chunk/chunk.c"
# 1 "/mnt/d/coding portfolio/fortissimolanguage//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 199901L
#define __STDC_HOSTED__ 1
#define __GNUC__ 9
#define __GNUC_MINOR__ 3
#define __GNUC_PATCHLEVEL__ 0
#define __VERSION__ "9.3.0"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __pic__ 2
#define __PIC__ 2
#define __pie__ 2
#define __PIE__ 2
#define __FINITE_MATH_ONLY__ 0
#define _LP64 1
#define __LP64__ 1
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 8
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 16
#define __SIZEOF_SIZE_T__ 8
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 16
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 8
#define __SIZE_TYPE__ long unsigned int
#define __PTRDIFF_TYPE__ long int
#define __WCHAR_TYPE__ int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long int
#define __UINTMAX_TYPE__ long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ int
#define __INT64_TYPE__ long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ unsigned int
#define __UINT64_TYPE__ long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ int
#define __INT_LEAST64_TYPE__ long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ unsigned int
#define __UINT_LEAST64_TYPE__ long unsigned int
#define __INT_FAST8_TYPE__ signed char
#define __INT_FAST16_TYPE__ long int
#define __INT_FAST32_TYPE__ long int
#define __INT_FAST64_TYPE__ long int
#define __UINT_FAST8_TYPE__ unsigned char
#define __UINT_FAST16_TYPE__ long unsigned int
#define __UINT_FAST32_TYPE__ long unsigned int
#define __UINT_FAST64_TYPE__ long unsigned int
#define __INTPTR_TYPE__ long int
#define __UINTPTR_TYPE__ long unsigned int
#define __has_include(STR) __has_include__(STR)
#define __has_include_next(STR) __has_include_next__(STR)
#define __GXX_ABI_VERSION 1013
#define __SCHAR_MAX__ 0x7f
#define __SHRT_MAX__ 0x7fff
#define __INT_MAX__ 0x7fffffff
#define __LONG_MAX__ 0x7fffffffffffffffL
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __WCHAR_MAX__ 0x7fffffff
#define __WCHAR_MIN__ (-__WCHAR_MAX__ - 1)
#define __WINT_MAX__ 0xffffffffU
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 0x7fffffffffffffffL
#define __SIZE_MAX__ 0xffffffffffffffffUL
#define __SCHAR_WIDTH__ 8
#define __SHRT_WIDTH__ 16
#define __INT_WIDTH__ 32
#define __LONG_WIDTH__ 64
#define __LONG_LONG_WIDTH__ 64
#define __WCHAR_WIDTH__ 32
#define __WINT_WIDTH__ 32
#define __PTRDIFF_WIDTH__ 64
#define __SIZE_WIDTH__ 64
#define __INTMAX_MAX__ 0x7fffffffffffffffL
#define __INTMAX_C(c) c ## L
#define __UINTMAX_MAX__ 0xffffffffffffffffUL
#define __UINTMAX_C(c) c ## UL
#define __INTMAX_WIDTH__ 64
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __SIG_ATOMIC_WIDTH__ 32
#define __INT8_MAX__ 0x7f
#define __INT16_MAX__ 0x7fff
#define __INT32_MAX__ 0x7fffffff
#define __INT64_MAX__ 0x7fffffffffffffffL
#define __UINT8_MAX__ 0xff
#define __UINT16_MAX__ 0xffff
#define __UINT32_MAX__ 0xffffffffU
#define __UINT64_MAX__ 0xffffffffffffffffUL
#define __INT_LEAST8_MAX__ 0x7f
#define __INT8_C(c) c
#define __INT_LEAST8_WIDTH__ 8
#define __INT_LEAST16_MAX__ 0x7fff
#define __INT16_C(c) c
#define __INT_LEAST16_WIDTH__ 16
#define __INT_LEAST32_MAX__ 0x7fffffff
#define __INT32_C(c) c
#define __INT_LEAST32_WIDTH__ 32
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffL
#define __INT64_C(c) c ## L
#define __INT_LEAST64_WIDTH__ 64
#define __UINT_LEAST8_MAX__ 0xff
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 0xffff
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 0xffffffffU
#define __UINT32_C(c) c ## U
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffUL
#define __UINT64_C(c) c ## UL
#define __INT_FAST8_MAX__ 0x7f
#define __INT_FAST8_WIDTH__ 8
#define __INT_FAST16_MAX__ 0x7fffffffffffffffL
#define __INT_FAST16_WIDTH__ 64
#define __INT_FAST32_MAX__ 0x7fffffffffffffffL
#define __INT_FAST32_WIDTH__ 64
#define __INT_FAST64_MAX__ 0x7fffffffffffffffL
#define __INT_FAST64_WIDTH__ 64
#define __UINT_FAST8_MAX__ 0xff
#define __UINT_FAST16_MAX__ 0xffffffffffffffffUL
#define __UINT_FAST32_MAX__ 0xffffffffffffffffUL
#define __UINT_FAST64_MAX__ 0xffffffffffffffffUL
#define __INTPTR_MAX__ 0x7fffffffffffffffL
#define __INTPTR_WIDTH__ 64
#define __UINTPTR_MAX__ 0xffffffffffffffffUL
#define __GCC_IEC_559 2
#define __GCC_IEC_559_COMPLEX 2
#define __FLT_EVAL_METHOD__ 0
#define __FLT_EVAL_METHOD_TS_18661_3__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.40282346638528859811704183484516925e+38F
#define __FLT_MIN__ 1.17549435082228750796873653722224568e-38F
#define __FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F
#define __FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)
#define __DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)
#define __DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)
#define __DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 64
#define __LDBL_DIG__ 18
#define __LDBL_MIN_EXP__ (-16381)
#define __LDBL_MIN_10_EXP__ (-4931)
#define __LDBL_MAX_EXP__ 16384
#define __LDBL_MAX_10_EXP__ 4932
#define __DECIMAL_DIG__ 21
#define __LDBL_DECIMAL_DIG__ 21
#define __LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L
#define __LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L
#define __LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L
#define __LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __FLT32_MANT_DIG__ 24
#define __FLT32_DIG__ 6
#define __FLT32_MIN_EXP__ (-125)
#define __FLT32_MIN_10_EXP__ (-37)
#define __FLT32_MAX_EXP__ 128
#define __FLT32_MAX_10_EXP__ 38
#define __FLT32_DECIMAL_DIG__ 9
#define __FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32
#define __FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32
#define __FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32
#define __FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32
#define __FLT32_HAS_DENORM__ 1
#define __FLT32_HAS_INFINITY__ 1
#define __FLT32_HAS_QUIET_NAN__ 1
#define __FLT64_MANT_DIG__ 53
#define __FLT64_DIG__ 15
#define __FLT64_MIN_EXP__ (-1021)
#define __FLT64_MIN_10_EXP__ (-307)
#define __FLT64_MAX_EXP__ 1024
#define __FLT64_MAX_10_EXP__ 308
#define __FLT64_DECIMAL_DIG__ 17
#define __FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64
#define __FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64
#define __FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64
#define __FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64
#define __FLT64_HAS_DENORM__ 1
#define __FLT64_HAS_INFINITY__ 1
#define __FLT64_HAS_QUIET_NAN__ 1
#define __FLT128_MANT_DIG__ 113
#define __FLT128_DIG__ 33
#define __FLT128_MIN_EXP__ (-16381)
#define __FLT128_MIN_10_EXP__ (-4931)
#define __FLT128_MAX_EXP__ 16384
#define __FLT128_MAX_10_EXP__ 4932
#define __FLT128_DECIMAL_DIG__ 36
#define __FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128
#define __FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128
#define __FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128
#define __FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128
#define __FLT128_HAS_DENORM__ 1
#define __FLT128_HAS_INFINITY__ 1
#define __FLT128_HAS_QUIET_NAN__ 1
#define __FLT32X_MANT_DIG__ 53
#define __FLT32X_DIG__ 15
#define __FLT32X_MIN_EXP__ (-1021)
#define __FLT32X_MIN_10_EXP__ (-307)
#define __FLT32X_MAX_EXP__ 1024
#define __FLT32X_MAX_10_EXP__ 308
#define __FLT32X_DECIMAL_DIG__ 17
#define __FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x
#define __FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x
#define __FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x
#define __FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x
#define __FLT32X_HAS_DENORM__ 1
#define __FLT32X_HAS_INFINITY__ 1
#define __FLT32X_HAS_QUIET_NAN__ 1
#define __FLT64X_MANT_DIG__ 64
#define __FLT64X_DIG__ 18
#define __FLT64X_MIN_EXP__ (-16381)
#define __FLT64X_MIN_10_EXP__ (-4931)
#define __FLT64X_MAX_EXP__ 16384
#define __FLT64X_MAX_10_EXP__ 4932
#define __FLT64X_DECIMAL_DIG__ 21
#define __FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x
#define __FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x
#define __FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x
#define __FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x
#define __FLT64X_HAS_DENORM__ 1
#define __FLT64X_HAS_INFINITY__ 1
#define __FLT64X_HAS_QUIET_NAN__ 1
#define __DEC32_MANT_DIG__ 7
#define __DEC32_MIN_EXP__ (-94)
#define __DEC32_MAX_EXP__ 97
#define __DEC32_MIN__ 1E-95DF
#define __DEC32_MAX__ 9.999999E96DF
#define __DEC32_EPSILON__ 1E-6DF
#define __DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
#define __DEC64_MANT_DIG__ 16
#define __DEC64_MIN_EXP__ (-382)
#define __DEC64_MAX_EXP__ 385
#define __DEC64_MIN__ 1E-383DD
#define __DEC64_MAX__ 9.999999999999999E384DD
#define __DEC64_EPSILON__ 1E-15DD
#define __DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
#define __DEC128_MANT_DIG__ 34
#define __DEC128_MIN_EXP__ (-6142)
#define __DEC128_MAX_EXP__ 6145
#define __DEC128_MIN__ 1E-6143DL
#define __DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
#define __DEC128_EPSILON__ 1E-33DL
#define __DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define __GNUC_STDC_INLINE__ 1
#define __NO_INLINE__ 1
#define __STRICT_ANSI__ 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __GCC_ATOMIC_SHORT_LOCK_FREE 2
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __GCC_ATOMIC_LLONG_LOCK_FREE 2
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __HAVE_SPECULATION_SAFE_VALUE 1
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SSP_STRONG__ 3
#define __SIZEOF_INT128__ 16
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 8
#define __amd64 1
#define __amd64__ 1
#define __x86_64 1
#define __x86_64__ 1
#define __SIZEOF_FLOAT80__ 16
#define __SIZEOF_FLOAT128__ 16
#define __ATOMIC_HLE_ACQUIRE 65536
#define __ATOMIC_HLE_RELEASE 131072
#define __GCC_ASM_FLAG_OUTPUTS__ 1
#define __k8 1
#define __k8__ 1
#define __code_model_small__ 1
#define __MMX__ 1
#define __SSE__ 1
#define __SSE2__ 1
#define __FXSR__ 1
#define __SSE_MATH__ 1
#define __SSE2_MATH__ 1
#define __SEG_FS 1
#define __SEG_GS 1
#define __CET__ 3
#define __gnu_linux__ 1
#define __linux 1
#define __linux__ 1
#define __unix 1
#define __unix__ 1
#define __ELF__ 1
#define __DECIMAL_BID_FORMAT__ 1
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 19 "/usr/include/stdc-predef.h" 3 4
#define _STDC_PREDEF_H 1
# 38 "/usr/include/stdc-predef.h" 3 4
#define __STDC_IEC_559__ 1







#define __STDC_IEC_559_COMPLEX__ 1
# 58 "/usr/include/stdc-predef.h" 3 4
#define __STDC_ISO_10646__ 201706L
# 32 "<command-line>" 2
# 1 "Bytecode/chunk/chunk.c"
# 1 "Bytecode/chunk/chunk.h" 1

#define chunk_h 

# 1 "Bytecode/chunk/../../common/common.h" 1

#define common_h 

# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h" 1 3 4
# 29 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h" 3 4
#define _STDBOOL_H 



#define bool _Bool
#define true 1
#define false 0
# 52 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h" 3 4
#define __bool_true_false_are_defined 1
# 5 "Bytecode/chunk/../../common/common.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 39 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#define _STDDEF_H 
#define _STDDEF_H_ 

#define _ANSI_STDDEF_H 
# 131 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#define _PTRDIFF_T 
#define _T_PTRDIFF_ 
#define _T_PTRDIFF 
#define __PTRDIFF_T 
#define _PTRDIFF_T_ 
#define _BSD_PTRDIFF_T_ 
#define ___int_ptrdiff_t_h 
#define _GCC_PTRDIFF_T 
#define _PTRDIFF_T_DECLARED 




# 143 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 155 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 181 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#define __size_t__ 
#define __SIZE_T__ 
#define _SIZE_T 
#define _SYS_SIZE_T_H 
#define _T_SIZE_ 
#define _T_SIZE 
#define __SIZE_T 
#define _SIZE_T_ 
#define _BSD_SIZE_T_ 
#define _SIZE_T_DEFINED_ 
#define _SIZE_T_DEFINED 
#define _BSD_SIZE_T_DEFINED_ 
#define _SIZE_T_DECLARED 
#define ___int_size_t_h 
#define _GCC_SIZE_T 
#define _SIZET_ 






#define __size_t 





typedef long unsigned int size_t;
# 231 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_size_t
# 260 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#define __wchar_t__ 
#define __WCHAR_T__ 
#define _WCHAR_T 
#define _T_WCHAR_ 
#define _T_WCHAR 
#define __WCHAR_T 
#define _WCHAR_T_ 
#define _BSD_WCHAR_T_ 
#define _WCHAR_T_DEFINED_ 
#define _WCHAR_T_DEFINED 
#define _WCHAR_T_H 
#define ___int_wchar_t_h 
#define __INT_WCHAR_T_H 
#define _GCC_WCHAR_T 
#define _WCHAR_T_DECLARED 
# 287 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef _BSD_WCHAR_T_
# 321 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef int wchar_t;
# 340 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_wchar_t
# 390 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 6 "Bytecode/chunk/../../common/common.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 23 "/usr/include/stdint.h" 3 4
#define _STDINT_H 1

#define __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION 
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 31 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
#undef __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION

# 1 "/usr/include/features.h" 1 3 4
# 19 "/usr/include/features.h" 3 4
#define _FEATURES_H 1
# 120 "/usr/include/features.h" 3 4
#undef __USE_ISOC11
#undef __USE_ISOC99
#undef __USE_ISOC95
#undef __USE_ISOCXX11
#undef __USE_POSIX
#undef __USE_POSIX2
#undef __USE_POSIX199309
#undef __USE_POSIX199506
#undef __USE_XOPEN
#undef __USE_XOPEN_EXTENDED
#undef __USE_UNIX98
#undef __USE_XOPEN2K
#undef __USE_XOPEN2KXSI
#undef __USE_XOPEN2K8
#undef __USE_XOPEN2K8XSI
#undef __USE_LARGEFILE
#undef __USE_LARGEFILE64
#undef __USE_FILE_OFFSET64
#undef __USE_MISC
#undef __USE_ATFILE
#undef __USE_GNU
#undef __USE_FORTIFY_LEVEL
#undef __KERNEL_STRICT_NAMES
#undef __GLIBC_USE_ISOC2X
#undef __GLIBC_USE_DEPRECATED_GETS
#undef __GLIBC_USE_DEPRECATED_SCANF




#define __KERNEL_STRICT_NAMES 
# 161 "/usr/include/features.h" 3 4
#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))
# 175 "/usr/include/features.h" 3 4
#define __glibc_clang_prereq(maj,min) 0



#define __GLIBC_USE(F) __GLIBC_USE_ ## F
# 235 "/usr/include/features.h" 3 4
#define __GLIBC_USE_ISOC2X 0
# 248 "/usr/include/features.h" 3 4
#define __USE_ISOC99 1






#define __USE_ISOC95 1
# 403 "/usr/include/features.h" 3 4
#define __USE_FORTIFY_LEVEL 0
# 413 "/usr/include/features.h" 3 4
#define __GLIBC_USE_DEPRECATED_GETS 1
# 434 "/usr/include/features.h" 3 4
#define __GLIBC_USE_DEPRECATED_SCANF 0
# 447 "/usr/include/features.h" 3 4
#undef __GNU_LIBRARY__
#define __GNU_LIBRARY__ 6



#define __GLIBC__ 2
#define __GLIBC_MINOR__ 31

#define __GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))





# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define _SYS_CDEFS_H 1
# 34 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#undef __P
#undef __PMT






#define __LEAF , __leaf__
#define __LEAF_ATTR __attribute__ ((__leaf__))
# 55 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __THROW __attribute__ ((__nothrow__ __LEAF))
#define __THROWNL __attribute__ ((__nothrow__))
#define __NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct
#define __NTHNL(fct) __attribute__ ((__nothrow__)) fct
# 94 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __glibc_clang_has_extension(ext) 0




#define __P(args) args
#define __PMT(args) args




#define __CONCAT(x,y) x ## y
#define __STRING(x) #x


#define __ptr_t void *







#define __BEGIN_DECLS 
#define __END_DECLS 




#define __bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)
#define __bos0(ptr) __builtin_object_size (ptr, 0)


#define __warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))

#define __warnattr(msg) __attribute__((__warning__ (msg)))
#define __errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))
# 143 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __flexarr []
#define __glibc_c99_flexarr_available 1
# 174 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))






#define __REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW

#define __REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL


#define __ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)
#define __ASMNAME2(prefix,cname) __STRING (prefix) cname
# 208 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_malloc__ __attribute__ ((__malloc__))







#define __attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))
# 226 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_pure__ __attribute__ ((__pure__))






#define __attribute_const__ __attribute__ ((__const__))
# 242 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_used__ __attribute__ ((__used__))
#define __attribute_noinline__ __attribute__ ((__noinline__))







#define __attribute_deprecated__ __attribute__ ((__deprecated__))
# 261 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))
# 274 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))
# 284 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))
# 293 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __nonnull(params) __attribute__ ((__nonnull__ params))







#define __attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))
# 310 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __wur 







#undef __always_inline
#define __always_inline __inline __attribute__ ((__always_inline__))
# 328 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_artificial__ __attribute__ ((__artificial__))
# 346 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __extern_inline extern __inline __attribute__ ((__gnu_inline__))
#define __extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))
# 356 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __fortify_function __extern_always_inline __attribute_artificial__





#define __va_arg_pack() __builtin_va_arg_pack ()
#define __va_arg_pack_len() __builtin_va_arg_pack_len ()
# 387 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __restrict_arr __restrict
# 402 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __glibc_unlikely(cond) __builtin_expect ((cond), 0)
#define __glibc_likely(cond) __builtin_expect ((cond), 1)






#define __glibc_has_attribute(attr) __has_attribute (attr)
# 429 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __attribute_nonstring__ __attribute__ ((__nonstring__))





#undef __attribute_copy__



#define __attribute_copy__(arg) __attribute__ ((__copy__ (arg)))







#define _Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]




# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4



#define __WORDSIZE 64







#define __WORDSIZE_TIME64_COMPAT32 1

#define __SYSCALL_WORDSIZE 64
# 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 3 4
#define __LONG_DOUBLE_USES_FLOAT128 0
# 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 475 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __LDBL_REDIR1(name,proto,alias) name proto
#define __LDBL_REDIR(name,proto) name proto
#define __LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW
#define __LDBL_REDIR_NTH(name,proto) name proto __THROW
#define __LDBL_REDIR_DECL(name) 

#define __REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)
#define __REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)
# 493 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __glibc_macro_warning1(message) _Pragma (#message)
#define __glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)
# 512 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#define __HAVE_GENERIC_SELECTION 1
# 462 "/usr/include/features.h" 2 3 4
# 485 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 3 4
#define __stub___compat_bdflush 
#define __stub_chflags 
#define __stub_fchflags 
#define __stub_gtty 
#define __stub_lchmod 
#define __stub_revoke 
#define __stub_setlogin 
#define __stub_sigreturn 
#define __stub_sstk 
#define __stub_stty 
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4



#undef __GLIBC_USE_LIB_EXT2




#define __GLIBC_USE_LIB_EXT2 0






#undef __GLIBC_USE_IEC_60559_BFP_EXT



#define __GLIBC_USE_IEC_60559_BFP_EXT 0

#undef __GLIBC_USE_IEC_60559_BFP_EXT_C2X



#define __GLIBC_USE_IEC_60559_BFP_EXT_C2X 0






#undef __GLIBC_USE_IEC_60559_FUNCS_EXT



#define __GLIBC_USE_IEC_60559_FUNCS_EXT 0

#undef __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X



#define __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0




#undef __GLIBC_USE_IEC_60559_TYPES_EXT



#define __GLIBC_USE_IEC_60559_TYPES_EXT 0
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
#define _BITS_TYPES_H 1


# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4



#define __WORDSIZE 64







#define __WORDSIZE_TIME64_COMPAT32 1

#define __SYSCALL_WORDSIZE 64
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
#define __TIMESIZE __WORDSIZE
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 109 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
#define __S16_TYPE short int
#define __U16_TYPE unsigned short int
#define __S32_TYPE int
#define __U32_TYPE unsigned int
#define __SLONGWORD_TYPE long int
#define __ULONGWORD_TYPE unsigned long int
# 128 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
#define __SQUAD_TYPE long int
#define __UQUAD_TYPE unsigned long int
#define __SWORD_TYPE long int
#define __UWORD_TYPE unsigned long int
#define __SLONG32_TYPE int
#define __ULONG32_TYPE unsigned int
#define __S64_TYPE long int
#define __U64_TYPE unsigned long int

#define __STD_TYPE typedef



# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 3 4
#define _BITS_TYPESIZES_H 1
# 34 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 3 4
#define __SYSCALL_SLONG_TYPE __SLONGWORD_TYPE
#define __SYSCALL_ULONG_TYPE __ULONGWORD_TYPE


#define __DEV_T_TYPE __UQUAD_TYPE
#define __UID_T_TYPE __U32_TYPE
#define __GID_T_TYPE __U32_TYPE
#define __INO_T_TYPE __SYSCALL_ULONG_TYPE
#define __INO64_T_TYPE __UQUAD_TYPE
#define __MODE_T_TYPE __U32_TYPE

#define __NLINK_T_TYPE __SYSCALL_ULONG_TYPE
#define __FSWORD_T_TYPE __SYSCALL_SLONG_TYPE




#define __OFF_T_TYPE __SYSCALL_SLONG_TYPE
#define __OFF64_T_TYPE __SQUAD_TYPE
#define __PID_T_TYPE __S32_TYPE
#define __RLIM_T_TYPE __SYSCALL_ULONG_TYPE
#define __RLIM64_T_TYPE __UQUAD_TYPE
#define __BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE
#define __BLKCNT64_T_TYPE __SQUAD_TYPE
#define __FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE
#define __FSBLKCNT64_T_TYPE __UQUAD_TYPE
#define __FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE
#define __FSFILCNT64_T_TYPE __UQUAD_TYPE
#define __ID_T_TYPE __U32_TYPE
#define __CLOCK_T_TYPE __SYSCALL_SLONG_TYPE
#define __TIME_T_TYPE __SYSCALL_SLONG_TYPE
#define __USECONDS_T_TYPE __U32_TYPE
#define __SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE
#define __DADDR_T_TYPE __S32_TYPE
#define __KEY_T_TYPE __S32_TYPE
#define __CLOCKID_T_TYPE __S32_TYPE
#define __TIMER_T_TYPE void *
#define __BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE
#define __FSID_T_TYPE struct { int __val[2]; }
#define __SSIZE_T_TYPE __SWORD_TYPE
#define __CPU_MASK_TYPE __SYSCALL_ULONG_TYPE





#define __OFF_T_MATCHES_OFF64_T 1


#define __INO_T_MATCHES_INO64_T 1


#define __RLIM_T_MATCHES_RLIM64_T 1


#define __STATFS_MATCHES_STATFS64 1







#define __FD_SETSIZE 1024
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/time64.h" 3 4
#define _BITS_TIME64_H 1





#define __TIME64_T_TYPE __TIME_T_TYPE
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 225 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
#undef __STD_TYPE
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 3 4
#define _BITS_WCHAR_H 1
# 34 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 3 4
#define __WCHAR_MAX __WCHAR_MAX__







#define __WCHAR_MIN __WCHAR_MIN__
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4



#define __WORDSIZE 64







#define __WORDSIZE_TIME64_COMPAT32 1

#define __SYSCALL_WORDSIZE 64
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
#define _BITS_STDINT_INTN_H 1



typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
#define _BITS_STDINT_UINTN_H 1



typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;
#define __intptr_t_defined 

typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;



#define __INT64_C(c) c ## L
#define __UINT64_C(c) c ## UL
# 116 "/usr/include/stdint.h" 3 4
#define INT8_MIN (-128)
#define INT16_MIN (-32767-1)
#define INT32_MIN (-2147483647-1)
#define INT64_MIN (-__INT64_C(9223372036854775807)-1)

#define INT8_MAX (127)
#define INT16_MAX (32767)
#define INT32_MAX (2147483647)
#define INT64_MAX (__INT64_C(9223372036854775807))


#define UINT8_MAX (255)
#define UINT16_MAX (65535)
#define UINT32_MAX (4294967295U)
#define UINT64_MAX (__UINT64_C(18446744073709551615))



#define INT_LEAST8_MIN (-128)
#define INT_LEAST16_MIN (-32767-1)
#define INT_LEAST32_MIN (-2147483647-1)
#define INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)

#define INT_LEAST8_MAX (127)
#define INT_LEAST16_MAX (32767)
#define INT_LEAST32_MAX (2147483647)
#define INT_LEAST64_MAX (__INT64_C(9223372036854775807))


#define UINT_LEAST8_MAX (255)
#define UINT_LEAST16_MAX (65535)
#define UINT_LEAST32_MAX (4294967295U)
#define UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))



#define INT_FAST8_MIN (-128)

#define INT_FAST16_MIN (-9223372036854775807L-1)
#define INT_FAST32_MIN (-9223372036854775807L-1)




#define INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)

#define INT_FAST8_MAX (127)

#define INT_FAST16_MAX (9223372036854775807L)
#define INT_FAST32_MAX (9223372036854775807L)




#define INT_FAST64_MAX (__INT64_C(9223372036854775807))


#define UINT_FAST8_MAX (255)

#define UINT_FAST16_MAX (18446744073709551615UL)
#define UINT_FAST32_MAX (18446744073709551615UL)




#define UINT_FAST64_MAX (__UINT64_C(18446744073709551615))




#define INTPTR_MIN (-9223372036854775807L-1)
#define INTPTR_MAX (9223372036854775807L)
#define UINTPTR_MAX (18446744073709551615UL)
# 197 "/usr/include/stdint.h" 3 4
#define INTMAX_MIN (-__INT64_C(9223372036854775807)-1)

#define INTMAX_MAX (__INT64_C(9223372036854775807))


#define UINTMAX_MAX (__UINT64_C(18446744073709551615))






#define PTRDIFF_MIN (-9223372036854775807L-1)
#define PTRDIFF_MAX (9223372036854775807L)
# 222 "/usr/include/stdint.h" 3 4
#define SIG_ATOMIC_MIN (-2147483647-1)
#define SIG_ATOMIC_MAX (2147483647)



#define SIZE_MAX (18446744073709551615UL)
# 239 "/usr/include/stdint.h" 3 4
#define WCHAR_MIN __WCHAR_MIN
#define WCHAR_MAX __WCHAR_MAX



#define WINT_MIN (0u)
#define WINT_MAX (4294967295u)


#define INT8_C(c) c
#define INT16_C(c) c
#define INT32_C(c) c

#define INT64_C(c) c ## L





#define UINT8_C(c) c
#define UINT16_C(c) c
#define UINT32_C(c) c ## U

#define UINT64_C(c) c ## UL






#define INTMAX_C(c) c ## L
#define UINTMAX_C(c) c ## UL
# 10 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 2 3 4



#define _GCC_WRAP_STDINT_H 
# 7 "Bytecode/chunk/../../common/common.h" 2

#define DEBUG_PRINT_CODE 
#define DEBUG_TRACE_EXECUTION 

#define UINT8_COUNT (UINT8_MAX + 1)
# 5 "Bytecode/chunk/chunk.h" 2
# 1 "Bytecode/chunk/../value/value.h" 1

#define value_h 

# 1 "Bytecode/chunk/../value/../../common/common.h" 1
# 5 "Bytecode/chunk/../value/value.h" 2


# 1 "/usr/include/string.h" 1 3 4
# 23 "/usr/include/string.h" 3 4
#define _STRING_H 1

#define __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION 
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 31 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
#undef __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION





#undef __GLIBC_USE_LIB_EXT2




#define __GLIBC_USE_LIB_EXT2 0






#undef __GLIBC_USE_IEC_60559_BFP_EXT



#define __GLIBC_USE_IEC_60559_BFP_EXT 0

#undef __GLIBC_USE_IEC_60559_BFP_EXT_C2X



#define __GLIBC_USE_IEC_60559_BFP_EXT_C2X 0






#undef __GLIBC_USE_IEC_60559_FUNCS_EXT



#define __GLIBC_USE_IEC_60559_FUNCS_EXT 0

#undef __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X



#define __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0




#undef __GLIBC_USE_IEC_60559_TYPES_EXT



#define __GLIBC_USE_IEC_60559_TYPES_EXT 0
# 27 "/usr/include/string.h" 2 3 4




#define __need_size_t 
#define __need_NULL 
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 155 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_size_t
# 340 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_wchar_t
# 390 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 61 "/usr/include/string.h" 3 4
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 91 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 122 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 226 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 303 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 330 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 385 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 397 "/usr/include/string.h" 3 4
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
# 499 "/usr/include/string.h" 3 4

# 8 "Bytecode/chunk/../value/value.h" 2


# 9 "Bytecode/chunk/../value/value.h"
typedef struct Obj Obj;
typedef struct ObjString ObjString;
# 56 "Bytecode/chunk/../value/value.h"
typedef enum {
    VAL_UNDEFINED,
    VAL_NIL,
    VAL_BOOL,
    VAL_I8,
    VAL_U8,
    VAL_I16,
    VAL_U16,
    VAL_I32,
    VAL_U32,
    VAL_I64,
    VAL_U64,
    VAL_F32,
    VAL_F64,
    VAL_F128,
    VAL_OBJ
} ValueType;

typedef struct {
    ValueType type;
    union {
        
# 77 "Bytecode/chunk/../value/value.h" 3 4
       _Bool 
# 77 "Bytecode/chunk/../value/value.h"
            boolean;
        int8_t i8;
        uint8_t u8;
        int16_t i16;
        uint16_t u16;
        int32_t i32;
        uint32_t u32;
        int64_t i64;
        uint64_t u64;
        float f32;
        double f64;
        double long f128;
        Obj* obj;
    } as;
} Value;

#define IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)
#define IS_NIL(value) ((value).type == VAL_NIL)
#define IS_BOOL(value) ((value).type == VAL_BOOL)
#define IS_NUMBER(value) ((value).type != VAL_NIL && (value).type != VAL_BOOL);
#define IS_I8(value) ((value).type == VAL_I8)
#define IS_U8(value) ((value).type == VAL_U8)
#define IS_I16(value) ((value).type == VAL_I16)
#define IS_U16(value) ((value).type == VAL_U16)
#define IS_I32(value) ((value).type == VAL_I32)
#define IS_U32(value) ((value).type == VAL_U32)
#define IS_I64(value) ((value).type == VAL_I64)
#define IS_U64(value) ((value).type == VAL_U64)
#define IS_F32(value) ((value).type == VAL_F32)
#define IS_F64(value) ((value).type == VAL_F64)
#define IS_F128(value) ((value).type == VAL_F128)
#define IS_OBJ(value) ((value).type == VAL_OBJ)

#define AS_BOOL(value) ((value).as.boolean)
#define AS_I8(value) ((value).as.i8)
#define AS_U8(value) ((value).as.u8)
#define AS_I16(value) ((value).as.i16)
#define AS_U16(value) ((value).as.u16)
#define AS_I32(value) ((value).as.i32)
#define AS_U32(value) ((value).as.u32)
#define AS_I64(value) ((value).as.i64)
#define AS_U64(value) ((value).as.u64)
#define AS_F32(value) ((value).as.f32)
#define AS_F64(value) ((value).as.f64)
#define AS_F128(value) ((value).as.f128)
#define AS_OBJ(value) ((value).as.obj)

#define UNDEFINED_VAL ((Value){VAL_UNDEFINED})
#define NIL_VAL ((Value){VAL_NIL, {.f64 = 0}})
#define BOOL_VAL(value) ((Value){VAL_BOOL, {.boolean = value}})
#define I8_VAL(value) ((Value){VAL_I8, {.i8 = value}})
#define U8_VAL(value) ((Value){VAL_U8, {.u8 = value}})
#define I16_VAL(value) ((Value){VAL_I16, {.i16 = value}})
#define U16_VAL(value) ((Value){VAL_U16, {.u16 = value}})
#define I32_VAL(value) ((Value){VAL_I32, {.i32 = value}})
#define U32_VAL(value) ((Value){VAL_U32, {.u32 = value}})
#define I64_VAL(value) ((Value){VAL_I64, {.i64 = value}})
#define U64_VAL(value) ((Value){VAL_U64, {.u64 = value}})
#define F32_VAL(value) ((Value){VAL_F32, {.f32 = value}})
#define F64_VAL(value) ((Value){VAL_F64, {.f64 = value}})
#define F128_VAL(value) ((Value){VAL_F128, {.f128 = value}})
#define OBJ_VAL(object) ((Value){VAL_OBJ, {.obj = (Obj*)object}})



typedef struct{
    int16_t capacity;
    int16_t count;
    Value* values;
} ValueArray;


# 148 "Bytecode/chunk/../value/value.h" 3 4
_Bool 
# 148 "Bytecode/chunk/../value/value.h"
    valuesEqual(Value a, Value b);
void initValueArray(ValueArray* array);
void writeValueArray(ValueArray* array, Value value);
void freeValueArray(ValueArray* array);
void printValue(Value value);
# 6 "Bytecode/chunk/chunk.h" 2



typedef enum {
    OP_CONSTANT,
    OP_CONSTANT_LONG,
    OP_NIL,
    OP_TRUE,
    OP_FALSE,
    OP_POP,
    OP_DEFINE_GLOBAL,
    OP_SET_GLOBAL,
    OP_GET_GLOBAL,
    OP_SET_LOCAL,
    OP_GET_LOCAL,
    OP_EQUAL,
    OP_GREATER,
    OP_LESS,
    OP_ADD,
    OP_SUBTRACT,
    OP_MULTIPLY,
    OP_DIVIDE,
    OP_MODULATE,
    OP_EXPONENTIATE,
    OP_NOT,
    OP_NEGATE,
    OP_PUTS,
    OP_JUMP_IF_FALSE,
    OP_RETURN,
} OpCode;
;
typedef struct {
    int16_t offset;
    uint16_t line;
} LineStart;

typedef struct {
    int16_t count;
    int16_t capacity;
    uint8_t* code;
    ValueArray constants;
    int16_t lineCount;
    int16_t lineCapacity;
    LineStart* lines;
} Chunk;

int16_t addConstant(Chunk* chunk, Value value);
void initChunk(Chunk* chunk);
void freeChunk(Chunk* chunk);
int16_t getLine(Chunk* chunk, int16_t instruction);
void writeConstant(Chunk* chunk, Value value, int16_t line);
void writeChunk(Chunk* chunk, uint8_t byte, int16_t line);
# 2 "Bytecode/chunk/chunk.c" 2
# 1 "Bytecode/chunk/../memory/memory.h" 1

#define memory_h 

# 1 "Bytecode/chunk/../memory/../../common/common.h" 1
# 5 "Bytecode/chunk/../memory/memory.h" 2
# 1 "Bytecode/chunk/../memory/../../Language/object/object.h" 1

#define object_h 

# 1 "Bytecode/chunk/../memory/../../Language/object/../../common/common.h" 1
# 5 "Bytecode/chunk/../memory/../../Language/object/object.h" 2
# 1 "Bytecode/chunk/../memory/../../Language/object/../../Bytecode/value/value.h" 1
# 6 "Bytecode/chunk/../memory/../../Language/object/object.h" 2



#define OBJ_TYPE(value) (AS_OBJ(value)->type)

#define IS_STRING(value) isObjType(value, OBJ_STRING)

#define AS_STRING(value) ((ObjString*)AS_OBJ(value))
#define AS_CSTRING(value) (((ObjString*)AS_OBJ(value))->chars)

typedef enum {
    OBJ_STRING,
} ObjType;

struct Obj {
    ObjType type;
    struct Obj* next;
};

struct ObjString {
    Obj obj;
    int16_t length;
    int8_t* chars;
    uint32_t hash;
};

ObjString* takeString(int8_t* chars, int16_t length);
ObjString* copyString(const int8_t* chars, int16_t length);
void printObject(Value value);

static inline 
# 36 "Bytecode/chunk/../memory/../../Language/object/object.h" 3 4
             _Bool 
# 36 "Bytecode/chunk/../memory/../../Language/object/object.h"
                  isObjType(Value value, ObjType type){
    return ((value).type == VAL_OBJ) && ((value).as.obj)->type == type;
}
# 6 "Bytecode/chunk/../memory/memory.h" 2

#define ALLOCATE(type,count) (type*)reallocate(NULL, 0, sizeof(type) * (count))


#define FREE(type,pointer) reallocate(pointer, sizeof(type), 0)

#define GROW_CAPACITY(capacity) ((capacity) < 8 ? 8 : (capacity) * 2)


#define GROW_ARRAY(type,pointer,oldCount,newCount) (type*)reallocate(pointer, sizeof(type) * (oldCount), sizeof(type) * (newCount))



#define FREE_ARRAY(type,pointer,oldCount) reallocate(pointer, sizeof(type) * (oldCount), 0)


void* reallocate(void* pointer, size_t oldSize, size_t newSize);

void freeObjects();
# 3 "Bytecode/chunk/chunk.c" 2

# 1 "/usr/include/stdlib.h" 1 3 4
# 24 "/usr/include/stdlib.h" 3 4
#define __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION 
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 31 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
#undef __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION





#undef __GLIBC_USE_LIB_EXT2




#define __GLIBC_USE_LIB_EXT2 0






#undef __GLIBC_USE_IEC_60559_BFP_EXT



#define __GLIBC_USE_IEC_60559_BFP_EXT 0

#undef __GLIBC_USE_IEC_60559_BFP_EXT_C2X



#define __GLIBC_USE_IEC_60559_BFP_EXT_C2X 0






#undef __GLIBC_USE_IEC_60559_FUNCS_EXT



#define __GLIBC_USE_IEC_60559_FUNCS_EXT 0

#undef __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X



#define __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0




#undef __GLIBC_USE_IEC_60559_TYPES_EXT



#define __GLIBC_USE_IEC_60559_TYPES_EXT 0
# 26 "/usr/include/stdlib.h" 2 3 4


#define __need_size_t 
#define __need_wchar_t 
#define __need_NULL 
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 155 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_size_t
# 340 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef __need_wchar_t
# 390 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 32 "/usr/include/stdlib.h" 2 3 4



#define _STDLIB_H 1
# 55 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
#define _BITS_FLOATN_H 
# 33 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
#define __HAVE_FLOAT128 1







#define __HAVE_DISTINCT_FLOAT128 1







#define __HAVE_FLOAT64X 1





#define __HAVE_FLOAT64X_LONG_DOUBLE 1
# 66 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
#define __f128(x) x ##f128
# 78 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
#define __CFLOAT128 _Complex _Float128
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define _BITS_FLOATN_COMMON_H 


# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 3 4
#define __LONG_DOUBLE_USES_FLOAT128 0
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __HAVE_FLOAT16 0
#define __HAVE_FLOAT32 1
#define __HAVE_FLOAT64 1
#define __HAVE_FLOAT32X 1
#define __HAVE_FLOAT128X 0
# 52 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16
#define __HAVE_DISTINCT_FLOAT32 0
#define __HAVE_DISTINCT_FLOAT64 0
#define __HAVE_DISTINCT_FLOAT32X 0
#define __HAVE_DISTINCT_FLOAT64X 0
#define __HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X





#define __HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)






#define __HAVE_FLOATN_NOT_TYPEDEF 1
# 93 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __f32(x) x ##f32
# 105 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __f64(x) x ##f64







#define __f32x(x) x ##f32x
# 125 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __f64x(x) x ##f64x
# 151 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __CFLOAT32 _Complex _Float32
# 163 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __CFLOAT64 _Complex _Float64







#define __CFLOAT32X _Complex _Float32x
# 183 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#define __CFLOAT64X _Complex _Float64x
# 121 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4



# 58 "/usr/include/stdlib.h" 3 4
typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
#define __ldiv_t_defined 1




__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
#define __lldiv_t_defined 1




#define RAND_MAX 2147483647




#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0



#define MB_CUR_MAX (__ctype_get_mb_cur_max ())
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 199 "/usr/include/stdlib.h" 3 4
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 453 "/usr/include/stdlib.h" 3 4
extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
# 539 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) ;






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));
# 565 "/usr/include/stdlib.h" 3 4
extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
# 591 "/usr/include/stdlib.h" 3 4
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 617 "/usr/include/stdlib.h" 3 4
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
# 629 "/usr/include/stdlib.h" 3 4
extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 784 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;
# 807 "/usr/include/stdlib.h" 3 4
#define __COMPAR_FN_T 
typedef int (*__compar_fn_t) (const void *, const void *);
# 820 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 840 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
# 922 "/usr/include/stdlib.h" 3 4
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));
# 1013 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 1014 "/usr/include/stdlib.h" 2 3 4
# 1023 "/usr/include/stdlib.h" 3 4

# 5 "Bytecode/chunk/chunk.c" 2



# 7 "Bytecode/chunk/chunk.c"
int16_t addConstant(Chunk* chunk, Value value){
    writeValueArray(&chunk->constants, value);
    return chunk->constants.count - 1;
}

void initChunk(Chunk* chunk){
    chunk->count = 0;
    chunk->capacity = 0;
    chunk->code = 
# 15 "Bytecode/chunk/chunk.c" 3 4
                 ((void *)0)
# 15 "Bytecode/chunk/chunk.c"
                     ;
    chunk->lineCount = 0;
    chunk->lineCapacity = 0;
    chunk->lines = 
# 18 "Bytecode/chunk/chunk.c" 3 4
                  ((void *)0)
# 18 "Bytecode/chunk/chunk.c"
                      ;
    initValueArray(&chunk->constants);
}

void freeChunk(Chunk* chunk){
    reallocate(chunk->code, sizeof(uint8_t) * (chunk->capacity), 0);
    reallocate(chunk->lines, sizeof(uint16_t) * (chunk->capacity), 0);
    freeValueArray(&chunk->constants);
    initChunk(chunk);
    reallocate(chunk->lines, sizeof(LineStart) * (chunk->lineCapacity), 0);
}

int16_t getLine(Chunk* chunk, int16_t instruction){
    int16_t start = 0;
    int16_t end = chunk->lineCount - 1;

    for(;;){
        int16_t mid = (start + end)/2;
        LineStart* line = &chunk->lines[mid];
        if(instruction < line->offset){
            end = mid - 1;
        } else if(mid == chunk->lineCount - 1 || instruction < chunk->lines[mid + 1].offset){
            return line->line;
        } else {
            start = mid + 1;
        }
    }
}

void writeConstant(Chunk* chunk, Value value, int16_t line){
    int index = addConstant(chunk, value);
    if(index < 256){
        writeChunk(chunk, OP_CONSTANT, line);
        writeChunk(chunk, (uint8_t)index, line);
    } else {
        writeChunk(chunk, OP_CONSTANT_LONG, line);
        writeChunk(chunk, (uint8_t)(index & 0xff), line);
        writeChunk(chunk, (uint8_t)((index >> 8) & 0xff), line);
        writeChunk(chunk, (uint8_t)((index >> 16) & 0xff), line);
    }
}

void writeChunk(Chunk* chunk, uint8_t byte, int16_t line){
    if(chunk->capacity < chunk->count + 1){
        int16_t oldCapacity = chunk->capacity;
        chunk->capacity = ((oldCapacity) < 8 ? 8 : (oldCapacity) * 2);
        chunk->code = (uint8_t*)reallocate(chunk->code, sizeof(uint8_t) * (oldCapacity), sizeof(uint8_t) * (chunk->capacity));
    }

    chunk->code[chunk->count] = byte;
    chunk->count++;

    if(chunk->lineCount > 0 && chunk->lines[chunk->lineCount - 1].line == line) return;

    if(chunk->lineCapacity < chunk->lineCount + 1){
        int16_t oldCapacity = chunk->lineCapacity;
        chunk->lineCapacity = ((oldCapacity) < 8 ? 8 : (oldCapacity) * 2);
        chunk->lines = (LineStart*)reallocate(chunk->lines, sizeof(LineStart) * (oldCapacity), sizeof(LineStart) * (chunk->lineCapacity));
    }

    LineStart* lineStart = &chunk->lines[chunk->lineCount++];
    lineStart->offset = chunk->count - 1;
    lineStart->line = line;
}
