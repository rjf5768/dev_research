; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/build2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/build2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test0001(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca <4 x float>, align 16
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = insertelement <4 x float> undef, float %4, i32 0
  %6 = insertelement <4 x float> %5, float 0.000000e+00, i32 1
  %7 = insertelement <4 x float> %6, float 0.000000e+00, i32 2
  %8 = insertelement <4 x float> %7, float 0.000000e+00, i32 3
  store <4 x float> %8, <4 x float>* %3, align 16
  %9 = load <4 x float>, <4 x float>* %3, align 16
  ret <4 x float> %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test0010(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca <4 x float>, align 16
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %4, i32 1
  %6 = insertelement <4 x float> %5, float 0.000000e+00, i32 2
  %7 = insertelement <4 x float> %6, float 0.000000e+00, i32 3
  store <4 x float> %7, <4 x float>* %3, align 16
  %8 = load <4 x float>, <4 x float>* %3, align 16
  ret <4 x float> %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test0100(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca <4 x float>, align 16
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, float %4, i32 2
  %6 = insertelement <4 x float> %5, float 0.000000e+00, i32 3
  store <4 x float> %6, <4 x float>* %3, align 16
  %7 = load <4 x float>, <4 x float>* %3, align 16
  ret <4 x float> %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test1000(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca <4 x float>, align 16
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef>, float %4, i32 3
  store <4 x float> %5, <4 x float>* %3, align 16
  %6 = load <4 x float>, <4 x float>* %3, align 16
  ret <4 x float> %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test0011(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca <4 x float>, align 16
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = insertelement <4 x float> undef, float %6, i32 0
  %8 = load float, float* %4, align 4
  %9 = insertelement <4 x float> %7, float %8, i32 1
  %10 = insertelement <4 x float> %9, float 0.000000e+00, i32 2
  %11 = insertelement <4 x float> %10, float 0.000000e+00, i32 3
  store <4 x float> %11, <4 x float>* %5, align 16
  %12 = load <4 x float>, <4 x float>* %5, align 16
  ret <4 x float> %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test0101(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca <4 x float>, align 16
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = insertelement <4 x float> undef, float %6, i32 0
  %8 = insertelement <4 x float> %7, float 0.000000e+00, i32 1
  %9 = load float, float* %4, align 4
  %10 = insertelement <4 x float> %8, float %9, i32 2
  %11 = insertelement <4 x float> %10, float 0.000000e+00, i32 3
  store <4 x float> %11, <4 x float>* %5, align 16
  %12 = load <4 x float>, <4 x float>* %5, align 16
  ret <4 x float> %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test1001(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca <4 x float>, align 16
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = insertelement <4 x float> undef, float %6, i32 0
  %8 = insertelement <4 x float> %7, float 0.000000e+00, i32 1
  %9 = insertelement <4 x float> %8, float 0.000000e+00, i32 2
  %10 = load float, float* %4, align 4
  %11 = insertelement <4 x float> %9, float %10, i32 3
  store <4 x float> %11, <4 x float>* %5, align 16
  %12 = load <4 x float>, <4 x float>* %5, align 16
  ret <4 x float> %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test0110(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca <4 x float>, align 16
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %6, i32 1
  %8 = load float, float* %4, align 4
  %9 = insertelement <4 x float> %7, float %8, i32 2
  %10 = insertelement <4 x float> %9, float 0.000000e+00, i32 3
  store <4 x float> %10, <4 x float>* %5, align 16
  %11 = load <4 x float>, <4 x float>* %5, align 16
  ret <4 x float> %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test1010(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca <4 x float>, align 16
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %6, i32 1
  %8 = insertelement <4 x float> %7, float 0.000000e+00, i32 2
  %9 = load float, float* %4, align 4
  %10 = insertelement <4 x float> %8, float %9, i32 3
  store <4 x float> %10, <4 x float>* %5, align 16
  %11 = load <4 x float>, <4 x float>* %5, align 16
  ret <4 x float> %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test1100(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca <4 x float>, align 16
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, float %6, i32 2
  %8 = load float, float* %4, align 4
  %9 = insertelement <4 x float> %7, float %8, i32 3
  store <4 x float> %9, <4 x float>* %5, align 16
  %10 = load <4 x float>, <4 x float>* %5, align 16
  ret <4 x float> %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test0111(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca <4 x float>, align 16
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load float, float* %4, align 4
  %9 = insertelement <4 x float> undef, float %8, i32 0
  %10 = load float, float* %5, align 4
  %11 = insertelement <4 x float> %9, float %10, i32 1
  %12 = load float, float* %6, align 4
  %13 = insertelement <4 x float> %11, float %12, i32 2
  %14 = insertelement <4 x float> %13, float 0.000000e+00, i32 3
  store <4 x float> %14, <4 x float>* %7, align 16
  %15 = load <4 x float>, <4 x float>* %7, align 16
  ret <4 x float> %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test1011(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca <4 x float>, align 16
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load float, float* %4, align 4
  %9 = insertelement <4 x float> undef, float %8, i32 0
  %10 = load float, float* %5, align 4
  %11 = insertelement <4 x float> %9, float %10, i32 1
  %12 = insertelement <4 x float> %11, float 0.000000e+00, i32 2
  %13 = load float, float* %6, align 4
  %14 = insertelement <4 x float> %12, float %13, i32 3
  store <4 x float> %14, <4 x float>* %7, align 16
  %15 = load <4 x float>, <4 x float>* %7, align 16
  ret <4 x float> %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test1101(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca <4 x float>, align 16
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load float, float* %4, align 4
  %9 = insertelement <4 x float> undef, float %8, i32 0
  %10 = insertelement <4 x float> %9, float 0.000000e+00, i32 1
  %11 = load float, float* %5, align 4
  %12 = insertelement <4 x float> %10, float %11, i32 2
  %13 = load float, float* %6, align 4
  %14 = insertelement <4 x float> %12, float %13, i32 3
  store <4 x float> %14, <4 x float>* %7, align 16
  %15 = load <4 x float>, <4 x float>* %7, align 16
  ret <4 x float> %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @test1110(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca <4 x float>, align 16
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load float, float* %4, align 4
  %9 = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %8, i32 1
  %10 = load float, float* %5, align 4
  %11 = insertelement <4 x float> %9, float %10, i32 2
  %12 = load float, float* %6, align 4
  %13 = insertelement <4 x float> %11, float %12, i32 3
  store <4 x float> %13, <4 x float>* %7, align 16
  %14 = load <4 x float>, <4 x float>* %7, align 16
  ret <4 x float> %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca <4 x float>, align 16
  %9 = alloca <4 x float>, align 16
  %10 = alloca <4 x float>, align 16
  %11 = alloca <4 x float>, align 16
  %12 = alloca <4 x float>, align 16
  %13 = alloca <4 x float>, align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store <4 x float> zeroinitializer, <4 x float>* %8, align 16
  store <4 x float> zeroinitializer, <4 x float>* %9, align 16
  store <4 x float> zeroinitializer, <4 x float>* %10, align 16
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %71, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  store <4 x float> zeroinitializer, <4 x float>* %11, align 16
  %18 = load <4 x float>, <4 x float>* %11, align 16
  store <4 x float> %18, <4 x float>* %8, align 16
  store <4 x float> zeroinitializer, <4 x float>* %12, align 16
  %19 = load <4 x float>, <4 x float>* %12, align 16
  store <4 x float> %19, <4 x float>* %9, align 16
  store <4 x float> zeroinitializer, <4 x float>* %13, align 16
  %20 = load <4 x float>, <4 x float>* %13, align 16
  store <4 x float> %20, <4 x float>* %10, align 16
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %67, %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 2000000
  br i1 %23, label %24, label %70

24:                                               ; preds = %21
  %25 = call <4 x float> @test0001(float noundef 1.000000e+00)
  %26 = load <4 x float>, <4 x float>* %8, align 16
  %27 = fadd <4 x float> %26, %25
  store <4 x float> %27, <4 x float>* %8, align 16
  %28 = call <4 x float> @test0010(float noundef 1.000000e+00)
  %29 = load <4 x float>, <4 x float>* %8, align 16
  %30 = fadd <4 x float> %29, %28
  store <4 x float> %30, <4 x float>* %8, align 16
  %31 = call <4 x float> @test0100(float noundef 1.000000e+00)
  %32 = load <4 x float>, <4 x float>* %8, align 16
  %33 = fadd <4 x float> %32, %31
  store <4 x float> %33, <4 x float>* %8, align 16
  %34 = call <4 x float> @test1000(float noundef 1.000000e+00)
  %35 = load <4 x float>, <4 x float>* %8, align 16
  %36 = fadd <4 x float> %35, %34
  store <4 x float> %36, <4 x float>* %8, align 16
  %37 = call <4 x float> @test0011(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %38 = load <4 x float>, <4 x float>* %9, align 16
  %39 = fadd <4 x float> %38, %37
  store <4 x float> %39, <4 x float>* %9, align 16
  %40 = call <4 x float> @test0101(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %41 = load <4 x float>, <4 x float>* %9, align 16
  %42 = fadd <4 x float> %41, %40
  store <4 x float> %42, <4 x float>* %9, align 16
  %43 = call <4 x float> @test1001(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %44 = load <4 x float>, <4 x float>* %9, align 16
  %45 = fadd <4 x float> %44, %43
  store <4 x float> %45, <4 x float>* %9, align 16
  %46 = call <4 x float> @test0110(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %47 = load <4 x float>, <4 x float>* %9, align 16
  %48 = fadd <4 x float> %47, %46
  store <4 x float> %48, <4 x float>* %9, align 16
  %49 = call <4 x float> @test1010(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %50 = load <4 x float>, <4 x float>* %9, align 16
  %51 = fadd <4 x float> %50, %49
  store <4 x float> %51, <4 x float>* %9, align 16
  %52 = call <4 x float> @test1100(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %53 = load <4 x float>, <4 x float>* %9, align 16
  %54 = fadd <4 x float> %53, %52
  store <4 x float> %54, <4 x float>* %9, align 16
  %55 = call <4 x float> @test0111(float noundef 2.000000e+00, float noundef 3.000000e+00, float noundef 1.000000e+00)
  %56 = load <4 x float>, <4 x float>* %10, align 16
  %57 = fadd <4 x float> %56, %55
  store <4 x float> %57, <4 x float>* %10, align 16
  %58 = call <4 x float> @test1011(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00)
  %59 = load <4 x float>, <4 x float>* %10, align 16
  %60 = fadd <4 x float> %59, %58
  store <4 x float> %60, <4 x float>* %10, align 16
  %61 = call <4 x float> @test1101(float noundef 3.000000e+00, float noundef 2.000000e+00, float noundef 4.000000e+00)
  %62 = load <4 x float>, <4 x float>* %10, align 16
  %63 = fadd <4 x float> %62, %61
  store <4 x float> %63, <4 x float>* %10, align 16
  %64 = call <4 x float> @test1110(float noundef 4.000000e+00, float noundef 6.000000e+00, float noundef 1.000000e+00)
  %65 = load <4 x float>, <4 x float>* %10, align 16
  %66 = fadd <4 x float> %65, %64
  store <4 x float> %66, <4 x float>* %10, align 16
  br label %67

67:                                               ; preds = %24
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %21, !llvm.loop !4

70:                                               ; preds = %21
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %14, !llvm.loop !6

74:                                               ; preds = %14
  %75 = bitcast <4 x float>* %8 to %union.FV*
  call void @printFV(%union.FV* noundef %75)
  %76 = bitcast <4 x float>* %9 to %union.FV*
  call void @printFV(%union.FV* noundef %76)
  %77 = bitcast <4 x float>* %10 to %union.FV*
  call void @printFV(%union.FV* noundef %77)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printFV(%union.FV* noundef %0) #1 {
  %2 = alloca %union.FV*, align 8
  store %union.FV* %0, %union.FV** %2, align 8
  %3 = load %union.FV*, %union.FV** %2, align 8
  %4 = bitcast %union.FV* %3 to [4 x float]*
  %5 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %6 = load float, float* %5, align 16
  %7 = fpext float %6 to double
  %8 = load %union.FV*, %union.FV** %2, align 8
  %9 = bitcast %union.FV* %8 to [4 x float]*
  %10 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = load %union.FV*, %union.FV** %2, align 8
  %14 = bitcast %union.FV* %13 to [4 x float]*
  %15 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = load %union.FV*, %union.FV** %2, align 8
  %19 = bitcast %union.FV* %18 to [4 x float]*
  %20 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %7, double noundef %12, double noundef %17, double noundef %22)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
