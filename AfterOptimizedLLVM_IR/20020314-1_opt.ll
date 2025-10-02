; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020314-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020314-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i8* noundef %0, double noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @g(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %13 = load double, double* %5, align 8
  %14 = load double, double* %6, align 8
  %15 = fadd double %13, %14
  store double %15, double* %9, align 8
  %16 = load double, double* %7, align 8
  %17 = load double, double* %8, align 8
  %18 = fmul double %16, %17
  store double %18, double* %10, align 8
  %19 = alloca i8, i64 16, align 16
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load double, double* %10, align 8
  call void @f(i8* noundef %20, double noundef %21)
  %22 = load double, double* %9, align 8
  %23 = load double, double* %10, align 8
  %24 = fmul double %22, %23
  %25 = load double, double* %5, align 8
  %26 = fmul double %24, %25
  store double %26, double* %11, align 8
  %27 = load double, double* %11, align 8
  %28 = load double, double* %6, align 8
  %29 = fadd double %27, %28
  ret double %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store double 1.000000e+01, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %6 = load double, double* %2, align 8
  %7 = load double, double* %3, align 8
  %8 = load double, double* %4, align 8
  %9 = load double, double* %5, align 8
  %10 = call double @g(double noundef %6, double noundef %7, double noundef %8, double noundef %9)
  %11 = fcmp une double %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @abort() #2
  unreachable

13:                                               ; preds = %0
  %14 = load double, double* %2, align 8
  %15 = fcmp une double %14, 1.000000e+00
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load double, double* %3, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load double, double* %4, align 8
  %21 = fcmp une double %20, 1.000000e+01
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load double, double* %5, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %13
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
