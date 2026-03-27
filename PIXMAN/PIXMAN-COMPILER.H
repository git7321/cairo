#include <stdint.h>

#ifndef FUNC
#define FUNC  ((const char*)(__FUNCTION__))
#endif

#ifndef unlikely
# define unlikely(expr) (expr)
#endif
#ifndef MAYBE_UNUSED
# define MAYBE_UNUSED
#endif
#ifndef CVISIBILITY_HIDDEN
# define CVISIBILITY_HIDDEN
#endif

#ifndef M_PI
# define M_PI  3.14159265358979323846
#endif

#define inline        __inline
#define force_inline  __forceinline
#define noinline      __declspec(noinline)
#define PIXMAN_EXPORT extern CVISIBILITY_HIDDEN

#define CONTAINER_OF(type, member, data) \
   ((type *)(((uint8_t *)data) - offsetof (type, member)))

#define PIXMAN_DEFINE_THREAD_LOCAL(type, name) \
   static __declspec(thread) type name;
#define PIXMAN_GET_THREAD_LOCAL(name) \
   (&name)
