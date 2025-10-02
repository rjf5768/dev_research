; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/rbug.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/rbug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @d(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = uitofp i64 %4 to double
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @s(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca float, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = uitofp i64 %4 to float
  store float %5, float* %3, align 4
  %6 = load float, float* %3, align 4
  ret float %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store i64 -8749444671637158911, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call double @d(i64 noundef %4)
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fptoui double %6 to i64
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, -8749444671637157888
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
  store i64 -9064531639303929855, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call float @s(i64 noundef %12)
  %14 = fpext float %13 to double
  store double %14, double* %3, align 8
  %15 = load double, double* %3, align 8
  %16 = fptoui double %15 to i64
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, -9064531089548115968
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  call void @abort() #2
  unreachable

20:                                               ; preds = %11
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
