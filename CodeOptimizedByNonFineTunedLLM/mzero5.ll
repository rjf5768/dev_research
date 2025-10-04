; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @negzero_check(double noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = bitcast double* %3 to i8*
  %8 = call i32 @memcmp(i8* noundef bitcast (double* @zero to i8*), i8* noundef %7, i64 noundef 8)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sub(double noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp oeq double %6, 0.000000e+00
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load double, double* %5, align 8
  %10 = fcmp oeq double %9, 0.000000e+00
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load double, double* %4, align 8
  %13 = call i32 @negzero_check(double noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load double, double* %5, align 8
  %17 = call i32 @negzero_check(double noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %21

20:                                               ; preds = %15, %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double -0.000000e+00, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = call i32 @sub(double noundef %3, double noundef 0.000000e+00)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
