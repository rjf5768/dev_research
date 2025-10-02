; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49218.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49218.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i128, align 16
  store i32 0, i32* %1, align 4
  %3 = load float, float* @f, align 4
  %4 = fptosi float %3 to i128
  store i128 %4, i128* %2, align 16
  %5 = load i128, i128* %2, align 16
  %6 = icmp sle i128 %5, 10
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %11, %7
  %9 = load i128, i128* %2, align 16
  %10 = add nsw i128 %9, 1
  store i128 %10, i128* %2, align 16
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  br label %11

11:                                               ; preds = %8
  %12 = load i128, i128* %2, align 16
  %13 = icmp ne i128 %12, 11
  br i1 %13, label %8, label %14, !llvm.loop !5

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 158}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
