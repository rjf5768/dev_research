; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/network-dijkstra/dijkstra.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_path(%struct._NODE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._NODE*, align 8
  %4 = alloca i32, align 4
  store %struct._NODE* %0, %struct._NODE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._NODE*, %struct._NODE** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct._NODE, %struct._NODE* %5, i64 %7
  %9 = getelementptr inbounds %struct._NODE, %struct._NODE* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 9999
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct._NODE*, %struct._NODE** %3, align 8
  %14 = load %struct._NODE*, %struct._NODE** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct._NODE, %struct._NODE* %14, i64 %16
  %18 = getelementptr inbounds %struct._NODE, %struct._NODE* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  call void @print_path(%struct._NODE* noundef %13, i32 noundef %19)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @fflush(%struct._IO_FILE* noundef %23)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._QITEM*, align 8
  %8 = alloca %struct._QITEM*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call noalias i8* @malloc(i64 noundef 24) #4
  %10 = bitcast i8* %9 to %struct._QITEM*
  store %struct._QITEM* %10, %struct._QITEM** %7, align 8
  %11 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %11, %struct._QITEM** %8, align 8
  %12 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %13 = icmp ne %struct._QITEM* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %20 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %23 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %26 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %28 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %27, i32 0, i32 3
  store %struct._QITEM* null, %struct._QITEM** %28, align 8
  %29 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %30 = icmp ne %struct._QITEM* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  store %struct._QITEM* %32, %struct._QITEM** @qHead, align 8
  br label %47

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %39, %33
  %35 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %36 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %35, i32 0, i32 3
  %37 = load %struct._QITEM*, %struct._QITEM** %36, align 8
  %38 = icmp ne %struct._QITEM* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %41 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %40, i32 0, i32 3
  %42 = load %struct._QITEM*, %struct._QITEM** %41, align 8
  store %struct._QITEM* %42, %struct._QITEM** %8, align 8
  br label %34, !llvm.loop !4

43:                                               ; preds = %34
  %44 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %45 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %46 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %45, i32 0, i32 3
  store %struct._QITEM* %44, %struct._QITEM** %46, align 8
  br label %47

47:                                               ; preds = %43, %31
  %48 = load i32, i32* @g_qCount, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @g_qCount, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dequeue(i32* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._QITEM*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %8, %struct._QITEM** %7, align 8
  %9 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %10 = icmp ne %struct._QITEM* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %13 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %17 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %21 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %25 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %24, i32 0, i32 3
  %26 = load %struct._QITEM*, %struct._QITEM** %25, align 8
  store %struct._QITEM* %26, %struct._QITEM** @qHead, align 8
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %28 = bitcast %struct._QITEM* %27 to i8*
  call void @free(i8* noundef %28) #4
  %29 = load i32, i32* @g_qCount, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @g_qCount, align 4
  br label %31

31:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @qcount() #0 {
  %1 = load i32, i32* @g_qCount, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* @ch, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* @ch, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* @ch, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %11
  %13 = getelementptr inbounds %struct._NODE, %struct._NODE* %12, i32 0, i32 0
  store i32 9999, i32* %13, align 8
  %14 = load i32, i32* @ch, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %15
  %17 = getelementptr inbounds %struct._NODE, %struct._NODE* %16, i32 0, i32 1
  store i32 9999, i32* %17, align 4
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* @ch, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @ch, align 4
  br label %6, !llvm.loop !6

21:                                               ; preds = %6
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %104

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %29
  %31 = getelementptr inbounds %struct._NODE, %struct._NODE* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %33
  %35 = getelementptr inbounds %struct._NODE, %struct._NODE* %34, i32 0, i32 1
  store i32 9999, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  call void @enqueue(i32 noundef %36, i32 noundef 0, i32 noundef 9999)
  br label %37

37:                                               ; preds = %93, %27
  %38 = call i32 @qcount()
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %37
  call void @dequeue(i32* noundef @iNode, i32* noundef @iDist, i32* noundef @iPrev)
  store i32 0, i32* @i, align 4
  br label %41

41:                                               ; preds = %90, %40
  %42 = load i32, i32* @i, align 4
  %43 = icmp slt i32 %42, 100
  br i1 %43, label %44, label %93

44:                                               ; preds = %41
  %45 = load i32, i32* @iNode, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %46
  %48 = load i32, i32* @i, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %47, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @iCost, align 4
  %52 = icmp ne i32 %51, 9999
  br i1 %52, label %53, label %89

53:                                               ; preds = %44
  %54 = load i32, i32* @i, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %55
  %57 = getelementptr inbounds %struct._NODE, %struct._NODE* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 9999, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @i, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %62
  %64 = getelementptr inbounds %struct._NODE, %struct._NODE* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @iCost, align 4
  %67 = load i32, i32* @iDist, align 4
  %68 = add nsw i32 %66, %67
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %60, %53
  %71 = load i32, i32* @iDist, align 4
  %72 = load i32, i32* @iCost, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @i, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %75
  %77 = getelementptr inbounds %struct._NODE, %struct._NODE* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* @iNode, align 4
  %79 = load i32, i32* @i, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %80
  %82 = getelementptr inbounds %struct._NODE, %struct._NODE* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @i, align 4
  %84 = load i32, i32* @iDist, align 4
  %85 = load i32, i32* @iCost, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @iNode, align 4
  call void @enqueue(i32 noundef %83, i32 noundef %86, i32 noundef %87)
  br label %88

88:                                               ; preds = %70, %60
  br label %89

89:                                               ; preds = %88, %44
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* @i, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @i, align 4
  br label %41, !llvm.loop !7

93:                                               ; preds = %41
  br label %37, !llvm.loop !8

94:                                               ; preds = %37
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %96
  %98 = getelementptr inbounds %struct._NODE, %struct._NODE* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 noundef %99)
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  call void @print_path(%struct._NODE* noundef getelementptr inbounds ([100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 0), i32 noundef %102)
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %94, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call noalias %struct._IO_FILE* @fopen(i8* noundef %20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %21, %struct._IO_FILE** %9, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %43, %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 100
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* noundef %8)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %34
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [100 x i32], [100 x i32]* %35, i64 0, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %26, !llvm.loop !9

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %22, !llvm.loop !10

46:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  store i32 50, i32* %7, align 4
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 100
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = srem i32 %51, 100
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dijkstra(i32 noundef %53, i32 noundef %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %47, !llvm.loop !11

61:                                               ; preds = %47
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
