; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020411-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020411-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x float> @foo() #0 {
  %1 = alloca { float, float }, align 4
  %2 = alloca [1 x { float, float }], align 4
  %3 = getelementptr inbounds [1 x { float, float }], [1 x { float, float }]* %2, i64 0, i64 0
  %4 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  store float 1.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds [1 x { float, float }], [1 x { float, float }]* %2, i64 0, i64 0
  %6 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  store float 1.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds [1 x { float, float }], [1 x { float, float }]* %2, i64 0, i64 0
  %8 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = fneg float %11
  %13 = getelementptr inbounds [1 x { float, float }], [1 x { float, float }]* %2, i64 0, i64 0
  %14 = getelementptr inbounds { float, float }, { float, float }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { float, float }, { float, float }* %13, i32 0, i32 1
  store float %9, float* %14, align 4
  store float %12, float* %15, align 4
  %16 = getelementptr inbounds [1 x { float, float }], [1 x { float, float }]* %2, i64 0, i64 0
  %17 = getelementptr inbounds { float, float }, { float, float }* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds { float, float }, { float, float }* %16, i32 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 0
  %22 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 1
  store float %18, float* %21, align 4
  store float %20, float* %22, align 4
  %23 = bitcast { float, float }* %1 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 4
  ret <2 x float> %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x { double, double }], align 16
  %3 = alloca { float, float }, align 4
  store i32 0, i32* %1, align 4
  %4 = call <2 x float> @foo()
  %5 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %4, <2 x float>* %5, align 4
  %6 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %9 = load float, float* %8, align 4
  %10 = fpext float %7 to double
  %11 = fpext float %9 to double
  %12 = getelementptr inbounds [1 x { double, double }], [1 x { double, double }]* %2, i64 0, i64 0
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %10, double* %13, align 16
  store double %11, double* %14, align 8
  %15 = getelementptr inbounds [1 x { double, double }], [1 x { double, double }]* %2, i64 0, i64 0
  %16 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 0
  %17 = load double, double* %16, align 16
  %18 = fcmp une double %17, 1.000000e+00
  br i1 %18, label %24, label %19

19:                                               ; preds = %0
  %20 = getelementptr inbounds [1 x { double, double }], [1 x { double, double }]* %2, i64 0, i64 0
  %21 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = fcmp une double %22, -1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %0
  call void @abort() #2
  unreachable

25:                                               ; preds = %19
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
