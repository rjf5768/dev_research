; ModuleID = './valnum.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/valnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test1(i32* nocapture noundef %0) #0 {
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @vnum_result1(i32* nocapture noundef writeonly %0) #1 {
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test2(i32* nocapture noundef %0) #0 {
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @vnum_result2(i32* nocapture noundef writeonly %0) #1 {
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test3(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_result3(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test4(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_result4(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test5(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 3
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %3, %5
  %7 = icmp eq i32 %5, 3
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds i32, i32* %0, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %0, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  store i32 2, i32* %16, align 4
  %17 = mul nsw i32 %12, %10
  %18 = sub nsw i32 %17, %6
  store i32 %18, i32* %0, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load i32, i32* %0, align 4
  %21 = and i32 %20, 1
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds i32, i32* %0, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 3
  %26 = sub nsw i32 %25, %6
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  store i32 2, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %19
  br label %30

30:                                               ; preds = %29, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_result5(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 3
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %3, %5
  %7 = icmp eq i32 %5, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  store i32 0, i32* %0, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* %0, align 4
  %15 = and i32 %14, 1
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds i32, i32* %0, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 3
  %20 = sub nsw i32 %19, %6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  store i32 2, i32* %22, align 4
  br label %23

23:                                               ; preds = %16, %13
  br label %24

24:                                               ; preds = %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test6(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 3
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %3, %5
  %7 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %1
  %9 = add nsw i32 %6, 3
  br label %12

10:                                               ; preds = %1
  %11 = add nsw i32 %6, -3
  br label %12

12:                                               ; preds = %10, %8
  %.0 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %0, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %.0
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  store i32 2, i32* %19, align 4
  %20 = mul nsw i32 %3, %14
  %21 = sub nsw i32 %6, %20
  %22 = getelementptr inbounds i32, i32* %0, i64 4
  store i32 %21, i32* %22, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_result6(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 3
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %3, %5
  %7 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %1
  %9 = add nsw i32 %6, 3
  br label %12

10:                                               ; preds = %1
  %11 = add nsw i32 %6, -3
  br label %12

12:                                               ; preds = %10, %8
  %.0 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, %.0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %0, i64 4
  store i32 0, i32* %18, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test7(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 2
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 2, i32* %7, align 4
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %3
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_result7(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 2
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 2, i32* %7, align 4
  br label %8

8:                                                ; preds = %3, %1
  store i32 0, i32* %0, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @vnum_test8(i32* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 4
  %5 = load i32, i32* %4, align 4
  br label %6

6:                                                ; preds = %16, %1
  %.02 = phi i32 [ %5, %1 ], [ %18, %16 ]
  %.01 = phi i32 [ 0, %1 ], [ %19, %16 ]
  %.0 = phi i32 [ %5, %1 ], [ %17, %16 ]
  %7 = icmp slt i32 %.01, %3
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  %13 = sub nsw i32 %.02, %.0
  store i32 %13, i32* %0, align 4
  %14 = getelementptr inbounds i32, i32* %0, i64 1
  %15 = load i32, i32* %14, align 4
  br label %16

16:                                               ; preds = %8
  %17 = add nsw i32 %.0, %15
  %18 = add nsw i32 %.02, %15
  %19 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !4

20:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @vnum_result8(i32* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 2, i32* %10, align 4
  store i32 0, i32* %0, align 4
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

13:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test9(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = sub nsw i32 %2, %4
  %8 = mul nsw i32 %7, 21
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %8, i32* %9, align 4
  br label %13

10:                                               ; preds = %1
  %11 = add nsw i32 %2, %4
  %12 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_result9(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 0, i32* %7, align 4
  br label %11

8:                                                ; preds = %1
  %9 = add nsw i32 %2, %4
  %10 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_test10(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = add nsw i32 %2, 1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  %7 = add nsw i32 %3, %6
  %8 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %7, i32* %8, align 4
  %9 = icmp eq i32 %2, %5
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = sub nsw i32 %3, %6
  %12 = mul nsw i32 %11, 21
  %13 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @vnum_result10(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = add i32 %2, %4
  %6 = add i32 %5, 2
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %6, i32* %7, align 4
  %8 = icmp eq i32 %2, %4
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @vnum_test11(i32* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  %5 = load i32, i32* %4, align 4
  br label %6

6:                                                ; preds = %17, %1
  %.02 = phi i32 [ %5, %1 ], [ %.13, %17 ]
  %.01 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %.0 = phi i32 [ 1, %1 ], [ %.1, %17 ]
  %7 = icmp slt i32 %.01, %3
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %.not = icmp eq i32 %5, %.02
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8
  %.1 = phi i32 [ 2, %9 ], [ %.0, %8 ]
  %.not4 = icmp eq i32 %.1, 1
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11, %10
  %.13 = phi i32 [ 2, %11 ], [ %.02, %10 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  store i32 2, i32* %16, align 4
  br label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !7

19:                                               ; preds = %6
  %20 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %.0, i32* %20, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @vnum_result11(i32* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 2, i32* %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !8

13:                                               ; preds = %4
  %14 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 1, i32* %14, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @vnum_test12(i32* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  %5 = load i32, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %.02 = phi i32 [ %5, %1 ], [ %.13, %18 ]
  %.01 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %.0 = phi i32 [ 1, %1 ], [ %11, %18 ]
  %7 = icmp slt i32 %.01, %3
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %.not = icmp eq i32 %5, %.02
  br i1 %.not, label %10, label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8
  %.1 = phi i32 [ 2, %9 ], [ %.0, %8 ]
  %11 = sub nsw i32 2, %.1
  %.not4 = icmp eq i32 %.1, 1
  br i1 %.not4, label %13, label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %10
  %.13 = phi i32 [ 2, %12 ], [ %.02, %10 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  store i32 2, i32* %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !9

20:                                               ; preds = %6
  %21 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %.0, i32* %21, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @vnum_result12(i32* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i32, i32* %0, i64 3
  %3 = load i32, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 2, i32* %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !10

13:                                               ; preds = %4
  %14 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 1, i32* %14, align 4
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
