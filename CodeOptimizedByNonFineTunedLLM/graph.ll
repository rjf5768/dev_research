; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/graph.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._Vertices*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.GenGraph, i64 0, i64 0)) #4
  unreachable

12:                                               ; preds = %10
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 1
  %17 = mul nsw i32 %14, %16
  %18 = sdiv i32 %17, 2
  %19 = icmp sle i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %22

21:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.GenGraph, i64 0, i64 0)) #4
  unreachable

22:                                               ; preds = %20
  store i32 0, i32* @generatedEdges, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct._Vertices* @GenTree(i32 noundef %23)
  store %struct._Vertices* %24, %struct._Vertices** %5, align 8
  %25 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = call %struct._Vertices* @AddEdges(%struct._Vertices* noundef %25, i32 noundef %26, i32 noundef %30)
  store %struct._Vertices* %31, %struct._Vertices** %5, align 8
  %32 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  ret %struct._Vertices* %32
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @GenTree(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Vertices*, align 8
  %7 = alloca %struct._Edges*, align 8
  store i32 %0, i32* %2, align 4
  %8 = call %struct._Vertices* @NewVertex()
  store %struct._Vertices* %8, %struct._Vertices** %6, align 8
  %9 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %10 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %11 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %10, i32 0, i32 2
  store %struct._Vertices* %9, %struct._Vertices** %11, align 8
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %79, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %82

16:                                               ; preds = %12
  %17 = call %struct._Vertices* @NewVertex()
  store %struct._Vertices* %17, %struct._Vertices** %5, align 8
  %18 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %18, %struct._Edges** %7, align 8
  %19 = load %struct._Edges*, %struct._Edges** %7, align 8
  %20 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %21 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %20, i32 0, i32 1
  store %struct._Edges* %19, %struct._Edges** %21, align 8
  %22 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %23 = call i64 @random() #5
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = srem i64 %23, %25
  %27 = trunc i64 %26 to i32
  %28 = call %struct._Vertices* @PickVertex(%struct._Vertices* noundef %22, i32 noundef %27)
  %29 = load %struct._Edges*, %struct._Edges** %7, align 8
  %30 = getelementptr inbounds %struct._Edges, %struct._Edges* %29, i32 0, i32 2
  store %struct._Vertices* %28, %struct._Vertices** %30, align 8
  %31 = call i64 @random() #5
  %32 = add nsw i64 %31, 1
  %33 = srem i64 %32, 100
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct._Edges*, %struct._Edges** %7, align 8
  %37 = getelementptr inbounds %struct._Edges, %struct._Edges* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %39 = load %struct._Edges*, %struct._Edges** %7, align 8
  %40 = getelementptr inbounds %struct._Edges, %struct._Edges* %39, i32 0, i32 1
  store %struct._Vertices* %38, %struct._Vertices** %40, align 8
  %41 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %42 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %41, i32 0, i32 2
  %43 = load %struct._Vertices*, %struct._Vertices** %42, align 8
  %44 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %45 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %44, i32 0, i32 2
  store %struct._Vertices* %43, %struct._Vertices** %45, align 8
  %46 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %47 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %48 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %47, i32 0, i32 2
  store %struct._Vertices* %46, %struct._Vertices** %48, align 8
  %49 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %49, %struct._Edges** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct._Edges*, %struct._Edges** %7, align 8
  %52 = getelementptr inbounds %struct._Edges, %struct._Edges* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %54 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %53, i32 0, i32 1
  %55 = load %struct._Edges*, %struct._Edges** %54, align 8
  %56 = getelementptr inbounds %struct._Edges, %struct._Edges* %55, i32 0, i32 2
  %57 = load %struct._Vertices*, %struct._Vertices** %56, align 8
  %58 = load %struct._Edges*, %struct._Edges** %7, align 8
  %59 = getelementptr inbounds %struct._Edges, %struct._Edges* %58, i32 0, i32 1
  store %struct._Vertices* %57, %struct._Vertices** %59, align 8
  %60 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %61 = load %struct._Edges*, %struct._Edges** %7, align 8
  %62 = getelementptr inbounds %struct._Edges, %struct._Edges* %61, i32 0, i32 2
  store %struct._Vertices* %60, %struct._Vertices** %62, align 8
  %63 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %64 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %63, i32 0, i32 1
  %65 = load %struct._Edges*, %struct._Edges** %64, align 8
  %66 = getelementptr inbounds %struct._Edges, %struct._Edges* %65, i32 0, i32 2
  %67 = load %struct._Vertices*, %struct._Vertices** %66, align 8
  %68 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %67, i32 0, i32 1
  %69 = load %struct._Edges*, %struct._Edges** %68, align 8
  %70 = load %struct._Edges*, %struct._Edges** %7, align 8
  %71 = getelementptr inbounds %struct._Edges, %struct._Edges* %70, i32 0, i32 3
  store %struct._Edges* %69, %struct._Edges** %71, align 8
  %72 = load %struct._Edges*, %struct._Edges** %7, align 8
  %73 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %74 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %73, i32 0, i32 1
  %75 = load %struct._Edges*, %struct._Edges** %74, align 8
  %76 = getelementptr inbounds %struct._Edges, %struct._Edges* %75, i32 0, i32 2
  %77 = load %struct._Vertices*, %struct._Vertices** %76, align 8
  %78 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %77, i32 0, i32 1
  store %struct._Edges* %72, %struct._Edges** %78, align 8
  br label %79

79:                                               ; preds = %16
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %12, !llvm.loop !4

82:                                               ; preds = %12
  %83 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  ret %struct._Vertices* %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @AddEdges(%struct._Vertices* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._Vertices*, align 8
  %9 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %11 = icmp ne %struct._Vertices* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #4
  unreachable

14:                                               ; preds = %12
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #4
  unreachable

19:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %49, %24
  %26 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %27 = call i64 @random() #5
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = srem i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct._Vertices* @PickVertex(%struct._Vertices* noundef %26, i32 noundef %31)
  store %struct._Vertices* %32, %struct._Vertices** %8, align 8
  %33 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %34 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %33, i32 0, i32 2
  %35 = load %struct._Vertices*, %struct._Vertices** %34, align 8
  %36 = call i64 @random() #5
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = srem i64 %36, %38
  %40 = sub nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call %struct._Vertices* @PickVertex(%struct._Vertices* noundef %35, i32 noundef %41)
  store %struct._Vertices* %42, %struct._Vertices** %9, align 8
  %43 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %44 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  %45 = icmp ne %struct._Vertices* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  br label %48

47:                                               ; preds = %25
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #4
  unreachable

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %51 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  %52 = call i32 @Duplicate(%struct._Vertices* noundef %50, %struct._Vertices* noundef %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %25, label %54, !llvm.loop !6

54:                                               ; preds = %49
  %55 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %56 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  call void @Connect(%struct._Vertices* noundef %55, %struct._Vertices* noundef %56)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %20, !llvm.loop !7

60:                                               ; preds = %20
  %61 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  ret %struct._Vertices* %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @PickVertex(%struct._Vertices* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %14, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %12 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %11, i32 0, i32 2
  %13 = load %struct._Vertices*, %struct._Vertices** %12, align 8
  store %struct._Vertices* %13, %struct._Vertices** %3, align 8
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %6, !llvm.loop !8

17:                                               ; preds = %6
  %18 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  ret %struct._Vertices* %18
}

; Function Attrs: nounwind
declare dso_local i64 @random() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Duplicate(%struct._Vertices* noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %4, align 8
  store %struct._Vertices* %1, %struct._Vertices** %5, align 8
  %7 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %8 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i32 0, i32 1
  %9 = load %struct._Edges*, %struct._Edges** %8, align 8
  store %struct._Edges* %9, %struct._Edges** %6, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct._Edges*, %struct._Edges** %6, align 8
  %12 = icmp ne %struct._Edges* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct._Edges*, %struct._Edges** %6, align 8
  %15 = getelementptr inbounds %struct._Edges, %struct._Edges* %14, i32 0, i32 2
  %16 = load %struct._Vertices*, %struct._Vertices** %15, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %18 = icmp eq %struct._Vertices* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %25

20:                                               ; preds = %13
  %21 = load %struct._Edges*, %struct._Edges** %6, align 8
  %22 = getelementptr inbounds %struct._Edges, %struct._Edges* %21, i32 0, i32 3
  %23 = load %struct._Edges*, %struct._Edges** %22, align 8
  store %struct._Edges* %23, %struct._Edges** %6, align 8
  br label %10, !llvm.loop !9

24:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Connect(%struct._Vertices* noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %7 = call i64 @random() #5
  %8 = add nsw i64 %7, 1
  %9 = srem i64 %8, 100
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %11, %struct._Edges** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct._Edges*, %struct._Edges** %6, align 8
  %14 = getelementptr inbounds %struct._Edges, %struct._Edges* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %16 = load %struct._Edges*, %struct._Edges** %6, align 8
  %17 = getelementptr inbounds %struct._Edges, %struct._Edges* %16, i32 0, i32 1
  store %struct._Vertices* %15, %struct._Vertices** %17, align 8
  %18 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %19 = load %struct._Edges*, %struct._Edges** %6, align 8
  %20 = getelementptr inbounds %struct._Edges, %struct._Edges* %19, i32 0, i32 2
  store %struct._Vertices* %18, %struct._Vertices** %20, align 8
  %21 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %21, i32 0, i32 1
  %23 = load %struct._Edges*, %struct._Edges** %22, align 8
  %24 = load %struct._Edges*, %struct._Edges** %6, align 8
  %25 = getelementptr inbounds %struct._Edges, %struct._Edges* %24, i32 0, i32 3
  store %struct._Edges* %23, %struct._Edges** %25, align 8
  %26 = load %struct._Edges*, %struct._Edges** %6, align 8
  %27 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %28 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %27, i32 0, i32 1
  store %struct._Edges* %26, %struct._Edges** %28, align 8
  %29 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %29, %struct._Edges** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct._Edges*, %struct._Edges** %6, align 8
  %32 = getelementptr inbounds %struct._Edges, %struct._Edges* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %34 = load %struct._Edges*, %struct._Edges** %6, align 8
  %35 = getelementptr inbounds %struct._Edges, %struct._Edges* %34, i32 0, i32 1
  store %struct._Vertices* %33, %struct._Vertices** %35, align 8
  %36 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %37 = load %struct._Edges*, %struct._Edges** %6, align 8
  %38 = getelementptr inbounds %struct._Edges, %struct._Edges* %37, i32 0, i32 2
  store %struct._Vertices* %36, %struct._Vertices** %38, align 8
  %39 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %40 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %39, i32 0, i32 1
  %41 = load %struct._Edges*, %struct._Edges** %40, align 8
  %42 = load %struct._Edges*, %struct._Edges** %6, align 8
  %43 = getelementptr inbounds %struct._Edges, %struct._Edges* %42, i32 0, i32 3
  store %struct._Edges* %41, %struct._Edges** %43, align 8
  %44 = load %struct._Edges*, %struct._Edges** %6, align 8
  %45 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %46 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %45, i32 0, i32 1
  store %struct._Edges* %44, %struct._Edges** %46, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @NewVertex() #0 {
  %1 = alloca %struct._Vertices*, align 8
  %2 = call noalias i8* @malloc(i64 noundef 40) #5
  %3 = bitcast i8* %2 to %struct._Vertices*
  store %struct._Vertices* %3, %struct._Vertices** %1, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %5 = icmp eq %struct._Vertices* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* @id, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @id, align 4
  %12 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %15 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %14, i32 0, i32 1
  store %struct._Edges* null, %struct._Edges** %15, align 8
  %16 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %17 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %16, i32 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %17, align 8
  %18 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  ret %struct._Vertices* %18
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Edges* @NewEdge() #0 {
  %1 = alloca %struct._Edges*, align 8
  %2 = call noalias i8* @malloc(i64 noundef 32) #5
  %3 = bitcast i8* %2 to %struct._Edges*
  store %struct._Edges* %3, %struct._Edges** %1, align 8
  %4 = load %struct._Edges*, %struct._Edges** %1, align 8
  %5 = icmp eq %struct._Edges* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

9:                                                ; preds = %0
  %10 = load %struct._Edges*, %struct._Edges** %1, align 8
  %11 = getelementptr inbounds %struct._Edges, %struct._Edges* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct._Edges*, %struct._Edges** %1, align 8
  %13 = getelementptr inbounds %struct._Edges, %struct._Edges* %12, i32 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %13, align 8
  %14 = load %struct._Edges*, %struct._Edges** %1, align 8
  %15 = getelementptr inbounds %struct._Edges, %struct._Edges* %14, i32 0, i32 3
  store %struct._Edges* null, %struct._Edges** %15, align 8
  %16 = load %struct._Edges*, %struct._Edges** %1, align 8
  ret %struct._Edges* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintGraph(%struct._Vertices* noundef %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %5 = icmp ne %struct._Vertices* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.PrintGraph, i64 0, i64 0)) #4
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  store %struct._Vertices* %9, %struct._Vertices** %3, align 8
  br label %10

10:                                               ; preds = %20, %8
  %11 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %12 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 noundef %13)
  %15 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  call void @PrintNeighbors(%struct._Vertices* noundef %15)
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %17 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %18 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %17, i32 0, i32 2
  %19 = load %struct._Vertices*, %struct._Vertices** %18, align 8
  store %struct._Vertices* %19, %struct._Vertices** %3, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %22 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %23 = icmp ne %struct._Vertices* %21, %22
  br i1 %23, label %10, label %24, !llvm.loop !10

24:                                               ; preds = %20
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintNeighbors(%struct._Vertices* noundef %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %5 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %4, i32 0, i32 1
  %6 = load %struct._Edges*, %struct._Edges** %5, align 8
  store %struct._Edges* %6, %struct._Edges** %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct._Edges*, %struct._Edges** %3, align 8
  %9 = icmp ne %struct._Edges* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct._Edges*, %struct._Edges** %3, align 8
  %12 = getelementptr inbounds %struct._Edges, %struct._Edges* %11, i32 0, i32 2
  %13 = load %struct._Vertices*, %struct._Vertices** %12, align 8
  %14 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct._Edges*, %struct._Edges** %3, align 8
  %17 = getelementptr inbounds %struct._Edges, %struct._Edges* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct._Edges*, %struct._Edges** %3, align 8
  %20 = getelementptr inbounds %struct._Edges, %struct._Edges* %19, i32 0, i32 1
  %21 = load %struct._Vertices*, %struct._Vertices** %20, align 8
  %22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %15, i32 noundef %18, i32 noundef %23)
  %25 = load %struct._Edges*, %struct._Edges** %3, align 8
  %26 = getelementptr inbounds %struct._Edges, %struct._Edges* %25, i32 0, i32 3
  %27 = load %struct._Edges*, %struct._Edges** %26, align 8
  store %struct._Edges* %27, %struct._Edges** %3, align 8
  br label %7, !llvm.loop !11

28:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
