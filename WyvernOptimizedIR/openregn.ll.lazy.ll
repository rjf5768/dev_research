; ModuleID = './openregn.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/openregn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @openregion(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, %2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %.04 = phi i32 [ %0, %6 ], [ %2, %7 ]
  %.03 = phi i32 [ %2, %6 ], [ %0, %7 ]
  %9 = icmp slt i32 %1, %3
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10
  %.06 = phi i32 [ %3, %10 ], [ %1, %11 ]
  %.05 = phi i32 [ %1, %10 ], [ %3, %11 ]
  br label %13

13:                                               ; preds = %26, %12
  %.01 = phi i32 [ %.04, %12 ], [ %27, %26 ]
  %.not = icmp sgt i32 %.01, %.03
  br i1 %.not, label %28, label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %23, %14
  %.02 = phi i32 [ %.05, %14 ], [ %24, %23 ]
  %.not7 = icmp sgt i32 %.02, %.06
  br i1 %.not7, label %25, label %16

16:                                               ; preds = %15
  %17 = sext i32 %.01 to i64
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %.not8 = icmp eq i8 %20, 0
  br i1 %.not8, label %22, label %21

21:                                               ; preds = %16
  br label %29

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.02, 1
  br label %15, !llvm.loop !4

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %.01, 1
  br label %13, !llvm.loop !6

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %21
  %.0 = phi i32 [ 0, %21 ], [ 1, %28 ]
  ret i32 %.0
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
!6 = distinct !{!6, !5}
