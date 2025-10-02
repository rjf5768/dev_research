; ModuleID = './matrix.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"get_gcd(%d, %d) = %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @mysort(i32* nocapture noundef readonly %0, i32* nocapture noundef %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %.0 = phi i32 [ 0, %2 ], [ %12, %6 ]
  %4 = icmp ult i32 %.0, 8
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  br label %13

6:                                                ; preds = %3
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  store i32 %9, i32* %11, align 4
  %12 = add i32 %.0, 1
  br label %3

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %44, %13
  %.1 = phi i32 [ 0, %13 ], [ %45, %44 ]
  %15 = icmp ult i32 %.1, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  br label %46

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %41, %17
  %.01 = phi i32 [ %.1, %17 ], [ %42, %41 ]
  %19 = icmp ult i32 %.01, 8
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  br label %43

21:                                               ; preds = %18
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds i32, i32* %1, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = zext i32 %.1 to i64
  %31 = getelementptr inbounds i32, i32* %1, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %.01 to i64
  %34 = getelementptr inbounds i32, i32* %1, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %.1 to i64
  %37 = getelementptr inbounds i32, i32* %1, i64 %36
  store i32 %35, i32* %37, align 4
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds i32, i32* %1, i64 %38
  store i32 %32, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %21
  br label %41

41:                                               ; preds = %40
  %42 = add i32 %.01, 1
  br label %18

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = add i32 %.1, 1
  br label %14

46:                                               ; preds = %16
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i32 @get_gcd(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %8

5:                                                ; preds = %2
  %6 = srem i32 %0, %1
  %7 = call i32 @get_gcd(i32 noundef %1, i32 noundef %6)
  br label %8

8:                                                ; preds = %5, %4
  %.0 = phi i32 [ %0, %4 ], [ %7, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_test([8 x i32]* nocapture noundef readonly %0, [8 x i32]* nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x [8 x i32]], align 16
  %4 = alloca [8 x i32], align 16
  br label %5

5:                                                ; preds = %37, %2
  %.02 = phi i32 [ 0, %2 ], [ %47, %37 ]
  %6 = icmp ult i32 %.02, 8
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  br label %48

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %35, %8
  %.01 = phi i32 [ 0, %8 ], [ %36, %35 ]
  %10 = icmp ult i32 %.01, 8
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  br label %37

12:                                               ; preds = %9
  %13 = zext i32 %.02 to i64
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %3, i64 0, i64 %13, i64 %14
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %19, %12
  %.0 = phi i32 [ 0, %12 ], [ %34, %19 ]
  %17 = icmp ult i32 %.0, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %35

19:                                               ; preds = %16
  %20 = zext i32 %.02 to i64
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %0, i64 %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %.0 to i64
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %23, %27
  %29 = zext i32 %.02 to i64
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %3, i64 0, i64 %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = add i32 %.0, 1
  br label %16

35:                                               ; preds = %18
  %36 = add i32 %.01, 1
  br label %9

37:                                               ; preds = %11
  %38 = zext i32 %.02 to i64
  %39 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %3, i64 0, i64 %38, i64 0
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  call void @mysort(i32* noundef nonnull %39, i32* noundef nonnull %40)
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @get_gcd(i32 noundef %42, i32 noundef %44)
  %46 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %42, i32 noundef %44, i32 noundef %45) #4
  %47 = add i32 %.02, 1
  br label %5

48:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [8 x [8 x i32]], align 16
  %2 = alloca [8 x [8 x i32]], align 16
  br label %3

3:                                                ; preds = %24, %0
  %.01 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %4 = icmp ult i32 %.01, 8
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %21, %5
  %.0 = phi i32 [ 0, %5 ], [ %22, %21 ]
  %7 = icmp ult i32 %.0, 8
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = add nuw nsw i32 %.01, 1
  %10 = add nuw nsw i32 %.0, 79
  %11 = mul nsw i32 %9, %10
  %12 = zext i32 %.01 to i64
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %1, i64 0, i64 %12, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = add nsw i32 %.01, -1
  %16 = add nuw nsw i32 %.0, 255
  %17 = mul nsw i32 %15, %16
  %18 = zext i32 %.01 to i64
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %2, i64 0, i64 %18, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %8
  %22 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

26:                                               ; preds = %3
  %27 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %1, i64 0, i64 0
  %28 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %2, i64 0, i64 0
  %29 = call i32 @my_test([8 x i32]* noundef nonnull %27, [8 x i32]* noundef nonnull %28)
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
