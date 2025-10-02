; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/fill.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fill_level = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fill(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 0, i32* @fill_level, align 4
  br label %22

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sitofp i32 %7 to double
  %9 = fsub double %8, 1.000000e+00
  %10 = fmul double 5.000000e+00, %9
  %11 = fdiv double %10, 6.553400e+04
  %12 = fptosi double %11 to i32
  store i32 %12, i32* @fill_level, align 4
  %13 = load i32, i32* @fill_level, align 4
  %14 = icmp sgt i32 %13, 5
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store i32 5, i32* @fill_level, align 4
  br label %21

16:                                               ; preds = %6
  %17 = load i32, i32* @fill_level, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* @fill_level, align 4
  br label %20

20:                                               ; preds = %19, %16
  br label %21

21:                                               ; preds = %20, %15
  br label %22

22:                                               ; preds = %21, %5
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
