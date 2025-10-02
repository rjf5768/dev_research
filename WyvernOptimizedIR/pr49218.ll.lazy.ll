; ModuleID = './pr49218.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49218.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load float, float* @f, align 4
  %2 = fptosi float %1 to i128
  %3 = icmp slt i128 %2, 11
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %7, %4
  %.0 = phi i128 [ %2, %4 ], [ %6, %7 ]
  %6 = add nsw i128 %.0, 1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  br label %7

7:                                                ; preds = %5
  %.not = icmp eq i128 %6, 11
  br i1 %.not, label %8, label %5, !llvm.loop !5

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %0
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
