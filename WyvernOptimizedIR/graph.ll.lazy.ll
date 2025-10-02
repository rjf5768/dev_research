; ModuleID = './graph.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }

@.str = private unnamed_addr constant [21 x i8] c"nEdge + 1 >= nVertex\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/graph.c\00", align 1
@__PRETTY_FUNCTION__.GenGraph = private unnamed_addr constant [29 x i8] c"Vertices *GenGraph(int, int)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"nEdge <= nVertex * (nVertex - 1) / 2\00", align 1
@generatedEdges = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"graph != NULL_VERTEX\00", align 1
@__PRETTY_FUNCTION__.AddEdges = private unnamed_addr constant [41 x i8] c"Vertices *AddEdges(Vertices *, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nEdge >= 0\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"vertex1 != vertex2\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Could not malloc\0A\00", align 1
@id = internal global i32 1, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"graph != NULL\00", align 1
@__PRETTY_FUNCTION__.PrintGraph = private unnamed_addr constant [28 x i8] c"void PrintGraph(Vertices *)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Vertex %d is connected to:\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" %d(%d)[%d]\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @GenGraph(i32 noundef %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, 1
  %.not = icmp slt i32 %3, %0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.GenGraph, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %7 = add nsw i32 %0, -1
  %8 = mul nsw i32 %7, %0
  %9 = sdiv i32 %8, 2
  %.not1 = icmp slt i32 %9, %1
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %6
  br label %12

11:                                               ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.GenGraph, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  store i32 0, i32* @generatedEdges, align 4
  %13 = call %struct._Vertices* @GenTree(i32 noundef %0)
  %14 = sub nsw i32 %1, %0
  %15 = add nsw i32 %14, 1
  %16 = call %struct._Vertices* @AddEdges(%struct._Vertices* noundef %13, i32 noundef %0, i32 noundef %15)
  ret %struct._Vertices* %13

UnifiedUnreachableBlock:                          ; preds = %11, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @GenTree(i32 noundef %0) #0 {
  %2 = call %struct._Vertices* @NewVertex()
  %3 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i64 0, i32 2
  store %struct._Vertices* %2, %struct._Vertices** %3, align 8
  br label %4

4:                                                ; preds = %46, %1
  %.0 = phi i32 [ 1, %1 ], [ %47, %46 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %48

6:                                                ; preds = %4
  %7 = call %struct._Vertices* @NewVertex()
  %8 = call %struct._Edges* @NewEdge()
  %9 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i64 0, i32 1
  store %struct._Edges* %8, %struct._Edges** %9, align 8
  %10 = call i64 @random() #7
  %11 = zext i32 %.0 to i64
  %12 = srem i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct._Vertices* @PickVertex(%struct._Vertices* noundef %2, i32 noundef %13)
  %15 = getelementptr inbounds %struct._Edges, %struct._Edges* %8, i64 0, i32 2
  store %struct._Vertices* %14, %struct._Vertices** %15, align 8
  %16 = call i64 @random() #7
  %17 = add nsw i64 %16, 1
  %18 = srem i64 %17, 100
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct._Edges, %struct._Edges* %8, i64 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct._Edges, %struct._Edges* %8, i64 0, i32 1
  store %struct._Vertices* %7, %struct._Vertices** %21, align 8
  %22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i64 0, i32 2
  %23 = load %struct._Vertices*, %struct._Vertices** %22, align 8
  %24 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i64 0, i32 2
  store %struct._Vertices* %23, %struct._Vertices** %24, align 8
  %25 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i64 0, i32 2
  store %struct._Vertices* %7, %struct._Vertices** %25, align 8
  %26 = call %struct._Edges* @NewEdge()
  %27 = getelementptr inbounds %struct._Edges, %struct._Edges* %26, i64 0, i32 0
  store i32 %19, i32* %27, align 8
  %28 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i64 0, i32 1
  %29 = load %struct._Edges*, %struct._Edges** %28, align 8
  %30 = getelementptr inbounds %struct._Edges, %struct._Edges* %29, i64 0, i32 2
  %31 = load %struct._Vertices*, %struct._Vertices** %30, align 8
  %32 = getelementptr inbounds %struct._Edges, %struct._Edges* %26, i64 0, i32 1
  store %struct._Vertices* %31, %struct._Vertices** %32, align 8
  %33 = getelementptr inbounds %struct._Edges, %struct._Edges* %26, i64 0, i32 2
  store %struct._Vertices* %7, %struct._Vertices** %33, align 8
  %34 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i64 0, i32 1
  %35 = load %struct._Edges*, %struct._Edges** %34, align 8
  %36 = getelementptr inbounds %struct._Edges, %struct._Edges* %35, i64 0, i32 2
  %37 = load %struct._Vertices*, %struct._Vertices** %36, align 8
  %38 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %37, i64 0, i32 1
  %39 = load %struct._Edges*, %struct._Edges** %38, align 8
  %40 = getelementptr inbounds %struct._Edges, %struct._Edges* %26, i64 0, i32 3
  store %struct._Edges* %39, %struct._Edges** %40, align 8
  %41 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i64 0, i32 1
  %42 = load %struct._Edges*, %struct._Edges** %41, align 8
  %43 = getelementptr inbounds %struct._Edges, %struct._Edges* %42, i64 0, i32 2
  %44 = load %struct._Vertices*, %struct._Vertices** %43, align 8
  %45 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %44, i64 0, i32 1
  store %struct._Edges* %26, %struct._Edges** %45, align 8
  br label %46

46:                                               ; preds = %6
  %47 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

48:                                               ; preds = %4
  ret %struct._Vertices* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @AddEdges(%struct._Vertices* noundef returned %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq %struct._Vertices* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %34, %10
  %.0 = phi i32 [ 0, %10 ], [ %35, %34 ]
  %12 = icmp slt i32 %.0, %2
  br i1 %12, label %13, label %36

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %31, %13
  %15 = call i64 @random() #7
  %16 = sext i32 %1 to i64
  %17 = srem i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct._Vertices* @PickVertex(%struct._Vertices* noundef nonnull %0, i32 noundef %18)
  %20 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %19, i64 0, i32 2
  %21 = load %struct._Vertices*, %struct._Vertices** %20, align 8
  %22 = call i64 @random() #7
  %23 = sext i32 %1 to i64
  %24 = srem i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = add i32 %25, -1
  %27 = call %struct._Vertices* @PickVertex(%struct._Vertices* noundef %21, i32 noundef %26)
  %.not4 = icmp eq %struct._Vertices* %19, %27
  br i1 %.not4, label %29, label %28

28:                                               ; preds = %14
  br label %30

29:                                               ; preds = %14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = call i32 @Duplicate(%struct._Vertices* noundef %19, %struct._Vertices* noundef %27)
  %.not5 = icmp eq i32 %32, 0
  br i1 %.not5, label %33, label %14, !llvm.loop !6

33:                                               ; preds = %31
  call void @Connect(%struct._Vertices* noundef %19, %struct._Vertices* noundef %27)
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !7

36:                                               ; preds = %11
  ret %struct._Vertices* %0

UnifiedUnreachableBlock:                          ; preds = %29, %9, %5
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct._Vertices* @PickVertex(%struct._Vertices* noundef readonly %0, i32 noundef %1) #2 {
  br label %3

3:                                                ; preds = %6, %2
  %.01 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %.0 = phi %struct._Vertices* [ %0, %2 ], [ %8, %6 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.0, i64 0, i32 2
  %8 = load %struct._Vertices*, %struct._Vertices** %7, align 8
  %9 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !8

10:                                               ; preds = %3
  ret %struct._Vertices* %.0
}

; Function Attrs: nounwind
declare dso_local i64 @random() #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @Duplicate(%struct._Vertices* nocapture noundef readonly %0, %struct._Vertices* noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %10, %2
  %.01.in = phi %struct._Edges** [ %3, %2 ], [ %11, %10 ]
  %.01 = load %struct._Edges*, %struct._Edges** %.01.in, align 8
  %.not = icmp eq %struct._Edges* %.01, null
  br i1 %.not, label %12, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct._Edges, %struct._Edges* %.01, i64 0, i32 2
  %7 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %8 = icmp eq %struct._Vertices* %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Edges, %struct._Edges* %.01, i64 0, i32 3
  br label %4, !llvm.loop !9

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Connect(%struct._Vertices* noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = call i64 @random() #7
  %4 = add nsw i64 %3, 1
  %5 = srem i64 %4, 100
  %6 = trunc i64 %5 to i32
  %7 = call %struct._Edges* @NewEdge()
  %8 = getelementptr inbounds %struct._Edges, %struct._Edges* %7, i64 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = getelementptr inbounds %struct._Edges, %struct._Edges* %7, i64 0, i32 1
  store %struct._Vertices* %0, %struct._Vertices** %9, align 8
  %10 = getelementptr inbounds %struct._Edges, %struct._Edges* %7, i64 0, i32 2
  store %struct._Vertices* %1, %struct._Vertices** %10, align 8
  %11 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 1
  %12 = load %struct._Edges*, %struct._Edges** %11, align 8
  %13 = getelementptr inbounds %struct._Edges, %struct._Edges* %7, i64 0, i32 3
  store %struct._Edges* %12, %struct._Edges** %13, align 8
  %14 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 1
  store %struct._Edges* %7, %struct._Edges** %14, align 8
  %15 = call %struct._Edges* @NewEdge()
  %16 = getelementptr inbounds %struct._Edges, %struct._Edges* %15, i64 0, i32 0
  store i32 %6, i32* %16, align 8
  %17 = getelementptr inbounds %struct._Edges, %struct._Edges* %15, i64 0, i32 1
  store %struct._Vertices* %1, %struct._Vertices** %17, align 8
  %18 = getelementptr inbounds %struct._Edges, %struct._Edges* %15, i64 0, i32 2
  store %struct._Vertices* %0, %struct._Vertices** %18, align 8
  %19 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %1, i64 0, i32 1
  %20 = load %struct._Edges*, %struct._Edges** %19, align 8
  %21 = getelementptr inbounds %struct._Edges, %struct._Edges* %15, i64 0, i32 3
  store %struct._Edges* %20, %struct._Edges** %21, align 8
  %22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %1, i64 0, i32 1
  store %struct._Edges* %15, %struct._Edges** %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct._Vertices* @NewVertex() #0 {
  %1 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %2 = bitcast i8* %1 to %struct._Vertices*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %5) #8
  call void @exit(i32 noundef 1) #6
  unreachable

7:                                                ; preds = %0
  %8 = load i32, i32* @id, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @id, align 4
  %10 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i64 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i64 0, i32 1
  store %struct._Edges* null, %struct._Edges** %11, align 8
  %12 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i64 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %12, align 8
  ret %struct._Vertices* %2
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct._Edges* @NewEdge() #0 {
  %1 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #7
  %2 = bitcast i8* %1 to %struct._Edges*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %5) #8
  call void @exit(i32 noundef 1) #6
  unreachable

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct._Edges, %struct._Edges* %2, i64 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct._Edges, %struct._Edges* %2, i64 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %9, align 8
  %10 = getelementptr inbounds %struct._Edges, %struct._Edges* %2, i64 0, i32 3
  store %struct._Edges* null, %struct._Edges** %10, align 8
  ret %struct._Edges* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintGraph(%struct._Vertices* noundef readonly %0) #0 {
  %.not = icmp eq %struct._Vertices* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.PrintGraph, i64 0, i64 0)) #6
  unreachable

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %11, %4
  %.0 = phi %struct._Vertices* [ %0, %4 ], [ %10, %11 ]
  %6 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 noundef %7) #7
  call void @PrintNeighbors(%struct._Vertices* noundef %.0)
  %putchar = call i32 @putchar(i32 10)
  %9 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.0, i64 0, i32 2
  %10 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  br label %11

11:                                               ; preds = %5
  %.not1 = icmp eq %struct._Vertices* %10, %0
  br i1 %.not1, label %12, label %5, !llvm.loop !10

12:                                               ; preds = %11
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintNeighbors(%struct._Vertices* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %4, %1
  %.0.in = phi %struct._Edges** [ %2, %1 ], [ %16, %4 ]
  %.0 = load %struct._Edges*, %struct._Edges** %.0.in, align 8
  %.not = icmp eq %struct._Edges* %.0, null
  br i1 %.not, label %17, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 2
  %6 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %7 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %6, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 1
  %12 = load %struct._Vertices*, %struct._Vertices** %11, align 8
  %13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %12, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %8, i32 noundef %10, i32 noundef %14) #7
  %16 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 3
  br label %3, !llvm.loop !11

17:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }

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
