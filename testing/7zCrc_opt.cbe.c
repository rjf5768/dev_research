/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
#endif

#if defined(__GNUC__)
#define  __ATTRIBUTELIST__(x) __attribute__(x)
#else
#define  __ATTRIBUTELIST__(x)  
#endif

#ifdef _MSC_VER  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#ifdef _MSC_VER
#define __PREFIXALIGN__(X) __declspec(align(X))
#define __POSTFIXALIGN__(X)
#else
#define __PREFIXALIGN__(X)
#define __POSTFIXALIGN__(X) __attribute__((aligned(X)))
#endif



/* Global Declarations */

/* Types Declarations */
struct l_array_2048_uint32_t;

/* Function definitions */
typedef uint32_t l_fptr_2(uint32_t, void*, uint64_t, void*);
typedef uint32_t l_fptr_1(uint32_t, void*, uint64_t, void*);

/* Types Definitions */
struct l_array_2048_uint32_t {
  uint32_t array[2048];
};

/* Global Variable Declarations */
static void* g_CrcUpdate;
extern __PREFIXALIGN__(16) struct l_array_2048_uint32_t g_CrcTable __POSTFIXALIGN__(16);

/* Function Declarations */
uint32_t CrcUpdate(uint32_t _1, void* _2, uint64_t _3) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t CrcCalc(void* _12, uint64_t _13) __ATTRIBUTELIST__((noinline, nothrow));
void CrcGenerateTable(void) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t CrcUpdateT4(uint32_t _53, void* _54, uint64_t _55, void* _56);


/* Global Variable Definitions and Initialization */
static void* g_CrcUpdate;
__PREFIXALIGN__(16) struct l_array_2048_uint32_t g_CrcTable __POSTFIXALIGN__(16);


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}


/* Function Bodies */

uint32_t CrcUpdate(uint32_t _1, void* _2, uint64_t _3) {
  uint32_t _4;    /* Address-exposed local */
  void* _5;    /* Address-exposed local */
  uint64_t _6;    /* Address-exposed local */
  void* _7;
  uint32_t _8;
  void* _9;
  uint64_t _10;
  uint32_t _11;

  _4 = _1;
  _5 = _2;
  _6 = _3;
  _7 = g_CrcUpdate;
  _8 = _4;
  _9 = _5;
  _10 = _6;
  _11 = ((l_fptr_1*)(void*)_7)(_8, _9, _10, (&g_CrcTable));
  return _11;
}


uint32_t CrcCalc(void* _12, uint64_t _13) {
  void* _14;    /* Address-exposed local */
  uint64_t _15;    /* Address-exposed local */
  void* _16;
  void* _17;
  uint64_t _18;
  uint32_t _19;

  _14 = _12;
  _15 = _13;
  _16 = g_CrcUpdate;
  _17 = _14;
  _18 = _15;
  _19 = ((l_fptr_2*)(void*)_16)(-1, _17, _18, (&g_CrcTable));
  return (_19 ^ -1);
}


void CrcGenerateTable(void) {
  uint32_t _20;    /* Address-exposed local */
  uint32_t _21;    /* Address-exposed local */
  uint32_t _22;    /* Address-exposed local */
  uint32_t _23;    /* Address-exposed local */
  uint32_t _24;
  uint32_t _25;
  uint32_t _26;
  uint32_t _27;
  uint32_t _28;
  uint32_t _29;
  uint32_t _30;
  uint32_t _31;
  uint32_t _32;
  uint32_t _33;
  uint32_t _34;
  uint32_t _35;
  uint32_t _36;
  uint32_t _37;
  uint32_t _38;
  uint32_t _39;
  uint32_t _40;

  _20 = 0;
  goto _41;

  do {     /* Syntactic loop '' to make GCC happy */
_41:
  _24 = _20;
  if ((((uint32_t)_24) < ((uint32_t)256u))) {
    goto _42;
  } else {
    goto _43;
  }

_42:
  _25 = _20;
  _21 = _25;
  _22 = 0;
  goto _44;

  do {     /* Syntactic loop '' to make GCC happy */
_44:
  _26 = _22;
  if ((((uint32_t)_26) < ((uint32_t)8u))) {
    goto _45;
  } else {
    goto _46;
  }

_45:
  _27 = _21;
  _28 = _21;
  _21 = ((llvm_lshr_u32(_27, 1)) ^ (-306674912 & ((llvm_sub_u32((_28 & 1), 1)) ^ -1)));
  goto _47;

_47:
  _29 = _22;
  _22 = (llvm_add_u32(_29, 1));
  goto _44;

  } while (1); /* end of syntactic loop '' */
_46:
  _30 = _21;
  _31 = _20;
  *(uint32_t*)(((&(&g_CrcTable)->array[((int64_t)(((uint64_t)(uint32_t)_31)))]))) = _30;
  goto _48;

_48:
  _32 = _20;
  _20 = (llvm_add_u32(_32, 1));
  goto _41;

  } while (1); /* end of syntactic loop '' */
_43:
  goto _49;

  do {     /* Syntactic loop '' to make GCC happy */
_49:
  _33 = _20;
  if ((((uint32_t)_33) < ((uint32_t)2048u))) {
    goto _50;
  } else {
    goto _51;
  }

_50:
  _34 = _20;
  _35 = *(uint32_t*)(((&(&g_CrcTable)->array[((int64_t)(((uint64_t)(uint32_t)(llvm_sub_u32(_34, 256)))))])));
  _23 = _35;
  _36 = _23;
  _37 = *(uint32_t*)(((&(&g_CrcTable)->array[((int64_t)(((uint64_t)(uint32_t)(_36 & 255))))])));
  _38 = _23;
  _39 = _20;
  *(uint32_t*)(((&(&g_CrcTable)->array[((int64_t)(((uint64_t)(uint32_t)_39)))]))) = (_37 ^ (llvm_lshr_u32(_38, 8)));
  goto _52;

_52:
  _40 = _20;
  _20 = (llvm_add_u32(_40, 1));
  goto _49;

  } while (1); /* end of syntactic loop '' */
_51:
  g_CrcUpdate = ((void*)&CrcUpdateT4);
}

