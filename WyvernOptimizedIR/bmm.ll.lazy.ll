; ModuleID = './bmm.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/bmm/bmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@a = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@b = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@BLOCK = dso_local global i32 0, align 4
@NUM = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: bmm <size> <block>\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"size must be in [0, 1024]; block must be <= than size\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"final sum = %f\0A\00", align 1
@str = private unnamed_addr constant [54 x i8] c"size must be in [0, 1024]; block must be <= than size\00", align 1
@str.1 = private unnamed_addr constant [26 x i8] c"Usage: bmm <size> <block>\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @my_rand_r(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = mul i32 %2, 1664525
  %4 = add i32 %3, 1013904223
  store i32 %4, i32* %0, align 4
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 32767
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @init() #1 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %29, %0
  %.0 = phi i32 [ 0, %0 ], [ %30, %29 ]
  %3 = icmp ult i32 %.0, 1024
  br i1 %3, label %4, label %31

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %26, %4
  %.01 = phi i32 [ 0, %4 ], [ %27, %26 ]
  %6 = icmp ult i32 %.01, 1024
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  %8 = call i32 @my_rand_r(i32* noundef nonnull %1)
  %9 = sub nsw i32 %.01, %.0
  %10 = and i32 %9, 31
  %11 = lshr i32 %8, %10
  %12 = and i32 %11, 15
  %13 = uitofp i32 %12 to float
  %14 = zext i32 %.0 to i64
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @a, i64 0, i64 %14, i64 %15
  store float %13, float* %16, align 4
  %17 = call i32 @my_rand_r(i32* noundef nonnull %1)
  %18 = add nuw nsw i32 %.0, %.01
  %19 = and i32 %18, 31
  %20 = shl i32 %17, %19
  %21 = and i32 %20, 15
  %22 = uitofp i32 %21 to float
  %23 = zext i32 %.0 to i64
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @b, i64 0, i64 %23, i64 %24
  store float %22, float* %25, align 4
  br label %26

26:                                               ; preds = %7
  %27 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

31:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @mm_inner(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  br label %4

4:                                                ; preds = %38, %3
  %.02 = phi i32 [ %0, %3 ], [ %39, %38 ]
  %5 = load i32, i32* @BLOCK, align 4
  %6 = add nsw i32 %5, %0
  %7 = icmp slt i32 %.02, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %35, %8
  %.01 = phi i32 [ %1, %8 ], [ %36, %35 ]
  %10 = load i32, i32* @BLOCK, align 4
  %11 = add nsw i32 %10, %1
  %12 = icmp slt i32 %.01, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %32, %13
  %.0 = phi i32 [ %2, %13 ], [ %33, %32 ]
  %15 = load i32, i32* @BLOCK, align 4
  %16 = add nsw i32 %15, %2
  %17 = icmp slt i32 %.0, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = sext i32 %.02 to i64
  %20 = sext i32 %.0 to i64
  %21 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @a, i64 0, i64 %19, i64 %20
  %22 = load float, float* %21, align 4
  %23 = sext i32 %.0 to i64
  %24 = sext i32 %.01 to i64
  %25 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @b, i64 0, i64 %23, i64 %24
  %26 = load float, float* %25, align 4
  %27 = sext i32 %.02 to i64
  %28 = sext i32 %.01 to i64
  %29 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @c, i64 0, i64 %27, i64 %28
  %30 = load float, float* %29, align 4
  %31 = call float @llvm.fmuladd.f32(float %22, float %26, float %30)
  store float %31, float* %29, align 4
  br label %32

32:                                               ; preds = %18
  %33 = add nsw i32 %.0, 1
  br label %14, !llvm.loop !7

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.01, 1
  br label %9, !llvm.loop !8

37:                                               ; preds = %9
  br label %38

38:                                               ; preds = %37
  %39 = add nsw i32 %.02, 1
  br label %4, !llvm.loop !9

40:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @matmult() #2 {
  br label %1

1:                                                ; preds = %21, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %21 ]
  %2 = load i32, i32* @NUM, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %17, %4
  %.01 = phi i32 [ 0, %4 ], [ %19, %17 ]
  %6 = load i32, i32* @NUM, align 4
  %7 = icmp slt i32 %.01, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %13, %8
  %.02 = phi i32 [ 0, %8 ], [ %15, %13 ]
  %10 = load i32, i32* @NUM, align 4
  %11 = icmp slt i32 %.02, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  call void @mm_inner(i32 noundef %.0, i32 noundef %.01, i32 noundef %.02)
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* @BLOCK, align 4
  %15 = add nsw i32 %.02, %14
  br label %9, !llvm.loop !10

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @BLOCK, align 4
  %19 = add nsw i32 %.01, %18
  br label %5, !llvm.loop !11

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* @BLOCK, align 4
  %23 = add nsw i32 %.0, %22
  br label %1, !llvm.loop !12

24:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local float @mm_sum(i32 noundef %0, i32 noundef %1) #4 {
  br label %3

3:                                                ; preds = %21, %2
  %.02 = phi i32 [ %0, %2 ], [ %22, %21 ]
  %.0 = phi float [ 0.000000e+00, %2 ], [ %.1, %21 ]
  %4 = load i32, i32* @BLOCK, align 4
  %5 = add nsw i32 %4, %0
  %6 = icmp slt i32 %.02, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %13, %7
  %.01 = phi i32 [ %1, %7 ], [ %19, %13 ]
  %.1 = phi float [ %.0, %7 ], [ %18, %13 ]
  %9 = load i32, i32* @BLOCK, align 4
  %10 = add nsw i32 %9, %1
  %11 = icmp slt i32 %.01, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  %14 = sext i32 %.02 to i64
  %15 = sext i32 %.01 to i64
  %16 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @c, i64 0, i64 %14, i64 %15
  %17 = load float, float* %16, align 4
  %18 = fadd float %.1, %17
  %19 = add nsw i32 %.01, 1
  br label %8, !llvm.loop !13

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %.02, 1
  br label %3, !llvm.loop !14

23:                                               ; preds = %3
  ret float %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local float @sumup() #4 {
  br label %1

1:                                                ; preds = %15, %0
  %.02 = phi float [ 0.000000e+00, %0 ], [ %.1, %15 ]
  %.0 = phi i32 [ 0, %0 ], [ %17, %15 ]
  %2 = load i32, i32* @NUM, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %10, %4
  %.1 = phi float [ %.02, %4 ], [ %11, %10 ]
  %.01 = phi i32 [ 0, %4 ], [ %13, %10 ]
  %6 = load i32, i32* @NUM, align 4
  %7 = icmp slt i32 %.01, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = call float @mm_sum(i32 noundef %.0, i32 noundef %.01)
  br label %10

10:                                               ; preds = %8
  %11 = fadd float %.1, %9
  %12 = load i32, i32* @BLOCK, align 4
  %13 = add nsw i32 %.01, %12
  br label %5, !llvm.loop !15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* @BLOCK, align 4
  %17 = add nsw i32 %.0, %16
  br label %1, !llvm.loop !16

18:                                               ; preds = %1
  ret float %.02
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #5 {
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #11
  store i32 %7, i32* @NUM, align 4
  %8 = getelementptr inbounds i8*, i8** %1, i64 2
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @atoi(i8* noundef %9) #11
  store i32 %10, i32* @BLOCK, align 4
  %11 = icmp ugt i32 %7, 1024
  %12 = icmp ugt i32 %10, %7
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %4
  call void @init()
  call void @matmult()
  %16 = call float @sumup()
  %17 = fpext float %16 to double
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), double noundef %17) #12
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %14, %3
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }

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
