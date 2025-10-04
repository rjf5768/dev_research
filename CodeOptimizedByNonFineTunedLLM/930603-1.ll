; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930603-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930603-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fx(double noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = fptrunc double %0 to float
  store float %3, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fpext float %4 to double
  %6 = fmul double 0x40026BB1BBB58975, %5
  %7 = fdiv double 3.000000e+00, %6
  %8 = fadd double 1.000000e+00, %7
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %5 = call float @inita()
  store float %5, float* %2, align 4
  %6 = call float @initc()
  store float %6, float* %4, align 4
  %7 = call i32 @f()
  %8 = load float, float* %4, align 4
  %9 = fpext float %8 to double
  %10 = call float @fx(double noundef %9)
  %11 = load float, float* %2, align 4
  %12 = fadd float %10, %11
  store float %12, float* %3, align 4
  %13 = call i32 @f()
  %14 = load float, float* %2, align 4
  %15 = fpext float %14 to double
  %16 = fcmp une double %15, 3.000000e+00
  br i1 %16, label %29, label %17

17:                                               ; preds = %0
  %18 = load float, float* %3, align 4
  %19 = fpext float %18 to double
  %20 = fcmp olt double %19, 4.325700e+00
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load float, float* %3, align 4
  %23 = fpext float %22 to double
  %24 = fcmp ogt double %23, 4.325800e+00
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %4, align 4
  %27 = fpext float %26 to double
  %28 = fcmp une double %27, 4.000000e+00
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17, %0
  call void @abort() #2
  unreachable

30:                                               ; preds = %25
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @inita() #0 {
  ret float 3.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @initc() #0 {
  ret float 4.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
