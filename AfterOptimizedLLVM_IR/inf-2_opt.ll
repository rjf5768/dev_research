; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/inf-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/inf-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = fcmp oeq double %5, 0x7FF0000000000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #2
  unreachable

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  %10 = fcmp oeq double %9, 0xFFF0000000000000
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  %13 = load double, double* %4, align 8
  %14 = fcmp oeq double %13, 0xFFF0000000000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  %17 = load double, double* %4, align 8
  %18 = fcmp une double %17, 0x7FF0000000000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #2
  unreachable

20:                                               ; preds = %16
  %21 = load double, double* %3, align 8
  %22 = fcmp oge double %21, 0x7FF0000000000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20
  %25 = load double, double* %3, align 8
  %26 = fcmp ogt double %25, 0x7FF0000000000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  %29 = load double, double* %4, align 8
  %30 = fcmp ogt double %29, 0x7FF0000000000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
  %33 = load double, double* %3, align 8
  %34 = fcmp ole double %33, 0xFFF0000000000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  %37 = load double, double* %3, align 8
  %38 = fcmp olt double %37, 0xFFF0000000000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testf(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = fcmp oeq float %5, 0x7FF0000000000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #2
  unreachable

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  %10 = fcmp oeq float %9, 0xFFF0000000000000
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  %13 = load float, float* %4, align 4
  %14 = fcmp oeq float %13, 0xFFF0000000000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  %17 = load float, float* %4, align 4
  %18 = fcmp une float %17, 0x7FF0000000000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #2
  unreachable

20:                                               ; preds = %16
  %21 = load float, float* %3, align 4
  %22 = fcmp oge float %21, 0x7FF0000000000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20
  %25 = load float, float* %3, align 4
  %26 = fcmp ogt float %25, 0x7FF0000000000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  %29 = load float, float* %4, align 4
  %30 = fcmp ogt float %29, 0x7FF0000000000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
  %33 = load float, float* %3, align 4
  %34 = fcmp ole float %33, 0xFFF0000000000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  %37 = load float, float* %3, align 4
  %38 = fcmp olt float %37, 0xFFF0000000000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  %5 = load x86_fp80, x86_fp80* %3, align 16
  %6 = fcmp oeq x86_fp80 %5, 0xK7FFF8000000000000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #2
  unreachable

8:                                                ; preds = %2
  %9 = load x86_fp80, x86_fp80* %3, align 16
  %10 = fcmp oeq x86_fp80 %9, 0xKFFFF8000000000000000
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  %13 = load x86_fp80, x86_fp80* %4, align 16
  %14 = fcmp oeq x86_fp80 %13, 0xKFFFF8000000000000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  %17 = load x86_fp80, x86_fp80* %4, align 16
  %18 = fcmp une x86_fp80 %17, 0xK7FFF8000000000000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #2
  unreachable

20:                                               ; preds = %16
  %21 = load x86_fp80, x86_fp80* %3, align 16
  %22 = fcmp oge x86_fp80 %21, 0xK7FFF8000000000000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20
  %25 = load x86_fp80, x86_fp80* %3, align 16
  %26 = fcmp ogt x86_fp80 %25, 0xK7FFF8000000000000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  %29 = load x86_fp80, x86_fp80* %4, align 16
  %30 = fcmp ogt x86_fp80 %29, 0xK7FFF8000000000000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
  %33 = load x86_fp80, x86_fp80* %3, align 16
  %34 = fcmp ole x86_fp80 %33, 0xKFFFF8000000000000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  %37 = load x86_fp80, x86_fp80* %3, align 16
  %38 = fcmp olt x86_fp80 %37, 0xKFFFF8000000000000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test(double noundef 3.400000e+01, double noundef 0x7FF0000000000000)
  call void @testf(float noundef 3.400000e+01, float noundef 0x7FF0000000000000)
  call void @testl(x86_fp80 noundef 0xK40048800000000000000, x86_fp80 noundef 0xK7FFF8000000000000000)
  ret i32 0
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
