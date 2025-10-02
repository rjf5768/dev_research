; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/TSVC/Symbolics-flt/dummy.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/TSVC/Symbolics-flt/dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dummy(float* noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, [256 x float]* noundef %5, [256 x float]* noundef %6, [256 x float]* noundef %7, float noundef %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca [256 x float]*, align 8
  %16 = alloca [256 x float]*, align 8
  %17 = alloca [256 x float]*, align 8
  %18 = alloca float, align 4
  store float* %0, float** %10, align 8
  store float* %1, float** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store float* %4, float** %14, align 8
  store [256 x float]* %5, [256 x float]** %15, align 8
  store [256 x float]* %6, [256 x float]** %16, align 8
  store [256 x float]* %7, [256 x float]** %17, align 8
  store float %8, float* %18, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
