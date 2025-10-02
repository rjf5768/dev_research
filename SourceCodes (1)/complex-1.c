; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @g0(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  ret double 1.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @g1(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  ret double -1.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @g2(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @xcexp(double noundef %0, double noundef %1) #0 {
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca double, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %0, double* %6, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %1, double* %7, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = call double @g0(double noundef %9)
  store double %10, double* %5, align 8
  %11 = load double, double* %5, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = call double @g1(double noundef %13)
  %15 = fmul double %11, %14
  %16 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %15, double* %16, align 8
  %17 = load double, double* %5, align 8
  %18 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = call double @g2(double noundef %19)
  %21 = fmul double %17, %20
  %22 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %21, double* %22, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %28 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %24, double* %27, align 8
  store double %26, double* %28, align 8
  %29 = load { double, double }, { double, double }* %3, align 8
  ret { double, double } %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { double, double }, align 8
  %3 = alloca { double, double }, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double 0.000000e+00, double* %4, align 8
  store double 1.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = call { double, double } @xcexp(double noundef %7, double noundef %9)
  %11 = extractvalue { double, double } %10, 0
  %12 = extractvalue { double, double } %10, 1
  %13 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %14 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double %11, double* %13, align 8
  store double %12, double* %14, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fcmp une double %16, -1.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  call void @abort() #2
  unreachable

19:                                               ; preds = %0
  %20 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @abort() #2
  unreachable

24:                                               ; preds = %19
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
