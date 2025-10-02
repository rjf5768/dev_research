; ModuleID = './test_indvars.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/test_indvars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Checksum = %.0lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [100 x [200 x i32]], align 16
  br label %2

2:                                                ; preds = %14, %0
  %.01 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %3 = icmp ult i32 %.01, 100
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %11, %4
  %.03 = phi i32 [ 0, %4 ], [ %12, %11 ]
  %6 = icmp ult i32 %.03, 200
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = zext i32 %.03 to i64
  %10 = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %1, i64 0, i64 %8, i64 %9
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %.03, 1
  br label %5, !llvm.loop !4

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.01, 2
  br label %2, !llvm.loop !6

16:                                               ; preds = %2
  %17 = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %1, i64 0, i64 0, i64 0
  %18 = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %1, i64 0, i64 0
  call void @test_indvars(i32* noundef nonnull %17, [200 x i32]* noundef nonnull %18)
  br label %19

19:                                               ; preds = %34, %16
  %.12 = phi i32 [ 0, %16 ], [ %35, %34 ]
  %.0 = phi double [ 0.000000e+00, %16 ], [ %.1, %34 ]
  %20 = icmp ult i32 %.12, 100
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %25, %21
  %.14 = phi i32 [ 0, %21 ], [ %32, %25 ]
  %.1 = phi double [ %.0, %21 ], [ %31, %25 ]
  %23 = icmp ult i32 %.14, 200
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = zext i32 %.12 to i64
  %27 = zext i32 %.14 to i64
  %28 = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %1, i64 0, i64 %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to double
  %31 = fadd double %.1, %30
  %32 = add nuw nsw i32 %.14, 1
  br label %22, !llvm.loop !7

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.12, 2
  br label %19, !llvm.loop !8

36:                                               ; preds = %19
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), double noundef %.0) #3
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @test_indvars(i32* nocapture noundef writeonly %0, [200 x i32]* nocapture noundef %1) #1 {
  %3 = getelementptr inbounds [200 x i32], [200 x i32]* %1, i64 3, i64 6
  store i32 12345, i32* %3, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 12345, i32* %4, align 4
  br label %5

5:                                                ; preds = %10, %2
  %.01 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %6 = icmp ult i32 %.01, 100
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  store i32 %.01, i32* %9, align 4
  br label %10

10:                                               ; preds = %7
  %11 = add i32 %.01, 2
  br label %5, !llvm.loop !9

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %19, %12
  %.1 = phi i32 [ 3, %12 ], [ %20, %19 ]
  %14 = icmp ult i32 %.1, 103
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = add i32 %.1, 4
  %17 = zext i32 %.1 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15
  %20 = add i32 %.1, 1
  br label %13, !llvm.loop !10

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %39, %21
  %.2 = phi i32 [ 13, %21 ], [ %40, %39 ]
  %23 = icmp ult i32 %.2, 100
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %36, %24
  %.0 = phi i32 [ 0, %24 ], [ %37, %36 ]
  %26 = icmp ult i32 %.0, 100
  br i1 %26, label %27, label %38

27:                                               ; preds = %25
  %28 = zext i32 %.2 to i64
  %29 = zext i32 %.2 to i64
  %30 = getelementptr inbounds [200 x i32], [200 x i32]* %1, i64 %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %.2 to i64
  %33 = udiv i32 %.0, 3
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [200 x i32], [200 x i32]* %1, i64 %32, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %27
  %37 = add i32 %.0, 3
  br label %25, !llvm.loop !11

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = add i32 %.2, 1
  br label %22, !llvm.loop !12

41:                                               ; preds = %22
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
