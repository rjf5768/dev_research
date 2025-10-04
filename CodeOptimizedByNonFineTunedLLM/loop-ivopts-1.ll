; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-ivopts-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-ivopts-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo.t16 = internal global [16 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16
@foo.tmp = internal global [4 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x float], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  call void @foo(float* noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(float* noundef %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store float* %0, float** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 3, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 5, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x float], [16 x float]* @foo.t16, i64 0, i64 %15
  %17 = load float, float* %16, align 4
  store float %17, float* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %36, %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x float], [16 x float]* @foo.t16, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float, float* %6, align 4
  %32 = fmul float %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x float], [4 x float]* @foo.tmp, i64 0, i64 %34
  store float %32, float* %35, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %20, !llvm.loop !4

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %7, !llvm.loop !6

43:                                               ; preds = %7
  %44 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 0), align 16
  %45 = load float*, float** %2, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  store float %44, float* %46, align 4
  %47 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 1), align 4
  %48 = load float*, float** %2, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  store float %47, float* %49, align 4
  %50 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 2), align 8
  %51 = load float*, float** %2, align 8
  %52 = getelementptr inbounds float, float* %51, i64 2
  store float %50, float* %52, align 4
  %53 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 3), align 4
  %54 = load float*, float** %2, align 8
  %55 = getelementptr inbounds float, float* %54, i64 3
  store float %53, float* %55, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
