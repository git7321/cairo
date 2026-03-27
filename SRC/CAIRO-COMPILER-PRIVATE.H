#ifndef CAIRO_COMPILER_PRIVATE_H
#define CAIRO_COMPILER_PRIVATE_H

#include "cairo.h"

#ifndef CAIRO_STACK_BUFFER_SIZE
#define CAIRO_STACK_BUFFER_SIZE (512 * sizeof (int))
#endif

#define CAIRO_STACK_ARRAY_LENGTH(T) (CAIRO_STACK_BUFFER_SIZE / sizeof(T))

#define slim_hidden_proto(name)		    int _cairo_dummy_prototype(void)
#define slim_hidden_proto_no_warn(name)	int _cairo_dummy_prototype(void)
#define slim_hidden_def(name)			int _cairo_dummy_prototype(void)

#define CAIRO_PRINTF_FORMAT(fmt_index, va_index)

#define CAIRO_HAS_HIDDEN_SYMBOLS 1
#define cairo_private_no_warn
#undef CAIRO_HAS_HIDDEN_SYMBOLS

#ifndef WARN_UNUSED_RESULT
#define WARN_UNUSED_RESULT
#endif

#define cairo_warn	    WARN_UNUSED_RESULT
#define cairo_private	cairo_private_no_warn cairo_warn
#define CAIRO_FUNCTION_ALIAS(old, new)

#define cairo_pure
#define cairo_const
#define cairo_always_inline inline

#define likely(expr)   (expr)
#define unlikely(expr) (expr)

#ifndef __attribute__
#define __attribute__
#endif

#if (defined(__WIN32__) && !defined(__WINE__)) || defined(_MSC_VER)
#define access _access
#define fdopen _fdopen
#define hypot _hypot
#define pclose _pclose
#define popen _popen
#define snprintf _snprintf
#define strdup _strdup
#define unlink _unlink
#define vsnprintf _vsnprintf
#endif

#ifdef _MSC_VER
#ifndef __cplusplus
#define inline __inline
#endif
#endif

#if defined(_MSC_VER) && defined(_M_IX86)
#define CAIRO_ENSURE_UNIQUE                   \
    do {                                      \
	char file[] = __FILE__;                   \
	__asm {                                   \
	    __asm jmp __internal_skip_line_no     \
	    __asm _emit (__COUNTER__ & 0xff)      \
	    __asm _emit ((__COUNTER__>>8) & 0xff) \
	    __asm _emit ((__COUNTER__>>16) & 0xff)\
	    __asm _emit ((__COUNTER__>>24) & 0xff)\
	    __asm lea eax, dword ptr file         \
	    __asm __internal_skip_line_no:        \
	};                                        \
    } while (0)
#else
#define CAIRO_ENSURE_UNIQUE    do { } while (0)
#endif

#ifdef __STRICT_ANSI__
#undef inline
#define inline __inline__
#endif

#endif
