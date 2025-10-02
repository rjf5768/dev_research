; ModuleID = './dead.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_test1(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result1(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_test2(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result2(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_test3(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %4 ], [ -1, %5 ]
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %.0, i32* %11, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result3(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %4 ], [ -1, %5 ]
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %.0, i32* %11, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_test4(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %4
  %.01 = phi i32 [ 1, %4 ], [ -1, %5 ]
  %7 = getelementptr inbounds i32, i32* %0, i64 4
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 1
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %12, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %.01, 1
  br label %14

12:                                               ; preds = %6
  %13 = add nsw i32 %.01, -1
  br label %14

14:                                               ; preds = %12, %10
  %.1 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %.1, i32* %19, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result4(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %4 ], [ -1, %5 ]
  %7 = getelementptr inbounds i32, i32* %0, i64 4
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 1
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %12, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %.0, 1
  br label %14

12:                                               ; preds = %6
  %13 = add nsw i32 %.0, -1
  br label %14

14:                                               ; preds = %12, %10
  %.1 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %.1, i32* %19, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_test5(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %4 = icmp slt i32 %.01, %2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 2, i32* %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_result5(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %4 = icmp slt i32 %.0, %2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 2, i32* %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

12:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_test6(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %21, %1
  %.04 = phi i32 [ 0, %1 ], [ %.15, %21 ]
  %.02 = phi i32 [ 0, %1 ], [ %.13, %21 ]
  %.01 = phi i32 [ 0, %1 ], [ %.1, %21 ]
  %.0 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %4 = icmp slt i32 %.0, %2
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %0, i64 1
  %7 = load i32, i32* %6, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %12, label %8

8:                                                ; preds = %5
  %9 = mul nsw i32 %7, %2
  %10 = add nsw i32 %9, %.02
  %11 = add nsw i32 %.01, 1
  br label %16

12:                                               ; preds = %5
  %13 = mul nsw i32 %.04, %2
  %14 = add nsw i32 %13, %.01
  %15 = add nsw i32 %.01, -1
  br label %16

16:                                               ; preds = %12, %8
  %.15 = phi i32 [ %10, %8 ], [ %.04, %12 ]
  %.13 = phi i32 [ %.02, %8 ], [ %14, %12 ]
  %.1 = phi i32 [ %11, %8 ], [ %15, %12 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  store i32 2, i32* %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

23:                                               ; preds = %3
  %24 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %.01, i32* %24, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_result6(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %17, %1
  %.01 = phi i32 [ 0, %1 ], [ %.1, %17 ]
  %.0 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %4 = icmp slt i32 %.0, %2
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %0, i64 1
  %7 = load i32, i32* %6, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %5
  %9 = add nsw i32 %.01, 1
  br label %12

10:                                               ; preds = %5
  %11 = add nsw i32 %.01, -1
  br label %12

12:                                               ; preds = %10, %8
  %.1 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  store i32 2, i32* %16, align 4
  br label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

19:                                               ; preds = %3
  %20 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %.01, i32* %20, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_test7(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result7(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_test8(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %18, %1
  %.01 = phi i32 [ 0, %1 ], [ %.1, %18 ]
  %.0 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %4 = icmp slt i32 %.0, %2
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %0, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = sub i32 0, %.01
  %.not = icmp eq i32 %7, %8
  br i1 %.not, label %11, label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %.01, 1
  br label %13

11:                                               ; preds = %5
  %12 = add nsw i32 %.01, -1
  br label %13

13:                                               ; preds = %11, %9
  %.1 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  store i32 2, i32* %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_result8(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %4 = icmp slt i32 %.0, %2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 2, i32* %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !10

12:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_test9(i32* nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 0, %1 ], [ %6, %5 ]
  %3 = icmp ult i32 %.0, 5
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !11

7:                                                ; preds = %2
  %8 = getelementptr inbounds i32, i32* %0, i64 2
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  store i32 2, i32* %11, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result9(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dead_test10(i32* nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi i32 [ 0, %1 ], [ %7, %6 ]
  %3 = load i32, i32* %0, align 4
  %4 = icmp slt i32 %.0, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5
  %7 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !12

8:                                                ; preds = %2
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result10(i32* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 2, i32* %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_test11(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %2, %4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %1
  %7 = mul nsw i32 %2, %4
  store i32 %7, i32* %0, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @dead_result11(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %2, %4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %1
  %7 = mul nsw i32 %2, %4
  store i32 %7, i32* %0, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 2, i32* %12, align 4
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
