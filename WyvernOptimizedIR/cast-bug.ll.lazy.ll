; ModuleID = './cast-bug.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/cast-bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.01 = phi i32 [ 2, %2 ], [ %12, %11 ]
  %.0 = phi i32 [ 1, %2 ], [ %.1, %11 ]
  %4 = add nsw i32 %0, 2
  %.not = icmp sgt i32 %.01, %4
  br i1 %.not, label %13, label %5

5:                                                ; preds = %3
  %6 = and i32 %.01, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = add nsw i32 %.0, 17
  br label %10

10:                                               ; preds = %8, %5
  %.1 = phi i32 [ %9, %8 ], [ %.0, %5 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  %14 = icmp ne i32 %.0, 35
  %15 = zext i1 %14 to i32
  ret i32 %15
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
