; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/inf-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/inf-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca double, align 8
  %4 = alloca x86_fp80, align 16
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  %7 = alloca x86_fp80, align 16
  store i32 0, i32* %1, align 4
  store float 0x7FF0000000000000, float* %2, align 4
  store double 0x7FF0000000000000, double* %3, align 8
  store x86_fp80 0xK7FFF8000000000000000, x86_fp80* %4, align 16
  store float 0x7FF0000000000000, float* %5, align 4
  store double 0x7FF0000000000000, double* %6, align 8
  store x86_fp80 0xK7FFF8000000000000000, x86_fp80* %7, align 16
  %8 = load float, float* %2, align 4
  %9 = load float, float* %2, align 4
  %10 = fadd float %8, %9
  %11 = load float, float* %2, align 4
  %12 = fcmp une float %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %0
  %15 = load double, double* %3, align 8
  %16 = load double, double* %3, align 8
  %17 = fadd double %15, %16
  %18 = load double, double* %3, align 8
  %19 = fcmp une double %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @abort() #2
  unreachable

21:                                               ; preds = %14
  %22 = load x86_fp80, x86_fp80* %4, align 16
  %23 = load x86_fp80, x86_fp80* %4, align 16
  %24 = fadd x86_fp80 %22, %23
  %25 = load x86_fp80, x86_fp80* %4, align 16
  %26 = fcmp une x86_fp80 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  call void @abort() #2
  unreachable

28:                                               ; preds = %21
  %29 = load float, float* %2, align 4
  %30 = load float, float* %5, align 4
  %31 = fcmp une float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @abort() #2
  unreachable

33:                                               ; preds = %28
  %34 = load double, double* %3, align 8
  %35 = load double, double* %6, align 8
  %36 = fcmp une double %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @abort() #2
  unreachable

38:                                               ; preds = %33
  %39 = load x86_fp80, x86_fp80* %4, align 16
  %40 = load x86_fp80, x86_fp80* %7, align 16
  %41 = fcmp une x86_fp80 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @abort() #2
  unreachable

43:                                               ; preds = %38
  %44 = load float, float* %2, align 4
  %45 = fcmp ole float %44, 0.000000e+00
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @abort() #2
  unreachable

47:                                               ; preds = %43
  %48 = load double, double* %3, align 8
  %49 = fcmp ole double %48, 0.000000e+00
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @abort() #2
  unreachable

51:                                               ; preds = %47
  %52 = load x86_fp80, x86_fp80* %4, align 16
  %53 = fcmp ole x86_fp80 %52, 0xK00000000000000000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @abort() #2
  unreachable

55:                                               ; preds = %51
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
