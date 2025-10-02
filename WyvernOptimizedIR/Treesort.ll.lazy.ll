; ModuleID = './Treesort.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Treesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@tree = dso_local global %struct.node* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" Error in Tree.\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
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
@str = private unnamed_addr constant [16 x i8] c" Error in Tree.\00", align 1

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
define dso_local void @tInitarr() #2 {
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateNode(%struct.node** nocapture noundef %0, i32 noundef %1) #3 {
  %3 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #8
  %4 = bitcast %struct.node** %0 to i8**
  store i8* %3, i8** %4, align 8
  %.cast = bitcast i8* %3 to %struct.node*
  %5 = getelementptr inbounds %struct.node, %struct.node* %.cast, i64 0, i32 0
  store %struct.node* null, %struct.node** %5, align 8
  %.cast1 = bitcast i8* %3 to %struct.node*
  %6 = getelementptr inbounds %struct.node, %struct.node* %.cast1, i64 0, i32 1
  store %struct.node* null, %struct.node** %6, align 8
  %7 = load %struct.node*, %struct.node** %0, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i64 0, i32 2
  store i32 %1, i32* %8, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Insert(i32 noundef %0, %struct.node* nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp slt i32 %4, %0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0
  %8 = load %struct.node*, %struct.node** %7, align 8
  %9 = icmp eq %struct.node* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0
  call void @CreateNode(%struct.node** noundef %11, i32 noundef %0)
  br label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0
  %14 = load %struct.node*, %struct.node** %13, align 8
  call void @Insert(i32 noundef %0, %struct.node* noundef %14)
  br label %15

15:                                               ; preds = %12, %10
  br label %31

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, %0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 1
  %22 = load %struct.node*, %struct.node** %21, align 8
  %23 = icmp eq %struct.node* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 1
  call void @CreateNode(%struct.node** noundef nonnull %25, i32 noundef %0)
  br label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 1
  %28 = load %struct.node*, %struct.node** %27, align 8
  call void @Insert(i32 noundef %0, %struct.node* noundef %28)
  br label %29

29:                                               ; preds = %26, %24
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %30, %15
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @Checktree(%struct.node* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %3 = load %struct.node*, %struct.node** %2, align 8
  %.not = icmp eq %struct.node* %3, null
  br i1 %.not, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i64 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %10 = load i32, i32* %9, align 8
  %.not4 = icmp sgt i32 %8, %10
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %4
  br label %20

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %14 = load %struct.node*, %struct.node** %13, align 8
  %15 = call i32 @Checktree(%struct.node* noundef %14)
  %.not5 = icmp eq i32 %15, 0
  br i1 %.not5, label %17, label %16

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %18 = xor i1 %.not5, true
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %17, %11
  %.0 = phi i32 [ 0, %11 ], [ %19, %17 ]
  br label %21

21:                                               ; preds = %20, %1
  %.1 = phi i32 [ %.0, %20 ], [ 1, %1 ]
  %22 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %23 = load %struct.node*, %struct.node** %22, align 8
  %.not1 = icmp eq %struct.node* %23, null
  br i1 %.not1, label %41, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %26 = load %struct.node*, %struct.node** %25, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i64 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %30 = load i32, i32* %29, align 8
  %.not2 = icmp slt i32 %28, %30
  br i1 %.not2, label %32, label %31

31:                                               ; preds = %24
  br label %40

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %34 = load %struct.node*, %struct.node** %33, align 8
  %35 = call i32 @Checktree(%struct.node* noundef %34)
  %.not3 = icmp eq i32 %35, 0
  br i1 %.not3, label %38, label %36

36:                                               ; preds = %32
  %37 = icmp ne i32 %.1, 0
  %phi.cast = zext i1 %37 to i32
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ 0, %32 ], [ %phi.cast, %36 ]
  br label %40

40:                                               ; preds = %38, %31
  %.2 = phi i32 [ 0, %31 ], [ %39, %38 ]
  br label %41

41:                                               ; preds = %40, %21
  %.3 = phi i32 [ %.2, %40 ], [ %.1, %21 ]
  ret i32 %.3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Trees(i32 noundef %0) #3 {
  call void @tInitarr()
  %2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #8
  store i8* %2, i8** bitcast (%struct.node** @tree to i8**), align 8
  %.cast = bitcast i8* %2 to %struct.node*
  %3 = getelementptr inbounds %struct.node, %struct.node* %.cast, i64 0, i32 0
  store %struct.node* null, %struct.node** %3, align 8
  %.cast1 = bitcast i8* %2 to %struct.node*
  %4 = getelementptr inbounds %struct.node, %struct.node* %.cast1, i64 0, i32 1
  store %struct.node* null, %struct.node** %4, align 8
  %5 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 1), align 4
  %6 = load %struct.node*, %struct.node** @tree, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i64 0, i32 2
  store i32 %5, i32* %7, align 8
  br label %8

8:                                                ; preds = %15, %1
  %.0 = phi i32 [ 2, %1 ], [ %16, %15 ]
  %9 = icmp ult i32 %.0, 5001
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.node*, %struct.node** @tree, align 8
  call void @Insert(i32 noundef %13, %struct.node* noundef %14)
  br label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !6

17:                                               ; preds = %8
  %18 = add nsw i32 %0, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %21) #8
  %23 = load %struct.node*, %struct.node** @tree, align 8
  %24 = call i32 @Checktree(%struct.node* noundef %23)
  %.not = icmp eq i32 %24, 0
  br i1 %.not, label %25, label %26

25:                                               ; preds = %17
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Trees(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
