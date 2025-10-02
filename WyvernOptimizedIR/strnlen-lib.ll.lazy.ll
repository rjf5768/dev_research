; ModuleID = './strnlen-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strnlen-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @strnlen(i8* nocapture noundef readonly %0, i64 noundef %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.01 = phi i64 [ %1, %2 ], [ %.1, %11 ]
  %.0 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %4 = getelementptr inbounds i8, i8* %0, i64 %.0
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %3
  %7 = add i64 %.01, -1
  %8 = icmp ne i64 %.01, 0
  br label %9

9:                                                ; preds = %6, %3
  %.1 = phi i64 [ %7, %6 ], [ %.01, %3 ]
  %10 = phi i1 [ %8, %6 ], [ false, %3 ]
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = add i64 %.0, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %9
  ret i64 %.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
