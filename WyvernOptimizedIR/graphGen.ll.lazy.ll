; ModuleID = './graphGen.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/graphGen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GraphStruct = type { i8*, i32, %struct.NodeListStruct*, %struct.SearchDiagramStruct*, %struct.SystemCallMapStruct* }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.SearchDiagramStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.EdgeReferencesStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.SystemCallMapStruct = type { i32, i32, %struct.SystemCallMapElementStruct** }
%struct.SystemCallMapElementStruct = type { i8*, i32, %struct.NodePtrVecStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.NodeVecVecStruct = type { i32, i32, %struct.NodePtrVecStruct** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Functions: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Basic blocks: %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0 \0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"-------------------------------------------- \0ASYSTEM CALLS \0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%d %s \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** noundef readonly %0, i32 noundef %1) #0 {
  %3 = call %struct.GraphStruct* (...) @Graph_new() #3
  %.not = icmp eq %struct.NodeVecVecStruct** %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %.not5 = icmp eq %struct.GraphStruct* %3, null
  br i1 %.not5, label %5, label %6

5:                                                ; preds = %4, %2
  br label %111

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %108, %6
  %.03 = phi i32 [ 0, %6 ], [ %109, %108 ]
  %8 = zext i32 %.03 to i64
  %9 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %0, i64 %8
  %10 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %9, align 8
  %.not6 = icmp eq %struct.NodeVecVecStruct* %10, null
  br i1 %.not6, label %110, label %11

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %105, %11
  %.02 = phi i32 [ 0, %11 ], [ %106, %105 ]
  %13 = zext i32 %.03 to i64
  %14 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %0, i64 %13
  %15 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %14, align 8
  %16 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %15, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %.02, %17
  br i1 %18, label %19, label %107

19:                                               ; preds = %12
  %20 = zext i32 %.03 to i64
  %21 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %0, i64 %20
  %22 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %21, align 8
  %23 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %22, i64 0, i32 2
  %24 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %23, align 8
  %25 = zext i32 %.02 to i64
  %26 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %24, i64 %25
  %27 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %26, align 8
  %28 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %27, i64 0, i32 2
  %29 = load %struct.NodeStruct**, %struct.NodeStruct*** %28, align 8
  %30 = load %struct.NodeStruct*, %struct.NodeStruct** %29, align 8
  %31 = call %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* noundef nonnull %3, %struct.NodeStruct* noundef %30)
  %.not7 = icmp eq %struct.NodeStruct* %31, null
  br i1 %.not7, label %32, label %33

32:                                               ; preds = %19
  br label %111

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %102, %33
  %.04 = phi %struct.NodeStruct* [ %31, %33 ], [ %98, %102 ]
  %.01 = phi i32 [ 1, %33 ], [ %103, %102 ]
  %35 = zext i32 %.03 to i64
  %36 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %0, i64 %35
  %37 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %36, align 8
  %38 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %37, i64 0, i32 2
  %39 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %38, align 8
  %40 = zext i32 %.02 to i64
  %41 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %39, i64 %40
  %42 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %41, align 8
  %43 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %42, i64 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %.01, %44
  br i1 %45, label %46, label %104

46:                                               ; preds = %34
  %47 = icmp eq i32 %1, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  %49 = zext i32 %.03 to i64
  %50 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %0, i64 %49
  %51 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %50, align 8
  %52 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %51, i64 0, i32 2
  %53 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %52, align 8
  %54 = zext i32 %.02 to i64
  %55 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %53, i64 %54
  %56 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %55, align 8
  %57 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %56, i64 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  br label %84

60:                                               ; preds = %46
  %61 = icmp eq i32 %1, 1
  br i1 %61, label %62, label %83

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %80, %62
  %.1 = phi i32 [ %.01, %62 ], [ %81, %80 ]
  %64 = zext i32 %.03 to i64
  %65 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %0, i64 %64
  %66 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %65, align 8
  %67 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %66, i64 0, i32 2
  %68 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %67, align 8
  %69 = zext i32 %.02 to i64
  %70 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %68, i64 %69
  %71 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %70, align 8
  %72 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %71, i64 0, i32 2
  %73 = load %struct.NodeStruct**, %struct.NodeStruct*** %72, align 8
  %74 = sext i32 %.1 to i64
  %75 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %73, i64 %74
  %76 = load %struct.NodeStruct*, %struct.NodeStruct** %75, align 8
  %77 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %76, i64 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = add nsw i32 %.1, 1
  br label %63, !llvm.loop !4

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %60
  %.2 = phi i32 [ %.1, %82 ], [ %.01, %60 ]
  br label %84

84:                                               ; preds = %83, %48
  %.3 = phi i32 [ %59, %48 ], [ %.2, %83 ]
  %85 = zext i32 %.03 to i64
  %86 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %0, i64 %85
  %87 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %86, align 8
  %88 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %87, i64 0, i32 2
  %89 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %88, align 8
  %90 = zext i32 %.02 to i64
  %91 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %89, i64 %90
  %92 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %91, align 8
  %93 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %92, i64 0, i32 2
  %94 = load %struct.NodeStruct**, %struct.NodeStruct*** %93, align 8
  %95 = sext i32 %.3 to i64
  %96 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %94, i64 %95
  %97 = load %struct.NodeStruct*, %struct.NodeStruct** %96, align 8
  %98 = call %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* noundef nonnull %3, %struct.NodeStruct* noundef %97)
  %.not8 = icmp eq %struct.NodeStruct* %98, null
  br i1 %.not8, label %99, label %100

99:                                               ; preds = %84
  br label %111

100:                                              ; preds = %84
  %101 = call zeroext i1 @Node_addEdgeToNode(%struct.NodeStruct* noundef nonnull %.04, %struct.NodeStruct* noundef nonnull %98) #3
  br label %102

102:                                              ; preds = %100
  %103 = add nsw i32 %.3, 1
  br label %34, !llvm.loop !6

104:                                              ; preds = %34
  br label %105

105:                                              ; preds = %104
  %106 = add nuw nsw i32 %.02, 1
  br label %12, !llvm.loop !7

107:                                              ; preds = %12
  br label %108

108:                                              ; preds = %107
  %109 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !8

110:                                              ; preds = %7
  br label %111

111:                                              ; preds = %110, %99, %32, %5
  %.0 = phi %struct.GraphStruct* [ null, %99 ], [ null, %32 ], [ %3, %110 ], [ null, %5 ]
  ret %struct.GraphStruct* %.0
}

declare dso_local %struct.GraphStruct* @Graph_new(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %0, i32 noundef %4, i1 noundef zeroext true) #3
  %.not = icmp eq %struct.NodeStruct* %5, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = call %struct.NodeStruct* @Node_duplicate(%struct.NodeStruct* noundef %1, i32 noundef %9) #3
  %.not1 = icmp eq %struct.NodeStruct* %11, null
  br i1 %.not1, label %15, label %12

12:                                               ; preds = %7
  %13 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef %0, %struct.NodeStruct* noundef nonnull %11) #3
  %14 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %11, i64 0, i32 4
  store i32 0, i32* %14, align 4
  br label %16

15:                                               ; preds = %7
  call void @Graph_delete(%struct.GraphStruct* noundef %0) #3
  br label %16

16:                                               ; preds = %15, %12, %6
  %.0 = phi %struct.NodeStruct* [ %5, %6 ], [ %11, %12 ], [ null, %15 ]
  ret %struct.NodeStruct* %.0
}

declare dso_local zeroext i1 @Node_addEdgeToNode(%struct.NodeStruct* noundef, %struct.NodeStruct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @exportGraph(%struct.GraphStruct* noundef readonly %0, i8* noundef %1) #0 {
  %.not = icmp eq %struct.GraphStruct* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  %.not7 = icmp eq i8* %1, null
  br i1 %.not7, label %4, label %5

4:                                                ; preds = %3, %2
  br label %94

5:                                                ; preds = %3
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #3
  %.not8 = icmp eq %struct._IO_FILE* %6, null
  br i1 %.not8, label %7, label %8

7:                                                ; preds = %5
  br label %94

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %12, %8
  %.04.in = phi %struct.NodeListStruct** [ %9, %8 ], [ %14, %12 ]
  %.01 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %.04 = load %struct.NodeListStruct*, %struct.NodeListStruct** %.04.in, align 8
  %.not9 = icmp eq %struct.NodeListStruct* %.04, null
  br i1 %.not9, label %15, label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.01, 1
  %14 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.04, i64 0, i32 1
  br label %10, !llvm.loop !9

15:                                               ; preds = %10
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.01) #3
  %17 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef %18) #3
  %20 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 2
  br label %21

21:                                               ; preds = %71, %15
  %.15.in = phi %struct.NodeListStruct** [ %20, %15 ], [ %72, %71 ]
  %.15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %.15.in, align 8
  %.not10 = icmp eq %struct.NodeListStruct* %.15, null
  br i1 %.not10, label %73, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.15, i64 0, i32 0
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %23, align 8
  %25 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %24, i64 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %26) #3
  %28 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.15, i64 0, i32 0
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %28, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i64 0, i32 7
  %31 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %30, align 8
  %.not13 = icmp eq %struct.EdgeListStruct* %31, null
  br i1 %.not13, label %68, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.15, i64 0, i32 0
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %33, align 8
  %35 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %34, i64 0, i32 7
  br label %36

36:                                               ; preds = %46, %32
  %.02.in = phi %struct.EdgeListStruct** [ %35, %32 ], [ %47, %46 ]
  %.1 = phi i32 [ 0, %32 ], [ %.2, %46 ]
  %.02 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.02.in, align 8
  %.not14 = icmp eq %struct.EdgeListStruct* %.02, null
  br i1 %.not14, label %48, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.02, i64 0, i32 1
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %38, align 8
  %40 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %39, i64 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = add nsw i32 %.1, 1
  br label %45

45:                                               ; preds = %43, %37
  %.2 = phi i32 [ %44, %43 ], [ %.1, %37 ]
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.02, i64 0, i32 2
  br label %36, !llvm.loop !10

48:                                               ; preds = %36
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %.1) #3
  %50 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.15, i64 0, i32 0
  %51 = load %struct.NodeStruct*, %struct.NodeStruct** %50, align 8
  %52 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %51, i64 0, i32 7
  br label %53

53:                                               ; preds = %65, %48
  %.13.in = phi %struct.EdgeListStruct** [ %52, %48 ], [ %66, %65 ]
  %.13 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.13.in, align 8
  %.not15 = icmp eq %struct.EdgeListStruct* %.13, null
  br i1 %.not15, label %67, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.13, i64 0, i32 1
  %56 = load %struct.NodeStruct*, %struct.NodeStruct** %55, align 8
  %57 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %56, i64 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.13, i64 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %62) #3
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.13, i64 0, i32 2
  br label %53, !llvm.loop !11

67:                                               ; preds = %53
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %6)
  br label %70

68:                                               ; preds = %22
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* nonnull %6)
  br label %70

70:                                               ; preds = %68, %67
  br label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.15, i64 0, i32 1
  br label %21, !llvm.loop !12

73:                                               ; preds = %21
  %74 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* nonnull %6)
  %75 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 2
  br label %76

76:                                               ; preds = %91, %73
  %.26.in = phi %struct.NodeListStruct** [ %75, %73 ], [ %92, %91 ]
  %.26 = load %struct.NodeListStruct*, %struct.NodeListStruct** %.26.in, align 8
  %.not11 = icmp eq %struct.NodeListStruct* %.26, null
  br i1 %.not11, label %93, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.26, i64 0, i32 0
  %79 = load %struct.NodeStruct*, %struct.NodeStruct** %78, align 8
  %80 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %79, i64 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %.not12 = icmp eq i8* %81, null
  br i1 %.not12, label %90, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.26, i64 0, i32 0
  %84 = load %struct.NodeStruct*, %struct.NodeStruct** %83, align 8
  %85 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %84, i64 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %84, i64 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %86, i8* noundef %88) #3
  br label %90

90:                                               ; preds = %82, %77
  br label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.26, i64 0, i32 1
  br label %76, !llvm.loop !13

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %7, %4
  %.0 = phi i1 [ true, %93 ], [ false, %7 ], [ false, %4 ]
  ret i1 %.0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef, i32 noundef, i1 noundef zeroext) #1

declare dso_local %struct.NodeStruct* @Node_duplicate(%struct.NodeStruct* noundef, i32 noundef) #1

declare dso_local zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local void @Graph_delete(%struct.GraphStruct* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
