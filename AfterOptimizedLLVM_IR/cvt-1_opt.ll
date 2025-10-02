; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cvt-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cvt-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @g2(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptosi double %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @f(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to double
  %5 = call i64 @g1(double noundef %4)
  %6 = load i64, i64* %2, align 8
  %7 = sitofp i64 %6 to double
  %8 = call i64 @g2(double noundef %7)
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @abort() #2
  unreachable

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = sitofp i64 %12 to double
  %14 = call i64 @g2(double noundef %13)
  %15 = sitofp i64 %14 to double
  ret double %15
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @g1(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptosi double %3 to i64
  %5 = sitofp i64 %4 to double
  %6 = fptosi double %5 to i64
  ret i64 %6
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call double @f(i64 noundef 123456789)
  %3 = fcmp une double %2, 0x419D6F3454000000
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call double @f(i64 noundef 123456789)
  %7 = call i64 @g2(double noundef 0x419D6F3454000000)
  %8 = sitofp i64 %7 to double
  %9 = fcmp une double %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @abort() #2
  unreachable

11:                                               ; preds = %5
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
