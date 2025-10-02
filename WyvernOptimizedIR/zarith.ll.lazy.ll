; ModuleID = './zarith.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zarith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp = external dso_local global %struct.ref_s*, align 8
@zarith_op_init.my_defs = internal global [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zadd }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zceiling }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zdiv }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zidiv }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zfloor }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zmod }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zmul }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zneg }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zround }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zsub }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @ztruncate }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2add\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"1ceiling\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2div\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"2idiv\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1floor\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2mod\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"2mul\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1neg\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"1round\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"2sub\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1truncate\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zadd(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %33
  ]

7:                                                ; preds = %1
  br label %76

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  switch i32 %13, label %14 [
    i32 11, label %15
    i32 5, label %22
  ]

14:                                               ; preds = %8
  br label %76

15:                                               ; preds = %8
  %16 = bitcast %struct.ref_s* %0 to float*
  %17 = load float, float* %16, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %19 = bitcast %union.v* %18 to float*
  %20 = load float, float* %19, align 8
  %21 = fadd float %20, %17
  store float %21, float* %19, align 8
  br label %32

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %24 to float
  %26 = bitcast %struct.ref_s* %0 to float*
  %27 = load float, float* %26, align 8
  %28 = fadd float %27, %25
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %30 = bitcast %union.v* %29 to float*
  store float %28, float* %30, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %31, align 8
  br label %32

32:                                               ; preds = %22, %15
  br label %73

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %35 = load i16, i16* %34, align 8
  %36 = lshr i16 %35, 2
  %37 = and i16 %36, 63
  %38 = zext i16 %37 to i32
  switch i32 %38, label %39 [
    i32 11, label %40
    i32 5, label %48
  ]

39:                                               ; preds = %33
  br label %76

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %45 = bitcast %union.v* %44 to float*
  %46 = load float, float* %45, align 8
  %47 = fadd float %46, %43
  store float %47, float* %45, align 8
  br label %72

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %50
  store i64 %53, i64* %51, align 8
  %54 = xor i64 %53, %50
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %50
  %60 = xor i64 %59, %50
  %61 = icmp sgt i64 %60, -1
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to float
  %66 = sitofp i64 %50 to float
  %67 = fsub float %65, %66
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %69 = bitcast %union.v* %68 to float*
  store float %67, float* %69, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %70, align 8
  br label %71

71:                                               ; preds = %62, %56, %48
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %32
  %74 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -1
  store %struct.ref_s* %75, %struct.ref_s** @osp, align 8
  br label %76

76:                                               ; preds = %73, %39, %14, %7
  %.0 = phi i32 [ -20, %7 ], [ -20, %39 ], [ 0, %73 ], [ -20, %14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zdiv(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %8 [
    i32 11, label %9
    i32 5, label %37
  ]

8:                                                ; preds = %1
  br label %70

9:                                                ; preds = %1
  %10 = bitcast %struct.ref_s* %0 to float*
  %11 = load float, float* %10, align 8
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %70

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = lshr i16 %16, 2
  %18 = and i16 %17, 63
  %19 = zext i16 %18 to i32
  switch i32 %19, label %20 [
    i32 11, label %21
    i32 5, label %27
  ]

20:                                               ; preds = %14
  br label %70

21:                                               ; preds = %14
  %22 = bitcast %struct.ref_s* %0 to float*
  %23 = load float, float* %22, align 8
  %24 = bitcast %struct.ref_s* %2 to float*
  %25 = load float, float* %24, align 8
  %26 = fdiv float %25, %23
  store float %26, float* %24, align 8
  br label %36

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to float
  %31 = bitcast %struct.ref_s* %0 to float*
  %32 = load float, float* %31, align 8
  %33 = fdiv float %30, %32
  %34 = bitcast %struct.ref_s* %2 to float*
  store float %33, float* %34, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %35, align 8
  br label %36

36:                                               ; preds = %27, %21
  br label %67

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %70

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %44 = load i16, i16* %43, align 8
  %45 = lshr i16 %44, 2
  %46 = and i16 %45, 63
  %47 = zext i16 %46 to i32
  switch i32 %47, label %48 [
    i32 11, label %49
    i32 5, label %56
  ]

48:                                               ; preds = %42
  br label %70

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to float
  %53 = bitcast %struct.ref_s* %2 to float*
  %54 = load float, float* %53, align 8
  %55 = fdiv float %54, %52
  store float %55, float* %53, align 8
  br label %66

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to float
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to float
  %63 = fdiv float %59, %62
  %64 = bitcast %struct.ref_s* %2 to float*
  store float %63, float* %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %65, align 8
  br label %66

66:                                               ; preds = %56, %49
  br label %67

67:                                               ; preds = %66, %36
  %68 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1
  store %struct.ref_s* %69, %struct.ref_s** @osp, align 8
  br label %70

70:                                               ; preds = %67, %48, %41, %20, %13, %8
  %.0 = phi i32 [ -20, %8 ], [ -23, %41 ], [ -20, %48 ], [ 0, %67 ], [ -23, %13 ], [ -20, %20 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zmul(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %33
  ]

7:                                                ; preds = %1
  br label %93

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  switch i32 %13, label %14 [
    i32 11, label %15
    i32 5, label %22
  ]

14:                                               ; preds = %8
  br label %93

15:                                               ; preds = %8
  %16 = bitcast %struct.ref_s* %0 to float*
  %17 = load float, float* %16, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %19 = bitcast %union.v* %18 to float*
  %20 = load float, float* %19, align 8
  %21 = fmul float %20, %17
  store float %21, float* %19, align 8
  br label %32

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %24 to float
  %26 = bitcast %struct.ref_s* %0 to float*
  %27 = load float, float* %26, align 8
  %28 = fmul float %27, %25
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %30 = bitcast %union.v* %29 to float*
  store float %28, float* %30, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %31, align 8
  br label %32

32:                                               ; preds = %22, %15
  br label %90

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %35 = load i16, i16* %34, align 8
  %36 = lshr i16 %35, 2
  %37 = and i16 %36, 63
  %38 = zext i16 %37 to i32
  switch i32 %38, label %39 [
    i32 11, label %40
    i32 5, label %48
  ]

39:                                               ; preds = %33
  br label %93

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %45 = bitcast %union.v* %44 to float*
  %46 = load float, float* %45, align 8
  %47 = fmul float %46, %43
  store float %47, float* %45, align 8
  br label %89

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %50, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %57

55:                                               ; preds = %48
  %56 = sub nsw i64 0, %50
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i64 [ %50, %54 ], [ %56, %55 ]
  %59 = icmp sgt i64 %52, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %63

61:                                               ; preds = %57
  %62 = sub nsw i64 0, %52
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i64 [ %52, %60 ], [ %62, %61 ]
  %65 = icmp sgt i64 %58, 32767
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = icmp sgt i64 %64, 32767
  br i1 %67, label %68, label %85

68:                                               ; preds = %66, %63
  %.not = icmp eq i64 %58, 0
  br i1 %.not, label %85, label %69

69:                                               ; preds = %68
  %70 = sdiv i64 2147483647, %58
  %71 = icmp sgt i64 %64, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = sitofp i64 %50 to float
  %74 = sitofp i64 %52 to float
  %75 = fmul float %73, %74
  %76 = mul nsw i64 %50, %52
  %.not1 = icmp eq i64 %76, -2147483648
  br i1 %.not1, label %77, label %79

77:                                               ; preds = %72
  %78 = fcmp une float %75, 0xC1E0000000000000
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i1 [ true, %72 ], [ %78, %77 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %83 = bitcast %union.v* %82 to float*
  store float %75, float* %83, align 8
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %84, align 8
  br label %88

85:                                               ; preds = %79, %69, %68, %66
  %86 = mul nsw i64 %50, %52
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88, %40
  br label %90

90:                                               ; preds = %89, %32
  %91 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 -1
  store %struct.ref_s* %92, %struct.ref_s** @osp, align 8
  br label %93

93:                                               ; preds = %90, %39, %14, %7
  %.0 = phi i32 [ -20, %7 ], [ -20, %39 ], [ 0, %90 ], [ -20, %14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zsub(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %33
  ]

7:                                                ; preds = %1
  br label %76

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  switch i32 %13, label %14 [
    i32 11, label %15
    i32 5, label %22
  ]

14:                                               ; preds = %8
  br label %76

15:                                               ; preds = %8
  %16 = bitcast %struct.ref_s* %0 to float*
  %17 = load float, float* %16, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %19 = bitcast %union.v* %18 to float*
  %20 = load float, float* %19, align 8
  %21 = fsub float %20, %17
  store float %21, float* %19, align 8
  br label %32

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %24 to float
  %26 = bitcast %struct.ref_s* %0 to float*
  %27 = load float, float* %26, align 8
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %30 = bitcast %union.v* %29 to float*
  store float %28, float* %30, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %31, align 8
  br label %32

32:                                               ; preds = %22, %15
  br label %73

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %35 = load i16, i16* %34, align 8
  %36 = lshr i16 %35, 2
  %37 = and i16 %36, 63
  %38 = zext i16 %37 to i32
  switch i32 %38, label %39 [
    i32 11, label %40
    i32 5, label %48
  ]

39:                                               ; preds = %33
  br label %76

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %45 = bitcast %union.v* %44 to float*
  %46 = load float, float* %45, align 8
  %47 = fsub float %46, %43
  store float %47, float* %45, align 8
  br label %72

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %50, %52
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = xor i64 %50, %53
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = xor i64 %50, %59
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = sitofp i64 %50 to float
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to float
  %67 = fsub float %63, %66
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %69 = bitcast %union.v* %68 to float*
  store float %67, float* %69, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %70, align 8
  br label %71

71:                                               ; preds = %62, %57, %48
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %32
  %74 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -1
  store %struct.ref_s* %75, %struct.ref_s** @osp, align 8
  br label %76

76:                                               ; preds = %73, %39, %14, %7
  %.0 = phi i32 [ -20, %7 ], [ -20, %39 ], [ 0, %73 ], [ -20, %14 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zidiv(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = bitcast %struct.ref_s* %2 to i8*
  %5 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8* noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %6 = call i32 @zdiv(%struct.ref_s* noundef %0)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %11 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcvi to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef nonnull %10) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %15 = bitcast %struct.ref_s* %14 to i8*
  %16 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %15, i8* noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false)
  store %struct.ref_s* %0, %struct.ref_s** @osp, align 8
  br label %17

17:                                               ; preds = %13, %9
  br label %18

18:                                               ; preds = %17, %8
  %.0 = phi i32 [ %6, %8 ], [ %11, %17 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zcvi(...) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zmod(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 252
  %11 = icmp eq i16 %10, 20
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %26

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = srem i64 %22, %20
  store i64 %23, i64* %21, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %25, %struct.ref_s** @osp, align 8
  br label %26

26:                                               ; preds = %18, %17, %12, %6
  %.0 = phi i32 [ -23, %17 ], [ 0, %18 ], [ -20, %12 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zneg(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %13
  ]

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = bitcast %struct.ref_s* %0 to float*
  %10 = load float, float* %9, align 8
  %11 = fneg float %10
  %12 = bitcast %struct.ref_s* %0 to float*
  store float %11, float* %12, align 8
  br label %26

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, -2147483648
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = bitcast %struct.ref_s* %0 to float*
  store float 0x41E0000000000000, float* %18, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %19, align 8
  br label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %8
  br label %27

27:                                               ; preds = %26, %7
  %.0 = phi i32 [ -20, %7 ], [ 0, %26 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zceiling(%struct.ref_s* nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %13
  ]

7:                                                ; preds = %1
  br label %15

8:                                                ; preds = %1
  %9 = bitcast %struct.ref_s* %0 to float*
  %10 = load float, float* %9, align 8
  %11 = call float @llvm.ceil.f32(float %10)
  %12 = bitcast %struct.ref_s* %0 to float*
  store float %11, float* %12, align 8
  br label %13

13:                                               ; preds = %8, %1
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %7
  %.0 = phi i32 [ -20, %7 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zfloor(%struct.ref_s* nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %13
  ]

7:                                                ; preds = %1
  br label %15

8:                                                ; preds = %1
  %9 = bitcast %struct.ref_s* %0 to float*
  %10 = load float, float* %9, align 8
  %11 = call float @llvm.floor.f32(float %10)
  %12 = bitcast %struct.ref_s* %0 to float*
  store float %11, float* %12, align 8
  br label %13

13:                                               ; preds = %8, %1
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %7
  %.0 = phi i32 [ -20, %7 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zround(%struct.ref_s* nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %16
  ]

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = bitcast %struct.ref_s* %0 to float*
  %10 = load float, float* %9, align 8
  %11 = fpext float %10 to double
  %12 = fadd double %11, 5.000000e-01
  %13 = call double @llvm.floor.f64(double %12)
  %14 = fptrunc double %13 to float
  %15 = bitcast %struct.ref_s* %0 to float*
  store float %14, float* %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17, %7
  %.0 = phi i32 [ -20, %7 ], [ 0, %17 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @ztruncate(%struct.ref_s* nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 11, label %8
    i32 5, label %22
  ]

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = bitcast %struct.ref_s* %0 to float*
  %10 = load float, float* %9, align 8
  %11 = fcmp olt float %10, 0.000000e+00
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = bitcast %struct.ref_s* %0 to float*
  %14 = load float, float* %13, align 8
  %15 = call float @llvm.ceil.f32(float %14)
  br label %20

16:                                               ; preds = %8
  %17 = bitcast %struct.ref_s* %0 to float*
  %18 = load float, float* %17, align 8
  %19 = call float @llvm.floor.f32(float %18)
  br label %20

20:                                               ; preds = %16, %12
  %.in = phi float [ %15, %12 ], [ %19, %16 ]
  %21 = bitcast %struct.ref_s* %0 to float*
  store float %.in, float* %21, align 8
  br label %22

22:                                               ; preds = %20, %1
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23, %7
  %.0 = phi i32 [ -20, %7 ], [ 0, %23 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zarith_op_init() #1 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zarith_op_init.my_defs, i64 0, i64 0)) #7
  ret void
}

declare dso_local i32 @z_op_init(...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
