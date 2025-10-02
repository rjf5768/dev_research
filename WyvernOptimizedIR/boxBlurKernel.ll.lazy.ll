; ModuleID = './boxBlurKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Blur/boxBlurKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @boxBlurKernel(i32 noundef %0, i32 noundef %1, [1024 x i32]* nocapture noundef readonly %2, i32* nocapture noundef writeonly %3) #0 {
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %42, %4
  %.03 = phi i32 [ 4, %4 ], [ %43, %42 ]
  %7 = add nsw i32 %0, -4
  %8 = icmp slt i32 %.03, %7
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %39, %9
  %.02 = phi i32 [ 4, %9 ], [ %40, %39 ]
  %11 = add nsw i32 %1, -4
  %12 = icmp slt i32 %.02, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %30, %13
  %.04 = phi i32 [ 0, %13 ], [ %.1, %30 ]
  %.01 = phi i32 [ -4, %13 ], [ %31, %30 ]
  %15 = icmp slt i32 %.01, 4
  br i1 %15, label %16, label %32

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %20, %16
  %.1 = phi i32 [ %.04, %16 ], [ %27, %20 ]
  %.0 = phi i32 [ -4, %16 ], [ %28, %20 ]
  %18 = icmp slt i32 %.0, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.03, %.01
  %22 = sext i32 %21 to i64
  %23 = add nsw i32 %.02, %.0
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %.1, %26
  %28 = add nsw i32 %.0, 1
  br label %17, !llvm.loop !4

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %.01, 1
  br label %14, !llvm.loop !6

32:                                               ; preds = %14
  %33 = sdiv i32 %.04, 81
  %34 = zext i32 %.03 to i64
  %35 = mul nuw nsw i64 %34, %5
  %36 = getelementptr inbounds i32, i32* %3, i64 %35
  %37 = zext i32 %.02 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  br label %39

39:                                               ; preds = %32
  %40 = add nuw nsw i32 %.02, 1
  br label %10, !llvm.loop !7

41:                                               ; preds = %10
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.03, 1
  br label %6, !llvm.loop !8

44:                                               ; preds = %6
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
