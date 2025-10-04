; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pconst.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pzeroConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 0, [1 x i16] zeroinitializer }, align 2
@pzero = dso_local global %struct.precisionType* @pzeroConst, align 8
@poneConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 0, [1 x i16] [i16 1] }, align 2
@pone = dso_local global %struct.precisionType* @poneConst, align 8
@ptwoConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 0, [1 x i16] [i16 2] }, align 2
@ptwo = dso_local global %struct.precisionType* @ptwoConst, align 8
@p_oneConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 1, [1 x i16] [i16 1] }, align 2
@p_one = dso_local global %struct.precisionType* @p_oneConst, align 8

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
