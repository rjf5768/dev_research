; ModuleID = './dijkstra.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/network-dijkstra/dijkstra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._NODE = type { i32, i32 }

@qHead = dso_local global %struct._QITEM* null, align 8
@g_qCount = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = dso_local global i32 0, align 4
@rgnNodes = dso_local global [100 x %struct._NODE] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@iNode = dso_local global i32 0, align 4
@iDist = dso_local global i32 0, align 4
@iPrev = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@AdjMatrix = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_path(%struct._NODE* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct._NODE, %struct._NODE* %0, i64 %3, i32 1
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 9999
  br i1 %.not, label %10, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct._NODE, %struct._NODE* %0, i64 %7, i32 1
  %9 = load i32, i32* %8, align 4
  call void @print_path(%struct._NODE* noundef %0, i32 noundef %9)
  br label %10

10:                                               ; preds = %6, %2
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %1) #7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* noundef %12) #7
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %5 = bitcast i8* %4 to %struct._QITEM*
  %6 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %7, label %10

7:                                                ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %8) #8
  call void @exit(i32 noundef 1) #9
  unreachable

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %5, i64 0, i32 1
  store i32 %1, i32* %12, align 4
  %13 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %5, i64 0, i32 2
  store i32 %2, i32* %13, align 8
  %14 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %5, i64 0, i32 3
  store %struct._QITEM* null, %struct._QITEM** %14, align 8
  %.not1 = icmp eq %struct._QITEM* %6, null
  br i1 %.not1, label %15, label %16

15:                                               ; preds = %10
  store i8* %4, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8
  br label %26

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %20, %16
  %.0 = phi %struct._QITEM* [ %6, %16 ], [ %22, %20 ]
  %18 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %.0, i64 0, i32 3
  %19 = load %struct._QITEM*, %struct._QITEM** %18, align 8
  %.not2 = icmp eq %struct._QITEM* %19, null
  br i1 %.not2, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %.0, i64 0, i32 3
  %22 = load %struct._QITEM*, %struct._QITEM** %21, align 8
  br label %17, !llvm.loop !4

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %.0, i64 0, i32 3
  %25 = bitcast %struct._QITEM** %24 to i8**
  store i8* %4, i8** %25, align 8
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* @g_qCount, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @g_qCount, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dequeue(i32* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2) #0 {
  %4 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %.not = icmp eq %struct._QITEM* %4, null
  br i1 %.not, label %20, label %5

5:                                                ; preds = %3
  %6 = load i8*, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %0, align 4
  %9 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %10 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %9, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  %12 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %13 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %12, i64 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %2, align 4
  %15 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %16 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %15, i64 0, i32 3
  %17 = load %struct._QITEM*, %struct._QITEM** %16, align 8
  store %struct._QITEM* %17, %struct._QITEM** @qHead, align 8
  call void @free(i8* noundef %6) #7
  %18 = load i32, i32* @g_qCount, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @g_qCount, align 4
  br label %20

20:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @qcount() #4 {
  %1 = load i32, i32* @g_qCount, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %storemerge = phi i32 [ 0, %2 ], [ %13, %11 ]
  store i32 %storemerge, i32* @ch, align 4
  %4 = icmp slt i32 %storemerge, 100
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = load i32, i32* @ch, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %7, i32 0
  store i32 9999, i32* %8, align 8
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %9, i32 1
  store i32 9999, i32* %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* @ch, align 4
  %13 = add nsw i32 %12, 1
  br label %3, !llvm.loop !6

14:                                               ; preds = %3
  %15 = icmp eq i32 %0, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([53 x i8], [53 x i8]* @str, i64 0, i64 0))
  br label %77

17:                                               ; preds = %14
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %18, i32 0
  store i32 0, i32* %19, align 8
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %20, i32 1
  store i32 9999, i32* %21, align 4
  call void @enqueue(i32 noundef %0, i32 noundef 0, i32 noundef 9999)
  br label %22

22:                                               ; preds = %70, %17
  %23 = call i32 @qcount()
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  call void @dequeue(i32* noundef nonnull @iNode, i32* noundef nonnull @iDist, i32* noundef nonnull @iPrev)
  br label %26

26:                                               ; preds = %67, %25
  %storemerge1 = phi i32 [ 0, %25 ], [ %69, %67 ]
  store i32 %storemerge1, i32* @i, align 4
  %27 = icmp slt i32 %storemerge1, 100
  br i1 %27, label %28, label %70

28:                                               ; preds = %26
  %29 = load i32, i32* @iNode, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* @i, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @iCost, align 4
  %.not = icmp eq i32 %34, 9999
  br i1 %.not, label %66, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @i, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %37, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 9999
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @i, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %43, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @iCost, align 4
  %47 = load i32, i32* @iDist, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %41, %35
  %51 = load i32, i32* @iDist, align 4
  %52 = load i32, i32* @iCost, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @i, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %55, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @iNode, align 4
  %58 = sext i32 %54 to i64
  %59 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %58, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @i, align 4
  %61 = load i32, i32* @iDist, align 4
  %62 = load i32, i32* @iCost, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @iNode, align 4
  call void @enqueue(i32 noundef %60, i32 noundef %63, i32 noundef %64)
  br label %65

65:                                               ; preds = %50, %41
  br label %66

66:                                               ; preds = %65, %28
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @i, align 4
  %69 = add nsw i32 %68, 1
  br label %26, !llvm.loop !7

70:                                               ; preds = %26
  br label %22, !llvm.loop !8

71:                                               ; preds = %22
  %72 = sext i32 %1 to i64
  %73 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %72, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 noundef %74) #7
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #7
  call void @print_path(%struct._NODE* noundef getelementptr inbounds ([100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 0), i32 noundef %1)
  %putchar = call i32 @putchar(i32 10)
  br label %77

77:                                               ; preds = %71, %16
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #5 {
  %3 = alloca i32, align 4
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %6) #8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %8) #8
  br label %10

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #7
  br label %14

14:                                               ; preds = %28, %10
  %.01 = phi i32 [ 0, %10 ], [ %29, %28 ]
  %15 = icmp ult i32 %.01, 100
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %25, %16
  %.0 = phi i32 [ 0, %16 ], [ %26, %25 ]
  %18 = icmp ult i32 %.0, 100
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %3) #7
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %.01 to i64
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %22, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i32 %.0, 1
  br label %17, !llvm.loop !9

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !10

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %36, %30
  %.12 = phi i32 [ 0, %30 ], [ %37, %36 ]
  %.1 = phi i32 [ 50, %30 ], [ %38, %36 ]
  %32 = icmp ult i32 %.12, 100
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = srem i32 %.1, 100
  %35 = call i32 @dijkstra(i32 noundef %.12, i32 noundef %34)
  br label %36

36:                                               ; preds = %33
  %37 = add nuw nsw i32 %.12, 1
  %38 = add nsw i32 %34, 1
  br label %31, !llvm.loop !11

39:                                               ; preds = %31
  call void @exit(i32 noundef 0) #9
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

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
