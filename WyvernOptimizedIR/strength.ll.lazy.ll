; ModuleID = './strength.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test1(i32* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %7, %8 ]
  %3 = getelementptr inbounds i32, i32* %0, i64 2
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  store i32 2, i32* %6, align 4
  %7 = add nuw nsw i32 %.0, 1
  br label %8

8:                                                ; preds = %2
  %9 = mul nsw i32 %7, 21
  %10 = getelementptr inbounds i32, i32* %0, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %2, label %13, !llvm.loop !4

13:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result1(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  br label %3

3:                                                ; preds = %9, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %9 ]
  %4 = getelementptr inbounds i32, i32* %0, i64 2
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 2, i32* %7, align 4
  %8 = add nuw nsw i32 %.0, 21
  br label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %3, label %12, !llvm.loop !6

12:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test2(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %9, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %9 ]
  %4 = getelementptr inbounds i32, i32* %0, i64 2
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 2, i32* %7, align 4
  %8 = add nuw nsw i32 %.0, 1
  br label %9

9:                                                ; preds = %3
  %10 = mul nsw i32 %8, %2
  %11 = getelementptr inbounds i32, i32* %0, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %3, label %14, !llvm.loop !7

14:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result2(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  br label %4

4:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %9, %10 ]
  %5 = getelementptr inbounds i32, i32* %0, i64 2
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  store i32 2, i32* %8, align 4
  %9 = add nsw i32 %.0, %2
  br label %10

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %4, label %13, !llvm.loop !8

13:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test3(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  br label %5

5:                                                ; preds = %12, %1
  %.01 = phi i32 [ %2, %1 ], [ %10, %12 ]
  %.0 = phi i32 [ %4, %1 ], [ %11, %12 ]
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 2, i32* %9, align 4
  %10 = add nsw i32 %.01, 1
  %11 = add nsw i32 %.0, 1
  br label %12

12:                                               ; preds = %5
  %13 = mul nsw i32 %10, %11
  %14 = getelementptr inbounds i32, i32* %0, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %5, label %17, !llvm.loop !9

17:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result3(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = mul nsw i32 %2, %4
  %6 = getelementptr inbounds i32, i32* %0, i64 3
  br label %7

7:                                                ; preds = %15, %1
  %.02 = phi i32 [ %4, %1 ], [ %16, %15 ]
  %.01 = phi i32 [ %2, %1 ], [ %12, %15 ]
  %.0 = phi i32 [ %5, %1 ], [ %14, %15 ]
  %8 = getelementptr inbounds i32, i32* %0, i64 2
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  store i32 2, i32* %11, align 4
  %12 = add nsw i32 %.01, 1
  %13 = add nsw i32 %.0, %.02
  %14 = add nsw i32 %13, %12
  br label %15

15:                                               ; preds = %7
  %16 = add nsw i32 %.02, 1
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %7, label %19, !llvm.loop !10

19:                                               ; preds = %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test4(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %13, %5
  %.0 = phi i32 [ %.1, %13 ], [ 0, %5 ]
  %7 = add nsw i32 %.0, 1
  br label %8

8:                                                ; preds = %6, %4
  %.1 = phi i32 [ 2, %4 ], [ %7, %6 ]
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  br label %13

13:                                               ; preds = %8
  %14 = mul nsw i32 %.1, 21
  %15 = getelementptr inbounds i32, i32* %0, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %6, label %18, !llvm.loop !11

18:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result4(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %13, %5
  %.0 = phi i32 [ %.1, %13 ], [ 0, %5 ]
  %7 = add nsw i32 %.0, 21
  br label %8

8:                                                ; preds = %6, %4
  %.1 = phi i32 [ 42, %4 ], [ %7, %6 ]
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  br label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds i32, i32* %0, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %.1, %15
  br i1 %16, label %6, label %17, !llvm.loop !12

17:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test5(i32* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.0 = phi i32 [ 0, %1 ], [ %3, %12 ]
  %3 = add nuw nsw i32 %.0, 1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = mul nsw i32 %3, 21
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %17

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds i32, i32* %0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  store i32 2, i32* %16, align 4
  br label %2

17:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result5(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  br label %3

3:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %4, %11 ]
  %4 = add nuw nsw i32 %.0, 21
  %5 = getelementptr inbounds i32, i32* %0, i64 1
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %4, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %16

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds i32, i32* %0, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  store i32 2, i32* %15, align 4
  br label %3

16:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test6(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  br label %5

5:                                                ; preds = %11, %1
  %.0 = phi i32 [ %4, %1 ], [ %10, %11 ]
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 2, i32* %9, align 4
  %10 = add nsw i32 %.0, %2
  br label %11

11:                                               ; preds = %5
  %12 = mul nsw i32 %10, 21
  %13 = getelementptr inbounds i32, i32* %0, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %5, label %16, !llvm.loop !13

16:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result6(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = mul nsw i32 %2, 21
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %5, 21
  %7 = getelementptr inbounds i32, i32* %0, i64 3
  br label %8

8:                                                ; preds = %14, %1
  %.0 = phi i32 [ %6, %1 ], [ %13, %14 ]
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  %13 = add nsw i32 %.0, %3
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !14

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test7(i32* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %14, %1
  %.0 = phi i32 [ 0, %1 ], [ %.1, %14 ]
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %2
  %6 = add nsw i32 %.0, 1
  br label %9

7:                                                ; preds = %2
  %8 = add nsw i32 %.0, 2
  br label %9

9:                                                ; preds = %7, %5
  %.1 = phi i32 [ %6, %5 ], [ %8, %7 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 2
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  store i32 2, i32* %13, align 4
  br label %14

14:                                               ; preds = %9
  %15 = mul nsw i32 %.1, 21
  %16 = getelementptr inbounds i32, i32* %0, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %2, label %19, !llvm.loop !15

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result7(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  br label %3

3:                                                ; preds = %15, %1
  %.0 = phi i32 [ 0, %1 ], [ %.1, %15 ]
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %.0, 21
  br label %10

8:                                                ; preds = %3
  %9 = add nsw i32 %.0, 42
  br label %10

10:                                               ; preds = %8, %6
  %.1 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %11 = getelementptr inbounds i32, i32* %0, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  store i32 2, i32* %14, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %.1, %16
  br i1 %17, label %3, label %18, !llvm.loop !16

18:                                               ; preds = %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test8(i32* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %9 ]
  %3 = or i32 %.0, 1
  %4 = getelementptr inbounds i32, i32* %0, i64 2
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 %3, i32* %7, align 4
  %8 = add nuw nsw i32 %.0, 2
  br label %9

9:                                                ; preds = %2
  %10 = mul nsw i32 %8, 21
  %11 = getelementptr inbounds i32, i32* %0, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %2, label %14, !llvm.loop !17

14:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result8(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %9, %10 ]
  %4 = or i32 %.01, 1
  %5 = getelementptr inbounds i32, i32* %0, i64 2
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  store i32 %4, i32* %8, align 4
  %9 = add nuw nsw i32 %.0, 42
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.01, 2
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %3, label %14, !llvm.loop !18

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test9(i32* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %7, %8 ]
  %3 = getelementptr inbounds i32, i32* %0, i64 2
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  store i32 %.0, i32* %6, align 4
  %7 = add nuw nsw i32 %.0, 1
  br label %8

8:                                                ; preds = %2
  %9 = mul nsw i32 %7, 21
  %10 = getelementptr inbounds i32, i32* %0, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %2, label %13, !llvm.loop !19

13:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result9(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  br label %3

3:                                                ; preds = %9, %1
  %.01 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %.0 = phi i32 [ 0, %1 ], [ %8, %9 ]
  %4 = getelementptr inbounds i32, i32* %0, i64 2
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 %.01, i32* %7, align 4
  %8 = add nuw nsw i32 %.0, 21
  br label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %.01, 1
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %3, label %13, !llvm.loop !20

13:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_test10(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %10, %11 ]
  %5 = mul nsw i32 %.0, 21
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 %5, i32* %9, align 4
  %10 = add nuw nsw i32 %.0, 1
  br label %11

11:                                               ; preds = %4
  %12 = icmp slt i32 %10, %3
  br i1 %12, label %4, label %13, !llvm.loop !21

13:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @strength_result10(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 %3, 21
  br label %5

5:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %10, %11 ]
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 %.0, i32* %9, align 4
  %10 = add nuw nsw i32 %.0, 21
  br label %11

11:                                               ; preds = %5
  %12 = icmp slt i32 %10, %4
  br i1 %12, label %5, label %13, !llvm.loop !22

13:                                               ; preds = %11
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
