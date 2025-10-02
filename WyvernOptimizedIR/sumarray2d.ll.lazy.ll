; ModuleID = './sumarray2d.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/sumarray2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Sum(Array[%d,%d] = %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @SumArray([100 x i32]* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %18, %3
  %.02 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %.0 = phi i32 [ 0, %3 ], [ %.1, %18 ]
  %5 = icmp ult i32 %.02, %1
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %10, %6
  %.01 = phi i32 [ 0, %6 ], [ %16, %10 ]
  %.1 = phi i32 [ %.0, %6 ], [ %15, %10 ]
  %8 = icmp ult i32 %.01, %2
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = zext i32 %.02 to i64
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds [100 x i32], [100 x i32]* %0, i64 %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %.1, %14
  %16 = add i32 %.01, 1
  br label %7, !llvm.loop !4

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17
  %19 = add i32 %.02, 1
  br label %4, !llvm.loop !6

20:                                               ; preds = %4
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [100 x [100 x i32]], align 16
  br label %2

2:                                                ; preds = %9, %0
  %.01 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %3 = icmp ult i32 %.01, 100
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = sub i32 0, %.01
  %6 = zext i32 %.01 to i64
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %1, i64 0, i64 %6, i64 %7
  store i32 %5, i32* %8, align 4
  br label %9

9:                                                ; preds = %4
  %10 = add i32 %.01, 1
  br label %2, !llvm.loop !7

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %27, %11
  %.1 = phi i32 [ 0, %11 ], [ %28, %27 ]
  %13 = icmp ult i32 %.1, 100
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %24, %14
  %.0 = phi i32 [ 0, %14 ], [ %25, %24 ]
  %16 = icmp ult i32 %.0, 100
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %.not = icmp eq i32 %.0, %.1
  br i1 %.not, label %23, label %18

18:                                               ; preds = %17
  %19 = add i32 %.1, %.0
  %20 = zext i32 %.1 to i64
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %1, i64 0, i64 %20, i64 %21
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %17
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.0, 1
  br label %15, !llvm.loop !8

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = add i32 %.1, 1
  br label %12, !llvm.loop !9

29:                                               ; preds = %12
  %30 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %1, i64 0, i64 0
  %31 = call i32 @SumArray([100 x i32]* noundef nonnull %30, i32 noundef 100, i32 noundef 100)
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i32 noundef 100, i32 noundef %31) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
