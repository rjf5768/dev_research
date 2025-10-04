; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960512-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960512-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @f() #0 {
  %1 = alloca { double, double }, align 8
  %2 = alloca [40 x i32], align 16
  %3 = alloca { double, double }, align 8
  %4 = getelementptr inbounds [40 x i32], [40 x i32]* %2, i64 0, i64 9
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds [40 x i32], [40 x i32]* %2, i64 0, i64 9
  %6 = load i32, i32* %5, align 4
  %7 = sitofp i32 %6 to double
  %8 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %7, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 0
  %15 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 1
  store double %11, double* %14, align 8
  store double %13, double* %15, align 8
  %16 = load { double, double }, { double, double }* %1, align 8
  ret { double, double } %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { double, double }, align 8
  store i32 0, i32* %1, align 4
  %3 = call { double, double } @f()
  %4 = extractvalue { double, double } %3, 0
  %5 = extractvalue { double, double } %3, 1
  %6 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %7 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double %4, double* %6, align 8
  store double %5, double* %7, align 8
  %8 = fcmp une double %4, 0.000000e+00
  %9 = fcmp une double %5, 0.000000e+00
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #2
  unreachable

12:                                               ; preds = %0
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
