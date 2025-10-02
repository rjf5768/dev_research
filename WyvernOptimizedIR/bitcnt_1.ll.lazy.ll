; ModuleID = './bitcnt_1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitcnt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @bit_count(i64 noundef %0) #0 {
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %9, label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i32 [ 0, %2 ], [ %4, %5 ]
  %.0 = phi i64 [ %0, %2 ], [ %7, %5 ]
  %4 = add nuw nsw i32 %.01, 1
  br label %5

5:                                                ; preds = %3
  %6 = add nsw i64 %.0, -1
  %7 = and i64 %.0, %6
  %.not2 = icmp eq i64 %7, 0
  br i1 %.not2, label %8, label %3, !llvm.loop !4

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %1
  %.1 = phi i32 [ %4, %8 ], [ 0, %1 ]
  ret i32 %.1
}

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
