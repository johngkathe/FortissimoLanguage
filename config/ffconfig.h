#ifndef ffconfig_h
#define ffconfig_h

#include <limits.h>
#include <stddef.h>
#include <stdint.h>

/**********The general configuration file for Fortissimo**********
 * modified lightly from Lua's luaconf.h based on my needs ******/

//#define FF_USE_C89  //Used to control non-ISO-C89 features

#if !defined(FF_USE_C89) && defined(_WIN32) && !defined(_WIN32_WCE)
#define FF_USE_WINDOWS //enable goodies for regular Windows
#endif

#if defined(FF_USE_WINDOWS)
#define FF_DL_DLL
#define FF_USE_C89 /*Broadly speaking, Windows uses C89*/
#endif

#if defined(FF_USE_LINUX)
#define FF_USE_POSIX
#define FF_USE_DLOPEN   /*needs extra -ldl library*/
#endif

#if defined(FF_USE_MACOSX)
#define FF_USE_POSIX
#define FF_USE_DLOPEN   /*MacOS doesn't need -ldl*/
#endif

//FFI_IS_I32 is true iff i32 has at least 32 bits
#define FFI_IS_I32  ((UINT_MAX >> 30) >= 3)

/**********Number configuration**********/

//Integer types
#define FF_INT_I8       1
#define FF_INT_I16      2
#define FF_INT_I32      3
#define FF_INT_I64      4
#define FF_INT_I128     5

//Unsigned integer types
#define FF_UINT_U8      1
#define FF_UINT_U16     2
#define FF_UINT_U32     3
#define FF_UINT_U64     4
#define FF_UINT_U128    5

//Float types
#define FF_FLOAT_F8     1
#define FF_FLOAT_F16    2
#define FF_FLOAT_F32    3
#define FF_FLOAT_F64    4
#define FF_FLOAT_F128   5

//Default configuration
#define FF_INT_DEFAULT   FF_INT_I64
#define FF_UINT_DEFAULT  FF_INT_I64
#define FF_FLOAT_DEFAULT FF_INT_I64

//FF_32Bits enables Fortissimo with 32 bit ints, uints, and floats
#define FF_32BITS       0

//Ensure largest numbers are used with FF_C89_NUMBERS
#if defined(FF_USE_C89) && !defined(FF_USE_WINDOWS)
#define FF_C89_NUMBERS  1
#else
#define FF_C89_NUMBERS  0
#endif

#if FF_32BITS   /*largest numbers are 32 bits*/
#if FFI_IS_I32
#define FF_INT_TYPE     FF_INT_I16
#define FF_UINT_TYPE    FF_UINT_U16
#else /*use 'i32'/'u32'*/
#define FF_INT_TYPE     FF_INT_I32
#define FF_UINT_TYPE    FF_UINT_U32
#endif
#define FF_FLOAT_TYPE   FF_FLOAT_F32

#else
#define FF_INT_TYPE     FF_INT_DEFAULT
#define FF_UINT_TYPE    FF_UINT_DEFAULT
#define FF_FLOAT_TYPE   FF_FLOAT_DEFAULT

#endif

#define FF_INT_TYPE

/**********Path Configuration**********/

#define FF_PATH_SEP     ";" /*Separates templates in a path.*/
#define FF_PATH_MARK    "?" /*String that marks substitution points in a template.*/
#define FF_EXEC_DIR     "!" /*in a Windows path is replaced by the executable's directory.*/

//FF_DEFAULT_FFPATH is the default path to find Fortissimo libraries.
//FF_DEFAULT_CPATH is the default path to find C libraries.

#define FF_VDIR     FF_MAJOR_VERSION "." FF_MINOR_VERSION

//Case Windows
#if defined(_WIN32)
#define FF_FFDIR    "!\\ff\\"
#define FF_CDIR     "!\\"
#define FF_SHRDIR   "!\\..\\share\\ff\\" FF_VDIR "\\"

#if !defined(FF_DEFAULT_FFPATH)
#define FF_DEFAULT_FFPATH \
        FF_FFDIR"?.ff;" FF_FFDIR"?\\init.ff;" \
        FF_CDIR"?.ff;"  FF_CDIR"?\\init.ff;" \
        FF_SHRDIR"?.ff;" FF_SHRDIR"?\\init.ff;" \
        ".\\?.ff;" ".\\?\\init.ff"
#endif

#if !defined(FF_DEFAULT_CPATH)
#define FF_DEFAULT_CPATH \
        FF_CDIR"?.dll;" \
        FF_CDIR"..\\lib\\ff\\" FF_VDIR "\\?.dll;" \
        FF_CDIR"loadall.dll;" ".\\?.dll"
#endif

#else /*Case MacOS/Linux*/

#define FF_ROOT     "/usr/local"
#define FF_FFDIR    FF_ROOT "share/ff/" FF_VDIR "/"
#define FF_CDIR     FF_ROOT "lib/ff/" FF_VDIR "/"

#if !defined(FF_DEFAULT_FFPATH)
#define FF_DEFAULT_FFPATH \
        FF_FFDIR"?.ff;" FF_FFDIR"?/init.ff;" \
        FF_CDIR"?.ff;"  FF_CDIR"?/init.ff;" \
        "./?.ff;" "./?/init.ff"
#endif

#if !defined(FF_DEFAULT_CPATH)
#define FF_DEFAULT_CPATH \
        FF_CDIR"?.so;" FF_CDIR"loadall.so;" "./?.so"
#endif

#endif /*End case MacOS/Linux*/

//Determine directory separator
#if !defined(FF_DIRSEP)

#if defined(_WIN32)
#define FF_DIRSEP   "\\"
#else /*Case MacOS/Linux*/
#define FF_DIRSEP   "/"
#endif /*End case MacOS/Linux*/

#endif //End determine directory separator.

/**********Marks for exported symbols in the C code**********/

#if defined(FF_BUILD_AS_DLL)

#if defined(FF_CORE) || defined(FF_LIB)
#define FF_API __declspec(dllexport)
#else
#define FF_API __declspec(dllimport)
#endif

#else

#define FF_API      extern

#endif  //End FF_BUILD_AS_DLL

#define FFLIB_API   FF_API
#define FFMOD_API   FF_API

#if defined(__GNUC__) && ((__GNUC__*100 + __GNUC_MINOR__) >= 302) && defined(__ELF__)
#define FFI_FUNC    __attribute__((visibility("internal"))) extern
#else
#define FFI_FUNC    extern
#endif

#define FFI_DDEC(dec)   FFI_FUNC dec
#define FFI_DDEF        //empty

/**********Compatibility with previous versions (irrelevant)**********/

/**********Number configuration**********/

/*ff_floor(x) gets the floor of a float.*/
#define ff_floor(x)     (ff_mathop(floor)(x))
/*ff_ceil(x) gets the ceiling of a float.*/
#define ff_ceil(x)      (ff_mathop(ceil)(x))

/*ff_floatToStr(s,sz,n) converts a float to a string.*/
#define ff_floatToStr(s,sz,n) \
        ff_sprintf((s), sz, FF_FLOAT_FMT, (FFI_UACFLOAT)(n))

/*ff_floatToInteger(n,p) converts floats in integers.*/
#define ff_floatToInteger(n,p) \
        ((n) >= (FF_FLOAT)(FF_MININTEGER) && \
         (n) < -(FF_FLOAT)(FF_MININTEGER) && \
            (*(p) = (FF_INTEGER)(n), 1))

/*variable definitions*/
/*floats*/
#if FF_FLOAT_TYPE == FF_FLOAT_F32

#define FF_FLOAT        float

#define ff_floatatt(n)      (FLT_##n)

#define FFI_UACFLOAT    double

#define FF_FLOAT_FRMLEN     ""
#define FF_FLOAT_FRMT       "%.7g"

#define ff_mathop(op)       op##f

#define ff_strToFloat(s,p)  strtof((s), (p))

#elif FF_FLOAT_TYPE == FF_FLOAT_F128

#define FF_FLOAT        long double

#define ff_floatatt(n)      (LDBL_##n)

#define FFI_UACFLOAT    long double

#define FF_FLOAT_FRMLEN     "L"
#define FF_FLOAT_FRMT       "%.19Lg"

#define f_mathop(op)       op##l

#define ff_strToFloat(s,p)  strtold((s), (p))

#elif FF_FLOAT_TYPE == FF_FLOAT_F64

#define FF_FLOAT        double

#define ff_floatatt(n)      (DBL_##n)

#define FFI_UACFLOAT    double

#define FF_FLOAT_FRMLEN     ""
#define FF_FLOAT_FRMT       "%.14g"

#define f_mathop(op)        op

#define ff_strToFloat(s,p)  strtod((s), (p))

#else

#error "Number float type not defined."

#endif  /*End float definitions*/

/*integers*/
#define FF_INTEGER_FRMT     "%" FF_INTEGER_FRMLEN "d"

#define FFI_UACINT          FF_INTEGER

#define ff_integerToStr(s,sz,n) \
        ff_sprintf((s), sz, FF_INTEGER_FRMT, (FFI_UACINT)(n))

#define FF_UNSIGNED         unsigned FFI_UACINT

/*integer variable definitions*/
#if FF_INT_TYPE == FF_INT_I16

#define FF_INTEGER          int16_t
#define FF_INTEGER_FRMLEN   ""

#define FF_MAXINTEGER       I16_MAX
#define FF_MININTEGER       I16_MIN

#define FF_MAXUNSIGNED      U16_MAX
/*Minimum unsigned is zero.*/

#elif FF_INT_TYPE == FF_INT_I32

#define FF_INTEGER          int32_t
#define FF_INTEGER_FRMLEN   "l"

#define FF_MAXINTEGER       I32_MAX
#define FF_MININTEGER       I32_MIN

#define FF_MAXUNSIGNED      U32_MAX

#elif FF_INT_TYPE == FF_INT_I64

#if defined(LLONG_MAX)

#define FF_INTEGER          int64_t
#define FF_INTEGER_FRMLEN   "ll"

#define FF_MAXINTEGER       I64_MAX
#define FF_MININTEGER       I64_MIN

#define FF_MAXUNSIGNED      U64_MAX

#elif defined(FF_USE_WINDOWS)

#define FF_INTEGER          int64_t
#define FF_INTEGER_FRMLEN   "ll"

#define FF_MAXINTEGER       I64_MAX
#define FF_MININTEGER       I64_MIN

#define FF_MAXUNSIGNED      U64_MAX

#else

#error "Compiler does not support 'i64'.  Use option '-DFF_32BITS' or '-DFF_C89_NUMBERS' (see file 'ffconfig.h' for details)" 

#endif

#endif  /*EOF*/
