; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dnan = dso_local constant double 0x7FF8000000000000, align 8
@x = dso_local global double 1.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load double, double* @x, align 8
  %3 = fcmp une double 0x7FF8000000000000, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store double 1.000000e+00, double* @x, align 8
  br label %6

5:                                                ; preds = %0
  call void @link_error()
  br label %6

6:                                                ; preds = %5, %4
  %7 = load double, double* @x, align 8
  %8 = fcmp olt double 0x7FF8000000000000, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @link_error()
  br label %10

10:                                               ; preds = %9, %6
  %11 = load double, double* @x, align 8
  %12 = fcmp ogt double 0x7FF8000000000000, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @link_error()
  br label %14

14:                                               ; preds = %13, %10
  %15 = load double, double* @x, align 8
  %16 = fcmp ole double 0x7FF8000000000000, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @link_error()
  br label %18

18:                                               ; preds = %17, %14
  %19 = load double, double* @x, align 8
  %20 = fcmp oge double 0x7FF8000000000000, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @link_error()
  br label %22

22:                                               ; preds = %21, %18
  %23 = load double, double* @x, align 8
  %24 = fcmp oeq double 0x7FF8000000000000, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @link_error()
  br label %26

26:                                               ; preds = %25, %22
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
