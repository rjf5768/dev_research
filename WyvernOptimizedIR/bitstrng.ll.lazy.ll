; ModuleID = './bitstrng.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitstrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @bitstring(i8* nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = ashr i32 %2, 2
  %6 = add nsw i32 %5, %2
  %7 = and i32 %2, 3
  %.not = icmp eq i32 %7, 0
  %.neg = sext i1 %.not to i32
  %8 = add i32 %6, %.neg
  %9 = sub nsw i32 %3, %8
  br label %10

10:                                               ; preds = %13, %4
  %.01 = phi i32 [ 0, %4 ], [ %15, %13 ]
  %.0 = phi i8* [ %0, %4 ], [ %14, %13 ]
  %11 = icmp slt i32 %.01, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  store i8 32, i8* %.0, align 1
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.0, i64 1
  %15 = add nuw nsw i32 %.01, 1
  br label %10, !llvm.loop !4

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %31, %16
  %.02 = phi i32 [ %2, %16 ], [ %18, %31 ]
  %.1 = phi i8* [ %.0, %16 ], [ %.2, %31 ]
  %18 = add nsw i32 %.02, -1
  %19 = icmp sgt i32 %.02, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = zext i32 %18 to i64
  %22 = lshr i64 %1, %21
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = or i8 %24, 48
  %26 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 %25, i8* %.1, align 1
  %27 = and i32 %18, 3
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %28, label %31

28:                                               ; preds = %20
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %31, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds i8, i8* %.1, i64 2
  store i8 32, i8* %26, align 1
  br label %31

31:                                               ; preds = %29, %28, %20
  %.2 = phi i8* [ %26, %20 ], [ %30, %29 ], [ %26, %28 ]
  br label %17, !llvm.loop !6

32:                                               ; preds = %17
  store i8 0, i8* %.1, align 1
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
!6 = distinct !{!6, !5}
