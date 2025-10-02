; ModuleID = './makegraph.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/mst/makegraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_st = type { [1 x %struct.vert_st*] }
%struct.vert_st = type { i32, %struct.vert_st*, %struct.hash* }
%struct.hash = type { %struct.hash_entry**, i32 (i32)*, i32 }
%struct.hash_entry = type { i32, i8*, %struct.hash_entry* }

@.str = private unnamed_addr constant [14 x i8] c"Make phase 2\0A\00", align 1
@HashRange = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Make phase 3\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Make phase 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Make returning\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c"Make phase 2\00", align 1
@str.1 = private unnamed_addr constant [13 x i8] c"Make phase 3\00", align 1
@str.2 = private unnamed_addr constant [13 x i8] c"Make phase 4\00", align 1
@str.3 = private unnamed_addr constant [15 x i8] c"Make returning\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.graph_st* @MakeGraph(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sdiv i32 %0, %1
  %4 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #6
  %5 = bitcast i8* %4 to %struct.graph_st*
  br label %6

6:                                                ; preds = %11, %2
  %.02 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %7 = icmp eq i32 %.02, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = zext i32 %.02 to i64
  %10 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %5, i64 0, i32 0, i64 %9
  store %struct.vert_st* null, %struct.vert_st** %10, align 8
  br label %11

11:                                               ; preds = %8
  %12 = add nuw nsw i32 %.02, 1
  br label %6, !llvm.loop !4

13:                                               ; preds = %6
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %39, %13
  %.01.in = phi i32 [ %1, %13 ], [ %.01, %39 ]
  %.01 = add nsw i32 %.01.in, -1
  %15 = icmp sgt i32 %.01.in, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %14
  %17 = sext i32 %3 to i64
  %18 = mul nsw i64 %17, 24
  %19 = call noalias i8* @malloc(i64 noundef %18) #6
  %20 = bitcast i8* %19 to %struct.vert_st*
  br label %21

21:                                               ; preds = %34, %16
  %.13 = phi i32 [ 0, %16 ], [ %35, %34 ]
  %.0 = phi %struct.vert_st* [ null, %16 ], [ %27, %34 ]
  %22 = icmp sgt i32 %3, %.13
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = xor i32 %.13, -1
  %25 = add i32 %3, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %20, i64 %26
  %28 = sdiv i32 %0, 4
  store i32 %28, i32* @HashRange, align 4
  %29 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %27, i64 0, i32 0
  store i32 9999999, i32* %29, align 8
  %30 = sdiv i32 %0, 4
  %31 = call %struct.hash* @MakeHash(i32 noundef %30, i32 (i32)* noundef nonnull @hashfunc) #6
  %32 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %20, i64 %26, i32 2
  store %struct.hash* %31, %struct.hash** %32, align 8
  %33 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %20, i64 %26, i32 1
  store %struct.vert_st* %.0, %struct.vert_st** %33, align 8
  br label %34

34:                                               ; preds = %23
  %35 = add nuw nsw i32 %.13, 1
  br label %21, !llvm.loop !6

36:                                               ; preds = %21
  %37 = sext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %5, i64 0, i32 0, i64 %37
  store %struct.vert_st* %.0, %struct.vert_st** %38, align 8
  br label %39

39:                                               ; preds = %36
  br label %14, !llvm.loop !7

40:                                               ; preds = %14
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %45, %40
  %.1.in = phi i32 [ %1, %40 ], [ %.1, %45 ]
  %.1 = add nsw i32 %.1.in, -1
  %42 = icmp sgt i32 %.1.in, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = mul nsw i32 %.1, %3
  call void @AddEdges(i32 noundef %44, %struct.graph_st* noundef %5, i32 noundef %1, i32 noundef %3, i32 noundef %0, i32 noundef %.1)
  br label %45

45:                                               ; preds = %43
  br label %41, !llvm.loop !8

46:                                               ; preds = %41
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.2, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str.3, i64 0, i64 0))
  ret %struct.graph_st* %5
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local %struct.hash* @MakeHash(i32 noundef, i32 (i32)* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @hashfunc(i32 noundef %0) #3 {
  %2 = lshr i32 %0, 3
  %3 = load i32, i32* @HashRange, align 4
  %4 = urem i32 %2, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @AddEdges(i32 noundef %0, %struct.graph_st* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca [1 x %struct.vert_st*], align 8
  br label %8

8:                                                ; preds = %15, %6
  %.01 = phi i32 [ 0, %6 ], [ %16, %15 ]
  %9 = icmp slt i32 %.01, %2
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %1, i64 0, i32 0, i64 %11
  %13 = load %struct.vert_st*, %struct.vert_st** %12, align 8
  %14 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %7, i64 0, i64 0
  store %struct.vert_st* %13, %struct.vert_st** %14, align 8
  br label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !9

17:                                               ; preds = %8
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %1, i64 0, i32 0, i64 %18
  br label %20

20:                                               ; preds = %43, %17
  %.02.in = phi %struct.vert_st** [ %19, %17 ], [ %45, %43 ]
  %.0 = phi i32 [ %0, %17 ], [ %44, %43 ]
  %.02 = load %struct.vert_st*, %struct.vert_st** %.02.in, align 8
  %.not = icmp eq %struct.vert_st* %.02, null
  br i1 %.not, label %46, label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %40, %21
  %.1 = phi i32 [ 0, %21 ], [ %41, %40 ]
  %23 = mul nsw i32 %2, %3
  %24 = icmp slt i32 %.1, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %.not3 = icmp eq i32 %.1, %.0
  br i1 %.not3, label %39, label %26

26:                                               ; preds = %25
  %27 = call i32 @compute_dist(i32 noundef %.1, i32 noundef %.0, i32 noundef %4)
  %28 = srem i32 %.1, %3
  %29 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %7, i64 0, i64 0
  %30 = load %struct.vert_st*, %struct.vert_st** %29, align 8
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %30, i64 %31
  %33 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %.02, i64 0, i32 2
  %34 = load %struct.hash*, %struct.hash** %33, align 8
  %35 = sext i32 %27 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint %struct.vert_st* %32 to i64
  %38 = trunc i64 %37 to i32
  call void @HashInsert(i8* noundef %36, i32 noundef %38, %struct.hash* noundef %34) #6
  br label %39

39:                                               ; preds = %26, %25
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !10

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %.0, 1
  %45 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %.02, i64 0, i32 1
  br label %20, !llvm.loop !11

46:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @compute_dist(i32 noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = icmp slt i32 %0, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5
  %.01 = phi i32 [ %0, %5 ], [ %1, %6 ]
  %.0 = phi i32 [ %1, %5 ], [ %0, %6 ]
  %8 = mul nsw i32 %.01, %2
  %9 = add nsw i32 %8, %.0
  %10 = call i32 @random2(i32 noundef %9)
  %11 = srem i32 %10, 2048
  %12 = add nsw i32 %11, 1
  ret i32 %12
}

declare dso_local void @HashInsert(i8* noundef, i32 noundef, %struct.hash* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @random2(i32 noundef %0) #4 {
  %2 = call i32 @mult(i32 noundef %0, i32 noundef 31415821)
  %3 = add nsw i32 %2, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @mult(i32 noundef %0, i32 noundef %1) #4 {
  %3 = sdiv i32 %0, 10000
  %4 = srem i32 %0, 10000
  %5 = sdiv i32 %1, 10000
  %6 = srem i32 %1, 10000
  %7 = mul nsw i32 %4, %5
  %8 = mul nsw i32 %3, %6
  %9 = add nsw i32 %7, %8
  %10 = srem i32 %9, 10000
  %11 = mul nsw i32 %10, 10000
  %12 = mul nsw i32 %4, %6
  %13 = add nsw i32 %11, %12
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
