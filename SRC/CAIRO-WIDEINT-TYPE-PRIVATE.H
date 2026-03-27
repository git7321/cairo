#ifndef CAIRO_WIDEINT_TYPE_H
#define CAIRO_WIDEINT_TYPE_H

#include "cairo.h"
#include <stdint.h>

#if HAVE_BYTESWAP_H
# include <byteswap.h>
#endif
#ifndef bswap_16
#ifdef _MSC_VER
# define bswap_16 _byteswap_ushort
#else
# define bswap_16(p) \
	(((((uint16_t)(p)) & 0x00ff) << 8) | \
	  (((uint16_t)(p))           >> 8));
#endif
#endif
#ifndef bswap_32
#ifdef _MSC_VER
# define bswap_32 _byteswap_ulong
#else
# define bswap_32(p) \
         (((((uint32_t)(p)) & 0x000000ff) << 24) | \
	  ((((uint32_t)(p)) & 0x0000ff00) << 8)  | \
	  ((((uint32_t)(p)) & 0x00ff0000) >> 8)  | \
	  ((((uint32_t)(p)))              >> 24));
#endif
#endif

typedef uint64_t    cairo_uint64_t;
typedef int64_t	    cairo_int64_t;

typedef struct _cairo_uquorem64 {
    cairo_uint64_t	quo;
    cairo_uint64_t	rem;
} cairo_uquorem64_t;

typedef struct _cairo_quorem64 {
    cairo_int64_t	quo;
    cairo_int64_t	rem;
} cairo_quorem64_t;

#if HAVE___UINT128_T && !HAVE_UINT128_T
typedef __uint128_t uint128_t;
typedef __int128_t int128_t;
#define HAVE_UINT128_T 1
#endif

#if !HAVE_UINT128_T

typedef struct cairo_uint128 {
    cairo_uint64_t	lo, hi;
} cairo_uint128_t, cairo_int128_t;

#else

typedef uint128_t cairo_uint128_t;
typedef int128_t cairo_int128_t;

#endif

typedef struct _cairo_uquorem128 {
    cairo_uint128_t	quo;
    cairo_uint128_t	rem;
} cairo_uquorem128_t;

typedef struct _cairo_quorem128 {
    cairo_int128_t	quo;
    cairo_int128_t	rem;
} cairo_quorem128_t;

#endif /* CAIRO_WIDEINT_H */
