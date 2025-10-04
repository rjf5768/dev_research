; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/health/poisson.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/health/poisson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @my_rand(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca float, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = xor i64 %5, 123459876
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = sdiv i64 %7, 127773
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = mul nsw i64 %10, 127773
  %12 = sub nsw i64 %9, %11
  %13 = mul nsw i64 16807, %12
  %14 = load i64, i64* %3, align 8
  %15 = mul nsw i64 2836, %14
  %16 = sub nsw i64 %13, %15
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = xor i64 %17, 123459876
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i64, i64* %2, align 8
  %23 = add nsw i64 %22, 2147483647
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i64, i64* %2, align 8
  %26 = sitofp i64 %25 to double
  %27 = fmul double 0x3E00000000200000, %26
  %28 = fptrunc double %27 to float
  store float %28, float* %4, align 4
  %29 = load float, float* %4, align 4
  ret float %29
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
