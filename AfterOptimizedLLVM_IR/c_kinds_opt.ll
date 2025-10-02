; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_kinds.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_kinds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca float, align 4
  %25 = alloca double, align 8
  %26 = alloca x86_fp80, align 16
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i16 1, i16* %6, align 2
  store i32 2, i32* %7, align 4
  store i64 3, i64* %8, align 8
  store i64 4, i64* %9, align 8
  store i8 1, i8* %10, align 1
  store i8 2, i8* %11, align 1
  store i8 3, i8* %12, align 1
  store i16 1, i16* %13, align 2
  store i16 2, i16* %14, align 2
  store i64 3, i64* %15, align 8
  store i32 1, i32* %16, align 4
  store i32 2, i32* %17, align 4
  store i64 3, i64* %18, align 8
  store i64 1, i64* %19, align 8
  store i64 2, i64* %20, align 8
  store i64 3, i64* %21, align 8
  store i64 1, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store float 1.000000e+00, float* %24, align 4
  store double 2.000000e+00, double* %25, align 8
  store x86_fp80 0xK4000C000000000000000, x86_fp80* %26, align 16
  store i8 121, i8* %27, align 1
  store i8 1, i8* %28, align 1
  %29 = load i16, i16* %6, align 2
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i8, i8* %10, align 1
  %34 = load i8, i8* %11, align 1
  %35 = load i8, i8* %12, align 1
  %36 = load i16, i16* %13, align 2
  %37 = load i16, i16* %14, align 2
  %38 = load i64, i64* %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i64, i64* %18, align 8
  %42 = load i64, i64* %19, align 8
  %43 = load i64, i64* %20, align 8
  %44 = load i64, i64* %21, align 8
  %45 = load i64, i64* %22, align 8
  %46 = load i64, i64* %23, align 8
  %47 = load float, float* %24, align 4
  %48 = load double, double* %25, align 8
  %49 = load x86_fp80, x86_fp80* %26, align 16
  %50 = load i8, i8* %27, align 1
  %51 = load i8, i8* %28, align 1
  %52 = trunc i8 %51 to i1
  call void @param_test(i16 noundef signext %29, i32 noundef %30, i64 noundef %31, i64 noundef %32, i8 noundef signext %33, i8 noundef signext %34, i8 noundef signext %35, i16 noundef signext %36, i16 noundef signext %37, i64 noundef %38, i32 noundef %39, i32 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44, i64 noundef %45, i64 noundef %46, float noundef %47, double noundef %48, x86_fp80 noundef %49, i8 noundef signext %50, i1 noundef zeroext %52)
  ret i32 0
}

declare dso_local void @param_test(i16 noundef signext, i32 noundef, i64 noundef, i64 noundef, i8 noundef signext, i8 noundef signext, i8 noundef signext, i16 noundef signext, i16 noundef signext, i64 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, float noundef, double noundef, x86_fp80 noundef, i8 noundef signext, i1 noundef zeroext) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
