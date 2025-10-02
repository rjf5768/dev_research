; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ag = dso_local global { double, double } { double 1.000000e+00, double 1.000000e+00 }, align 8
@bg = dso_local global { double, double } { double -2.000000e+00, double 2.000000e+00 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @f(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca { double, double }, align 8
  %6 = alloca { double, double }, align 8
  %7 = alloca { double, double }, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  store double %0, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double %1, double* %9, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %2, double* %10, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %3, double* %11, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = fadd double %17, %13
  %21 = fadd double %19, %15
  %22 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %23 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double %20, double* %22, align 8
  store double %21, double* %23, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %29 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %25, double* %28, align 8
  store double %27, double* %29, align 8
  %30 = load { double, double }, { double, double }* %5, align 8
  ret { double, double } %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { double, double }, align 8
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  %6 = alloca { double, double }, align 8
  store i32 0, i32* %1, align 4
  %7 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @ag, i32 0, i32 0), align 8
  %8 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @ag, i32 0, i32 1), align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %10 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double %7, double* %9, align 8
  store double %8, double* %10, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %12 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double -2.000000e+00, double* %11, align 8
  store double 2.000000e+00, double* %12, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %22 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %14, double* %21, align 8
  store double %16, double* %22, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %28 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double %18, double* %27, align 8
  store double %20, double* %28, align 8
  %29 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = call { double, double } @f(double noundef %24, double noundef %26, double noundef %30, double noundef %32)
  %34 = extractvalue { double, double } %33, 0
  %35 = extractvalue { double, double } %33, 1
  %36 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %37 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %34, double* %36, align 8
  store double %35, double* %37, align 8
  %38 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fcmp une double %39, 1.000000e+00
  %43 = fcmp une double %41, 1.000000e+00
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %0
  call void @abort() #2
  unreachable

46:                                               ; preds = %0
  %47 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fcmp une double %48, -2.000000e+00
  %52 = fcmp une double %50, 2.000000e+00
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  call void @abort() #2
  unreachable

55:                                               ; preds = %46
  %56 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = fcmp une double %57, -1.000000e+00
  %61 = fcmp une double %59, 3.000000e+00
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  call void @abort() #2
  unreachable

64:                                               ; preds = %55
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
