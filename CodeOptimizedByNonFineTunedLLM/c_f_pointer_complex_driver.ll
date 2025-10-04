; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_complex_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_complex_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca { float, float }, align 4
  %7 = alloca { double, double }, align 8
  %8 = alloca { x86_fp80, x86_fp80 }, align 16
  %9 = alloca [10 x { float, float }], align 16
  %10 = alloca [10 x { double, double }], align 16
  %11 = alloca [10 x { x86_fp80, x86_fp80 }], align 16
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 0
  %14 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 1
  store float 1.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  %15 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %16 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double 2.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  %17 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %8, i32 0, i32 0
  %18 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %8, i32 0, i32 1
  store x86_fp80 0xK4000C000000000000000, x86_fp80* %17, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %18, align 16
  call void @test_complex_scalars({ float, float }* noundef %6, { double, double }* noundef %7, { x86_fp80, x86_fp80 }* noundef %8)
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %55, %2
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 1
  %25 = sitofp i32 %24 to double
  %26 = fmul double 1.000000e+00, %25
  %27 = fadd double %26, 0.000000e+00
  %28 = fptrunc double %27 to float
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x { float, float }], [10 x { float, float }]* %9, i64 0, i64 %30
  %32 = getelementptr inbounds { float, float }, { float, float }* %31, i32 0, i32 0
  %33 = getelementptr inbounds { float, float }, { float, float }* %31, i32 0, i32 1
  store float %28, float* %32, align 8
  store float 0.000000e+00, float* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = sitofp i32 %35 to double
  %37 = fmul double 1.000000e+00, %36
  %38 = fadd double %37, 0.000000e+00
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x { double, double }], [10 x { double, double }]* %10, i64 0, i64 %40
  %42 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 0
  %43 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 1
  store double %38, double* %42, align 16
  store double 0.000000e+00, double* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = sitofp i32 %45 to double
  %47 = fmul double 1.000000e+00, %46
  %48 = fadd double %47, 0.000000e+00
  %49 = fpext double %48 to x86_fp80
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x { x86_fp80, x86_fp80 }], [10 x { x86_fp80, x86_fp80 }]* %11, i64 0, i64 %51
  %53 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %52, i32 0, i32 0
  %54 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %52, i32 0, i32 1
  store x86_fp80 %49, x86_fp80* %53, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %54, align 16
  br label %55

55:                                               ; preds = %22
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %19, !llvm.loop !4

58:                                               ; preds = %19
  %59 = getelementptr inbounds [10 x { float, float }], [10 x { float, float }]* %9, i64 0, i64 0
  %60 = getelementptr inbounds [10 x { double, double }], [10 x { double, double }]* %10, i64 0, i64 0
  %61 = getelementptr inbounds [10 x { x86_fp80, x86_fp80 }], [10 x { x86_fp80, x86_fp80 }]* %11, i64 0, i64 0
  call void @test_complex_arrays({ float, float }* noundef %59, { double, double }* noundef %60, { x86_fp80, x86_fp80 }* noundef %61, i32 noundef 10)
  ret i32 0
}

declare dso_local void @test_complex_scalars({ float, float }* noundef, { double, double }* noundef, { x86_fp80, x86_fp80 }* noundef) #1

declare dso_local void @test_complex_arrays({ float, float }* noundef, { double, double }* noundef, { x86_fp80, x86_fp80 }* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
