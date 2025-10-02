; ModuleID = './Bubblesort.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@top = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error3 in Bubble.\0A\00", align 1
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
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [18 x i8] c"Error3 in Bubble.\00", align 1

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
define dso_local void @bInitarr() #2 {
  call void @Initrand()
  store i32 0, i32* @biggest, align 4
  store i32 0, i32* @littlest, align 4
  br label %1

1:                                                ; preds = %32, %0
  %.0 = phi i32 [ 1, %0 ], [ %33, %32 ]
  %2 = icmp ult i32 %.0, 501
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #3 {
  call void @bInitarr()
  br label %2

2:                                                ; preds = %32, %1
  %storemerge = phi i32 [ 500, %1 ], [ %34, %32 ]
  store i32 %storemerge, i32* @top, align 4
  %3 = icmp sgt i32 %storemerge, 1
  br i1 %3, label %4, label %35

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %30, %4
  %.0 = phi i32 [ 1, %4 ], [ %31, %30 ]
  %6 = load i32, i32* @top, align 4
  %7 = icmp slt i32 %.0, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = add nuw nsw i32 %.0, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nuw nsw i32 %.0, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %25
  store i32 %24, i32* %26, align 4
  %27 = add nuw nsw i32 %.0, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %28
  store i32 %20, i32* %29, align 4
  br label %30

30:                                               ; preds = %17, %8
  %31 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !6

32:                                               ; preds = %5
  %33 = load i32, i32* @top, align 4
  %34 = add nsw i32 %33, -1
  br label %2, !llvm.loop !7

35:                                               ; preds = %2
  %36 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 1), align 4
  %37 = load i32, i32* @littlest, align 4
  %.not = icmp eq i32 %36, %37
  br i1 %.not, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 500), align 16
  %40 = load i32, i32* @biggest, align 4
  %.not1 = icmp eq i32 %39, %40
  br i1 %.not1, label %42, label %41

41:                                               ; preds = %38, %35
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %41, %38
  %43 = add nsw i32 %0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %46) #6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Bubble(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
