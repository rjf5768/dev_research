; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/color.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fgcolor_red = dso_local global double 0.000000e+00, align 8
@fgcolor_green = dso_local global double 0.000000e+00, align 8
@fgcolor_blue = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @color(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %7, 65535
  %9 = sitofp i32 %8 to double
  store double %9, double* @fgcolor_red, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 65535
  %12 = sitofp i32 %11 to double
  store double %12, double* @fgcolor_green, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %13, 65535
  %15 = sitofp i32 %14 to double
  store double %15, double* @fgcolor_blue, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
