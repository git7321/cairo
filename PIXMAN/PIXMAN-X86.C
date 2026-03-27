#include "pixman-private.h"

typedef enum
{
    NO_FEATURES = 0,
    X86_MMX = 0x1,
    X86_MMX_EXTENSIONS = 0x2,
    X86_SSE = 0x6,
    X86_SSE2 = 0x8,
    X86_CMOV = 0x10
} cpu_features_t;

#define _PIXMAN_X86_64 \
    (defined(__amd64__) || defined(__x86_64__) || defined(_M_AMD64))

static cpu_features_t
detect_cpu_features (void)
{
    cpu_features_t features = 0;
    cpu_features_t result = 0;

    char vendor[13];
    int vendor0 = 0, vendor1, vendor2;
    vendor[0] = 0;
    vendor[12] = 0;

    _asm {
	pushfd
	pop eax
	mov ecx, eax
	xor eax, 00200000h
	push eax
	popfd
	pushfd
	pop eax
	mov edx, 0
	xor eax, ecx
	jz nocpuid

	mov eax, 0
	push ebx
	cpuid
	mov eax, ebx
	pop ebx
	mov vendor0, eax
	mov vendor1, edx
	mov vendor2, ecx
	mov eax, 1
	push ebx
	cpuid
	pop ebx
    nocpuid:
	mov result, edx
    }
    memmove (vendor + 0, &vendor0, 4);
    memmove (vendor + 4, &vendor1, 4);
    memmove (vendor + 8, &vendor2, 4);

    features = 0;
    if (result)
    {
	if (result & (1 << 15))
	    features |= X86_CMOV;
	if (result & (1 << 23))
	    features |= X86_MMX;
	if (result & (1 << 25))
	    features |= X86_SSE;
	if (result & (1 << 26))
	    features |= X86_SSE2;
	if ((features & X86_MMX) && !(features & X86_SSE) &&
	    (strcmp (vendor, "AuthenticAMD") == 0 ||
	     strcmp (vendor, "Geode by NSC") == 0))
	{
	    _asm {
		push ebx
		mov eax, 80000000h
		cpuid
		xor edx, edx
		cmp eax, 1
		jge notamd
		mov eax, 80000001h
		cpuid
	    notamd:
		pop ebx
		mov result, edx
	    }
	    if (result & (1 << 22))
		features |= X86_MMX_EXTENSIONS;
	}
    }
    return features;
}

static pixman_bool_t
have_feature (cpu_features_t feature)
{
    static pixman_bool_t initialized;
    static cpu_features_t features;

    if (!initialized)
    {
	features = detect_cpu_features();
	initialized = TRUE;
    }

    return (features & feature) == feature;
}

pixman_implementation_t *
_pixman_x86_get_implementations (pixman_implementation_t *imp)
{
#define MMX_BITS  (X86_MMX | X86_MMX_EXTENSIONS)

    if (have_feature (MMX_BITS))
	imp = _pixman_implementation_create_mmx (imp);

    return imp;
}
