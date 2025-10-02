; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/parsing.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.IntVectorStruct = type { i32, i32, i32* }
%struct.GraphStruct = type { i8*, i32, %struct.NodeListStruct*, %struct.SearchDiagramStruct*, %struct.SystemCallMapStruct* }
%struct.SearchDiagramStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.EdgeReferencesStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.SystemCallMapStruct = type { i32, i32, %struct.SystemCallMapElementStruct** }
%struct.SystemCallMapElementStruct = type { i8*, i32, %struct.NodePtrVecStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.CharVectorStruct = type { i32, i32, i8* }
%struct.ConfigurationStruct = type { %struct.GraphStruct**, i8***, %struct.SearchOptionsStruct*, i32 }
%struct.SearchOptionsStruct = type { i32, i8, i8, i8, i8*, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [70 x i8] c"Specified entrance edge length does not match data size for node: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Specified edge length does not match data size for node: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"resolveNodeEdges: Outer node %d edge to non-contained node: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\09%d is type: %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"interior\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"entrance\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"resolveNodeEdges: Outer node %d has edge reference to undefined node: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"resolveNodeEdges: Interior node %d has edge reference to undefined node: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Could not open data file: %s (parsing.c:parseFile)\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Functions:\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\09%d functions specified\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Functions\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"Malformed file, Function count not specified in first line\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Basic blocks:\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\09%d basic blocks specified\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Basic Blocks\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"----------\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"SYSTEM CALLS\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"Error in parseFile: Node %d undefined as an outer node\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\09%d total System Call Map elements\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"System Calls\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\09...parsing complete.\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Opened %s\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Pathfinder Configuration\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Error in config file: doesn't start with \22Pathfinder Configuration\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"Error in config file: second line is not file count\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"No files to parse, exiting.\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"signatures\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"Error in config file: third line is not signature count\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"No signatures to search, exiting.\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"search type\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Could not allocate graph storage. Exiting\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"file \00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Error in config file: mismatch of file count\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Error parsing %s\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Could not allocate signature storage. Exiting\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"signature \00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"Error in config file: mismatch of signature count\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @buildEntranceList(%struct.NodeStruct* noundef %0, %struct.IntVectorStruct* noundef %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.NodeStruct* %0, %struct.NodeStruct** %3, align 8
  store %struct.IntVectorStruct* %1, %struct.IntVectorStruct** %4, align 8
  %7 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %8 = icmp ne %struct.NodeStruct* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %11 = icmp ne %struct.IntVectorStruct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %76

13:                                               ; preds = %9
  %14 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %15 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %76

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %25 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 2
  %28 = icmp ne i32 %23, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %32 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 noundef %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %37 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %36, i32 0, i32 7
  %38 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %37, align 8
  %39 = icmp ne %struct.EdgeListStruct* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = call %struct.EdgeListStruct* (...) @EdgeList_new()
  %42 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %43 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %42, i32 0, i32 7
  store %struct.EdgeListStruct* %41, %struct.EdgeListStruct** %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %46 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %45, i32 0, i32 7
  %47 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %46, align 8
  %48 = icmp ne %struct.EdgeListStruct* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %44
  store i32 2, i32* %5, align 4
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %53 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %58 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %57, i32 0, i32 7
  %59 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %58, align 8
  %60 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %61 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* noundef %59, i32 noundef %66)
  %68 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %69 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %50, !llvm.loop !4

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %12, %21, %75, %44
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local %struct.EdgeListStruct* @EdgeList_new(...) #1

declare dso_local zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* noundef %0) #0 {
  %2 = alloca %struct.NodeStruct*, align 8
  %3 = alloca %struct.IntVectorStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.NodeStruct*, align 8
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %3, align 8
  %7 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %8 = icmp eq %struct.IntVectorStruct* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %11 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store %struct.NodeStruct* null, %struct.NodeStruct** %2, align 8
  br label %86

15:                                               ; preds = %9
  %16 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %17 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.NodeStruct* @Node_new(i32 noundef %20, i32 noundef -1)
  store %struct.NodeStruct* %21, %struct.NodeStruct** %6, align 8
  %22 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %23 = icmp ne %struct.NodeStruct* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store %struct.NodeStruct* null, %struct.NodeStruct** %2, align 8
  br label %86

25:                                               ; preds = %15
  %26 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %27 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %33 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 2
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %40 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 noundef %43)
  br label %45

45:                                               ; preds = %37, %25
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = call %struct.EdgeListStruct* (...) @EdgeList_new()
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 7
  store %struct.EdgeListStruct* %49, %struct.EdgeListStruct** %51, align 8
  %52 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %53 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %52, i32 0, i32 7
  %54 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %53, align 8
  %55 = icmp ne %struct.EdgeListStruct* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %48
  store i32 2, i32* %4, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %60 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %65 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %64, i32 0, i32 7
  %66 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %65, align 8
  %67 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %68 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* noundef %66, i32 noundef %73)
  %75 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %76 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %57, !llvm.loop !6

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82, %48
  br label %84

84:                                               ; preds = %83, %45
  %85 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %85, %struct.NodeStruct** %2, align 8
  br label %86

86:                                               ; preds = %84, %24, %14
  %87 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  ret %struct.NodeStruct* %87
}

declare dso_local %struct.NodeStruct* @Node_new(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @resolveNodeEdges(%struct.GraphStruct* noundef %0, %struct.NodeStruct* noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.EdgeListStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca i8, align 1
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %6, align 1
  %11 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %12 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %11, i32 0, i32 7
  %13 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %12, align 8
  store %struct.EdgeListStruct* %13, %struct.EdgeListStruct** %7, align 8
  br label %14

14:                                               ; preds = %124, %3
  %15 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %16 = icmp ne %struct.EdgeListStruct* %15, null
  br i1 %16, label %17, label %128

17:                                               ; preds = %14
  %18 = load i8, i8* %6, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %20, label %86

20:                                               ; preds = %17
  %21 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %22 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %23 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %21, i32 noundef %24, i1 noundef zeroext true)
  store %struct.NodeStruct* %25, %struct.NodeStruct** %8, align 8
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %27 = icmp ne %struct.NodeStruct* %26, null
  br i1 %27, label %28, label %76

28:                                               ; preds = %20
  store i8 1, i8* %9, align 1
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %35 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %68

38:                                               ; preds = %33, %28
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %40 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %39, i32 0, i32 5
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %40, align 8
  %42 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %43 = icmp ne %struct.NodeStruct* %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %47 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %50 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 noundef %48, i32 noundef %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %55 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %58 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %63 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %64 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef %56, i8* noundef %62, i32 noundef %65)
  store i8 0, i8* %9, align 1
  br label %67

67:                                               ; preds = %44, %38
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i8, i8* %9, align 1
  %70 = trunc i8 %69 to i1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %73 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %74 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %73, i32 0, i32 1
  store %struct.NodeStruct* %72, %struct.NodeStruct** %74, align 8
  br label %75

75:                                               ; preds = %71, %68
  br label %85

76:                                               ; preds = %20
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %79 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %82 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 noundef %80, i32 noundef %83)
  br label %85

85:                                               ; preds = %76, %75
  br label %123

86:                                               ; preds = %17
  %87 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %88 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %89 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %87, i32 noundef %90, i1 noundef zeroext false)
  store %struct.NodeStruct* %91, %struct.NodeStruct** %8, align 8
  %92 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %93 = icmp ne %struct.NodeStruct* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %96 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %97 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %96, i32 0, i32 1
  store %struct.NodeStruct* %95, %struct.NodeStruct** %97, align 8
  br label %122

98:                                               ; preds = %86
  %99 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %100 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %99, i32 0, i32 5
  %101 = load %struct.NodeStruct*, %struct.NodeStruct** %100, align 8
  %102 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %103 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.NodeStruct* @Graph_findContainedNode(%struct.NodeStruct* noundef %101, i32 noundef %104)
  store %struct.NodeStruct* %105, %struct.NodeStruct** %8, align 8
  %106 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %107 = icmp ne %struct.NodeStruct* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %110 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %111 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %110, i32 0, i32 1
  store %struct.NodeStruct* %109, %struct.NodeStruct** %111, align 8
  br label %121

112:                                              ; preds = %98
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %115 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %118 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 noundef %116, i32 noundef %119)
  br label %121

121:                                              ; preds = %112, %108
  br label %122

122:                                              ; preds = %121, %94
  br label %123

123:                                              ; preds = %122, %85
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %126 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %125, i32 0, i32 2
  %127 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %126, align 8
  store %struct.EdgeListStruct* %127, %struct.EdgeListStruct** %7, align 8
  br label %14, !llvm.loop !7

128:                                              ; preds = %14
  ret void
}

declare dso_local %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef, i32 noundef, i1 noundef zeroext) #1

declare dso_local %struct.NodeStruct* @Graph_findContainedNode(%struct.NodeStruct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GraphStruct* @parseFile(i8* noundef %0) #0 {
  %2 = alloca %struct.GraphStruct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.IntVectorStruct*, align 8
  %6 = alloca %struct.CharVectorStruct*, align 8
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca %struct.NodeStruct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.NodeListStruct*, align 8
  %13 = alloca %struct.NodeListStruct*, align 8
  %14 = alloca %struct.GraphStruct*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.IntVectorStruct* null, %struct.IntVectorStruct** %5, align 8
  store %struct.CharVectorStruct* null, %struct.CharVectorStruct** %6, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %7, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %8, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %9, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %12, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %13, align 8
  store %struct.GraphStruct* null, %struct.GraphStruct** %14, align 8
  store i32 50, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8 0, i8* %17, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call noalias %struct._IO_FILE* @fopen(i8* noundef %23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %4, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = icmp ne %struct._IO_FILE* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* noundef %28)
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

30:                                               ; preds = %22
  %31 = call %struct.GraphStruct* (...) @Graph_new()
  store %struct.GraphStruct* %31, %struct.GraphStruct** %14, align 8
  %32 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %33 = icmp ne %struct.GraphStruct* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = call noalias i8* @strdup(i8* noundef %36) #5
  %38 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %39 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = call %struct.CharVectorStruct* @CharVector_new(i32 noundef 1024)
  store %struct.CharVectorStruct* %40, %struct.CharVectorStruct** %6, align 8
  store i32 0, i32* %18, align 4
  %41 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %43 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %41, %struct._IO_FILE* noundef %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %45 = call i32 @feof(%struct._IO_FILE* noundef %44) #5
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %35
  %48 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %49 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strncmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef %50, i64 noundef 10) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %55 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 10
  %58 = call i32 @atoi(i8* noundef %57) #6
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef %59)
  %61 = load i32, i32* %15, align 4
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 noundef %61)
  br label %65

62:                                               ; preds = %47, %35
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0))
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

65:                                               ; preds = %53
  %66 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %68 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %66, %struct._IO_FILE* noundef %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %70 = call i32 @feof(%struct._IO_FILE* noundef %69) #5
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %65
  %73 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %74 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strncmp(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %75, i64 noundef 13) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %80 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 13
  %83 = call i32 @atoi(i8* noundef %82) #6
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %84)
  %86 = load i32, i32* %16, align 4
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 noundef %86)
  br label %90

87:                                               ; preds = %72, %65
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0))
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

90:                                               ; preds = %78
  %91 = call %struct.IntVectorStruct* @IntVector_new(i32 noundef 8)
  store %struct.IntVectorStruct* %91, %struct.IntVectorStruct** %5, align 8
  br label %92

92:                                               ; preds = %139, %90
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %94 = call i32 @feof(%struct._IO_FILE* noundef %93) #5
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %142

97:                                               ; preds = %92
  %98 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %100 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %98, %struct._IO_FILE* noundef %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %102 = call i32 @feof(%struct._IO_FILE* noundef %101) #5
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %142

105:                                              ; preds = %97
  %106 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %107 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strncmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* noundef %108, i64 noundef 10) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %142

112:                                              ; preds = %105
  %113 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %114 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %115 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef %113, i8* noundef %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %112
  %121 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %122 = call %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* noundef %121)
  store %struct.NodeStruct* %122, %struct.NodeStruct** %7, align 8
  %123 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %124 = icmp ne %struct.NodeStruct* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %127 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %128 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef %126, %struct.NodeStruct* noundef %127)
  %129 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %130 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %133 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %135 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %125, %120
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %141 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  br label %92, !llvm.loop !8

142:                                              ; preds = %111, %104, %92
  br label %143

143:                                              ; preds = %256, %142
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %145 = call i32 @feof(%struct._IO_FILE* noundef %144) #5
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br i1 %147, label %148, label %257

148:                                              ; preds = %143
  %149 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %151 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %149, %struct._IO_FILE* noundef %150)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %153 = call i32 @feof(%struct._IO_FILE* noundef %152) #5
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %257

156:                                              ; preds = %148
  %157 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %158 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strncmp(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* noundef %159, i64 noundef 12) #6
  %161 = icmp eq i32 %160, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %17, align 1
  %163 = load i8, i8* %17, align 1
  %164 = trunc i8 %163 to i1
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %257

166:                                              ; preds = %156
  %167 = call i16** @__ctype_b_loc() #7
  %168 = load i16*, i16** %167, align 8
  %169 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %170 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, i16* %168, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i32
  %179 = and i32 %178, 2048
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %166
  %182 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %183 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @atoi(i8* noundef %184) #6
  store i32 %185, i32* %10, align 4
  br label %187

186:                                              ; preds = %166
  store i32 -1, i32* %10, align 4
  br label %187

187:                                              ; preds = %186, %181
  %188 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %188, i32 noundef %189, i1 noundef zeroext false)
  store %struct.NodeStruct* %190, %struct.NodeStruct** %8, align 8
  %191 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %192 = icmp eq %struct.NodeStruct* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %194, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 noundef %195)
  br label %257

197:                                              ; preds = %187
  br label %198

198:                                              ; preds = %253, %197
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %200 = call i32 @feof(%struct._IO_FILE* noundef %199) #5
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  br i1 %202, label %203, label %256

203:                                              ; preds = %198
  %204 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %206 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %204, %struct._IO_FILE* noundef %205)
  %207 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %208 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strncmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* noundef %209, i64 noundef 10) #6
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  br label %256

213:                                              ; preds = %203
  %214 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %215 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %216 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %215, i32 0, i32 2
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef %214, i8* noundef %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %253

221:                                              ; preds = %213
  %222 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %223 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %228 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %226, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %221
  %232 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %233 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  call void @buildEntranceList(%struct.NodeStruct* noundef %232, %struct.IntVectorStruct* noundef %233)
  br label %252

234:                                              ; preds = %221
  %235 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %236 = call %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* noundef %235)
  store %struct.NodeStruct* %236, %struct.NodeStruct** %7, align 8
  %237 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %238 = icmp ne %struct.NodeStruct* %237, null
  br i1 %238, label %239, label %251

239:                                              ; preds = %234
  %240 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %241 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  call void @Node_addInteriorNode(%struct.NodeStruct* noundef %240, %struct.NodeStruct* noundef %241)
  %242 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %243 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %246 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %248 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %239, %234
  br label %252

252:                                              ; preds = %251, %231
  br label %253

253:                                              ; preds = %252, %213
  %254 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %255 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  br label %198, !llvm.loop !9

256:                                              ; preds = %212, %198
  br label %143, !llvm.loop !10

257:                                              ; preds = %193, %165, %155, %143
  %258 = load i32, i32* %15, align 4
  %259 = call %struct.SystemCallMapStruct* @SystemCallMap_new(i32 noundef %258)
  %260 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %261 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %260, i32 0, i32 4
  store %struct.SystemCallMapStruct* %259, %struct.SystemCallMapStruct** %261, align 8
  %262 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %263 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %262, i32 0, i32 4
  %264 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %263, align 8
  %265 = icmp eq %struct.SystemCallMapStruct* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %257
  %267 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  call void @IntVector_delete(%struct.IntVectorStruct* noundef %267)
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

268:                                              ; preds = %257
  %269 = load i8, i8* %17, align 1
  %270 = trunc i8 %269 to i1
  br i1 %270, label %271, label %372

271:                                              ; preds = %268
  br label %272

272:                                              ; preds = %370, %271
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %274 = call i32 @feof(%struct._IO_FILE* noundef %273) #5
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  br i1 %276, label %277, label %371

277:                                              ; preds = %272
  %278 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %280 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %278, %struct._IO_FILE* noundef %279)
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %282 = call i32 @feof(%struct._IO_FILE* noundef %281) #5
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  br label %371

285:                                              ; preds = %277
  %286 = call i16** @__ctype_b_loc() #7
  %287 = load i16*, i16** %286, align 8
  %288 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %289 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %288, i32 0, i32 2
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 0
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i16, i16* %287, i64 %294
  %296 = load i16, i16* %295, align 2
  %297 = zext i16 %296 to i32
  %298 = and i32 %297, 2048
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %285
  %301 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %302 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %301, i32 0, i32 2
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 @atoi(i8* noundef %303) #6
  store i32 %304, i32* %10, align 4
  br label %306

305:                                              ; preds = %285
  store i32 -1, i32* %10, align 4
  br label %306

306:                                              ; preds = %305, %300
  %307 = load i32, i32* %10, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %370

309:                                              ; preds = %306
  store i32 0, i32* %18, align 4
  br label %310

310:                                              ; preds = %333, %309
  %311 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %312 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %311, i32 0, i32 2
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* %18, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %310
  %321 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %322 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %321, i32 0, i32 2
  %323 = load i8*, i8** %322, align 8
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 32
  br label %330

330:                                              ; preds = %320, %310
  %331 = phi i1 [ false, %310 ], [ %329, %320 ]
  br i1 %331, label %332, label %336

332:                                              ; preds = %330
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %18, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %18, align 4
  br label %310, !llvm.loop !11

336:                                              ; preds = %330
  %337 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %338 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %337, i32 0, i32 2
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %18, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp eq i32 %344, 32
  br i1 %345, label %346, label %369

346:                                              ; preds = %336
  %347 = load i32, i32* %18, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %18, align 4
  %349 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %350 = load i32, i32* %10, align 4
  %351 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %349, i32 noundef %350, i1 noundef zeroext true)
  store %struct.NodeStruct* %351, %struct.NodeStruct** %9, align 8
  %352 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %353 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = load i32, i32* %18, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  call void @pruneLine(i8* noundef %357)
  %358 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %359 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %358, i32 0, i32 4
  %360 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %359, align 8
  %361 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %362 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 8
  %364 = load i32, i32* %18, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %363, i64 %365
  %367 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  %368 = call zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* noundef %360, i8* noundef %366, %struct.NodeStruct* noundef %367)
  br label %369

369:                                              ; preds = %346, %336
  br label %370

370:                                              ; preds = %369, %306
  br label %272, !llvm.loop !12

371:                                              ; preds = %284, %272
  br label %372

372:                                              ; preds = %371, %268
  %373 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  call void @CharVector_delete(%struct.CharVectorStruct* noundef %373)
  %374 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %375 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %374, i32 0, i32 2
  %376 = load %struct.NodeListStruct*, %struct.NodeListStruct** %375, align 8
  store %struct.NodeListStruct* %376, %struct.NodeListStruct** %12, align 8
  br label %377

377:                                              ; preds = %403, %372
  %378 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %379 = icmp ne %struct.NodeListStruct* %378, null
  br i1 %379, label %380, label %407

380:                                              ; preds = %377
  %381 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %382 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %383 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %382, i32 0, i32 0
  %384 = load %struct.NodeStruct*, %struct.NodeStruct** %383, align 8
  call void @resolveNodeEdges(%struct.GraphStruct* noundef %381, %struct.NodeStruct* noundef %384, i1 noundef zeroext true)
  %385 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %386 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %385, i32 0, i32 0
  %387 = load %struct.NodeStruct*, %struct.NodeStruct** %386, align 8
  %388 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %387, i32 0, i32 6
  %389 = load %struct.NodeListStruct*, %struct.NodeListStruct** %388, align 8
  store %struct.NodeListStruct* %389, %struct.NodeListStruct** %13, align 8
  br label %390

390:                                              ; preds = %398, %380
  %391 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  %392 = icmp ne %struct.NodeListStruct* %391, null
  br i1 %392, label %393, label %402

393:                                              ; preds = %390
  %394 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %395 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  %396 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %395, i32 0, i32 0
  %397 = load %struct.NodeStruct*, %struct.NodeStruct** %396, align 8
  call void @resolveNodeEdges(%struct.GraphStruct* noundef %394, %struct.NodeStruct* noundef %397, i1 noundef zeroext false)
  br label %398

398:                                              ; preds = %393
  %399 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  %400 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %399, i32 0, i32 1
  %401 = load %struct.NodeListStruct*, %struct.NodeListStruct** %400, align 8
  store %struct.NodeListStruct* %401, %struct.NodeListStruct** %13, align 8
  br label %390, !llvm.loop !13

402:                                              ; preds = %390
  br label %403

403:                                              ; preds = %402
  %404 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %405 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %404, i32 0, i32 1
  %406 = load %struct.NodeListStruct*, %struct.NodeListStruct** %405, align 8
  store %struct.NodeListStruct* %406, %struct.NodeListStruct** %12, align 8
  br label %377, !llvm.loop !14

407:                                              ; preds = %377
  %408 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %409 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %408, i32 0, i32 4
  %410 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %409, align 8
  %411 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 noundef %412)
  %414 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %415 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %414, i32 0, i32 4
  %416 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %415, align 8
  %417 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 noundef %418)
  %419 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %420 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %419, i32 0, i32 2
  %421 = load %struct.NodeListStruct*, %struct.NodeListStruct** %420, align 8
  %422 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %423 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = call %struct.SearchDiagramStruct* @SearchDiagram_build(%struct.NodeListStruct* noundef %421, i32 noundef %424)
  %426 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %427 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %426, i32 0, i32 3
  store %struct.SearchDiagramStruct* %425, %struct.SearchDiagramStruct** %427, align 8
  %428 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %429 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  store %struct.GraphStruct* %429, %struct.GraphStruct** %2, align 8
  br label %430

430:                                              ; preds = %407, %266, %87, %62, %34, %27, %21
  %431 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  ret %struct.GraphStruct* %431
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local %struct.GraphStruct* @Graph_new(...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #2

declare dso_local %struct.CharVectorStruct* @CharVector_new(i32 noundef) #1

declare dso_local i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local void @YAMLWriteInt(i8* noundef, i32 noundef) #1

declare dso_local %struct.IntVectorStruct* @IntVector_new(i32 noundef) #1

declare dso_local i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef, i8* noundef) #1

declare dso_local zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef, %struct.NodeStruct* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local void @Node_addInteriorNode(%struct.NodeStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local %struct.SystemCallMapStruct* @SystemCallMap_new(i32 noundef) #1

declare dso_local void @IntVector_delete(%struct.IntVectorStruct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @pruneLine(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %4
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 0, i8* %24, align 1
  br label %42

25:                                               ; preds = %12
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4, !llvm.loop !15

42:                                               ; preds = %20, %33, %4
  ret void
}

declare dso_local zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* noundef, i8* noundef, %struct.NodeStruct* noundef) #1

declare dso_local void @CharVector_delete(%struct.CharVectorStruct* noundef) #1

declare dso_local %struct.SearchDiagramStruct* @SearchDiagram_build(%struct.NodeListStruct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @parseSignature(i8* noundef %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8** null, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %92

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13, !llvm.loop !16

40:                                               ; preds = %13
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 noundef %44) #5
  %46 = bitcast i8* %45 to i8**
  store i8** %46, i8*** %7, align 8
  store i32 0, i32* %4, align 4
  %47 = load i8**, i8*** %7, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %90

49:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call noalias i8* @strdup(i8* noundef %62) #5
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %76, %54
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %68, !llvm.loop !17

79:                                               ; preds = %68
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %50, !llvm.loop !18

85:                                               ; preds = %50
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* null, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %40
  %91 = load i8**, i8*** %7, align 8
  store i8** %91, i8*** %2, align 8
  br label %92

92:                                               ; preds = %90, %11
  %93 = load i8**, i8*** %2, align 8
  ret i8** %93
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @parseConfigFile(i8* noundef %0, %struct.ConfigurationStruct* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ConfigurationStruct*, align 8
  %6 = alloca [1000 x i8], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ConfigurationStruct* %1, %struct.ConfigurationStruct** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %7, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* noundef %16)
  store i1 false, i1* %3, align 1
  br label %242

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef %19)
  br label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = call i8* @fgets(i8* noundef %22, i32 noundef 1000, %struct._IO_FILE* noundef %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %26 = call i32 @feof(%struct._IO_FILE* noundef %25) #5
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %30 = call i32 @strncmp(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* noundef %29, i64 noundef 24) #6
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %21
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

34:                                               ; preds = %28
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %37 = call i8* @fgets(i8* noundef %35, i32 noundef 1000, %struct._IO_FILE* noundef %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %39 = call i32 @feof(%struct._IO_FILE* noundef %38) #5
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %43 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* noundef %42, i64 noundef 5) #6
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %34
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

47:                                               ; preds = %41
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 6
  %49 = call i32 @atoi(i8* noundef %48) #6
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

54:                                               ; preds = %47
  %55 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %57 = call i8* @fgets(i8* noundef %55, i32 noundef 1000, %struct._IO_FILE* noundef %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %59 = call i32 @feof(%struct._IO_FILE* noundef %58) #5
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %63 = call i32 @strncmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* noundef %62, i64 noundef 10) #6
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %54
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

67:                                               ; preds = %61
  %68 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 11
  %69 = call i32 @atoi(i8* noundef %68) #6
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

74:                                               ; preds = %67
  %75 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %77 = call i8* @fgets(i8* noundef %75, i32 noundef 1000, %struct._IO_FILE* noundef %76)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %79 = call i32 @feof(%struct._IO_FILE* noundef %78) #5
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %83 = call i32 @strncmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* noundef %82, i64 noundef 11) #6
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %74
  %86 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

87:                                               ; preds = %81
  %88 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 12
  %89 = call i32 @strncmp(i8* noundef %88, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i64 noundef 4) #6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %93 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %92, i32 0, i32 2
  %94 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %93, align 8
  %95 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %98 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %97, i32 0, i32 2
  %99 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %98, align 8
  %100 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = call noalias i8* @malloc(i64 noundef %105) #5
  %107 = bitcast i8* %106 to %struct.GraphStruct**
  %108 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %109 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %108, i32 0, i32 0
  store %struct.GraphStruct** %107, %struct.GraphStruct*** %109, align 8
  %110 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %111 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %110, i32 0, i32 0
  %112 = load %struct.GraphStruct**, %struct.GraphStruct*** %111, align 8
  %113 = icmp ne %struct.GraphStruct** %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

116:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %160, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %163

121:                                              ; preds = %117
  %122 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %124 = call i8* @fgets(i8* noundef %122, i32 noundef 1000, %struct._IO_FILE* noundef %123)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %126 = call i32 @feof(%struct._IO_FILE* noundef %125) #5
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %130 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* noundef %129, i64 noundef 5) #6
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128, %121
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

134:                                              ; preds = %128
  %135 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 5
  call void @pruneLine(i8* noundef %135)
  %136 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 5
  %137 = call %struct.GraphStruct* @parseFile(i8* noundef %136)
  %138 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %139 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %138, i32 0, i32 0
  %140 = load %struct.GraphStruct**, %struct.GraphStruct*** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %140, i64 %142
  store %struct.GraphStruct* %137, %struct.GraphStruct** %143, align 8
  %144 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %145 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %144, i32 0, i32 0
  %146 = load %struct.GraphStruct**, %struct.GraphStruct*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %146, i64 %148
  %150 = load %struct.GraphStruct*, %struct.GraphStruct** %149, align 8
  %151 = icmp ne %struct.GraphStruct* %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %134
  %153 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 5
  %154 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef %153)
  %155 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %156 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %155, i32 0, i32 0
  %157 = load %struct.GraphStruct**, %struct.GraphStruct*** %156, align 8
  %158 = bitcast %struct.GraphStruct** %157 to i8*
  call void @free(i8* noundef %158) #5
  store i1 false, i1* %3, align 1
  br label %242

159:                                              ; preds = %134
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %117, !llvm.loop !19

163:                                              ; preds = %117
  %164 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %165 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %164, i32 0, i32 0
  %166 = load %struct.GraphStruct**, %struct.GraphStruct*** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %166, i64 %168
  store %struct.GraphStruct* null, %struct.GraphStruct** %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 8
  %174 = call noalias i8* @malloc(i64 noundef %173) #5
  %175 = bitcast i8* %174 to i8***
  %176 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %177 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %176, i32 0, i32 1
  store i8*** %175, i8**** %177, align 8
  %178 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %179 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %178, i32 0, i32 1
  %180 = load i8***, i8**** %179, align 8
  %181 = icmp ne i8*** %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %163
  %183 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

184:                                              ; preds = %163
  store i32 0, i32* %10, align 4
  br label %185

185:                                              ; preds = %232, %184
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %235

189:                                              ; preds = %185
  %190 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %192 = call i8* @fgets(i8* noundef %190, i32 noundef 1000, %struct._IO_FILE* noundef %191)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %194 = call i32 @feof(%struct._IO_FILE* noundef %193) #5
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %198 = call i32 @strncmp(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* noundef %197, i64 noundef 10) #6
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %196, %189
  %201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

202:                                              ; preds = %196
  %203 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 10
  call void @pruneLine(i8* noundef %203)
  %204 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 10
  %205 = call i8** @parseSignature(i8* noundef %204)
  %206 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %207 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %206, i32 0, i32 1
  %208 = load i8***, i8**** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8**, i8*** %208, i64 %210
  store i8** %205, i8*** %211, align 8
  %212 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %213 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %212, i32 0, i32 1
  %214 = load i8***, i8**** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8**, i8*** %214, i64 %216
  %218 = load i8**, i8*** %217, align 8
  %219 = icmp ne i8** %218, null
  br i1 %219, label %231, label %220

220:                                              ; preds = %202
  %221 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 10
  %222 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef %221)
  %223 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %224 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %223, i32 0, i32 0
  %225 = load %struct.GraphStruct**, %struct.GraphStruct*** %224, align 8
  %226 = bitcast %struct.GraphStruct** %225 to i8*
  call void @free(i8* noundef %226) #5
  %227 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %228 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %227, i32 0, i32 1
  %229 = load i8***, i8**** %228, align 8
  %230 = bitcast i8*** %229 to i8*
  call void @free(i8* noundef %230) #5
  store i1 false, i1* %3, align 1
  br label %242

231:                                              ; preds = %202
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %185, !llvm.loop !20

235:                                              ; preds = %185
  %236 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %237 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %236, i32 0, i32 1
  %238 = load i8***, i8**** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8**, i8*** %238, i64 %240
  store i8** null, i8*** %241, align 8
  store i1 true, i1* %3, align 1
  br label %242

242:                                              ; preds = %235, %220, %200, %182, %152, %132, %114, %85, %72, %65, %52, %45, %32, %15
  %243 = load i1, i1* %3, align 1
  ret i1 %243
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind readnone willreturn }

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!22, !5}
!22 = distinct !{!23, !5}
!23 = distinct !{!24, !5}
!24 = distinct !{!25, !5}
!25 = distinct !{!26, !5}
!26 = distinct !{!27, !5}
!27 = distinct !{!28, !5}
!28 = distinct !{!29, !5}
!29 = distinct !{!30, !5}
!30 = distinct !{!31, !5}
!31 = distinct !{!32, !5}
!32 = distinct !{!33, !5}
!33 = distinct !{!34, !5}
!34 = distinct !{!35, !5}
!35 = distinct !{!36, !5}
!36 = distinct !{!37, !5}
!37 = distinct !{!38, !5}
!38 = distinct !{!39, !5}
!39 = distinct !{!40, !5}
!40 = distinct !{!41, !5}
!41 = distinct !{!42, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
!50 = distinct !{!51, !5}
!51 = distinct !{!52, !5}
!52 = distinct !{!53, !5}
!53 = distinct !{!54, !5}
!54 = distinct !{!55, !5}
!55 = distinct !{!56, !5}
!56 = distinct !{!57, !5}
!57 = distinct !{!58, !5}
!58 = distinct !{!59, !5}
!59 = distinct !{!60, !5}
!60 = distinct !{!61, !5}
!61 = distinct !{!62, !5}
!62 = distinct !{!63, !5}
!63 = distinct !{!64, !5}
!64 = distinct !{!65, !5}
!65 = distinct !{!66, !5}
!66 = distinct !{!67, !5}
!67 = distinct !{!68, !5}
!68 = distinct !{!69, !5}
!69 = distinct !{!70, !5}
!70 = distinct !{!71, !5}
!71 = distinct !{!72, !5}
!72 = distinct !{!73, !5}
!73 = distinct !{!74, !5}
!74 = distinct !{!75, !5}
!75 = distinct !{!76, !5}
!76 = distinct !{!77, !5}
!77 = distinct !{!78, !5}
!78 = distinct !{!79, !5}
!79 = distinct !{!80, !5}
!80 = distinct !{!81, !5}
!81 = distinct !{!82, !5}
!82 = distinct !{!83, !5}
!83 = distinct !{!84, !5}
!84 = distinct !{!85, !5}
!85 = distinct !{!86, !5}
!86 = distinct !{!87, !5}
!87 = distinct !{!88, !5}
!88 = distinct !{!89, !5}
!89 = distinct !{!90, !5}
!90 = distinct !{!91, !5}
!91 = distinct !{!92, !5}
!92 = distinct !{!93, !5}
!93 = distinct !{!94, !5}
!94 = distinct !{!95, !5}
!95 = distinct !{!96, !5}
!96 = distinct !{!97, !5}
!97 = distinct !{!98, !5}
!98 = distinct !{!99, !5}
!99 = distinct !{!100, !5}
!100 = distinct !{!101, !5}
!101 = distinct !{!102, !5}
!102 = distinct !{!103, !5}
!103 = distinct !{!104, !5}
!104 = distinct !{!105, !5}
!105 = distinct !{!106, !5}
!106 = distinct !{!107, !5}
!107 = distinct !{!108, !5}
!108 = distinct !{!109, !5}
!109 = distinct !{!110, !5}
!110 = distinct !{!111, !5}
!111 = distinct !{!112, !5}
!112 = distinct !{!113, !5}
!113 = distinct !{!114, !5}
!114 = distinct !{!115, !5}
!115 = distinct !{!116, !5}
!116 = distinct !{!117, !5}
!117 = distinct !{!118, !5}
!118 = distinct !{!119, !5}
!119 = distinct !{!120, !5}
!120 = distinct !{!121, !5}
!121 = distinct !{!122, !5}
!122 = distinct !{!123, !5}
!123 = distinct !{!124, !5}
!124 = distinct !{!125, !5}
!125 = distinct !{!126, !5}
!126 = distinct !{!127, !5}
!127 = distinct !{!128, !5}
!128 = distinct !{!129, !5}
!129 = distinct !{!130, !5}
!130 = distinct !{!131, !5}
!131 = distinct !{!132, !5}
!132 = distinct !{!133, !5}
!133 = distinct !{!134, !5}
!134 = distinct !{!135, !5}
!135 = distinct !{!136, !5}
!136 = distinct !{!137, !5}
!137 = distinct !{!138, !5}
!138 = distinct !{!139, !5}
!139 = distinct !{!140, !5}
!140 = distinct !{!141, !5}
!141 = distinct !{!142, !5}
!142 = distinct !{!143, !5}
!143 = distinct !{!144, !5}
!144 = distinct !{!145, !5}
!145 = distinct !{!146, !5}
!146 = distinct !{!147, !5}
!147 = distinct !{!148, !5}
!148 = distinct !{!149, !5}
!149 = distinct !{!150, !5}
