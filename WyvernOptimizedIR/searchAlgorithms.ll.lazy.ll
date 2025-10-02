; ModuleID = './searchAlgorithms.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/searchAlgorithms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.StatsStruct = type { %struct.IntVectorStruct*, i32, i32, double, double, i32* }
%struct.IntVectorStruct = type { i32, i32, i32* }
%struct.ConfigurationStruct = type { %struct.GraphStruct**, i8***, %struct.SearchOptionsStruct*, i32 }
%struct.GraphStruct = type { i8*, i32, %struct.NodeListStruct*, %struct.SearchDiagramStruct*, %struct.SystemCallMapStruct* }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.SearchDiagramStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.EdgeReferencesStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.SystemCallMapStruct = type { i32, i32, %struct.SystemCallMapElementStruct** }
%struct.SystemCallMapElementStruct = type { i8*, i32, %struct.NodePtrVecStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.SearchOptionsStruct = type { i32, i8, i8, i8, i8*, i32 }
%struct.BitfieldStruct = type { i32, i8* }
%struct.NodeVecVecStruct = type { i32, i32, %struct.NodePtrVecStruct** }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0A\0AOverall Search Time: %02d:02%d:%05.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Immediately before parallel\0A\00", align 1
@__const.findAllPossibleLegs.fullIntSignature = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 -1], align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"\0A\0A%d found out of %d searches. Overall Time: %d:%d:%2.3f\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%02d:%02d:%02.3f\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Signatures Found\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Search Time\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Immediately before nested for's\0A\00", align 1
@__const.findAndLogAllPossibleLegs.fullIntSignature = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 -1], align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"\0A\0A%d found for %d searches. Overall Time: %d:%d:%2.3f\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"CrashAndBURN!!!\0A\0A\00", align 1
@globalStats = internal global %struct.StatsStruct* null, align 8
@.str.9 = private unnamed_addr constant [91 x i8] c"\0AThis graph has %f average nodes between labels.\0AStandard deviation: %f, total paths: %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\09Shortest Path: %d, Longest Path: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\09length %d appeared %d times\0A\00", align 1
@str = private unnamed_addr constant [17 x i8] c"CrashAndBURN!!!\0A\00", align 1
@str.1 = private unnamed_addr constant [32 x i8] c"Immediately before nested for's\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @doMultiSearches(%struct.ConfigurationStruct* nocapture noundef readonly %0) #0 {
  %2 = call double (...) @currentTime() #7
  %3 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 64) #7
  br label %4

4:                                                ; preds = %42, %1
  %.01 = phi i32 [ 0, %1 ], [ %43, %42 ]
  %5 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %0, i64 0, i32 1
  %6 = load i8***, i8**** %5, align 8
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds i8**, i8*** %6, i64 %7
  %9 = load i8**, i8*** %8, align 8
  %.not = icmp eq i8** %9, null
  br i1 %.not, label %44, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %0, i64 0, i32 1
  %12 = load i8***, i8**** %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds i8**, i8*** %12, i64 %13
  %15 = load i8**, i8*** %14, align 8
  br label %16

16:                                               ; preds = %39, %10
  %.0 = phi i32 [ 0, %10 ], [ %40, %39 ]
  %17 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %0, i64 0, i32 0
  %18 = load %struct.GraphStruct**, %struct.GraphStruct*** %17, align 8
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %18, i64 %19
  %21 = load %struct.GraphStruct*, %struct.GraphStruct** %20, align 8
  %.not2 = icmp eq %struct.GraphStruct* %21, null
  br i1 %.not2, label %41, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %0, i64 0, i32 0
  %24 = load %struct.GraphStruct**, %struct.GraphStruct*** %23, align 8
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %24, i64 %25
  %27 = load %struct.GraphStruct*, %struct.GraphStruct** %26, align 8
  %28 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i64 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = call i32 @fflush(%struct._IO_FILE* noundef %29) #7
  %31 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %0, i64 0, i32 2
  %32 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %31, align 8
  %33 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %32, i64 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call zeroext i1 @findLabelPath(%struct.GraphStruct* noundef %27, i8** noundef %15, %struct.NodePtrVecStruct* noundef %3, i32 noundef %34)
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %38

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !4

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

44:                                               ; preds = %4
  %45 = call double (...) @currentTime() #7
  %46 = fsub double %45, %2
  %47 = fptosi double %46 to i32
  %48 = sdiv i32 %47, 3600
  %49 = call double @fmod(double noundef %46, double noundef 3.600000e+03) #7
  %50 = fptosi double %49 to i32
  %51 = sdiv i32 %50, 60
  %52 = call double @fmod(double noundef %49, double noundef 6.000000e+01) #7
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 noundef %48, i32 noundef %51, double noundef %52) #7
  ret void
}

declare dso_local double @currentTime(...) #1

declare dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @findLabelPath(%struct.GraphStruct* noundef readonly %0, i8** noundef %1, %struct.NodePtrVecStruct* noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %6) #7
  %.not = icmp eq %struct.GraphStruct* %0, null
  br i1 %.not, label %16, label %8

8:                                                ; preds = %4
  %.not3 = icmp eq i8** %1, null
  br i1 %.not3, label %16, label %9

9:                                                ; preds = %8
  %10 = load i8*, i8** %1, align 8
  %.not4 = icmp eq i8* %10, null
  br i1 %.not4, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8*, i8** %1, i64 1
  %13 = load i8*, i8** %12, align 8
  %.not5 = icmp eq i8* %13, null
  br i1 %.not5, label %16, label %14

14:                                               ; preds = %11
  %.not6 = icmp eq %struct.NodePtrVecStruct* %2, null
  br i1 %.not6, label %16, label %15

15:                                               ; preds = %14
  %.not7 = icmp eq %struct.BitfieldStruct* %7, null
  br i1 %.not7, label %16, label %17

16:                                               ; preds = %15, %14, %11, %9, %8, %4
  br label %74

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %19 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %18, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = call %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* noundef %19, i8* noundef %20) #7
  %.not8 = icmp eq %struct.NodePtrVecStruct* %21, null
  br i1 %.not8, label %22, label %23

22:                                               ; preds = %17
  br label %74

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %69, %23
  %.02 = phi i32 [ 0, %23 ], [ %70, %69 ]
  %.01 = phi i8 [ 0, %23 ], [ %.2, %69 ]
  %25 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %21, i64 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %.02, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = and i8 %.01, 1
  %.not12 = icmp eq i8 %29, 0
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i1 [ false, %24 ], [ %.not12, %28 ]
  br i1 %31, label %32, label %71

32:                                               ; preds = %30
  %33 = icmp eq i32 %3, 1
  br i1 %33, label %34, label %52

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 3
  %36 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %35, align 8
  %37 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %21, i64 0, i32 2
  %38 = load %struct.NodeStruct**, %struct.NodeStruct*** %37, align 8
  %39 = zext i32 %.02 to i64
  %40 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %38, i64 %39
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %40, align 8
  %42 = call %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef %36, %struct.NodeStruct* noundef %41) #7
  %.not11 = icmp eq %struct.SearchDiagramStruct* %42, null
  br i1 %.not11, label %51, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %42, i64 0, i32 0
  %45 = load %struct.NodeStruct*, %struct.NodeStruct** %44, align 8
  %46 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %42, i64 0, i32 1
  %47 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %45, %struct.EdgeReferencesStruct* noundef %47, i8** noundef nonnull %48, %struct.NodePtrVecStruct* noundef nonnull %2, %struct.BitfieldStruct* noundef nonnull %7) #7
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %43, %34
  %.1 = phi i8 [ %50, %43 ], [ %.01, %34 ]
  br label %61

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %21, i64 0, i32 2
  %54 = load %struct.NodeStruct**, %struct.NodeStruct*** %53, align 8
  %55 = zext i32 %.02 to i64
  %56 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %54, i64 %55
  %57 = load %struct.NodeStruct*, %struct.NodeStruct** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %1, i64 1
  %59 = call zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %57, i8** noundef nonnull %58, %struct.NodePtrVecStruct* noundef nonnull %2, %struct.BitfieldStruct* noundef nonnull %7)
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %52, %51
  %.2 = phi i8 [ %.1, %51 ], [ %60, %52 ]
  call void (%struct.BitfieldStruct*, ...) bitcast (void (...)* @Bitfield_clear to void (%struct.BitfieldStruct*, ...)*)(%struct.BitfieldStruct* noundef nonnull %7) #7
  %62 = and i8 %.2, 1
  %.not9 = icmp eq i8 %62, 0
  br i1 %.not9, label %63, label %68

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %2, i64 0, i32 0
  %65 = load i32, i32* %64, align 8
  %.not10 = icmp eq i32 %65, 0
  br i1 %.not10, label %68, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %2, i64 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %66, %63, %61
  br label %69

69:                                               ; preds = %68
  %70 = add nuw nsw i32 %.02, 1
  br label %24, !llvm.loop !7

71:                                               ; preds = %30
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef nonnull %7) #7
  %72 = and i8 %.01, 1
  %73 = icmp ne i8 %72, 0
  br label %74

74:                                               ; preds = %71, %22, %16
  %.0 = phi i1 [ %73, %71 ], [ false, %22 ], [ false, %16 ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %0, i8** noundef %1, %struct.NodePtrVecStruct* noundef %2, %struct.BitfieldStruct* noundef %3) #0 {
  %.not = icmp eq %struct.NodeStruct* %0, null
  br i1 %.not, label %8, label %5

5:                                                ; preds = %4
  %.not4 = icmp eq i8** %1, null
  br i1 %.not4, label %8, label %6

6:                                                ; preds = %5
  %.not5 = icmp eq %struct.NodePtrVecStruct* %2, null
  br i1 %.not5, label %8, label %7

7:                                                ; preds = %6
  %.not6 = icmp eq %struct.BitfieldStruct* %3, null
  br i1 %.not6, label %8, label %9

8:                                                ; preds = %7, %6, %5, %4
  br label %64

9:                                                ; preds = %7
  %10 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef nonnull %3, %struct.NodeStruct* noundef nonnull %0) #7
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %64

12:                                               ; preds = %9
  %13 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %2, %struct.NodeStruct* noundef nonnull %0) #7
  %14 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  br label %15

15:                                               ; preds = %49, %12
  %.01.in = phi %struct.EdgeListStruct** [ %14, %12 ], [ %50, %49 ]
  %.01 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.01.in, align 8
  %.not7 = icmp eq %struct.EdgeListStruct* %.01, null
  br i1 %.not7, label %51, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  %18 = load %struct.NodeStruct*, %struct.NodeStruct** %17, align 8
  %19 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %18, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %.not9 = icmp eq i8* %20, null
  br i1 %.not9, label %48, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  %23 = load %struct.NodeStruct*, %struct.NodeStruct** %22, align 8
  %24 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %23, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %25, i8* noundef nonnull dereferenceable(1) %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8*, i8** %1, i64 1
  %31 = load i8*, i8** %30, align 8
  %.not10 = icmp eq i8* %31, null
  br i1 %.not10, label %43, label %32

32:                                               ; preds = %29
  %33 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 50) #7
  %34 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %3, i64 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %35) #7
  %37 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  %38 = load %struct.NodeStruct*, %struct.NodeStruct** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %1, i64 1
  %40 = call zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %38, i8** noundef nonnull %39, %struct.NodePtrVecStruct* noundef %33, %struct.BitfieldStruct* noundef %36)
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %36) #7
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  call void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef nonnull %2, %struct.NodePtrVecStruct* noundef %33, i1 noundef zeroext true) #7
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %33) #7
  br label %64

42:                                               ; preds = %32
  br label %47

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  %45 = load %struct.NodeStruct*, %struct.NodeStruct** %44, align 8
  %46 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %2, %struct.NodeStruct* noundef %45) #7
  br label %64

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %21, %16
  br label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 2
  br label %15, !llvm.loop !8

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  br label %53

53:                                               ; preds = %60, %51
  %.1.in = phi %struct.EdgeListStruct** [ %52, %51 ], [ %61, %60 ]
  %.1 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.1.in, align 8
  %.not8 = icmp eq %struct.EdgeListStruct* %.1, null
  br i1 %.not8, label %62, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.1, i64 0, i32 1
  %56 = load %struct.NodeStruct*, %struct.NodeStruct** %55, align 8
  %57 = call zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %56, i8** noundef nonnull %1, %struct.NodePtrVecStruct* noundef nonnull %2, %struct.BitfieldStruct* noundef nonnull %3)
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.1, i64 0, i32 2
  br label %53, !llvm.loop !9

62:                                               ; preds = %53
  %63 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef nonnull %2) #7
  br label %64

64:                                               ; preds = %62, %58, %43, %41, %11, %8
  %.0 = phi i1 [ false, %11 ], [ true, %41 ], [ true, %43 ], [ true, %58 ], [ false, %62 ], [ false, %8 ]
  ret i1 %.0
}

declare dso_local zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef, %struct.NodeStruct* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local %struct.BitfieldStruct* @Bitfield_new(i32 noundef) #1

declare dso_local void @Bitfield_delete(%struct.BitfieldStruct* noundef) #1

declare dso_local void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef, %struct.NodePtrVecStruct* noundef, i1 noundef zeroext) #1

declare dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef) #1

declare dso_local %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @findAndRecordAllPaths(%struct.NodeStruct* noundef %0, i8** noundef %1, i32* noundef %2, %struct.NodePtrVecStruct* noundef %3, %struct.BitfieldStruct* noundef %4, %struct.NodeVecVecStruct* noundef %5, %struct.SearchOptionsStruct* noundef %6) #0 {
  %.not = icmp eq %struct.NodeStruct* %0, null
  br i1 %.not, label %12, label %8

8:                                                ; preds = %7
  %.not1 = icmp eq i8** %1, null
  br i1 %.not1, label %12, label %9

9:                                                ; preds = %8
  %.not2 = icmp eq i32* %2, null
  br i1 %.not2, label %12, label %10

10:                                               ; preds = %9
  %.not3 = icmp eq %struct.NodePtrVecStruct* %3, null
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %10
  %.not4 = icmp eq %struct.BitfieldStruct* %4, null
  br i1 %.not4, label %12, label %13

12:                                               ; preds = %11, %10, %9, %8, %7
  br label %66

13:                                               ; preds = %11
  %14 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef nonnull %4, %struct.NodeStruct* noundef nonnull %0) #7
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %66

16:                                               ; preds = %13
  %17 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %3, %struct.NodeStruct* noundef nonnull %0) #7
  %18 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  br label %19

19:                                               ; preds = %54, %16
  %.0.in = phi %struct.EdgeListStruct** [ %18, %16 ], [ %55, %54 ]
  %.0 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.0.in, align 8
  %.not5 = icmp eq %struct.EdgeListStruct* %.0, null
  br i1 %.not5, label %56, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.0, i64 0, i32 1
  %22 = load %struct.NodeStruct*, %struct.NodeStruct** %21, align 8
  %23 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %22, i64 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %.not7 = icmp eq i8* %24, null
  br i1 %.not7, label %53, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.0, i64 0, i32 1
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %26, align 8
  %28 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %27, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %29, i8* noundef nonnull dereferenceable(1) %30) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %25
  %34 = getelementptr inbounds i8*, i8** %1, i64 1
  %35 = load i8*, i8** %34, align 8
  %.not8 = icmp eq i8* %35, null
  br i1 %.not8, label %44, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %4, i64 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %38) #7
  %40 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.0, i64 0, i32 1
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %1, i64 1
  %43 = getelementptr inbounds i32, i32* %2, i64 1
  call void @findAndRecordAllPaths(%struct.NodeStruct* noundef %41, i8** noundef nonnull %42, i32* noundef nonnull %43, %struct.NodePtrVecStruct* noundef nonnull %3, %struct.BitfieldStruct* noundef %39, %struct.NodeVecVecStruct* noundef %5, %struct.SearchOptionsStruct* noundef %6)
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %39) #7
  br label %52

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.0, i64 0, i32 1
  %46 = load %struct.NodeStruct*, %struct.NodeStruct** %45, align 8
  %47 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %3, %struct.NodeStruct* noundef %46) #7
  %48 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.0, i64 0, i32 1
  %49 = load %struct.NodeStruct*, %struct.NodeStruct** %48, align 8
  %50 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef nonnull %4, %struct.NodeStruct* noundef %49) #7
  call void @logResult(%struct.NodeVecVecStruct* noundef %5, %struct.NodePtrVecStruct* noundef nonnull %3, %struct.SearchOptionsStruct* noundef %6)
  %51 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef nonnull %3) #7
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %52, %25, %20
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.0, i64 0, i32 2
  br label %19, !llvm.loop !10

56:                                               ; preds = %19
  %57 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %0, i64 0, i32 7
  br label %58

58:                                               ; preds = %62, %56
  %.1.in = phi %struct.EdgeListStruct** [ %57, %56 ], [ %63, %62 ]
  %.1 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.1.in, align 8
  %.not6 = icmp eq %struct.EdgeListStruct* %.1, null
  br i1 %.not6, label %64, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.1, i64 0, i32 1
  %61 = load %struct.NodeStruct*, %struct.NodeStruct** %60, align 8
  call void @findAndRecordAllPaths(%struct.NodeStruct* noundef %61, i8** noundef nonnull %1, i32* noundef nonnull %2, %struct.NodePtrVecStruct* noundef nonnull %3, %struct.BitfieldStruct* noundef nonnull %4, %struct.NodeVecVecStruct* noundef %5, %struct.SearchOptionsStruct* noundef %6)
  br label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.1, i64 0, i32 2
  br label %58, !llvm.loop !11

64:                                               ; preds = %58
  %65 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef nonnull %3) #7
  br label %66

66:                                               ; preds = %64, %15, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @logResult(%struct.NodeVecVecStruct* noundef %0, %struct.NodePtrVecStruct* noundef %1, %struct.SearchOptionsStruct* nocapture noundef readonly %2) #0 {
  %4 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 2) #7
  %.not = icmp eq %struct.NodeVecVecStruct* %0, null
  br i1 %.not, label %7, label %5

5:                                                ; preds = %3
  %.not1 = icmp eq %struct.NodePtrVecStruct* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  %.not2 = icmp eq %struct.NodePtrVecStruct* %4, null
  br i1 %.not2, label %7, label %8

7:                                                ; preds = %6, %5, %3
  br label %36

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 1
  %10 = load i8, i8* %9, align 4
  %11 = and i8 %10, 1
  %.not3 = icmp eq i8 %11, 0
  br i1 %.not3, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 2
  %14 = load i8, i8* %13, align 1
  %15 = and i8 %14, 1
  %.not4 = icmp eq i8 %15, 0
  br i1 %.not4, label %17, label %16

16:                                               ; preds = %12
  call void @logStats(%struct.NodePtrVecStruct* noundef nonnull %1)
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 2
  %19 = load %struct.NodeStruct**, %struct.NodeStruct*** %18, align 8
  %20 = load %struct.NodeStruct*, %struct.NodeStruct** %19, align 8
  %21 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %4, %struct.NodeStruct* noundef %20) #7
  %22 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 2
  %23 = load %struct.NodeStruct**, %struct.NodeStruct*** %22, align 8
  %24 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %23, i64 %27
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %28, align 8
  %30 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %4, %struct.NodeStruct* noundef %29) #7
  %31 = call zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* noundef nonnull %0, %struct.NodePtrVecStruct* noundef nonnull %4) #7
  br i1 %31, label %35, label %32

32:                                               ; preds = %17
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = call i32 @fflush(%struct._IO_FILE* noundef %33) #7
  br label %35

35:                                               ; preds = %32, %17
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef nonnull %4) #7
  br label %36

36:                                               ; preds = %35, %7
  ret void
}

declare dso_local %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* noundef, i8* noundef) #1

declare dso_local %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef, %struct.EdgeReferencesStruct* noundef, i8** noundef, %struct.NodePtrVecStruct* noundef, %struct.BitfieldStruct* noundef) #1

declare dso_local void @Bitfield_clear(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findAllPossibleLegs(%struct.GraphStruct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [50 x i8], align 16
  %4 = alloca [3 x i8*], align 16
  %5 = call double (...) @currentTime() #7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %6)
  br label %8

8:                                                ; preds = %56, %2
  %.03 = phi i32 [ 0, %2 ], [ %57, %56 ]
  %.01 = phi i32 [ 0, %2 ], [ %.12, %56 ]
  %.0 = phi i32 [ 0, %2 ], [ %.1, %56 ]
  %9 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %10 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %9, align 8
  %11 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %10, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %.03, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %53, %14
  %.04 = phi i32 [ 0, %14 ], [ %54, %53 ]
  %.12 = phi i32 [ %.01, %14 ], [ %.2, %53 ]
  %.1 = phi i32 [ %.0, %14 ], [ %22, %53 ]
  %16 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %17 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %16, align 8
  %18 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %17, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %.04, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = add nsw i32 %.1, 1
  %23 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %24 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %25 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %24, align 8
  %26 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %25, i64 0, i32 2
  %27 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %26, align 8
  %28 = zext i32 %.03 to i64
  %29 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %27, i64 %28
  %30 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %29, align 8
  %31 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %30, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* %32, i8** %33, align 16
  %34 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %35 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %34, align 8
  %36 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %35, i64 0, i32 2
  %37 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %36, align 8
  %38 = zext i32 %.04 to i64
  %39 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %37, i64 %38
  %40 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %39, align 8
  %41 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %40, i64 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* %42, i8** %43, align 8
  %44 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 25) #7
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %46 = call zeroext i1 @findLabelPath(%struct.GraphStruct* noundef %0, i8** noundef nonnull %45, %struct.NodePtrVecStruct* noundef %44, i32 noundef %1)
  br i1 %46, label %47, label %49

47:                                               ; preds = %21
  %48 = add nsw i32 %.12, 1
  br label %50

49:                                               ; preds = %21
  br label %50

50:                                               ; preds = %49, %47
  %.2 = phi i32 [ %48, %47 ], [ %.12, %49 ]
  %.not = icmp eq %struct.NodePtrVecStruct* %44, null
  br i1 %.not, label %52, label %51

51:                                               ; preds = %50
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef nonnull %44) #7
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.04, 1
  br label %15, !llvm.loop !12

55:                                               ; preds = %15
  br label %56

56:                                               ; preds = %55
  %57 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !13

58:                                               ; preds = %8
  %59 = call double (...) @currentTime() #7
  %60 = fsub double %59, %5
  %61 = fptosi double %60 to i32
  %62 = sdiv i32 %61, 3600
  %63 = call double @fmod(double noundef %60, double noundef 3.600000e+03) #7
  %64 = fptosi double %63 to i32
  %65 = sdiv i32 %64, 60
  %66 = call double @fmod(double noundef %63, double noundef 6.000000e+01) #7
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.01, i32 noundef %.0, i32 noundef %62, i32 noundef %65, double noundef %66) #7
  %68 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %68, align 16
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %69, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef %62, i32 noundef %65, double noundef %66) #7
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #7
  %71 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %71) #7
  ret i32 %.01
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local void @YAMLWriteInt(i8* noundef, i32 noundef) #1

declare dso_local void @YAMLWriteString(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findAndLogAllPossibleLegs(%struct.GraphStruct* noundef readonly %0, %struct.SearchOptionsStruct* noundef %1) #0 {
  %3 = alloca [50 x i8], align 16
  %4 = alloca [3 x i8*], align 16
  %5 = alloca [3 x i32], align 4
  %.not = icmp eq %struct.GraphStruct* %0, null
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  br label %138

7:                                                ; preds = %2
  %8 = call double (...) @currentTime() #7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %9)
  %11 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %1, i64 0, i32 1
  store i8 0, i8* %11, align 4
  %12 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %13 = bitcast i8* %12 to %struct.NodeVecVecStruct**
  %14 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %13, i64 1
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %14, align 8
  %15 = call %struct.NodeVecVecStruct* @NodeVecVec_new(i32 noundef 64) #7
  store %struct.NodeVecVecStruct* %15, %struct.NodeVecVecStruct** %13, align 8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %97, %7
  %.04 = phi i32 [ 0, %7 ], [ %.1, %97 ]
  %.01 = phi i32 [ 0, %7 ], [ %98, %97 ]
  %17 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %18 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %17, align 8
  %19 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %18, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %.01, %20
  br i1 %21, label %22, label %99

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %94, %22
  %.1 = phi i32 [ %.04, %22 ], [ %30, %94 ]
  %.02 = phi i32 [ 0, %22 ], [ %95, %94 ]
  %24 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %25 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %24, align 8
  %26 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %25, i64 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %.02, %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %23
  %30 = add nsw i32 %.1, 1
  br label %31

31:                                               ; preds = %91, %29
  %.03 = phi i32 [ 0, %29 ], [ %92, %91 ]
  %32 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %33 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %32, align 8
  %34 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %33, i64 0, i32 2
  %35 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %34, align 8
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %35, i64 %36
  %38 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %37, align 8
  %39 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %38, i64 0, i32 2
  %40 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %39, align 8
  %41 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %40, i64 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %.03, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %31
  %45 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  %46 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %46, i8* noundef nonnull align 4 dereferenceable(12) bitcast ([3 x i32]* @__const.findAndLogAllPossibleLegs.fullIntSignature to i8*), i64 12, i1 false)
  %47 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %48 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %47, align 8
  %49 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %48, i64 0, i32 2
  %50 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %49, align 8
  %51 = zext i32 %.01 to i64
  %52 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %50, i64 %51
  %53 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %52, align 8
  %54 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %53, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* %55, i8** %56, align 16
  %57 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %58 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %57, align 8
  %59 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %58, i64 0, i32 2
  %60 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %59, align 8
  %61 = zext i32 %.02 to i64
  %62 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %60, i64 %61
  %63 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %62, align 8
  %64 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %63, i64 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %.01, i32* %67, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %.02, i32* %68, align 4
  %69 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 16) #7
  %70 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %71) #7
  %73 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %0, i64 0, i32 4
  %74 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %73, align 8
  %75 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %74, i64 0, i32 2
  %76 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %75, align 8
  %77 = zext i32 %.01 to i64
  %78 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %76, i64 %77
  %79 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %78, align 8
  %80 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %79, i64 0, i32 2
  %81 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %80, align 8
  %82 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %81, i64 0, i32 2
  %83 = load %struct.NodeStruct**, %struct.NodeStruct*** %82, align 8
  %84 = zext i32 %.03 to i64
  %85 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %83, i64 %84
  %86 = load %struct.NodeStruct*, %struct.NodeStruct** %85, align 8
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  call void @findAndRecordAllPaths(%struct.NodeStruct* noundef %86, i8** noundef nonnull %87, i32* noundef nonnull %88, %struct.NodePtrVecStruct* noundef %69, %struct.BitfieldStruct* noundef %72, %struct.NodeVecVecStruct* noundef %15, %struct.SearchOptionsStruct* noundef %1)
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %72) #7
  %.not9 = icmp eq %struct.NodePtrVecStruct* %69, null
  br i1 %.not9, label %90, label %89

89:                                               ; preds = %44
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef nonnull %69) #7
  br label %90

90:                                               ; preds = %89, %44
  br label %91

91:                                               ; preds = %90
  %92 = add nuw nsw i32 %.03, 1
  br label %31, !llvm.loop !14

93:                                               ; preds = %31
  br label %94

94:                                               ; preds = %93
  %95 = add nuw nsw i32 %.02, 1
  br label %23, !llvm.loop !15

96:                                               ; preds = %23
  br label %97

97:                                               ; preds = %96
  %98 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !16

99:                                               ; preds = %16
  %100 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %15, i64 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call double (...) @currentTime() #7
  %103 = fsub double %102, %8
  %104 = fptosi double %103 to i32
  %105 = sdiv i32 %104, 3600
  %106 = call double @fmod(double noundef %103, double noundef 3.600000e+03) #7
  %107 = fptosi double %106 to i32
  %108 = sdiv i32 %107, 60
  %109 = call double @fmod(double noundef %106, double noundef 6.000000e+01) #7
  %110 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 noundef %101, i32 noundef %.04, i32 noundef %105, i32 noundef %108, double noundef %109) #7
  %111 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %111, align 16
  %112 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %112, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef %105, i32 noundef %108, double noundef %109) #7
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %101) #7
  %114 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %114) #7
  %115 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %1, i64 0, i32 3
  %116 = load i8, i8* %115, align 2
  %117 = and i8 %116, 1
  %.not5 = icmp eq i8 %117, 0
  br i1 %.not5, label %128, label %118

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %1, i64 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %.not8 = icmp eq i8* %120, null
  br i1 %.not8, label %128, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %1, i64 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** noundef nonnull %13, i32 noundef %123) #7
  %125 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %1, i64 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = call zeroext i1 @exportGraph(%struct.GraphStruct* noundef %124, i8* noundef %126) #7
  br label %128

128:                                              ; preds = %121, %118, %99
  %129 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %1, i64 0, i32 2
  %130 = load i8, i8* %129, align 1
  %131 = and i8 %130, 1
  %.not6 = icmp eq i8 %131, 0
  br i1 %.not6, label %137, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %1, i64 0, i32 1
  %134 = load i8, i8* %133, align 4
  %135 = and i8 %134, 1
  %.not7 = icmp eq i8 %135, 0
  br i1 %.not7, label %136, label %137

136:                                              ; preds = %132
  call void @printStats()
  br label %137

137:                                              ; preds = %136, %132, %128
  br label %138

138:                                              ; preds = %137, %6
  %.0 = phi i32 [ %101, %137 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local %struct.NodeVecVecStruct* @NodeVecVec_new(i32 noundef) #1

declare dso_local %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** noundef, i32 noundef) #1

declare dso_local zeroext i1 @exportGraph(%struct.GraphStruct* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @logStats(%struct.NodePtrVecStruct* noundef %0) #0 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %10

3:                                                ; preds = %1
  %4 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %.not1 = icmp eq %struct.StatsStruct* %4, null
  br i1 %.not1, label %5, label %7

5:                                                ; preds = %3
  %6 = call %struct.StatsStruct* (...) @Stats_new() #7
  store %struct.StatsStruct* %6, %struct.StatsStruct** @globalStats, align 8
  br label %7

7:                                                ; preds = %5, %3
  %8 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %9 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %8, %struct.NodePtrVecStruct* noundef nonnull %0) #7
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

declare dso_local zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* noundef, %struct.NodePtrVecStruct* noundef) #1

declare dso_local %struct.StatsStruct* @Stats_new(...) #1

declare dso_local zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef, %struct.NodePtrVecStruct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @printStats() #0 {
  %1 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %.not = icmp eq %struct.StatsStruct* %1, null
  br i1 %.not, label %46, label %2

2:                                                ; preds = %0
  %3 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  call void @Stats_calculate(%struct.StatsStruct* noundef %3) #7
  %4 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %5 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %4, i64 0, i32 3
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %4, i64 0, i32 4
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %4, i64 0, i32 0
  %10 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %9, align 8
  %11 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %10, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0), double noundef %6, double noundef %8, i32 noundef %12) #7
  %14 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %15 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %14, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %14, i64 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 noundef %16, i32 noundef %18) #7
  %20 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %21 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %20, i64 0, i32 1
  %22 = load i32, i32* %21, align 8
  br label %23

23:                                               ; preds = %43, %2
  %.0 = phi i32 [ %22, %2 ], [ %44, %43 ]
  %24 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %25 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %24, i64 0, i32 2
  %26 = load i32, i32* %25, align 4
  %.not1 = icmp sgt i32 %.0, %26
  br i1 %.not1, label %45, label %27

27:                                               ; preds = %23
  %28 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %29 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %28, i64 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = sext i32 %.0 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %.not2 = icmp eq i32 %33, 0
  br i1 %.not2, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %36 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %35, i64 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = sext i32 %.0 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef %.0, i32 noundef %40) #7
  br label %42

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %.0, 1
  br label %23, !llvm.loop !17

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45, %0
  ret void
}

declare dso_local void @Stats_calculate(%struct.StatsStruct* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
