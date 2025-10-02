; ModuleID = './bfill.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/lib/bfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @bfill(i8* nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %8, %3
  %.01 = phi i64 [ %1, %3 ], [ %5, %8 ]
  %.0 = phi i8* [ %0, %3 ], [ %9, %8 ]
  %5 = add i64 %.01, -1
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %4
  %7 = trunc i32 %2 to i8
  store i8 %7, i8* %.0, align 1
  br label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
