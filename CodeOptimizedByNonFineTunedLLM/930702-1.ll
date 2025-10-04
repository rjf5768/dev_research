; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930702-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930702-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fp(double noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load double, double* %4, align 8
  %7 = fcmp une double %6, 3.300000e+01
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 11
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32 (double, i32)*, align 8
  store i32 0, i32* %1, align 4
  store i32 (double, i32)* @fp, i32 (double, i32)** %2, align 8
  %3 = call i32 @fp(double noundef 3.300000e+01, i32 noundef 11)
  %4 = load i32 (double, i32)*, i32 (double, i32)** %2, align 8
  %5 = call i32 %4(double noundef 3.300000e+01, i32 noundef 11)
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
