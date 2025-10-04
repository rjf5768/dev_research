; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68390.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @direct(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = mul nsw i32 %3, %4
  %6 = sitofp i32 %5 to double
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @broken(double (i32, ...)* noundef %0, i32 noundef %1) #0 {
  %3 = alloca double (i32, ...)*, align 8
  %4 = alloca i32, align 4
  store double (i32, ...)* %0, double (i32, ...)** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load double (i32, ...)*, double (i32, ...)** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call double (i32, ...) %5(i32 noundef %6)
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call double @broken(double (i32, ...)* noundef @direct, i32 noundef %5)
  store double %6, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sitofp i32 %10 to double
  %12 = fcmp une double %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
