; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/fp-convert.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/fp-convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Total is %g\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @loop(float* noundef %0, float* noundef %1, i64 noundef %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i64 %2, i64* %6, align 8
  store double 0.000000e+00, double* %8, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load float*, float** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds float, float* %14, i64 %15
  %17 = load float, float* %16, align 4
  %18 = fpext float %17 to double
  %19 = load float*, float** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds float, float* %19, i64 %20
  %22 = load float, float* %21, align 4
  %23 = fpext float %22 to double
  %24 = load double, double* %8, align 8
  %25 = call double @llvm.fmuladd.f64(double %18, double %23, double %24)
  store double %25, double* %8, align 8
  br label %26

26:                                               ; preds = %13
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %9, !llvm.loop !4

29:                                               ; preds = %9
  %30 = load double, double* %8, align 8
  ret double %30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2048 x float], align 16
  %9 = alloca [2048 x float], align 16
  %10 = alloca double, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %10, align 8
  store float 0.000000e+00, float* %11, align 4
  store float 1.000000e+00, float* %12, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %54, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 500000
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = srem i32 %17, 10
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store float 0.000000e+00, float* %11, align 4
  store float 1.000000e+00, float* %12, align 4
  br label %26

21:                                               ; preds = %16
  %22 = load float, float* %11, align 4
  %23 = fadd float %22, 0x3FB99999A0000000
  store float %23, float* %11, align 4
  %24 = load float, float* %12, align 4
  %25 = fadd float %24, 0x3FC99999A0000000
  store float %25, float* %12, align 4
  br label %26

26:                                               ; preds = %21, %20
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 2048
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load float, float* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sitofp i32 %32 to float
  %34 = fadd float %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2048 x float], [2048 x float]* %8, i64 0, i64 %36
  store float %34, float* %37, align 4
  %38 = load float, float* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sitofp i32 %39 to float
  %41 = fadd float %38, %40
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2048 x float], [2048 x float]* %9, i64 0, i64 %43
  store float %41, float* %44, align 4
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %27, !llvm.loop !6

48:                                               ; preds = %27
  %49 = getelementptr inbounds [2048 x float], [2048 x float]* %8, i64 0, i64 0
  %50 = getelementptr inbounds [2048 x float], [2048 x float]* %9, i64 0, i64 0
  %51 = call double @loop(float* noundef %49, float* noundef %50, i64 noundef 2048)
  %52 = load double, double* %10, align 8
  %53 = fadd double %52, %51
  store double %53, double* %10, align 8
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %13, !llvm.loop !7

57:                                               ; preds = %13
  %58 = load double, double* %10, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %58)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
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
!7 = distinct !{!7, !5}
