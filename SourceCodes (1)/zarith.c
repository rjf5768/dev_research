; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zarith.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zadd(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 255
  %10 = ashr i32 %9, 2
  switch i32 %10, label %11 [
    i32 11, label %12
    i32 5, label %52
  ]

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %121

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 255
  %19 = ashr i32 %18, 2
  switch i32 %19, label %20 [
    i32 11, label %21
    i32 5, label %32
  ]

20:                                               ; preds = %12
  store i32 -20, i32* %2, align 4
  br label %121

21:                                               ; preds = %12
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to float*
  %25 = load float, float* %24, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to float*
  %30 = load float, float* %29, align 8
  %31 = fadd float %30, %25
  store float %31, float* %29, align 8
  br label %51

32:                                               ; preds = %12
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %36 = bitcast %union.v* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to float
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to float*
  %42 = load float, float* %41, align 8
  %43 = fadd float %38, %42
  %44 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %47 = bitcast %union.v* %46 to float*
  store float %43, float* %47, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  store i16 44, i16* %50, align 8
  br label %51

51:                                               ; preds = %32, %21
  br label %118

52:                                               ; preds = %1
  %53 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 8
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 255
  %59 = ashr i32 %58, 2
  switch i32 %59, label %60 [
    i32 11, label %61
    i32 5, label %73
  ]

60:                                               ; preds = %52
  store i32 -20, i32* %2, align 4
  br label %121

61:                                               ; preds = %52
  %62 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %64 = bitcast %union.v* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to float
  %67 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %70 = bitcast %union.v* %69 to float*
  %71 = load float, float* %70, align 8
  %72 = fadd float %71, %66
  store float %72, float* %70, align 8
  br label %117

73:                                               ; preds = %52
  %74 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %76 = bitcast %union.v* %75 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 -1
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %82 = bitcast %union.v* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %78
  store i64 %84, i64* %82, align 8
  %85 = load i64, i64* %4, align 8
  %86 = xor i64 %84, %85
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %73
  %89 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 -1
  %91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i32 0, i32 0
  %92 = bitcast %union.v* %91 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load i64, i64* %4, align 8
  %97 = xor i64 %95, %96
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %88
  %100 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 -1
  %102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 0
  %103 = bitcast %union.v* %102 to i64*
  %104 = load i64, i64* %103, align 8
  %105 = sitofp i64 %104 to float
  %106 = load i64, i64* %4, align 8
  %107 = sitofp i64 %106 to float
  %108 = fsub float %105, %107
  %109 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 -1
  %111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 0
  %112 = bitcast %union.v* %111 to float*
  store float %108, float* %112, align 8
  %113 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i64 -1
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 0, i32 1
  store i16 44, i16* %115, align 8
  br label %116

116:                                              ; preds = %99, %88, %73
  br label %117

117:                                              ; preds = %116, %61
  br label %118

118:                                              ; preds = %117, %51
  %119 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i64 -1
  store %struct.ref_s* %120, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %60, %20, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdiv(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %6, %struct.ref_s** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 255
  %12 = ashr i32 %11, 2
  switch i32 %12, label %13 [
    i32 11, label %14
    i32 5, label %56
  ]

13:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %103

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to float*
  %18 = load float, float* %17, align 8
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -23, i32* %2, align 4
  br label %103

21:                                               ; preds = %14
  %22 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 255
  %27 = ashr i32 %26, 2
  switch i32 %27, label %28 [
    i32 11, label %29
    i32 5, label %39
  ]

28:                                               ; preds = %21
  store i32 -20, i32* %2, align 4
  br label %103

29:                                               ; preds = %21
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to float*
  %33 = load float, float* %32, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %36 = bitcast %union.v* %35 to float*
  %37 = load float, float* %36, align 8
  %38 = fdiv float %37, %33
  store float %38, float* %36, align 8
  br label %55

39:                                               ; preds = %21
  %40 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %42 = bitcast %union.v* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to float
  %45 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %47 = bitcast %union.v* %46 to float*
  %48 = load float, float* %47, align 8
  %49 = fdiv float %44, %48
  %50 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %52 = bitcast %union.v* %51 to float*
  store float %49, float* %52, align 8
  %53 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  store i16 44, i16* %54, align 8
  br label %55

55:                                               ; preds = %39, %29
  br label %100

56:                                               ; preds = %1
  %57 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %59 = bitcast %union.v* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -23, i32* %2, align 4
  br label %103

63:                                               ; preds = %56
  %64 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 255
  %69 = ashr i32 %68, 2
  switch i32 %69, label %70 [
    i32 11, label %71
    i32 5, label %82
  ]

70:                                               ; preds = %63
  store i32 -20, i32* %2, align 4
  br label %103

71:                                               ; preds = %63
  %72 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %74 = bitcast %union.v* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to float
  %77 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %79 = bitcast %union.v* %78 to float*
  %80 = load float, float* %79, align 8
  %81 = fdiv float %80, %76
  store float %81, float* %79, align 8
  br label %99

82:                                               ; preds = %63
  %83 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 0
  %85 = bitcast %union.v* %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to float
  %88 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %90 = bitcast %union.v* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to float
  %93 = fdiv float %87, %92
  %94 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 0
  %96 = bitcast %union.v* %95 to float*
  store float %93, float* %96, align 8
  %97 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 1
  store i16 44, i16* %98, align 8
  br label %99

99:                                               ; preds = %82, %71
  br label %100

100:                                              ; preds = %99, %55
  %101 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i64 -1
  store %struct.ref_s* %102, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %70, %62, %28, %20, %13
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmul(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  switch i32 %14, label %15 [
    i32 11, label %16
    i32 5, label %56
  ]

15:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %155

16:                                               ; preds = %1
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 255
  %23 = ashr i32 %22, 2
  switch i32 %23, label %24 [
    i32 11, label %25
    i32 5, label %36
  ]

24:                                               ; preds = %16
  store i32 -20, i32* %2, align 4
  br label %155

25:                                               ; preds = %16
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to float*
  %29 = load float, float* %28, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %33 = bitcast %union.v* %32 to float*
  %34 = load float, float* %33, align 8
  %35 = fmul float %34, %29
  store float %35, float* %33, align 8
  br label %55

36:                                               ; preds = %16
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %40 = bitcast %union.v* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to float
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %45 = bitcast %union.v* %44 to float*
  %46 = load float, float* %45, align 8
  %47 = fmul float %42, %46
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %51 = bitcast %union.v* %50 to float*
  store float %47, float* %51, align 8
  %52 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  store i16 44, i16* %54, align 8
  br label %55

55:                                               ; preds = %36, %25
  br label %152

56:                                               ; preds = %1
  %57 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -1
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 255
  %63 = ashr i32 %62, 2
  switch i32 %63, label %64 [
    i32 11, label %65
    i32 5, label %77
  ]

64:                                               ; preds = %56
  store i32 -20, i32* %2, align 4
  br label %155

65:                                               ; preds = %56
  %66 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %68 = bitcast %union.v* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to float
  %71 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -1
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %74 = bitcast %union.v* %73 to float*
  %75 = load float, float* %74, align 8
  %76 = fmul float %75, %70
  store float %76, float* %74, align 8
  br label %151

77:                                               ; preds = %56
  %78 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -1
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 0
  %81 = bitcast %union.v* %80 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %4, align 8
  %83 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 0
  %85 = bitcast %union.v* %84 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i64, i64* %4, align 8
  br label %94

91:                                               ; preds = %77
  %92 = load i64, i64* %4, align 8
  %93 = sub nsw i64 0, %92
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi i64 [ %90, %89 ], [ %93, %91 ]
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* %5, align 8
  br label %103

100:                                              ; preds = %94
  %101 = load i64, i64* %5, align 8
  %102 = sub nsw i64 0, %101
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i64 [ %99, %98 ], [ %102, %100 ]
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %6, align 8
  %106 = icmp sgt i64 %105, 32767
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %7, align 8
  %109 = icmp sgt i64 %108, 32767
  br i1 %109, label %110, label %142

110:                                              ; preds = %107, %103
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %142

113:                                              ; preds = %110
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %6, align 8
  %116 = sdiv i64 2147483647, %115
  %117 = icmp sgt i64 %114, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %113
  %119 = load i64, i64* %4, align 8
  %120 = sitofp i64 %119 to float
  %121 = load i64, i64* %5, align 8
  %122 = sitofp i64 %121 to float
  %123 = fmul float %120, %122
  store float %123, float* %8, align 4
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %5, align 8
  %126 = mul nsw i64 %124, %125
  %127 = icmp ne i64 %126, -2147483648
  br i1 %127, label %131, label %128

128:                                              ; preds = %118
  %129 = load float, float* %8, align 4
  %130 = fcmp une float %129, 0xC1E0000000000000
  br label %131

131:                                              ; preds = %128, %118
  %132 = phi i1 [ true, %118 ], [ %130, %128 ]
  br i1 %132, label %133, label %142

133:                                              ; preds = %131
  %134 = load float, float* %8, align 4
  %135 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i64 -1
  %137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %136, i32 0, i32 0
  %138 = bitcast %union.v* %137 to float*
  store float %134, float* %138, align 8
  %139 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 -1
  %141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i32 0, i32 1
  store i16 44, i16* %141, align 8
  br label %150

142:                                              ; preds = %131, %113, %110, %107
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = mul nsw i64 %143, %144
  %146 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i64 -1
  %148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %147, i32 0, i32 0
  %149 = bitcast %union.v* %148 to i64*
  store i64 %145, i64* %149, align 8
  br label %150

150:                                              ; preds = %142, %133
  br label %151

151:                                              ; preds = %150, %65
  br label %152

152:                                              ; preds = %151, %55
  %153 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %153, i64 -1
  store %struct.ref_s* %154, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %64, %24, %15
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsub(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 255
  %10 = ashr i32 %9, 2
  switch i32 %10, label %11 [
    i32 11, label %12
    i32 5, label %52
  ]

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %121

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 255
  %19 = ashr i32 %18, 2
  switch i32 %19, label %20 [
    i32 11, label %21
    i32 5, label %32
  ]

20:                                               ; preds = %12
  store i32 -20, i32* %2, align 4
  br label %121

21:                                               ; preds = %12
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to float*
  %25 = load float, float* %24, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to float*
  %30 = load float, float* %29, align 8
  %31 = fsub float %30, %25
  store float %31, float* %29, align 8
  br label %51

32:                                               ; preds = %12
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %36 = bitcast %union.v* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to float
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to float*
  %42 = load float, float* %41, align 8
  %43 = fsub float %38, %42
  %44 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %47 = bitcast %union.v* %46 to float*
  store float %43, float* %47, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  store i16 44, i16* %50, align 8
  br label %51

51:                                               ; preds = %32, %21
  br label %118

52:                                               ; preds = %1
  %53 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 8
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 255
  %59 = ashr i32 %58, 2
  switch i32 %59, label %60 [
    i32 11, label %61
    i32 5, label %73
  ]

60:                                               ; preds = %52
  store i32 -20, i32* %2, align 4
  br label %121

61:                                               ; preds = %52
  %62 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %64 = bitcast %union.v* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to float
  %67 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %70 = bitcast %union.v* %69 to float*
  %71 = load float, float* %70, align 8
  %72 = fsub float %71, %66
  store float %72, float* %70, align 8
  br label %117

73:                                               ; preds = %52
  %74 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -1
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %77 = bitcast %union.v* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %83 = bitcast %union.v* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %80, %84
  %86 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i64 -1
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 0
  %89 = bitcast %union.v* %88 to i64*
  store i64 %85, i64* %89, align 8
  %90 = xor i64 %79, %85
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %73
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 0
  %96 = bitcast %union.v* %95 to i64*
  %97 = load i64, i64* %96, align 8
  %98 = xor i64 %93, %97
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %92
  %101 = load i64, i64* %4, align 8
  %102 = sitofp i64 %101 to float
  %103 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i32 0, i32 0
  %105 = bitcast %union.v* %104 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = sitofp i64 %106 to float
  %108 = fsub float %102, %107
  %109 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 -1
  %111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 0
  %112 = bitcast %union.v* %111 to float*
  store float %108, float* %112, align 8
  %113 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i64 -1
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 0, i32 1
  store i16 44, i16* %115, align 8
  br label %116

116:                                              ; preds = %100, %92, %73
  br label %117

117:                                              ; preds = %116, %61
  br label %118

118:                                              ; preds = %117, %51
  %119 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i64 -1
  store %struct.ref_s* %120, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %60, %20, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zidiv(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %8 = bitcast %struct.ref_s* %4 to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = call i32 @zdiv(%struct.ref_s* noundef %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %19 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcvi to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %25 = bitcast %struct.ref_s* %24 to i8*
  %26 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  store %struct.ref_s* %27, %struct.ref_s** @osp, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zcvi(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmod(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 20
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 252
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 -20, i32* %2, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -23, i32* %2, align 4
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = srem i64 %36, %31
  store i64 %37, i64* %35, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  store %struct.ref_s* %39, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %26, %19, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zneg(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = ashr i32 %8, 2
  switch i32 %9, label %10 [
    i32 11, label %11
    i32 5, label %20
  ]

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to float*
  %15 = load float, float* %14, align 8
  %16 = fneg float %15
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to float*
  store float %16, float* %19, align 8
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, -2147483648
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to float*
  store float 0x41E0000000000000, float* %29, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  store i16 44, i16* %31, align 8
  br label %41

32:                                               ; preds = %20
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 0, %36
  %38 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %40 = bitcast %union.v* %39 to i64*
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %26
  br label %42

42:                                               ; preds = %41, %11
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zceiling(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = ashr i32 %8, 2
  switch i32 %9, label %10 [
    i32 11, label %11
    i32 5, label %22
  ]

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to float*
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = call double @llvm.ceil.f64(double %16)
  %18 = fptrunc double %17 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  store float %18, float* %21, align 8
  br label %22

22:                                               ; preds = %1, %11
  br label %23

23:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zfloor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = ashr i32 %8, 2
  switch i32 %9, label %10 [
    i32 11, label %11
    i32 5, label %22
  ]

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to float*
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = call double @llvm.floor.f64(double %16)
  %18 = fptrunc double %17 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  store float %18, float* %21, align 8
  br label %22

22:                                               ; preds = %1, %11
  br label %23

23:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zround(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = ashr i32 %8, 2
  switch i32 %9, label %10 [
    i32 11, label %11
    i32 5, label %23
  ]

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to float*
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = fadd double %16, 5.000000e-01
  %18 = call double @llvm.floor.f64(double %17)
  %19 = fptrunc double %18 to float
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %22 = bitcast %union.v* %21 to float*
  store float %19, float* %22, align 8
  br label %23

23:                                               ; preds = %1, %11
  br label %24

24:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztruncate(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = ashr i32 %8, 2
  switch i32 %9, label %10 [
    i32 11, label %11
    i32 5, label %38
  ]

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to float*
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  %22 = load float, float* %21, align 8
  %23 = fpext float %22 to double
  %24 = call double @llvm.ceil.f64(double %23)
  br label %32

25:                                               ; preds = %11
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to float*
  %29 = load float, float* %28, align 8
  %30 = fpext float %29 to double
  %31 = call double @llvm.floor.f64(double %30)
  br label %32

32:                                               ; preds = %25, %18
  %33 = phi double [ %24, %18 ], [ %31, %25 ]
  %34 = fptrunc double %33 to float
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to float*
  store float %34, float* %37, align 8
  br label %38

38:                                               ; preds = %1, %32
  br label %39

39:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zarith_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zarith_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
