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



/* Global Declarations */

/* Types Declarations */

/* Function definitions */

/* Types Definitions */

/* Function Declarations */
uint32_t CrcUpdateT4(uint32_t _1, void* _2, uint64_t _3, void* _4) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t CrcUpdateT8(uint32_t _64, void* _65, uint64_t _66, void* _67) __ATTRIBUTELIST__((noinline, nothrow));


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint64_t llvm_add_u64(uint64_t a, uint64_t b) {
  uint64_t r = a + b;
  return r;
}
static __forceinline uint64_t llvm_sub_u64(uint64_t a, uint64_t b) {
  uint64_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}


/* Function Bodies */

uint32_t CrcUpdateT4(uint32_t _1, void* _2, uint64_t _3, void* _4) {
  uint32_t _5;    /* Address-exposed local */
  void* _6;    /* Address-exposed local */
  uint64_t _7;    /* Address-exposed local */
  void* _8;    /* Address-exposed local */
  void* _9;    /* Address-exposed local */
  void* _10;
  uint64_t _11;
  void* _12;
  bool _13;
  bool _13__PHI_TEMPORARY;
  void* _14;
  uint32_t _15;
  void* _16;
  uint8_t _17;
  uint32_t _18;
  uint32_t _19;
  uint64_t _20;
  void* _21;
  uint64_t _22;
  void* _23;
  uint32_t _24;
  uint32_t _25;
  void* _26;
  uint32_t _27;
  uint32_t _28;
  void* _29;
  uint32_t _30;
  uint32_t _31;
  void* _32;
  uint32_t _33;
  uint32_t _34;
  void* _35;
  uint32_t _36;
  uint32_t _37;
  uint64_t _38;
  void* _39;
  uint64_t _40;
  void* _41;
  uint32_t _42;
  void* _43;
  uint8_t _44;
  uint32_t _45;
  uint32_t _46;
  uint64_t _47;
  void* _48;
  uint32_t _49;

  _5 = _1;
  _6 = _2;
  _7 = _3;
  _8 = _4;
  _10 = _6;
  _9 = _10;
  goto _50;

  do {     /* Syntactic loop '' to make GCC happy */
_50:
  _11 = _7;
  if ((((uint64_t)_11) > ((uint64_t)UINT64_C(0)))) {
    goto _51;
  } else {
    _13__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _52;
  }

_51:
  _12 = _9;
  _13__PHI_TEMPORARY = (((((uint32_t)(((uint64_t)(uintptr_t)_12)))) & 3) != 0u);   /* for PHI node */
  goto _52;

_52:
  _13 = _13__PHI_TEMPORARY;
  if (_13) {
    goto _53;
  } else {
    goto _54;
  }

_53:
  _14 = _8;
  _15 = _5;
  _16 = _9;
  _17 = *(uint8_t*)_16;
  _18 = *(uint32_t*)(((&((uint32_t*)_14)[((int64_t)(((uint64_t)(uint32_t)((_15 ^ (((uint32_t)(uint8_t)_17))) & 255))))])));
  _19 = _5;
  _5 = (_18 ^ (llvm_lshr_u32(_19, 8)));
  goto _55;

_55:
  _20 = _7;
  _7 = (llvm_add_u64(_20, -1));
  _21 = _9;
  _9 = (((&((uint8_t*)_21)[((int32_t)1)])));
  goto _50;

  } while (1); /* end of syntactic loop '' */
_54:
  goto _56;

  do {     /* Syntactic loop '' to make GCC happy */
_56:
  _22 = _7;
  if ((((uint64_t)_22) >= ((uint64_t)UINT64_C(4)))) {
    goto _57;
  } else {
    goto _58;
  }

_57:
  _23 = _9;
  _24 = *(uint32_t*)(((void*)_23));
  _25 = _5;
  _5 = (_25 ^ _24);
  _26 = _8;
  _27 = _5;
  _28 = *(uint32_t*)(((&((uint32_t*)_26)[((int64_t)(((uint64_t)(uint32_t)(llvm_add_u32(768, (_27 & 255))))))])));
  _29 = _8;
  _30 = _5;
  _31 = *(uint32_t*)(((&((uint32_t*)_29)[((int64_t)(((uint64_t)(uint32_t)(llvm_add_u32(512, ((llvm_lshr_u32(_30, 8)) & 255))))))])));
  _32 = _8;
  _33 = _5;
  _34 = *(uint32_t*)(((&((uint32_t*)_32)[((int64_t)(((uint64_t)(uint32_t)(llvm_add_u32(256, ((llvm_lshr_u32(_33, 16)) & 255))))))])));
  _35 = _8;
  _36 = _5;
  _37 = *(uint32_t*)(((&((uint32_t*)_35)[((int64_t)(((uint64_t)(uint32_t)(llvm_add_u32(0, (llvm_lshr_u32(_36, 24)))))))])));
  _5 = (((_28 ^ _31) ^ _34) ^ _37);
  goto _59;

_59:
  _38 = _7;
  _7 = (llvm_sub_u64(_38, 4));
  _39 = _9;
  _9 = (((&((uint8_t*)_39)[((int64_t)4)])));
  goto _56;

  } while (1); /* end of syntactic loop '' */
_58:
  goto _60;

  do {     /* Syntactic loop '' to make GCC happy */
_60:
  _40 = _7;
  if ((((uint64_t)_40) > ((uint64_t)UINT64_C(0)))) {
    goto _61;
  } else {
    goto _62;
  }

_61:
  _41 = _8;
  _42 = _5;
  _43 = _9;
  _44 = *(uint8_t*)_43;
  _45 = *(uint32_t*)(((&((uint32_t*)_41)[((int64_t)(((uint64_t)(uint32_t)((_42 ^ (((uint32_t)(uint8_t)_44))) & 255))))])));
  _46 = _5;
  _5 = (_45 ^ (llvm_lshr_u32(_46, 8)));
  goto _63;

_63:
  _47 = _7;
  _7 = (llvm_add_u64(_47, -1));
  _48 = _9;
  _9 = (((&((uint8_t*)_48)[((int32_t)1)])));
  goto _60;

  } while (1); /* end of syntactic loop '' */
_62:
  _49 = _5;
  return _49;
}


uint32_t CrcUpdateT8(uint32_t _64, void* _65, uint64_t _66, void* _67) {
  uint32_t _68;    /* Address-exposed local */
  void* _69;    /* Address-exposed local */
  uint64_t _70;    /* Address-exposed local */
  void* _71;    /* Address-exposed local */
  uint32_t _72;
  void* _73;
  uint64_t _74;
  void* _75;
  uint32_t _76;

  _68 = _64;
  _69 = _65;
  _70 = _66;
  _71 = _67;
  _72 = _68;
  _73 = _69;
  _74 = _70;
  _75 = _71;
  _76 = CrcUpdateT4(_72, _73, _74, _75);
  return _76;
}

