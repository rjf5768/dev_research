; ModuleID = './parsing.ll'
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
@str = private unnamed_addr constant [22 x i8] c"\09...parsing complete.\00", align 1
@str.1 = private unnamed_addr constant [42 x i8] c"Could not allocate graph storage. Exiting\00", align 1
@str.2 = private unnamed_addr constant [46 x i8] c"Could not allocate signature storage. Exiting\00", align 1
@str.3 = private unnamed_addr constant [50 x i8] c"Error in config file: mismatch of signature count\00", align 1
@str.4 = private unnamed_addr constant [45 x i8] c"Error in config file: mismatch of file count\00", align 1
@str.5 = private unnamed_addr constant [56 x i8] c"Error in config file: third line is not signature count\00", align 1
@str.6 = private unnamed_addr constant [34 x i8] c"No signatures to search, exiting.\00", align 1
@str.7 = private unnamed_addr constant [56 x i8] c"Error in config file: third line is not signature count\00", align 1
@str.8 = private unnamed_addr constant [28 x i8] c"No files to parse, exiting.\00", align 1
@str.9 = private unnamed_addr constant [52 x i8] c"Error in config file: second line is not file count\00", align 1
@str.10 = private unnamed_addr constant [68 x i8] c"Error in config file: doesn't start with \22Pathfinder Configuration\22\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @buildEntranceList(%struct.NodeStruct* noundef %0, %struct.IntVectorStruct* noundef readonly %1) #0 {
  %.not = icmp eq %struct.NodeStruct* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq %struct.IntVectorStruct* %1, null
  br i1 %.not1, label %4, label %5

4:                                                ; preds = %3, %2
  br label %50

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %1, i64 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %50

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %1, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -2
  %.not2 = icmp eq i32 %9, %15
  br i1 %.not2, label %21, label %16

16:                                               ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 noundef %19) #8
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  %23 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %22, align 8
  %.not3 = icmp eq %struct.EdgeListStruct* %23, null
  br i1 %.not3, label %24, label %27

24:                                               ; preds = %21
  %25 = call %struct.EdgeListStruct* (...) @EdgeList_new() #9
  %26 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  store %struct.EdgeListStruct* %25, %struct.EdgeListStruct** %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  %29 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %28, align 8
  %.not4 = icmp eq %struct.EdgeListStruct* %29, null
  br i1 %.not4, label %50, label %30

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %47, %30
  %.0 = phi i32 [ 2, %30 ], [ %48, %47 ]
  %32 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %1, i64 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %.0, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  %37 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %36, align 8
  %38 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %1, i64 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = zext i32 %.0 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* noundef %37, i32 noundef %42) #9
  %44 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %35
  %48 = add nuw nsw i32 %.0, 1
  br label %31, !llvm.loop !4

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %27, %11, %4
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local %struct.EdgeListStruct* @EdgeList_new(...) #1

declare dso_local zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* noundef readonly %0) #0 {
  %2 = icmp eq %struct.IntVectorStruct* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3, %1
  br label %55

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.NodeStruct* @Node_new(i32 noundef %11, i32 noundef -1) #9
  %.not = icmp eq %struct.NodeStruct* %12, null
  br i1 %.not, label %13, label %14

13:                                               ; preds = %8
  br label %55

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -2
  %.not2 = icmp eq i32 %18, %21
  br i1 %.not2, label %28, label %22

22:                                               ; preds = %14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 noundef %26) #8
  br label %28

28:                                               ; preds = %22, %14
  %29 = icmp sgt i32 %18, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %28
  %31 = call %struct.EdgeListStruct* (...) @EdgeList_new() #9
  %32 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %12, i64 0, i32 7
  store %struct.EdgeListStruct* %31, %struct.EdgeListStruct** %32, align 8
  %.not3 = icmp eq %struct.EdgeListStruct* %31, null
  br i1 %.not3, label %53, label %33

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %50, %33
  %.01 = phi i32 [ 2, %33 ], [ %51, %50 ]
  %35 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %.01, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %12, i64 0, i32 7
  %40 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %39, align 8
  %41 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = zext i32 %.01 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* noundef %40, i32 noundef %45) #9
  %47 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %12, i64 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %38
  %51 = add nuw nsw i32 %.01, 1
  br label %34, !llvm.loop !6

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %13, %7
  %.0 = phi %struct.NodeStruct* [ null, %7 ], [ %12, %54 ], [ null, %13 ]
  ret %struct.NodeStruct* %.0
}

declare dso_local %struct.NodeStruct* @Node_new(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @resolveNodeEdges(%struct.GraphStruct* noundef %0, %struct.NodeStruct* noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 7
  br label %5

5:                                                ; preds = %74, %3
  %.01.in = phi %struct.EdgeListStruct** [ %4, %3 ], [ %75, %74 ]
  %.01 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.01.in, align 8
  %.not = icmp eq %struct.EdgeListStruct* %.01, null
  br i1 %.not, label %76, label %6

6:                                                ; preds = %5
  br i1 %2, label %7, label %50

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %0, i32 noundef %9, i1 noundef zeroext true) #9
  %.not4 = icmp eq %struct.NodeStruct* %10, null
  br i1 %.not4, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %10, i64 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %10, i64 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %38

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %10, i64 0, i32 5
  %21 = load %struct.NodeStruct*, %struct.NodeStruct** %20, align 8
  %.not5 = icmp eq %struct.NodeStruct* %21, %1
  br i1 %.not5, label %37, label %22

22:                                               ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 noundef %25, i32 noundef %27) #8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %10, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %10, i64 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef %31, i8* noundef %35, i32 noundef %33) #8
  br label %37

37:                                               ; preds = %22, %19
  br label %38

38:                                               ; preds = %37, %15
  %.1 = phi i1 [ %.not5, %37 ], [ true, %15 ]
  br i1 %.1, label %39, label %41

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  store %struct.NodeStruct* %10, %struct.NodeStruct** %40, align 8
  br label %41

41:                                               ; preds = %39, %38
  br label %49

42:                                               ; preds = %7
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 noundef %45, i32 noundef %47) #8
  br label %49

49:                                               ; preds = %42, %41
  br label %73

50:                                               ; preds = %6
  %51 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %0, i32 noundef %52, i1 noundef zeroext false) #9
  %.not2 = icmp eq %struct.NodeStruct* %53, null
  br i1 %.not2, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  store %struct.NodeStruct* %53, %struct.NodeStruct** %55, align 8
  br label %72

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 5
  %58 = load %struct.NodeStruct*, %struct.NodeStruct** %57, align 8
  %59 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.NodeStruct* @Graph_findContainedNode(%struct.NodeStruct* noundef %58, i32 noundef %60) #9
  %.not3 = icmp eq %struct.NodeStruct* %61, null
  br i1 %.not3, label %64, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  store %struct.NodeStruct* %61, %struct.NodeStruct** %63, align 8
  br label %71

64:                                               ; preds = %56
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 noundef %67, i32 noundef %69) #8
  br label %71

71:                                               ; preds = %64, %62
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %49
  br label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 2
  br label %5, !llvm.loop !7

76:                                               ; preds = %5
  ret void
}

declare dso_local %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef, i32 noundef, i1 noundef zeroext) #1

declare dso_local %struct.NodeStruct* @Graph_findContainedNode(%struct.NodeStruct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GraphStruct* @parseFile(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %259

3:                                                ; preds = %1
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9
  %.not14 = icmp eq %struct._IO_FILE* %4, null
  br i1 %.not14, label %5, label %7

5:                                                ; preds = %3
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %0) #9
  br label %259

7:                                                ; preds = %3
  %8 = call %struct.GraphStruct* (...) @Graph_new() #9
  %.not15 = icmp eq %struct.GraphStruct* %8, null
  br i1 %.not15, label %9, label %10

9:                                                ; preds = %7
  br label %259

10:                                               ; preds = %7
  %11 = call noalias i8* @strdup(i8* noundef nonnull %0) #9
  %12 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = call %struct.CharVectorStruct* @CharVector_new(i32 noundef 1024) #9
  %14 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %13, %struct._IO_FILE* noundef nonnull %4) #9
  %15 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not16 = icmp eq i32 %15, 0
  br i1 %.not16, label %16, label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strncmp(i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %18, i64 noundef 10) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 10
  %25 = call i32 @atoi(i8* noundef nonnull %24) #10
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 noundef %25) #9
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 noundef %25) #9
  br label %30

27:                                               ; preds = %16, %10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %28) #11
  br label %259

30:                                               ; preds = %21
  %31 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %13, %struct._IO_FILE* noundef nonnull %4) #9
  %32 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not17 = icmp eq i32 %32, 0
  br i1 %.not17, label %33, label %44

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strncmp(i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %35, i64 noundef 13) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 13
  %42 = call i32 @atoi(i8* noundef nonnull %41) #10
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %42) #9
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 noundef %42) #9
  br label %47

44:                                               ; preds = %33, %30
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %45) #11
  br label %259

47:                                               ; preds = %38
  %48 = call %struct.IntVectorStruct* @IntVector_new(i32 noundef 8) #9
  br label %49

49:                                               ; preds = %77, %47
  %50 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not18 = icmp eq i32 %50, 0
  br i1 %.not18, label %51, label %.loopexit9

51:                                               ; preds = %49
  %52 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %13, %struct._IO_FILE* noundef nonnull %4) #9
  %53 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not31 = icmp eq i32 %53, 0
  br i1 %.not31, label %55, label %54

54:                                               ; preds = %51
  br label %79

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strncmp(i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %57, i64 noundef 10) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %79

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef %48, i8* noundef %63) #9
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = call %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* noundef %48)
  %.not32 = icmp eq %struct.NodeStruct* %67, null
  br i1 %.not32, label %76, label %68

68:                                               ; preds = %66
  %69 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef nonnull %8, %struct.NodeStruct* noundef nonnull %67) #9
  %70 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %67, i64 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %66
  br label %77

77:                                               ; preds = %76, %61
  %78 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %48, i64 0, i32 0
  store i32 0, i32* %78, align 8
  br label %49, !llvm.loop !8

.loopexit9:                                       ; preds = %49
  br label %79

79:                                               ; preds = %.loopexit9, %60, %54
  br label %80

80:                                               ; preds = %150, %79
  %.02 = phi i8 [ 0, %79 ], [ %91, %150 ]
  %81 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not19 = icmp eq i32 %81, 0
  br i1 %.not19, label %82, label %.loopexit8

82:                                               ; preds = %80
  %83 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %13, %struct._IO_FILE* noundef nonnull %4) #9
  %84 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not27 = icmp eq i32 %84, 0
  br i1 %.not27, label %86, label %85

85:                                               ; preds = %82
  br label %151

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strncmp(i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %88, i64 noundef 12) #10
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i8
  br i1 %90, label %92, label %93

92:                                               ; preds = %86
  br label %151

93:                                               ; preds = %86
  %94 = call i16** @__ctype_b_loc() #12
  %95 = load i16*, i16** %94, align 8
  %96 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i64
  %100 = getelementptr inbounds i16, i16* %95, i64 %99
  %101 = load i16, i16* %100, align 2
  %102 = and i16 %101, 2048
  %.not28 = icmp eq i16 %102, 0
  br i1 %.not28, label %107, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @atoi(i8* noundef %105) #10
  br label %108

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %103
  %.03 = phi i32 [ %106, %103 ], [ -1, %107 ]
  %109 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef nonnull %8, i32 noundef %.03, i1 noundef zeroext false) #9
  %110 = icmp eq %struct.NodeStruct* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 noundef %.03) #8
  br label %151

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %148, %114
  %116 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not29 = icmp eq i32 %116, 0
  br i1 %.not29, label %117, label %.loopexit7

117:                                              ; preds = %115
  %118 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %13, %struct._IO_FILE* noundef nonnull %4) #9
  %119 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strncmp(i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %120, i64 noundef 10) #10
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %150

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef %48, i8* noundef %126) #9
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %48, i64 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %109, i64 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  call void @buildEntranceList(%struct.NodeStruct* noundef nonnull %109, %struct.IntVectorStruct* noundef %48)
  br label %147

137:                                              ; preds = %129
  %138 = call %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* noundef %48)
  %.not30 = icmp eq %struct.NodeStruct* %138, null
  br i1 %.not30, label %146, label %139

139:                                              ; preds = %137
  call void @Node_addInteriorNode(%struct.NodeStruct* noundef nonnull %109, %struct.NodeStruct* noundef nonnull %138) #9
  %140 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %138, i64 0, i32 1
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %139, %137
  br label %147

147:                                              ; preds = %146, %136
  br label %148

148:                                              ; preds = %147, %124
  %149 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %48, i64 0, i32 0
  store i32 0, i32* %149, align 8
  br label %115, !llvm.loop !9

.loopexit7:                                       ; preds = %115
  br label %150

150:                                              ; preds = %.loopexit7, %123
  br label %80, !llvm.loop !10

.loopexit8:                                       ; preds = %80
  br label %151

151:                                              ; preds = %.loopexit8, %111, %92, %85
  %.1 = phi i8 [ %.02, %85 ], [ %91, %92 ], [ %91, %111 ], [ %.02, %.loopexit8 ]
  %152 = call %struct.SystemCallMapStruct* @SystemCallMap_new(i32 noundef %25) #9
  %153 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 4
  store %struct.SystemCallMapStruct* %152, %struct.SystemCallMapStruct** %153, align 8
  %154 = icmp eq %struct.SystemCallMapStruct* %152, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  call void @IntVector_delete(%struct.IntVectorStruct* noundef %48) #9
  br label %259

156:                                              ; preds = %151
  %157 = and i8 %.1, 1
  %.not20 = icmp eq i8 %157, 0
  br i1 %.not20, label %225, label %158

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %223, %158
  %160 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not23 = icmp eq i32 %160, 0
  br i1 %.not23, label %161, label %.loopexit

161:                                              ; preds = %159
  %162 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %13, %struct._IO_FILE* noundef nonnull %4) #9
  %163 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not24 = icmp eq i32 %163, 0
  br i1 %.not24, label %165, label %164

164:                                              ; preds = %161
  br label %224

165:                                              ; preds = %161
  %166 = call i16** @__ctype_b_loc() #12
  %167 = load i16*, i16** %166, align 8
  %168 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i64
  %172 = getelementptr inbounds i16, i16* %167, i64 %171
  %173 = load i16, i16* %172, align 2
  %174 = and i16 %173, 2048
  %.not25 = icmp eq i16 %174, 0
  br i1 %.not25, label %179, label %175

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @atoi(i8* noundef %177) #10
  br label %180

179:                                              ; preds = %165
  br label %180

180:                                              ; preds = %179, %175
  %.14 = phi i32 [ %178, %175 ], [ -1, %179 ]
  %181 = icmp sgt i32 %.14, -1
  br i1 %181, label %182, label %223

182:                                              ; preds = %180
  br label %183

183:                                              ; preds = %199, %182
  %.01 = phi i32 [ 0, %182 ], [ %200, %199 ]
  %184 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = zext i32 %.01 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i8, i8* %187, align 1
  %.not26 = icmp eq i8 %188, 0
  br i1 %.not26, label %196, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = zext i32 %.01 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 32
  br label %196

196:                                              ; preds = %189, %183
  %197 = phi i1 [ false, %183 ], [ %195, %189 ]
  br i1 %197, label %198, label %201

198:                                              ; preds = %196
  br label %199

199:                                              ; preds = %198
  %200 = add nuw nsw i32 %.01, 1
  br label %183, !llvm.loop !11

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = zext i32 %.01 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = icmp eq i8 %206, 32
  br i1 %207, label %208, label %222

208:                                              ; preds = %201
  %209 = add nuw nsw i32 %.01, 1
  %210 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef nonnull %8, i32 noundef %.14, i1 noundef zeroext true) #9
  %211 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = zext i32 %209 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  call void @pruneLine(i8* noundef nonnull %214)
  %215 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 4
  %216 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %215, align 8
  %217 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %13, i64 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = zext i32 %209 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  %221 = call zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* noundef %216, i8* noundef nonnull %220, %struct.NodeStruct* noundef %210) #9
  br label %222

222:                                              ; preds = %208, %201
  br label %223

223:                                              ; preds = %222, %180
  br label %159, !llvm.loop !12

.loopexit:                                        ; preds = %159
  br label %224

224:                                              ; preds = %.loopexit, %164
  br label %225

225:                                              ; preds = %224, %156
  call void @CharVector_delete(%struct.CharVectorStruct* noundef %13) #9
  %226 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 2
  br label %227

227:                                              ; preds = %241, %225
  %.05.in = phi %struct.NodeListStruct** [ %226, %225 ], [ %242, %241 ]
  %.05 = load %struct.NodeListStruct*, %struct.NodeListStruct** %.05.in, align 8
  %.not21 = icmp eq %struct.NodeListStruct* %.05, null
  br i1 %.not21, label %243, label %228

228:                                              ; preds = %227
  %229 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.05, i64 0, i32 0
  %230 = load %struct.NodeStruct*, %struct.NodeStruct** %229, align 8
  call void @resolveNodeEdges(%struct.GraphStruct* noundef nonnull %8, %struct.NodeStruct* noundef %230, i1 noundef zeroext true)
  %231 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.05, i64 0, i32 0
  %232 = load %struct.NodeStruct*, %struct.NodeStruct** %231, align 8
  %233 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %232, i64 0, i32 6
  br label %234

234:                                              ; preds = %238, %228
  %.06.in = phi %struct.NodeListStruct** [ %233, %228 ], [ %239, %238 ]
  %.06 = load %struct.NodeListStruct*, %struct.NodeListStruct** %.06.in, align 8
  %.not22 = icmp eq %struct.NodeListStruct* %.06, null
  br i1 %.not22, label %240, label %235

235:                                              ; preds = %234
  %236 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.06, i64 0, i32 0
  %237 = load %struct.NodeStruct*, %struct.NodeStruct** %236, align 8
  call void @resolveNodeEdges(%struct.GraphStruct* noundef nonnull %8, %struct.NodeStruct* noundef %237, i1 noundef zeroext false)
  br label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.06, i64 0, i32 1
  br label %234, !llvm.loop !13

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.05, i64 0, i32 1
  br label %227, !llvm.loop !14

243:                                              ; preds = %227
  %244 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 4
  %245 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %244, align 8
  %246 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %245, i64 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 noundef %247) #9
  %249 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 4
  %250 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %249, align 8
  %251 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %250, i64 0, i32 0
  %252 = load i32, i32* %251, align 8
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 noundef %252) #9
  %253 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 2
  %254 = load %struct.NodeListStruct*, %struct.NodeListStruct** %253, align 8
  %255 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call %struct.SearchDiagramStruct* @SearchDiagram_build(%struct.NodeListStruct* noundef %254, i32 noundef %256) #9
  %258 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %8, i64 0, i32 3
  store %struct.SearchDiagramStruct* %257, %struct.SearchDiagramStruct** %258, align 8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str, i64 0, i64 0))
  br label %259

259:                                              ; preds = %243, %155, %44, %27, %9, %5, %2
  %.0 = phi %struct.GraphStruct* [ null, %27 ], [ null, %44 ], [ null, %155 ], [ %8, %243 ], [ null, %9 ], [ null, %5 ], [ null, %2 ]
  ret %struct.GraphStruct* %.0
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

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local void @YAMLWriteInt(i8* noundef, i32 noundef) #1

declare dso_local %struct.IntVectorStruct* @IntVector_new(i32 noundef) #1

declare dso_local i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef, i8* noundef) #1

declare dso_local zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef, %struct.NodeStruct* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local void @Node_addInteriorNode(%struct.NodeStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local %struct.SystemCallMapStruct* @SystemCallMap_new(i32 noundef) #1

declare dso_local void @IntVector_delete(%struct.IntVectorStruct* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @pruneLine(i8* nocapture noundef %0) #5 {
  br label %2

2:                                                ; preds = %23, %1
  %.0 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %.loopexit, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 13
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  store i8 0, i8* %13, align 1
  br label %25

14:                                               ; preds = %6
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  store i8 0, i8* %21, align 1
  br label %25

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !15

.loopexit:                                        ; preds = %2
  br label %25

25:                                               ; preds = %.loopexit, %19, %11
  ret void
}

declare dso_local zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* noundef, i8* noundef, %struct.NodeStruct* noundef) #1

declare dso_local void @CharVector_delete(%struct.CharVectorStruct* noundef) #1

declare dso_local %struct.SearchDiagramStruct* @SearchDiagram_build(%struct.NodeListStruct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8** @parseSignature(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %49

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %18, %3
  %.02 = phi i32 [ 0, %3 ], [ %.13, %18 ]
  %.01 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1
  %.not5 = icmp eq i8 %7, 0
  br i1 %.not5, label %20, label %8

8:                                                ; preds = %4
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 32
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = add nsw i32 %.02, 1
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %13, %8
  %.13 = phi i32 [ %14, %13 ], [ %.02, %8 ]
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !16

20:                                               ; preds = %4
  %21 = add nsw i32 %.02, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = call noalias i8* @malloc(i64 noundef %23) #9
  %25 = bitcast i8* %24 to i8**
  %.not6 = icmp eq i8* %24, null
  br i1 %.not6, label %48, label %26

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %42, %26
  %.04 = phi i32 [ 0, %26 ], [ %44, %42 ]
  %.1 = phi i32 [ 0, %26 ], [ %43, %42 ]
  %28 = icmp slt i32 %.04, %.02
  br i1 %28, label %29, label %45

29:                                               ; preds = %27
  %30 = sext i32 %.1 to i64
  %31 = getelementptr inbounds i8, i8* %0, i64 %30
  %32 = call noalias i8* @strdup(i8* noundef nonnull %31) #9
  %33 = zext i32 %.04 to i64
  %34 = getelementptr inbounds i8*, i8** %25, i64 %33
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %39, %29
  %.2 = phi i32 [ %.1, %29 ], [ %40, %39 ]
  %36 = sext i32 %.2 to i64
  %37 = getelementptr inbounds i8, i8* %0, i64 %36
  %38 = load i8, i8* %37, align 1
  %.not7 = icmp eq i8 %38, 0
  br i1 %.not7, label %41, label %39

39:                                               ; preds = %35
  %40 = add nsw i32 %.2, 1
  br label %35, !llvm.loop !17

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = add nsw i32 %.2, 1
  %44 = add nuw nsw i32 %.04, 1
  br label %27, !llvm.loop !18

45:                                               ; preds = %27
  %46 = sext i32 %.02 to i64
  %47 = getelementptr inbounds i8*, i8** %25, i64 %46
  store i8* null, i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %20
  br label %49

49:                                               ; preds = %48, %2
  %.0 = phi i8** [ %25, %48 ], [ null, %2 ]
  ret i8** %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @parseConfigFile(i8* noundef %0, %struct.ConfigurationStruct* nocapture noundef %1) #0 {
  %3 = alloca [1000 x i8], align 16
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9
  %.not = icmp eq %struct._IO_FILE* %4, null
  br i1 %.not, label %5, label %7

5:                                                ; preds = %2
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* noundef %0) #9
  br label %147

7:                                                ; preds = %2
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef %0) #9
  br label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %11 = call i8* @fgets(i8* noundef nonnull %10, i32 noundef 1000, %struct._IO_FILE* noundef nonnull %4) #9
  %12 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(24) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull dereferenceable(24) %14, i64 24)
  %.not3 = icmp eq i32 %bcmp, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %13, %9
  %puts33 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @str.10, i64 0, i64 0))
  br label %147

16:                                               ; preds = %13
  %17 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %18 = call i8* @fgets(i8* noundef nonnull %17, i32 noundef 1000, %struct._IO_FILE* noundef nonnull %4) #9
  %19 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not4 = icmp eq i32 %19, 0
  br i1 %.not4, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) %21, i64 5)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20, %16
  %puts32 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.9, i64 0, i64 0))
  br label %147

23:                                               ; preds = %20
  %24 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 6
  %25 = call i32 @atoi(i8* noundef nonnull %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  %puts31 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.8, i64 0, i64 0))
  br label %147

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %30 = call i8* @fgets(i8* noundef nonnull %29, i32 noundef 1000, %struct._IO_FILE* noundef nonnull %4) #9
  %31 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not7 = icmp eq i32 %31, 0
  br i1 %.not7, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %bcmp8 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* noundef nonnull dereferenceable(10) %33, i64 10)
  %.not9 = icmp eq i32 %bcmp8, 0
  br i1 %.not9, label %35, label %34

34:                                               ; preds = %32, %28
  %puts30 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.7, i64 0, i64 0))
  br label %147

35:                                               ; preds = %32
  %36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 11
  %37 = call i32 @atoi(i8* noundef nonnull %36) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  %puts29 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @str.6, i64 0, i64 0))
  br label %147

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %42 = call i8* @fgets(i8* noundef nonnull %41, i32 noundef 1000, %struct._IO_FILE* noundef nonnull %4) #9
  %43 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not10 = icmp eq i32 %43, 0
  br i1 %.not10, label %44, label %46

44:                                               ; preds = %40
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %bcmp11 = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull dereferenceable(11) %45, i64 11)
  %.not12 = icmp eq i32 %bcmp11, 0
  br i1 %.not12, label %47, label %46

46:                                               ; preds = %44, %40
  %puts28 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.5, i64 0, i64 0))
  br label %147

47:                                               ; preds = %44
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 12
  %49 = bitcast i8* %48 to i32*
  %lhsv = load i32, i32* %49, align 4
  %.not14 = icmp eq i32 %lhsv, 1701147252
  br i1 %.not14, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 2
  %52 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %51, align 8
  %53 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %52, i64 0, i32 0
  store i32 0, i32* %53, align 8
  br label %58

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 2
  %56 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %55, align 8
  %57 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %56, i64 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = add nsw i32 %25, 1
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 3
  %62 = call noalias i8* @malloc(i64 noundef %61) #9
  %63 = bitcast %struct.ConfigurationStruct* %1 to i8**
  store i8* %62, i8** %63, align 8
  %.not15 = icmp eq i8* %62, null
  br i1 %.not15, label %64, label %65

64:                                               ; preds = %58
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.1, i64 0, i64 0))
  br label %147

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %94, %65
  %.01 = phi i32 [ 0, %65 ], [ %95, %94 ]
  %67 = icmp slt i32 %.01, %25
  br i1 %67, label %68, label %96

68:                                               ; preds = %66
  %69 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %70 = call i8* @fgets(i8* noundef nonnull %69, i32 noundef 1000, %struct._IO_FILE* noundef nonnull %4) #9
  %71 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not23 = icmp eq i32 %71, 0
  br i1 %.not23, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %bcmp24 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) %73, i64 5)
  %.not25 = icmp eq i32 %bcmp24, 0
  br i1 %.not25, label %75, label %74

74:                                               ; preds = %72, %68
  %puts27 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @str.4, i64 0, i64 0))
  br label %147

75:                                               ; preds = %72
  %76 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 5
  call void @pruneLine(i8* noundef nonnull %76)
  %77 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 5
  %78 = call %struct.GraphStruct* @parseFile(i8* noundef nonnull %77)
  %79 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 0
  %80 = load %struct.GraphStruct**, %struct.GraphStruct*** %79, align 8
  %81 = zext i32 %.01 to i64
  %82 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %80, i64 %81
  store %struct.GraphStruct* %78, %struct.GraphStruct** %82, align 8
  %83 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 0
  %84 = load %struct.GraphStruct**, %struct.GraphStruct*** %83, align 8
  %85 = zext i32 %.01 to i64
  %86 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %84, i64 %85
  %87 = load %struct.GraphStruct*, %struct.GraphStruct** %86, align 8
  %.not26 = icmp eq %struct.GraphStruct* %87, null
  br i1 %.not26, label %88, label %93

88:                                               ; preds = %75
  %89 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 5
  %90 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef nonnull %89) #9
  %91 = bitcast %struct.ConfigurationStruct* %1 to i8**
  %92 = load i8*, i8** %91, align 8
  call void @free(i8* noundef %92) #9
  br label %147

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93
  %95 = add nuw nsw i32 %.01, 1
  br label %66, !llvm.loop !19

96:                                               ; preds = %66
  %97 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 0
  %98 = load %struct.GraphStruct**, %struct.GraphStruct*** %97, align 8
  %99 = sext i32 %25 to i64
  %100 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %98, i64 %99
  store %struct.GraphStruct* null, %struct.GraphStruct** %100, align 8
  %101 = add nsw i32 %37, 1
  %102 = sext i32 %101 to i64
  %103 = shl nsw i64 %102, 3
  %104 = call noalias i8* @malloc(i64 noundef %103) #9
  %105 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 1
  %106 = bitcast i8**** %105 to i8**
  store i8* %104, i8** %106, align 8
  %.not16 = icmp eq i8* %104, null
  br i1 %.not16, label %107, label %108

107:                                              ; preds = %96
  %puts17 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @str.2, i64 0, i64 0))
  br label %147

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %140, %108
  %.1 = phi i32 [ 0, %108 ], [ %141, %140 ]
  %110 = icmp slt i32 %.1, %37
  br i1 %110, label %111, label %142

111:                                              ; preds = %109
  %112 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %113 = call i8* @fgets(i8* noundef nonnull %112, i32 noundef 1000, %struct._IO_FILE* noundef nonnull %4) #9
  %114 = call i32 @feof(%struct._IO_FILE* noundef nonnull %4) #9
  %.not18 = icmp eq i32 %114, 0
  br i1 %.not18, label %115, label %117

115:                                              ; preds = %111
  %116 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %bcmp19 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* noundef nonnull dereferenceable(10) %116, i64 10)
  %.not20 = icmp eq i32 %bcmp19, 0
  br i1 %.not20, label %118, label %117

117:                                              ; preds = %115, %111
  %puts22 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.3, i64 0, i64 0))
  br label %147

118:                                              ; preds = %115
  %119 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 10
  call void @pruneLine(i8* noundef nonnull %119)
  %120 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 10
  %121 = call i8** @parseSignature(i8* noundef nonnull %120)
  %122 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 1
  %123 = load i8***, i8**** %122, align 8
  %124 = zext i32 %.1 to i64
  %125 = getelementptr inbounds i8**, i8*** %123, i64 %124
  store i8** %121, i8*** %125, align 8
  %126 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 1
  %127 = load i8***, i8**** %126, align 8
  %128 = zext i32 %.1 to i64
  %129 = getelementptr inbounds i8**, i8*** %127, i64 %128
  %130 = load i8**, i8*** %129, align 8
  %.not21 = icmp eq i8** %130, null
  br i1 %.not21, label %131, label %139

131:                                              ; preds = %118
  %132 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 10
  %133 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef nonnull %132) #9
  %134 = bitcast %struct.ConfigurationStruct* %1 to i8**
  %135 = load i8*, i8** %134, align 8
  call void @free(i8* noundef %135) #9
  %136 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 1
  %137 = bitcast i8**** %136 to i8**
  %138 = load i8*, i8** %137, align 8
  call void @free(i8* noundef %138) #9
  br label %147

139:                                              ; preds = %118
  br label %140

140:                                              ; preds = %139
  %141 = add nuw nsw i32 %.1, 1
  br label %109, !llvm.loop !20

142:                                              ; preds = %109
  %143 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %1, i64 0, i32 1
  %144 = load i8***, i8**** %143, align 8
  %145 = sext i32 %37 to i64
  %146 = getelementptr inbounds i8**, i8*** %144, i64 %145
  store i8** null, i8*** %146, align 8
  br label %147

147:                                              ; preds = %142, %131, %117, %107, %88, %74, %64, %46, %39, %34, %27, %22, %15, %5
  %.0 = phi i1 [ false, %15 ], [ false, %22 ], [ false, %27 ], [ false, %34 ], [ false, %39 ], [ false, %46 ], [ false, %74 ], [ false, %88 ], [ false, %117 ], [ false, %131 ], [ true, %142 ], [ false, %107 ], [ false, %64 ], [ false, %5 ]
  ret i1 %.0
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold }
attributes #12 = { nounwind readnone willreturn }

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
