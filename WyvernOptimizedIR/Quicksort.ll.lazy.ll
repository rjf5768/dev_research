; ModuleID = './Quicksort.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c" Error in Quick.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global %struct.node* null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [17 x i8] c" Error in Quick.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Initrand() #0 {
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Rand() #1 {
  %1 = load i64, i64* @seed, align 8
  %2 = mul nsw i64 %1, 1309
  %3 = add nsw i64 %2, 13849
  %4 = and i64 %3, 65535
  store i64 %4, i64* @seed, align 8
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Initarr() #2 {
  call void @Initrand()
  store i32 0, i32* @biggest, align 4
  store i32 0, i32* @littlest, align 4
  br label %1

1:                                                ; preds = %32, %0
  %.0 = phi i32 [ 1, %0 ], [ %33, %32 ]
  %2 = icmp ult i32 %.0, 5001
  br i1 %2, label %3, label %34

3:                                                ; preds = %1
  %4 = call i32 @Rand()
  %5 = sext i32 %4 to i64
  %6 = srem i64 %5, 100000
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, -50000
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %9
  store i32 %8, i32* %10, align 4
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @biggest, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @biggest, align 4
  br label %31

20:                                               ; preds = %3
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @littlest, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @littlest, align 4
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

34:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Quicksort(i32* noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = add nsw i32 %1, %2
  %5 = sdiv i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4
  br label %9

9:                                                ; preds = %40, %3
  %.01 = phi i32 [ %1, %3 ], [ %.23, %40 ]
  %.0 = phi i32 [ %2, %3 ], [ %.2, %40 ]
  br label %10

10:                                               ; preds = %15, %9
  %.12 = phi i32 [ %.01, %9 ], [ %16, %15 ]
  %11 = sext i32 %.12 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, %8
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = add nsw i32 %.12, 1
  br label %10, !llvm.loop !6

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %23, %17
  %.1 = phi i32 [ %.0, %17 ], [ %24, %23 ]
  %19 = sext i32 %.1 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %8, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = add nsw i32 %.1, -1
  br label %18, !llvm.loop !7

25:                                               ; preds = %18
  %.not = icmp sgt i32 %.12, %.1
  br i1 %.not, label %39, label %26

26:                                               ; preds = %25
  %27 = sext i32 %.12 to i64
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %.1 to i64
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %.12 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  store i32 %32, i32* %34, align 4
  %35 = sext i32 %.1 to i64
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  store i32 %29, i32* %36, align 4
  %37 = add nsw i32 %.12, 1
  %38 = add nsw i32 %.1, -1
  br label %39

39:                                               ; preds = %26, %25
  %.23 = phi i32 [ %37, %26 ], [ %.12, %25 ]
  %.2 = phi i32 [ %38, %26 ], [ %.1, %25 ]
  br label %40

40:                                               ; preds = %39
  %.not4 = icmp sgt i32 %.23, %.2
  br i1 %.not4, label %41, label %9, !llvm.loop !8

41:                                               ; preds = %40
  %42 = icmp sgt i32 %.2, %1
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void @Quicksort(i32* noundef %0, i32 noundef %1, i32 noundef %.2)
  br label %44

44:                                               ; preds = %43, %41
  %45 = icmp slt i32 %.23, %2
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  call void @Quicksort(i32* noundef %0, i32 noundef %.23, i32 noundef %2)
  br label %47

47:                                               ; preds = %46, %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #4 {
  call void @Initarr()
  call void @Quicksort(i32* noundef getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 0), i32 noundef 1, i32 noundef 5000)
  %2 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 1), align 4
  %3 = load i32, i32* @littlest, align 4
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 5000), align 16
  %6 = load i32, i32* @biggest, align 4
  %.not1 = icmp eq i32 %5, %6
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %7, %4
  %9 = add nsw i32 %0, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12) #7
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Quick(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
