; ModuleID = './cprop.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/cprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cprop_test1(i32* nocapture noundef writeonly %0) #0 {
  store i32 9, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cprop_result1(i32* nocapture noundef writeonly %0) #0 {
  store i32 9, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cprop_test2(i32* nocapture noundef writeonly %0) #0 {
  store i32 9, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cprop_result2(i32* nocapture noundef writeonly %0) #0 {
  store i32 9, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test3(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 11112, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 12478, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result3(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 11112, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 12478, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test4(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 11112, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 -12212, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result4(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 11112, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 -12212, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test5(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 10, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 15, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 26, i32* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result5(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 10, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 15, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 26, i32* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test6(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 50, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 75, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 105, i32* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result6(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 50, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 75, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 105, i32* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test7(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 10, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 15, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 26, i32* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result7(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 10, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 15, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 26, i32* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test8(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 4, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 3, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 210, i32* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result8(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 4, i32* %4, align 4
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 3, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 210, i32* %8, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @cprop_test9(i32* nocapture noundef %0) #2 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %6, %1
  %.01 = phi i32 [ 1, %1 ], [ %9, %6 ]
  %.0 = phi i32 [ 21, %1 ], [ %8, %6 ]
  %4 = icmp slt i32 %.01, %2
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = mul i32 %.0, 21
  %8 = add i32 %7, -420
  %9 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

10:                                               ; preds = %3
  %11 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %.0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %.01, i32* %12, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @cprop_result9(i32* nocapture noundef %0) #2 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %6, %1
  %.0 = phi i32 [ 1, %1 ], [ %7, %6 ]
  %4 = icmp slt i32 %.0, %2
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 21, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %.0, i32* %10, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test10(i32* nocapture noundef %0) #1 {
  br i1 true, label %2, label %3

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %2
  %5 = getelementptr inbounds i32, i32* %0, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 210
  store i32 %7, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result10(i32* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 210
  store i32 %4, i32* %0, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @cprop_test11(i32* nocapture noundef %0) #2 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %8, %1
  %.01 = phi i32 [ 1, %1 ], [ %9, %8 ]
  %.0 = phi i32 [ 1, %1 ], [ %.1, %8 ]
  %4 = icmp slt i32 %.01, %2
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5
  %.1 = phi i32 [ %.0, %5 ], [ %.01, %6 ]
  br label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !7

10:                                               ; preds = %3
  %11 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %.0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %.01, i32* %12, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @cprop_result11(i32* nocapture noundef %0) #2 {
  %2 = load i32, i32* %0, align 4
  br label %3

3:                                                ; preds = %6, %1
  %.0 = phi i32 [ 1, %1 ], [ %7, %6 ]
  %4 = icmp slt i32 %.0, %2
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %.0, i32* %10, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test12(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = mul nsw i32 %2, 21
  %6 = sdiv i32 25, %2
  %7 = add nsw i32 %5, %6
  br label %8

8:                                                ; preds = %4, %1
  %.0 = phi i32 [ %7, %4 ], [ %2, %1 ]
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %.0, i32* %9, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result12(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %.0 = phi i32 [ 110, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %.0, i32* %6, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test13(i32* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %0, align 4
  %5 = icmp eq i32 %3, 5
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = icmp eq i32 %4, 10
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = mul nsw i32 %3, 21
  %10 = sdiv i32 100, %4
  %11 = add nsw i32 %9, %10
  br label %12

12:                                               ; preds = %8, %6, %1
  %.0 = phi i32 [ %11, %8 ], [ %3, %6 ], [ %3, %1 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %.0, i32* %13, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result13(i32* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %0, align 4
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %5, %1
  %.0 = phi i32 [ 115, %8 ], [ %3, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %.0, i32* %10, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_test14(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds i32, i32* %0, i64 2
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %12, label %7

7:                                                ; preds = %1
  %8 = add nsw i32 %2, 30
  %9 = add nsw i32 %8, %4
  %10 = add nsw i32 %9, 30
  %11 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %10, i32* %11, align 4
  br label %15

12:                                               ; preds = %1
  %.neg = mul i32 %4, -20
  %.neg1 = add i32 %.neg, 600
  %13 = add i32 %.neg1, %2
  %14 = mul nsw i32 %13, 10
  store i32 %14, i32* %0, align 4
  br label %15

15:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @cprop_result14(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds i32, i32* %0, i64 2
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %1
  %8 = add nsw i32 %2, 60
  %9 = add nsw i32 %8, %4
  %10 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %9, i32* %10, align 4
  br label %14

11:                                               ; preds = %1
  %.neg = mul i32 %4, -20
  %.neg1 = add i32 %.neg, 600
  %12 = add i32 %.neg1, %2
  %13 = mul nsw i32 %12, 10
  store i32 %13, i32* %0, align 4
  br label %14

14:                                               ; preds = %11, %7
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
