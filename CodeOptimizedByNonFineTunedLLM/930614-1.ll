; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930614-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930614-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(double* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  store double* %0, double** %3, align 8
  %4 = load double*, double** %3, align 8
  store double -1.000000e+00, double* %4, align 8
  %5 = load i32, i32* %2, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x double], align 16
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %3, align 8
  %6 = call i32 @f(double* noundef %4)
  %7 = load double, double* %4, align 8
  %8 = fcmp olt double %7, 0.000000e+00
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load double, double* %4, align 8
  %11 = fneg double %10
  store double %11, double* %4, align 8
  br label %12

12:                                               ; preds = %9, %0
  %13 = load double, double* %3, align 8
  %14 = load double, double* %4, align 8
  %15 = fcmp ogt double %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load double, double* %3, align 8
  br label %20

18:                                               ; preds = %12
  %19 = load double, double* %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi double [ %17, %16 ], [ %19, %18 ]
  store double %21, double* %5, align 8
  %22 = load double, double* %4, align 8
  %23 = load double, double* %5, align 8
  %24 = fcmp une double %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @abort() #2
  unreachable

26:                                               ; preds = %20
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
