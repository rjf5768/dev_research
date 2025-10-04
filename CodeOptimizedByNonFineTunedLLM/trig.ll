; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/08-main/trig.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/08-main/trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HPointStruct = type { double, double, double, double }
%struct.ObjPointStruct = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [30 x i8] c" [[ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f]]\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @MultMatrixMatrix([4 x [4 x double]]* noundef %0, [4 x [4 x double]]* noundef %1, [4 x [4 x double]]* noundef %2) #0 {
  %4 = alloca [4 x [4 x double]]*, align 8
  %5 = alloca [4 x [4 x double]]*, align 8
  %6 = alloca [4 x [4 x double]]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [4 x [4 x double]]* %0, [4 x [4 x double]]** %4, align 8
  store [4 x [4 x double]]* %1, [4 x [4 x double]]** %5, align 8
  store [4 x [4 x double]]* %2, [4 x [4 x double]]** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %62, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %58, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load [4 x [4 x double]]*, [4 x [4 x double]]** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 %20
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x double], [4 x double]* %21, i64 0, i64 %23
  store double 0.000000e+00, double* %24, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %54, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %29, i64 0, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x double], [4 x double]* %32, i64 0, i64 %34
  %36 = load double, double* %35, align 8
  %37 = load [4 x [4 x double]]*, [4 x [4 x double]]** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %37, i64 0, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x double], [4 x double]* %40, i64 0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load [4 x [4 x double]]*, [4 x [4 x double]]** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %45, i64 0, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x double], [4 x double]* %48, i64 0, i64 %50
  %52 = load double, double* %51, align 8
  %53 = call double @llvm.fmuladd.f64(double %36, double %44, double %52)
  store double %53, double* %51, align 8
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %25, !llvm.loop !4

57:                                               ; preds = %25
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %14, !llvm.loop !6

61:                                               ; preds = %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %10, !llvm.loop !7

65:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @MultMatrixHPoint(%struct.HPointStruct* noalias sret(%struct.HPointStruct) align 8 %0, [4 x [4 x double]]* noundef %1, %struct.HPointStruct* noundef byval(%struct.HPointStruct) align 8 %2) #0 {
  %4 = alloca [4 x [4 x double]]*, align 8
  store [4 x [4 x double]]* %1, [4 x [4 x double]]** %4, align 8
  %5 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %8 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0
  %9 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 0, i64 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %14 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %13, i64 0, i64 0
  %15 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  %16 = load double, double* %15, align 8
  %17 = fmul double %12, %16
  %18 = call double @llvm.fmuladd.f64(double %6, double %10, double %17)
  %19 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %20 = load double, double* %19, align 8
  %21 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %22 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %21, i64 0, i64 0
  %23 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 2
  %24 = load double, double* %23, align 8
  %25 = call double @llvm.fmuladd.f64(double %20, double %24, double %18)
  %26 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %27 = load double, double* %26, align 8
  %28 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %29 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %28, i64 0, i64 0
  %30 = getelementptr inbounds [4 x double], [4 x double]* %29, i64 0, i64 3
  %31 = load double, double* %30, align 8
  %32 = call double @llvm.fmuladd.f64(double %27, double %31, double %25)
  %33 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 0
  store double %32, double* %33, align 8
  %34 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %37 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %36, i64 0, i64 1
  %38 = getelementptr inbounds [4 x double], [4 x double]* %37, i64 0, i64 0
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %43 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %42, i64 0, i64 1
  %44 = getelementptr inbounds [4 x double], [4 x double]* %43, i64 0, i64 1
  %45 = load double, double* %44, align 8
  %46 = fmul double %41, %45
  %47 = call double @llvm.fmuladd.f64(double %35, double %39, double %46)
  %48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %51 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %50, i64 0, i64 1
  %52 = getelementptr inbounds [4 x double], [4 x double]* %51, i64 0, i64 2
  %53 = load double, double* %52, align 8
  %54 = call double @llvm.fmuladd.f64(double %49, double %53, double %47)
  %55 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %56 = load double, double* %55, align 8
  %57 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %58 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %57, i64 0, i64 1
  %59 = getelementptr inbounds [4 x double], [4 x double]* %58, i64 0, i64 3
  %60 = load double, double* %59, align 8
  %61 = call double @llvm.fmuladd.f64(double %56, double %60, double %54)
  %62 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 1
  store double %61, double* %62, align 8
  %63 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %66 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %65, i64 0, i64 2
  %67 = getelementptr inbounds [4 x double], [4 x double]* %66, i64 0, i64 0
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %72 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %71, i64 0, i64 2
  %73 = getelementptr inbounds [4 x double], [4 x double]* %72, i64 0, i64 1
  %74 = load double, double* %73, align 8
  %75 = fmul double %70, %74
  %76 = call double @llvm.fmuladd.f64(double %64, double %68, double %75)
  %77 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %78 = load double, double* %77, align 8
  %79 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %80 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %79, i64 0, i64 2
  %81 = getelementptr inbounds [4 x double], [4 x double]* %80, i64 0, i64 2
  %82 = load double, double* %81, align 8
  %83 = call double @llvm.fmuladd.f64(double %78, double %82, double %76)
  %84 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %85 = load double, double* %84, align 8
  %86 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %87 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %86, i64 0, i64 2
  %88 = getelementptr inbounds [4 x double], [4 x double]* %87, i64 0, i64 3
  %89 = load double, double* %88, align 8
  %90 = call double @llvm.fmuladd.f64(double %85, double %89, double %83)
  %91 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 2
  store double %90, double* %91, align 8
  %92 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %95 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %94, i64 0, i64 3
  %96 = getelementptr inbounds [4 x double], [4 x double]* %95, i64 0, i64 0
  %97 = load double, double* %96, align 8
  %98 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %101 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %100, i64 0, i64 3
  %102 = getelementptr inbounds [4 x double], [4 x double]* %101, i64 0, i64 1
  %103 = load double, double* %102, align 8
  %104 = fmul double %99, %103
  %105 = call double @llvm.fmuladd.f64(double %93, double %97, double %104)
  %106 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %107 = load double, double* %106, align 8
  %108 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %109 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %108, i64 0, i64 3
  %110 = getelementptr inbounds [4 x double], [4 x double]* %109, i64 0, i64 2
  %111 = load double, double* %110, align 8
  %112 = call double @llvm.fmuladd.f64(double %107, double %111, double %105)
  %113 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %114 = load double, double* %113, align 8
  %115 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %116 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %115, i64 0, i64 3
  %117 = getelementptr inbounds [4 x double], [4 x double]* %116, i64 0, i64 3
  %118 = load double, double* %117, align 8
  %119 = call double @llvm.fmuladd.f64(double %114, double %118, double %112)
  %120 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 3
  store double %119, double* %120, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* noundef %0) #0 {
  %2 = alloca [4 x [4 x double]]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x [4 x double]]*, align 8
  store [4 x [4 x double]]* %0, [4 x [4 x double]]** %2, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %5, align 8
  %6 = load [4 x [4 x double]]*, [4 x [4 x double]]** %2, align 8
  %7 = icmp ne [4 x [4 x double]]* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = call noalias i8* @malloc(i64 noundef 128) #6
  %10 = bitcast i8* %9 to [4 x [4 x double]]*
  store [4 x [4 x double]]* %10, [4 x [4 x double]]** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %38, %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load [4 x [4 x double]]*, [4 x [4 x double]]** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %19, i64 0, i64 %21
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load [4 x [4 x double]]*, [4 x [4 x double]]** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %27, i64 0, i64 %29
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x double], [4 x double]* %30, i64 0, i64 %32
  store double %26, double* %33, align 8
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %15, !llvm.loop !8

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %11, !llvm.loop !9

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41, %1
  %43 = load [4 x [4 x double]]*, [4 x [4 x double]]** %5, align 8
  ret [4 x [4 x double]]* %43
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @IdentMatrix() #0 {
  %1 = alloca [4 x [4 x double]], align 16
  %2 = alloca [4 x [4 x double]]*, align 8
  %3 = bitcast [4 x [4 x double]]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 128, i1 false)
  %4 = bitcast i8* %3 to [4 x [4 x double]]*
  %5 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 0
  %6 = getelementptr inbounds [4 x double], [4 x double]* %5, i32 0, i32 0
  store double 1.000000e+00, double* %6, align 16
  %7 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 1
  %8 = getelementptr inbounds [4 x double], [4 x double]* %7, i32 0, i32 1
  store double 1.000000e+00, double* %8, align 8
  %9 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 2
  %10 = getelementptr inbounds [4 x double], [4 x double]* %9, i32 0, i32 2
  store double 1.000000e+00, double* %10, align 16
  %11 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 3
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i32 0, i32 3
  store double 1.000000e+00, double* %12, align 8
  %13 = call noalias i8* @malloc(i64 noundef 128) #6
  %14 = bitcast i8* %13 to [4 x [4 x double]]*
  store [4 x [4 x double]]* %14, [4 x [4 x double]]** %2, align 8
  %15 = call [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* noundef %1)
  store [4 x [4 x double]]* %15, [4 x [4 x double]]** %2, align 8
  %16 = load [4 x [4 x double]]*, [4 x [4 x double]]** %2, align 8
  ret [4 x [4 x double]]* %16
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @TranslateMatrix(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x [4 x double]]*, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %8, [4 x [4 x double]]** %7, align 8
  %9 = load double, double* %4, align 8
  %10 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %11 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 3
  store double %9, double* %12, align 8
  %13 = load double, double* %5, align 8
  %14 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %15 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %14, i64 0, i64 1
  %16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 3
  store double %13, double* %16, align 8
  %17 = load double, double* %6, align 8
  %18 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 2
  %20 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 3
  store double %17, double* %20, align 8
  %21 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  ret [4 x [4 x double]]* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @RotateMatrix(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x [4 x double]]*, align 8
  %8 = alloca [4 x [4 x double]]*, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca [4 x [4 x double]]*, align 8
  %11 = alloca [4 x [4 x double]]*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %18 = load double, double* %4, align 8
  %19 = fmul double 0x3F91DF46A2529E84, %18
  %20 = call double @cos(double noundef %19) #6
  store double %20, double* %12, align 8
  %21 = load double, double* %4, align 8
  %22 = fmul double 0x3F91DF46A2529E84, %21
  %23 = call double @sin(double noundef %22) #6
  store double %23, double* %13, align 8
  %24 = load double, double* %5, align 8
  %25 = fmul double 0x3F91DF46A2529E84, %24
  %26 = call double @cos(double noundef %25) #6
  store double %26, double* %14, align 8
  %27 = load double, double* %5, align 8
  %28 = fmul double 0x3F91DF46A2529E84, %27
  %29 = call double @sin(double noundef %28) #6
  store double %29, double* %15, align 8
  %30 = load double, double* %6, align 8
  %31 = fmul double 0x3F91DF46A2529E84, %30
  %32 = call double @cos(double noundef %31) #6
  store double %32, double* %16, align 8
  %33 = load double, double* %6, align 8
  %34 = fmul double 0x3F91DF46A2529E84, %33
  %35 = call double @sin(double noundef %34) #6
  store double %35, double* %17, align 8
  %36 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %36, [4 x [4 x double]]** %7, align 8
  %37 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %37, [4 x [4 x double]]** %8, align 8
  %38 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %38, [4 x [4 x double]]** %9, align 8
  %39 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %39, [4 x [4 x double]]** %10, align 8
  %40 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %40, [4 x [4 x double]]** %11, align 8
  %41 = load double, double* %12, align 8
  %42 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %43 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %42, i64 0, i64 1
  %44 = getelementptr inbounds [4 x double], [4 x double]* %43, i64 0, i64 1
  store double %41, double* %44, align 8
  %45 = load double, double* %13, align 8
  %46 = fneg double %45
  %47 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %48 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %47, i64 0, i64 1
  %49 = getelementptr inbounds [4 x double], [4 x double]* %48, i64 0, i64 2
  store double %46, double* %49, align 8
  %50 = load double, double* %13, align 8
  %51 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %51, i64 0, i64 2
  %53 = getelementptr inbounds [4 x double], [4 x double]* %52, i64 0, i64 1
  store double %50, double* %53, align 8
  %54 = load double, double* %12, align 8
  %55 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %56 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %55, i64 0, i64 2
  %57 = getelementptr inbounds [4 x double], [4 x double]* %56, i64 0, i64 2
  store double %54, double* %57, align 8
  %58 = load double, double* %14, align 8
  %59 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %60 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %59, i64 0, i64 0
  %61 = getelementptr inbounds [4 x double], [4 x double]* %60, i64 0, i64 0
  store double %58, double* %61, align 8
  %62 = load double, double* %15, align 8
  %63 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %64 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %63, i64 0, i64 0
  %65 = getelementptr inbounds [4 x double], [4 x double]* %64, i64 0, i64 2
  store double %62, double* %65, align 8
  %66 = load double, double* %15, align 8
  %67 = fneg double %66
  %68 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %69 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %68, i64 0, i64 2
  %70 = getelementptr inbounds [4 x double], [4 x double]* %69, i64 0, i64 0
  store double %67, double* %70, align 8
  %71 = load double, double* %14, align 8
  %72 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %73 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %72, i64 0, i64 2
  %74 = getelementptr inbounds [4 x double], [4 x double]* %73, i64 0, i64 2
  store double %71, double* %74, align 8
  %75 = load double, double* %16, align 8
  %76 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %77 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %76, i64 0, i64 0
  %78 = getelementptr inbounds [4 x double], [4 x double]* %77, i64 0, i64 0
  store double %75, double* %78, align 8
  %79 = load double, double* %17, align 8
  %80 = fneg double %79
  %81 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %82 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %81, i64 0, i64 0
  %83 = getelementptr inbounds [4 x double], [4 x double]* %82, i64 0, i64 1
  store double %80, double* %83, align 8
  %84 = load double, double* %17, align 8
  %85 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %86 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %85, i64 0, i64 1
  %87 = getelementptr inbounds [4 x double], [4 x double]* %86, i64 0, i64 0
  store double %84, double* %87, align 8
  %88 = load double, double* %16, align 8
  %89 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %90 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %89, i64 0, i64 1
  %91 = getelementptr inbounds [4 x double], [4 x double]* %90, i64 0, i64 1
  store double %88, double* %91, align 8
  %92 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %93 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %94 = load [4 x [4 x double]]*, [4 x [4 x double]]** %10, align 8
  call void @MultMatrixMatrix([4 x [4 x double]]* noundef %92, [4 x [4 x double]]* noundef %93, [4 x [4 x double]]* noundef %94)
  %95 = load [4 x [4 x double]]*, [4 x [4 x double]]** %10, align 8
  %96 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %97 = load [4 x [4 x double]]*, [4 x [4 x double]]** %11, align 8
  call void @MultMatrixMatrix([4 x [4 x double]]* noundef %95, [4 x [4 x double]]* noundef %96, [4 x [4 x double]]* noundef %97)
  %98 = load [4 x [4 x double]]*, [4 x [4 x double]]** %11, align 8
  ret [4 x [4 x double]]* %98
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @ScaleMatrix(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x [4 x double]]*, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %8, [4 x [4 x double]]** %7, align 8
  %9 = load double, double* %4, align 8
  %10 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %11 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  store double %9, double* %12, align 8
  %13 = load double, double* %5, align 8
  %14 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %15 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %14, i64 0, i64 1
  %16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 1
  store double %13, double* %16, align 8
  %17 = load double, double* %6, align 8
  %18 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 2
  %20 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 2
  store double %17, double* %20, align 8
  %21 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  ret [4 x [4 x double]]* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RotatePoint(%struct.ObjPointStruct* noalias sret(%struct.ObjPointStruct) align 8 %0, %struct.ObjPointStruct* noundef byval(%struct.ObjPointStruct) align 8 %1, double noundef %2, double noundef %3, double noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.HPointStruct, align 8
  %12 = alloca %struct.HPointStruct, align 8
  store double %2, double* %6, align 8
  store double %3, double* %7, align 8
  store double %4, double* %8, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret(%struct.HPointStruct) align 8 %11, %struct.ObjPointStruct* noundef byval(%struct.ObjPointStruct) align 8 %1)
  %13 = bitcast %struct.HPointStruct* %10 to i8*
  %14 = bitcast %struct.HPointStruct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false)
  %15 = load double, double* %6, align 8
  %16 = load double, double* %7, align 8
  %17 = load double, double* %8, align 8
  %18 = call [4 x [4 x double]]* @RotateMatrix(double noundef %15, double noundef %16, double noundef %17)
  store [4 x [4 x double]]* %18, [4 x [4 x double]]** %9, align 8
  %19 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret(%struct.HPointStruct) align 8 %12, [4 x [4 x double]]* noundef %19, %struct.HPointStruct* noundef byval(%struct.HPointStruct) align 8 %10)
  %20 = bitcast %struct.HPointStruct* %10 to i8*
  %21 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  %22 = bitcast %struct.ObjPointStruct* %0 to i8*
  %23 = bitcast %struct.ObjPointStruct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 48, i1 false)
  ret void
}

declare dso_local void @PointToHPoint(%struct.HPointStruct* sret(%struct.HPointStruct) align 8, %struct.ObjPointStruct* noundef byval(%struct.ObjPointStruct) align 8) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintMatrix([4 x double]* noundef %0) #0 {
  %2 = alloca [4 x double]*, align 8
  store [4 x double]* %0, [4 x double]** %2, align 8
  %3 = load [4 x double]*, [4 x double]** %2, align 8
  %4 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0
  %5 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %6 = load double, double* %5, align 8
  %7 = load [4 x double]*, [4 x double]** %2, align 8
  %8 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0
  %9 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 0, i64 1
  %10 = load double, double* %9, align 8
  %11 = load [4 x double]*, [4 x double]** %2, align 8
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0
  %13 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  %14 = load double, double* %13, align 8
  %15 = load [4 x double]*, [4 x double]** %2, align 8
  %16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0
  %17 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 0, i64 3
  %18 = load double, double* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), double noundef %6, double noundef %10, double noundef %14, double noundef %18)
  %20 = load [4 x double]*, [4 x double]** %2, align 8
  %21 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 1
  %22 = getelementptr inbounds [4 x double], [4 x double]* %21, i64 0, i64 0
  %23 = load double, double* %22, align 8
  %24 = load [4 x double]*, [4 x double]** %2, align 8
  %25 = getelementptr inbounds [4 x double], [4 x double]* %24, i64 1
  %26 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 1
  %27 = load double, double* %26, align 8
  %28 = load [4 x double]*, [4 x double]** %2, align 8
  %29 = getelementptr inbounds [4 x double], [4 x double]* %28, i64 1
  %30 = getelementptr inbounds [4 x double], [4 x double]* %29, i64 0, i64 2
  %31 = load double, double* %30, align 8
  %32 = load [4 x double]*, [4 x double]** %2, align 8
  %33 = getelementptr inbounds [4 x double], [4 x double]* %32, i64 1
  %34 = getelementptr inbounds [4 x double], [4 x double]* %33, i64 0, i64 3
  %35 = load double, double* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double noundef %23, double noundef %27, double noundef %31, double noundef %35)
  %37 = load [4 x double]*, [4 x double]** %2, align 8
  %38 = getelementptr inbounds [4 x double], [4 x double]* %37, i64 2
  %39 = getelementptr inbounds [4 x double], [4 x double]* %38, i64 0, i64 0
  %40 = load double, double* %39, align 8
  %41 = load [4 x double]*, [4 x double]** %2, align 8
  %42 = getelementptr inbounds [4 x double], [4 x double]* %41, i64 2
  %43 = getelementptr inbounds [4 x double], [4 x double]* %42, i64 0, i64 1
  %44 = load double, double* %43, align 8
  %45 = load [4 x double]*, [4 x double]** %2, align 8
  %46 = getelementptr inbounds [4 x double], [4 x double]* %45, i64 2
  %47 = getelementptr inbounds [4 x double], [4 x double]* %46, i64 0, i64 2
  %48 = load double, double* %47, align 8
  %49 = load [4 x double]*, [4 x double]** %2, align 8
  %50 = getelementptr inbounds [4 x double], [4 x double]* %49, i64 2
  %51 = getelementptr inbounds [4 x double], [4 x double]* %50, i64 0, i64 3
  %52 = load double, double* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double noundef %40, double noundef %44, double noundef %48, double noundef %52)
  %54 = load [4 x double]*, [4 x double]** %2, align 8
  %55 = getelementptr inbounds [4 x double], [4 x double]* %54, i64 3
  %56 = getelementptr inbounds [4 x double], [4 x double]* %55, i64 0, i64 0
  %57 = load double, double* %56, align 8
  %58 = load [4 x double]*, [4 x double]** %2, align 8
  %59 = getelementptr inbounds [4 x double], [4 x double]* %58, i64 3
  %60 = getelementptr inbounds [4 x double], [4 x double]* %59, i64 0, i64 1
  %61 = load double, double* %60, align 8
  %62 = load [4 x double]*, [4 x double]** %2, align 8
  %63 = getelementptr inbounds [4 x double], [4 x double]* %62, i64 3
  %64 = getelementptr inbounds [4 x double], [4 x double]* %63, i64 0, i64 2
  %65 = load double, double* %64, align 8
  %66 = load [4 x double]*, [4 x double]** %2, align 8
  %67 = getelementptr inbounds [4 x double], [4 x double]* %66, i64 3
  %68 = getelementptr inbounds [4 x double], [4 x double]* %67, i64 0, i64 3
  %69 = load double, double* %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), double noundef %57, double noundef %61, double noundef %65, double noundef %69)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
