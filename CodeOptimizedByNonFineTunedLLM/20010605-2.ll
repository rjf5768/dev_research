; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010605-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010605-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { double, double }, align 8
  %3 = alloca { float, float }, align 4
  %4 = alloca { x86_fp80, x86_fp80 }, align 16
  %5 = alloca { double, double }, align 8
  %6 = alloca { float, float }, align 4
  %7 = alloca { x86_fp80, x86_fp80 }, align 16
  store i32 0, i32* %1, align 4
  %8 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  store double 1.000000e+00, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double 2.000000e+00, double* %9, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %15 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %11, double* %14, align 8
  store double %13, double* %15, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %19 = load double, double* %18, align 8
  call void @foo(double noundef %17, double noundef %19)
  %20 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  store float 3.000000e+00, float* %20, align 4
  %21 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  store float 4.000000e+00, float* %21, align 4
  %22 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 0
  %27 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 1
  store float %23, float* %26, align 4
  store float %25, float* %27, align 4
  %28 = bitcast { float, float }* %6 to <2 x float>*
  %29 = load <2 x float>, <2 x float>* %28, align 4
  call void @bar(<2 x float> noundef %29)
  %30 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 0
  store x86_fp80 0xK4001A000000000000000, x86_fp80* %30, align 16
  %31 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 1
  store x86_fp80 0xK4001C000000000000000, x86_fp80* %31, align 16
  %32 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 0
  %33 = load x86_fp80, x86_fp80* %32, align 16
  %34 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 1
  %35 = load x86_fp80, x86_fp80* %34, align 16
  %36 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %7, i32 0, i32 0
  %37 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %7, i32 0, i32 1
  store x86_fp80 %33, x86_fp80* %36, align 16
  store x86_fp80 %35, x86_fp80* %37, align 16
  call void @baz({ x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %7)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(double noundef %0, double noundef %1) #2 {
  %3 = alloca { double, double }, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  store double %0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %1, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fcmp une double %7, 1.000000e+00
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fcmp une double %11, 2.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  call void @abort() #3
  unreachable

14:                                               ; preds = %9
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(<2 x float> noundef %0) #0 {
  %2 = alloca { float, float }, align 4
  %3 = bitcast { float, float }* %2 to <2 x float>*
  store <2 x float> %0, <2 x float>* %3, align 4
  %4 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = fcmp une float %5, 3.000000e+00
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  %9 = load float, float* %8, align 4
  %10 = fcmp une float %9, 4.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  call void @abort() #3
  unreachable

12:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz({ x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %0) #2 {
  %2 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i32 0, i32 0
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = fcmp une x86_fp80 %3, 0xK4001A000000000000000
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i32 0, i32 1
  %7 = load x86_fp80, x86_fp80* %6, align 16
  %8 = fcmp une x86_fp80 %7, 0xK4001C000000000000000
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  call void @abort() #3
  unreachable

10:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
