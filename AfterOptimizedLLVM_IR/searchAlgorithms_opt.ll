; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/searchAlgorithms.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @doMultiSearches(%struct.ConfigurationStruct* noundef %0) #0 {
  %2 = alloca %struct.ConfigurationStruct*, align 8
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.GraphStruct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store %struct.ConfigurationStruct* %0, %struct.ConfigurationStruct** %2, align 8
  %15 = call double (...) @currentTime()
  store double %15, double* %10, align 8
  %16 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 64)
  store %struct.NodePtrVecStruct* %16, %struct.NodePtrVecStruct** %3, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %74, %1
  %18 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %19 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %18, i32 0, i32 1
  %20 = load i8***, i8**** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8**, i8*** %20, i64 %22
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %77

26:                                               ; preds = %17
  %27 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %28 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %27, i32 0, i32 1
  %29 = load i8***, i8**** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8**, i8*** %29, i64 %31
  %33 = load i8**, i8*** %32, align 8
  store i8** %33, i8*** %6, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %70, %26
  %35 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %36 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %35, i32 0, i32 0
  %37 = load %struct.GraphStruct**, %struct.GraphStruct*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %37, i64 %39
  %41 = load %struct.GraphStruct*, %struct.GraphStruct** %40, align 8
  %42 = icmp ne %struct.GraphStruct* %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %34
  %44 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %45 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %44, i32 0, i32 0
  %46 = load %struct.GraphStruct**, %struct.GraphStruct*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %46, i64 %48
  %50 = load %struct.GraphStruct*, %struct.GraphStruct** %49, align 8
  store %struct.GraphStruct* %50, %struct.GraphStruct** %5, align 8
  %51 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %52 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = call i32 @fflush(%struct._IO_FILE* noundef %53)
  %55 = load %struct.GraphStruct*, %struct.GraphStruct** %5, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %58 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %59 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %58, i32 0, i32 2
  %60 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %59, align 8
  %61 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call zeroext i1 @findLabelPath(%struct.GraphStruct* noundef %55, i8** noundef %56, %struct.NodePtrVecStruct* noundef %57, i32 noundef %62)
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %4, align 1
  %65 = load i8, i8* %4, align 1
  %66 = trunc i8 %65 to i1
  br i1 %66, label %67, label %68

67:                                               ; preds = %43
  br label %69

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %34, !llvm.loop !4

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %17, !llvm.loop !6

77:                                               ; preds = %17
  %78 = call double (...) @currentTime()
  store double %78, double* %11, align 8
  %79 = load double, double* %11, align 8
  %80 = load double, double* %10, align 8
  %81 = fsub double %79, %80
  store double %81, double* %14, align 8
  %82 = load double, double* %14, align 8
  %83 = fptosi double %82 to i32
  %84 = sdiv i32 %83, 3600
  store i32 %84, i32* %12, align 4
  %85 = load double, double* %14, align 8
  %86 = call double @fmod(double noundef %85, double noundef 3.600000e+03) #6
  store double %86, double* %14, align 8
  %87 = load double, double* %14, align 8
  %88 = fptosi double %87 to i32
  %89 = sdiv i32 %88, 60
  store i32 %89, i32* %13, align 4
  %90 = load double, double* %14, align 8
  %91 = call double @fmod(double noundef %90, double noundef 6.000000e+01) #6
  store double %91, double* %14, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load double, double* %14, align 8
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 noundef %92, i32 noundef %93, double noundef %94)
  ret void
}

declare dso_local double @currentTime(...) #1

declare dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @findLabelPath(%struct.GraphStruct* noundef %0, i8** noundef %1, %struct.NodePtrVecStruct* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.GraphStruct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.NodePtrVecStruct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.NodePtrVecStruct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.BitfieldStruct*, align 8
  %14 = alloca %struct.SearchDiagramStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.NodePtrVecStruct* %2, %struct.NodePtrVecStruct** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %10, align 8
  store i8 0, i8* %12, align 1
  %15 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %16 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %17)
  store %struct.BitfieldStruct* %18, %struct.BitfieldStruct** %13, align 8
  %19 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %20 = icmp ne %struct.GraphStruct* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load i8**, i8*** %7, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %36 = icmp ne %struct.NodePtrVecStruct* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %39 = icmp ne %struct.BitfieldStruct* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %34, %29, %24, %21, %4
  store i1 false, i1* %5, align 1
  br label %130

41:                                               ; preds = %37
  %42 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %43 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %42, i32 0, i32 4
  %44 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %43, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* noundef %44, i8* noundef %47)
  store %struct.NodePtrVecStruct* %48, %struct.NodePtrVecStruct** %10, align 8
  %49 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %50 = icmp ne %struct.NodePtrVecStruct* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i1 false, i1* %5, align 1
  br label %130

52:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %123, %52
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %56 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i8, i8* %12, align 1
  %61 = trunc i8 %60 to i1
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %59, %53
  %64 = phi i1 [ false, %53 ], [ %62, %59 ]
  br i1 %64, label %65, label %126

65:                                               ; preds = %63
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %70 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %69, i32 0, i32 3
  %71 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %70, align 8
  %72 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %73 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %72, i32 0, i32 2
  %74 = load %struct.NodeStruct**, %struct.NodeStruct*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %74, i64 %76
  %78 = load %struct.NodeStruct*, %struct.NodeStruct** %77, align 8
  %79 = call %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef %71, %struct.NodeStruct* noundef %78)
  store %struct.SearchDiagramStruct* %79, %struct.SearchDiagramStruct** %14, align 8
  %80 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %14, align 8
  %81 = icmp ne %struct.SearchDiagramStruct* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %68
  %83 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %14, align 8
  %84 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %83, i32 0, i32 0
  %85 = load %struct.NodeStruct*, %struct.NodeStruct** %84, align 8
  %86 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %14, align 8
  %87 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %86, i32 0, i32 1
  %88 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %87, align 8
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %92 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %93 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %85, %struct.EdgeReferencesStruct* noundef %88, i8** noundef %90, %struct.NodePtrVecStruct* noundef %91, %struct.BitfieldStruct* noundef %92)
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %12, align 1
  br label %95

95:                                               ; preds = %82, %68
  br label %110

96:                                               ; preds = %65
  %97 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %98 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %97, i32 0, i32 2
  %99 = load %struct.NodeStruct**, %struct.NodeStruct*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %99, i64 %101
  %103 = load %struct.NodeStruct*, %struct.NodeStruct** %102, align 8
  %104 = load i8**, i8*** %7, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %107 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %108 = call zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %103, i8** noundef %105, %struct.NodePtrVecStruct* noundef %106, %struct.BitfieldStruct* noundef %107)
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %12, align 1
  br label %110

110:                                              ; preds = %96, %95
  %111 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  call void (%struct.BitfieldStruct*, ...) bitcast (void (...)* @Bitfield_clear to void (%struct.BitfieldStruct*, ...)*)(%struct.BitfieldStruct* noundef %111)
  %112 = load i8, i8* %12, align 1
  %113 = trunc i8 %112 to i1
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %116 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %121 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %114, %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %53, !llvm.loop !7

126:                                              ; preds = %63
  %127 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %127)
  %128 = load i8, i8* %12, align 1
  %129 = trunc i8 %128 to i1
  store i1 %129, i1* %5, align 1
  br label %130

130:                                              ; preds = %126, %51, %40
  %131 = load i1, i1* %5, align 1
  ret i1 %131
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %0, i8** noundef %1, %struct.NodePtrVecStruct* noundef %2, %struct.BitfieldStruct* noundef %3) #0 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.NodeStruct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.NodePtrVecStruct*, align 8
  %9 = alloca %struct.BitfieldStruct*, align 8
  %10 = alloca %struct.EdgeListStruct*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.NodePtrVecStruct*, align 8
  %13 = alloca %struct.BitfieldStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.NodePtrVecStruct* %2, %struct.NodePtrVecStruct** %8, align 8
  store %struct.BitfieldStruct* %3, %struct.BitfieldStruct** %9, align 8
  store i8 0, i8* %11, align 1
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %12, align 8
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %13, align 8
  %14 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %15 = icmp ne %struct.NodeStruct* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i8**, i8*** %7, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %21 = icmp ne %struct.NodePtrVecStruct* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %24 = icmp ne %struct.BitfieldStruct* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19, %16, %4
  store i1 false, i1* %5, align 1
  br label %126

26:                                               ; preds = %22
  %27 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %28 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %29 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef %27, %struct.NodeStruct* noundef %28)
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i1 false, i1* %5, align 1
  br label %126

31:                                               ; preds = %26
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %34 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %32, %struct.NodeStruct* noundef %33)
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %36 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %35, i32 0, i32 7
  %37 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %36, align 8
  store %struct.EdgeListStruct* %37, %struct.EdgeListStruct** %10, align 8
  br label %38

38:                                               ; preds = %95, %31
  %39 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %40 = icmp ne %struct.EdgeListStruct* %39, null
  br i1 %40, label %41, label %99

41:                                               ; preds = %38
  %42 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %43 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %42, i32 0, i32 1
  %44 = load %struct.NodeStruct*, %struct.NodeStruct** %43, align 8
  %45 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %94

48:                                               ; preds = %41
  %49 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %50 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %49, i32 0, i32 1
  %51 = load %struct.NodeStruct*, %struct.NodeStruct** %50, align 8
  %52 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* noundef %53, i8* noundef %56) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %48
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 50)
  store %struct.NodePtrVecStruct* %65, %struct.NodePtrVecStruct** %12, align 8
  %66 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %67 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %68)
  store %struct.BitfieldStruct* %69, %struct.BitfieldStruct** %13, align 8
  %70 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %71 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %70, i32 0, i32 1
  %72 = load %struct.NodeStruct*, %struct.NodeStruct** %71, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %12, align 8
  %76 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %77 = call zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %72, i8** noundef %74, %struct.NodePtrVecStruct* noundef %75, %struct.BitfieldStruct* noundef %76)
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %11, align 1
  %79 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %79)
  %80 = load i8, i8* %11, align 1
  %81 = trunc i8 %80 to i1
  br i1 %81, label %82, label %86

82:                                               ; preds = %64
  %83 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %84 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %12, align 8
  call void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef %83, %struct.NodePtrVecStruct* noundef %84, i1 noundef zeroext true)
  %85 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %12, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %85)
  store i1 true, i1* %5, align 1
  br label %126

86:                                               ; preds = %64
  br label %93

87:                                               ; preds = %59
  %88 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %89 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %90 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %89, i32 0, i32 1
  %91 = load %struct.NodeStruct*, %struct.NodeStruct** %90, align 8
  %92 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %88, %struct.NodeStruct* noundef %91)
  store i1 true, i1* %5, align 1
  br label %126

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %48, %41
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %97 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %96, i32 0, i32 2
  %98 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %97, align 8
  store %struct.EdgeListStruct* %98, %struct.EdgeListStruct** %10, align 8
  br label %38, !llvm.loop !8

99:                                               ; preds = %38
  %100 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %101 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %100, i32 0, i32 7
  %102 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %101, align 8
  store %struct.EdgeListStruct* %102, %struct.EdgeListStruct** %10, align 8
  br label %103

103:                                              ; preds = %119, %99
  %104 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %105 = icmp ne %struct.EdgeListStruct* %104, null
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %108 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %107, i32 0, i32 1
  %109 = load %struct.NodeStruct*, %struct.NodeStruct** %108, align 8
  %110 = load i8**, i8*** %7, align 8
  %111 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %112 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %113 = call zeroext i1 @findNextLabel(%struct.NodeStruct* noundef %109, i8** noundef %110, %struct.NodePtrVecStruct* noundef %111, %struct.BitfieldStruct* noundef %112)
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %11, align 1
  %115 = load i8, i8* %11, align 1
  %116 = trunc i8 %115 to i1
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  store i1 true, i1* %5, align 1
  br label %126

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %121 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %120, i32 0, i32 2
  %122 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %121, align 8
  store %struct.EdgeListStruct* %122, %struct.EdgeListStruct** %10, align 8
  br label %103, !llvm.loop !9

123:                                              ; preds = %103
  %124 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %125 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef %124)
  store i1 false, i1* %5, align 1
  br label %126

126:                                              ; preds = %123, %117, %87, %82, %30, %25
  %127 = load i1, i1* %5, align 1
  ret i1 %127
}

declare dso_local zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef, %struct.NodeStruct* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local %struct.BitfieldStruct* @Bitfield_new(i32 noundef) #1

declare dso_local void @Bitfield_delete(%struct.BitfieldStruct* noundef) #1

declare dso_local void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef, %struct.NodePtrVecStruct* noundef, i1 noundef zeroext) #1

declare dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef) #1

declare dso_local %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @findAndRecordAllPaths(%struct.NodeStruct* noundef %0, i8** noundef %1, i32* noundef %2, %struct.NodePtrVecStruct* noundef %3, %struct.BitfieldStruct* noundef %4, %struct.NodeVecVecStruct* noundef %5, %struct.SearchOptionsStruct* noundef %6) #0 {
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.NodePtrVecStruct*, align 8
  %12 = alloca %struct.BitfieldStruct*, align 8
  %13 = alloca %struct.NodeVecVecStruct*, align 8
  %14 = alloca %struct.SearchOptionsStruct*, align 8
  %15 = alloca %struct.EdgeListStruct*, align 8
  %16 = alloca %struct.BitfieldStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.NodePtrVecStruct* %3, %struct.NodePtrVecStruct** %11, align 8
  store %struct.BitfieldStruct* %4, %struct.BitfieldStruct** %12, align 8
  store %struct.NodeVecVecStruct* %5, %struct.NodeVecVecStruct** %13, align 8
  store %struct.SearchOptionsStruct* %6, %struct.SearchOptionsStruct** %14, align 8
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %16, align 8
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %18 = icmp ne %struct.NodeStruct* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %7
  %20 = load i8**, i8*** %9, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %27 = icmp ne %struct.NodePtrVecStruct* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %30 = icmp ne %struct.BitfieldStruct* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25, %22, %19, %7
  br label %133

32:                                               ; preds = %28
  %33 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %35 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef %33, %struct.NodeStruct* noundef %34)
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %133

37:                                               ; preds = %32
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %40 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %38, %struct.NodeStruct* noundef %39)
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %42 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %41, i32 0, i32 7
  %43 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %42, align 8
  store %struct.EdgeListStruct* %43, %struct.EdgeListStruct** %15, align 8
  br label %44

44:                                               ; preds = %105, %37
  %45 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %46 = icmp ne %struct.EdgeListStruct* %45, null
  br i1 %46, label %47, label %109

47:                                               ; preds = %44
  %48 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %49 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %48, i32 0, i32 1
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %49, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %104

54:                                               ; preds = %47
  %55 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %56 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %55, i32 0, i32 1
  %57 = load %struct.NodeStruct*, %struct.NodeStruct** %56, align 8
  %58 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %9, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* noundef %59, i8* noundef %62) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %54
  %66 = load i8**, i8*** %9, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %72 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %73)
  store %struct.BitfieldStruct* %74, %struct.BitfieldStruct** %16, align 8
  %75 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %76 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %75, i32 0, i32 1
  %77 = load %struct.NodeStruct*, %struct.NodeStruct** %76, align 8
  %78 = load i8**, i8*** %9, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %83 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %16, align 8
  %84 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %13, align 8
  %85 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %14, align 8
  call void @findAndRecordAllPaths(%struct.NodeStruct* noundef %77, i8** noundef %79, i32* noundef %81, %struct.NodePtrVecStruct* noundef %82, %struct.BitfieldStruct* noundef %83, %struct.NodeVecVecStruct* noundef %84, %struct.SearchOptionsStruct* noundef %85)
  %86 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %16, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %86)
  br label %103

87:                                               ; preds = %65
  %88 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %89 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %90 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %89, i32 0, i32 1
  %91 = load %struct.NodeStruct*, %struct.NodeStruct** %90, align 8
  %92 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %88, %struct.NodeStruct* noundef %91)
  %93 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %94 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %95 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %94, i32 0, i32 1
  %96 = load %struct.NodeStruct*, %struct.NodeStruct** %95, align 8
  %97 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef %93, %struct.NodeStruct* noundef %96)
  %98 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %13, align 8
  %99 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %100 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %14, align 8
  call void @logResult(%struct.NodeVecVecStruct* noundef %98, %struct.NodePtrVecStruct* noundef %99, %struct.SearchOptionsStruct* noundef %100)
  %101 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %102 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef %101)
  br label %103

103:                                              ; preds = %87, %70
  br label %104

104:                                              ; preds = %103, %54, %47
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %107 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %106, i32 0, i32 2
  %108 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %107, align 8
  store %struct.EdgeListStruct* %108, %struct.EdgeListStruct** %15, align 8
  br label %44, !llvm.loop !10

109:                                              ; preds = %44
  %110 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %111 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %110, i32 0, i32 7
  %112 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %111, align 8
  store %struct.EdgeListStruct* %112, %struct.EdgeListStruct** %15, align 8
  br label %113

113:                                              ; preds = %126, %109
  %114 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %115 = icmp ne %struct.EdgeListStruct* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %118 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %117, i32 0, i32 1
  %119 = load %struct.NodeStruct*, %struct.NodeStruct** %118, align 8
  %120 = load i8**, i8*** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %123 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %124 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %13, align 8
  %125 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %14, align 8
  call void @findAndRecordAllPaths(%struct.NodeStruct* noundef %119, i8** noundef %120, i32* noundef %121, %struct.NodePtrVecStruct* noundef %122, %struct.BitfieldStruct* noundef %123, %struct.NodeVecVecStruct* noundef %124, %struct.SearchOptionsStruct* noundef %125)
  br label %126

126:                                              ; preds = %116
  %127 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %128 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %127, i32 0, i32 2
  %129 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %128, align 8
  store %struct.EdgeListStruct* %129, %struct.EdgeListStruct** %15, align 8
  br label %113, !llvm.loop !11

130:                                              ; preds = %113
  %131 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %132 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef %131)
  br label %133

133:                                              ; preds = %130, %36, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @logResult(%struct.NodeVecVecStruct* noundef %0, %struct.NodePtrVecStruct* noundef %1, %struct.SearchOptionsStruct* noundef %2) #0 {
  %4 = alloca %struct.NodeVecVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca %struct.SearchOptionsStruct*, align 8
  %7 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodeVecVecStruct* %0, %struct.NodeVecVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  store %struct.SearchOptionsStruct* %2, %struct.SearchOptionsStruct** %6, align 8
  %8 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 2)
  store %struct.NodePtrVecStruct* %8, %struct.NodePtrVecStruct** %7, align 8
  %9 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %10 = icmp ne %struct.NodeVecVecStruct* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %13 = icmp ne %struct.NodePtrVecStruct* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %16 = icmp ne %struct.NodePtrVecStruct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11, %3
  br label %59

18:                                               ; preds = %14
  %19 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %6, align 8
  %20 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 4
  %22 = trunc i8 %21 to i1
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %6, align 8
  %25 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %24, i32 0, i32 2
  %26 = load i8, i8* %25, align 1
  %27 = trunc i8 %26 to i1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  call void @logStats(%struct.NodePtrVecStruct* noundef %29)
  br label %30

30:                                               ; preds = %28, %23, %18
  %31 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %33 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %32, i32 0, i32 2
  %34 = load %struct.NodeStruct**, %struct.NodeStruct*** %33, align 8
  %35 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %34, i64 0
  %36 = load %struct.NodeStruct*, %struct.NodeStruct** %35, align 8
  %37 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %31, %struct.NodeStruct* noundef %36)
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %39 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %40 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %39, i32 0, i32 2
  %41 = load %struct.NodeStruct**, %struct.NodeStruct*** %40, align 8
  %42 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %43 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %41, i64 %46
  %48 = load %struct.NodeStruct*, %struct.NodeStruct** %47, align 8
  %49 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %38, %struct.NodeStruct* noundef %48)
  %50 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %51 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %52 = call zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* noundef %50, %struct.NodePtrVecStruct* noundef %51)
  br i1 %52, label %57, label %53

53:                                               ; preds = %30
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = call i32 @fflush(%struct._IO_FILE* noundef %55)
  br label %57

57:                                               ; preds = %53, %30
  %58 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %58)
  br label %59

59:                                               ; preds = %57, %17
  ret void
}

declare dso_local %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* noundef, i8* noundef) #1

declare dso_local %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef, %struct.EdgeReferencesStruct* noundef, i8** noundef, %struct.NodePtrVecStruct* noundef, %struct.BitfieldStruct* noundef) #1

declare dso_local void @Bitfield_clear(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findAllPossibleLegs(%struct.GraphStruct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.GraphStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca [50 x i8], align 16
  %15 = alloca [3 x i8*], align 16
  %16 = alloca [3 x i32], align 4
  %17 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = call double (...) @currentTime()
  store double %18, double* %9, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %91, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %24 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %23, i32 0, i32 4
  %25 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %24, align 8
  %26 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %87, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %33 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %32, i32 0, i32 4
  %34 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %33, align 8
  %35 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = bitcast [3 x i8*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 24, i1 false)
  %42 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast ([3 x i32]* @__const.findAllPossibleLegs.fullIntSignature to i8*), i64 12, i1 false)
  %43 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %44 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %43, i32 0, i32 4
  %45 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %44, align 8
  %46 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %45, i32 0, i32 2
  %47 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %47, i64 %49
  %51 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %50, align 8
  %52 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  store i8* %53, i8** %54, align 16
  %55 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %56 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %55, i32 0, i32 4
  %57 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %56, align 8
  %58 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %57, i32 0, i32 2
  %59 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %59, i64 %61
  %63 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %62, align 8
  %64 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 1
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 %69, i32* %70, align 4
  %71 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 25)
  store %struct.NodePtrVecStruct* %71, %struct.NodePtrVecStruct** %17, align 8
  %72 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %73 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %74 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %17, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call zeroext i1 @findLabelPath(%struct.GraphStruct* noundef %72, i8** noundef %73, %struct.NodePtrVecStruct* noundef %74, i32 noundef %75)
  br i1 %76, label %77, label %80

77:                                               ; preds = %38
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %81

80:                                               ; preds = %38
  br label %81

81:                                               ; preds = %80, %77
  %82 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %17, align 8
  %83 = icmp ne %struct.NodePtrVecStruct* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %17, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %85)
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %30, !llvm.loop !12

90:                                               ; preds = %30
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %21, !llvm.loop !13

94:                                               ; preds = %21
  %95 = call double (...) @currentTime()
  store double %95, double* %10, align 8
  %96 = load double, double* %10, align 8
  %97 = load double, double* %9, align 8
  %98 = fsub double %96, %97
  store double %98, double* %13, align 8
  %99 = load double, double* %13, align 8
  %100 = fptosi double %99 to i32
  %101 = sdiv i32 %100, 3600
  store i32 %101, i32* %11, align 4
  %102 = load double, double* %13, align 8
  %103 = call double @fmod(double noundef %102, double noundef 3.600000e+03) #6
  store double %103, double* %13, align 8
  %104 = load double, double* %13, align 8
  %105 = fptosi double %104 to i32
  %106 = sdiv i32 %105, 60
  store i32 %106, i32* %12, align 4
  %107 = load double, double* %13, align 8
  %108 = call double @fmod(double noundef %107, double noundef 6.000000e+01) #6
  store double %108, double* %13, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load double, double* %13, align 8
  %114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 noundef %109, i32 noundef %110, i32 noundef %111, i32 noundef %112, double noundef %113)
  %115 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %115, align 16
  %116 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load double, double* %13, align 8
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %116, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef %117, i32 noundef %118, double noundef %119) #6
  %121 = load i32, i32* %7, align 4
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %121)
  %122 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef %122)
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local void @YAMLWriteInt(i8* noundef, i32 noundef) #1

declare dso_local void @YAMLWriteString(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findAndLogAllPossibleLegs(%struct.GraphStruct* noundef %0, %struct.SearchOptionsStruct* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca %struct.SearchOptionsStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.NodeVecVecStruct**, align 8
  %18 = alloca %struct.GraphStruct*, align 8
  %19 = alloca [50 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.NodeVecVecStruct*, align 8
  %22 = alloca [3 x i8*], align 16
  %23 = alloca [3 x i32], align 4
  %24 = alloca %struct.NodePtrVecStruct*, align 8
  %25 = alloca %struct.BitfieldStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store %struct.SearchOptionsStruct* %1, %struct.SearchOptionsStruct** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %16, align 4
  store %struct.GraphStruct* null, %struct.GraphStruct** %18, align 8
  %26 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %27 = icmp ne %struct.GraphStruct* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %236

29:                                               ; preds = %2
  %30 = call double (...) @currentTime()
  store double %30, double* %11, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %21, align 8
  store i32 1, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp sgt i32 %33, 1
  %35 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %36 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %35, i32 0, i32 1
  %37 = zext i1 %34 to i8
  store i8 %37, i8* %36, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = call noalias i8* @malloc(i64 noundef %41) #6
  %43 = bitcast i8* %42 to %struct.NodeVecVecStruct**
  store %struct.NodeVecVecStruct** %43, %struct.NodeVecVecStruct*** %17, align 8
  %44 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %44, i64 %46
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %47, align 8
  %48 = call %struct.NodeVecVecStruct* @NodeVecVec_new(i32 noundef 64)
  %49 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %49, i64 %51
  store %struct.NodeVecVecStruct* %48, %struct.NodeVecVecStruct** %52, align 8
  %53 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %53, i64 %55
  %57 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %56, align 8
  store %struct.NodeVecVecStruct* %57, %struct.NodeVecVecStruct** %21, align 8
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %168, %29
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %62 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %61, i32 0, i32 4
  %63 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %62, align 8
  %64 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %171

67:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %164, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %71 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %70, i32 0, i32 4
  %72 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %71, align 8
  %73 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %167

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %160, %76
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %82 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %81, i32 0, i32 4
  %83 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %82, align 8
  %84 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %83, i32 0, i32 2
  %85 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %85, i64 %87
  %89 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %88, align 8
  %90 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %89, i32 0, i32 2
  %91 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %90, align 8
  %92 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %80, %93
  br i1 %94, label %95, label %163

95:                                               ; preds = %79
  %96 = bitcast [3 x i8*]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %96, i8 0, i64 24, i1 false)
  %97 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 bitcast ([3 x i32]* @__const.findAndLogAllPossibleLegs.fullIntSignature to i8*), i64 12, i1 false)
  %98 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %99 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %98, i32 0, i32 4
  %100 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %99, align 8
  %101 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %100, i32 0, i32 2
  %102 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %102, i64 %104
  %106 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %105, align 8
  %107 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  store i8* %108, i8** %109, align 16
  %110 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %111 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %110, i32 0, i32 4
  %112 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %111, align 8
  %113 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %112, i32 0, i32 2
  %114 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %114, i64 %116
  %118 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %117, align 8
  %119 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  %126 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 16)
  store %struct.NodePtrVecStruct* %126, %struct.NodePtrVecStruct** %24, align 8
  %127 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %128 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %129)
  store %struct.BitfieldStruct* %130, %struct.BitfieldStruct** %25, align 8
  %131 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %132 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %131, i32 0, i32 4
  %133 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %132, align 8
  %134 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %133, i32 0, i32 2
  %135 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %135, i64 %137
  %139 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %138, align 8
  %140 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %139, i32 0, i32 2
  %141 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %140, align 8
  %142 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %141, i32 0, i32 2
  %143 = load %struct.NodeStruct**, %struct.NodeStruct*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %143, i64 %145
  %147 = load %struct.NodeStruct*, %struct.NodeStruct** %146, align 8
  %148 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %150 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %24, align 8
  %151 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %25, align 8
  %152 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %21, align 8
  %153 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  call void @findAndRecordAllPaths(%struct.NodeStruct* noundef %147, i8** noundef %148, i32* noundef %149, %struct.NodePtrVecStruct* noundef %150, %struct.BitfieldStruct* noundef %151, %struct.NodeVecVecStruct* noundef %152, %struct.SearchOptionsStruct* noundef %153)
  %154 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %25, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %154)
  %155 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %24, align 8
  %156 = icmp ne %struct.NodePtrVecStruct* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %95
  %158 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %24, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %158)
  br label %159

159:                                              ; preds = %157, %95
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %79, !llvm.loop !14

163:                                              ; preds = %79
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %68, !llvm.loop !15

167:                                              ; preds = %68
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %59, !llvm.loop !16

171:                                              ; preds = %59
  %172 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %21, align 8
  %173 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %9, align 4
  %175 = call double (...) @currentTime()
  store double %175, double* %12, align 8
  %176 = load double, double* %12, align 8
  %177 = load double, double* %11, align 8
  %178 = fsub double %176, %177
  store double %178, double* %15, align 8
  %179 = load double, double* %15, align 8
  %180 = fptosi double %179 to i32
  %181 = sdiv i32 %180, 3600
  store i32 %181, i32* %13, align 4
  %182 = load double, double* %15, align 8
  %183 = call double @fmod(double noundef %182, double noundef 3.600000e+03) #6
  store double %183, double* %15, align 8
  %184 = load double, double* %15, align 8
  %185 = fptosi double %184 to i32
  %186 = sdiv i32 %185, 60
  store i32 %186, i32* %14, align 4
  %187 = load double, double* %15, align 8
  %188 = call double @fmod(double noundef %187, double noundef 6.000000e+01) #6
  store double %188, double* %15, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load double, double* %15, align 8
  %194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 noundef %189, i32 noundef %190, i32 noundef %191, i32 noundef %192, double noundef %193)
  %195 = getelementptr inbounds [50 x i8], [50 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %195, align 16
  %196 = getelementptr inbounds [50 x i8], [50 x i8]* %19, i64 0, i64 0
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load double, double* %15, align 8
  %200 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %196, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef %197, i32 noundef %198, double noundef %199) #6
  %201 = load i32, i32* %9, align 4
  call void @YAMLWriteInt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %201)
  %202 = getelementptr inbounds [50 x i8], [50 x i8]* %19, i64 0, i64 0
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef %202)
  %203 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %204 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %203, i32 0, i32 3
  %205 = load i8, i8* %204, align 2
  %206 = trunc i8 %205 to i1
  br i1 %206, label %207, label %223

207:                                              ; preds = %171
  %208 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %209 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %223

212:                                              ; preds = %207
  %213 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %214 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %215 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = call %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** noundef %213, i32 noundef %216)
  store %struct.GraphStruct* %217, %struct.GraphStruct** %18, align 8
  %218 = load %struct.GraphStruct*, %struct.GraphStruct** %18, align 8
  %219 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %220 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %219, i32 0, i32 4
  %221 = load i8*, i8** %220, align 8
  %222 = call zeroext i1 @exportGraph(%struct.GraphStruct* noundef %218, i8* noundef %221)
  br label %223

223:                                              ; preds = %212, %207, %171
  %224 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %225 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %224, i32 0, i32 2
  %226 = load i8, i8* %225, align 1
  %227 = trunc i8 %226 to i1
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %230 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %229, i32 0, i32 1
  %231 = load i8, i8* %230, align 4
  %232 = trunc i8 %231 to i1
  br i1 %232, label %234, label %233

233:                                              ; preds = %228
  call void @printStats()
  br label %234

234:                                              ; preds = %233, %228, %223
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %28
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local %struct.NodeVecVecStruct* @NodeVecVec_new(i32 noundef) #1

declare dso_local %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** noundef, i32 noundef) #1

declare dso_local zeroext i1 @exportGraph(%struct.GraphStruct* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @logStats(%struct.NodePtrVecStruct* noundef %0) #0 {
  %2 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %2, align 8
  %3 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %4 = icmp ne %struct.NodePtrVecStruct* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %8 = icmp ne %struct.StatsStruct* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call %struct.StatsStruct* (...) @Stats_new()
  store %struct.StatsStruct* %10, %struct.StatsStruct** @globalStats, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %13 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %14 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %12, %struct.NodePtrVecStruct* noundef %13)
  br label %15

15:                                               ; preds = %11, %5
  ret void
}

declare dso_local zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* noundef, %struct.NodePtrVecStruct* noundef) #1

declare dso_local %struct.StatsStruct* @Stats_new(...) #1

declare dso_local zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef, %struct.NodePtrVecStruct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @printStats() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %3 = icmp ne %struct.StatsStruct* %2, null
  br i1 %3, label %4, label %58

4:                                                ; preds = %0
  %5 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  call void @Stats_calculate(%struct.StatsStruct* noundef %5)
  %6 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %7 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %6, i32 0, i32 3
  %8 = load double, double* %7, align 8
  %9 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %10 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %9, i32 0, i32 4
  %11 = load double, double* %10, align 8
  %12 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %13 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %12, i32 0, i32 0
  %14 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %13, align 8
  %15 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0), double noundef %8, double noundef %11, i32 noundef %16)
  %18 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %19 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %22 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 noundef %20, i32 noundef %23)
  %25 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %26 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %54, %4
  %29 = load i32, i32* %1, align 4
  %30 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %31 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %36 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load i32, i32* %1, align 4
  %45 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %46 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef %44, i32 noundef %51)
  br label %53

53:                                               ; preds = %43, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %28, !llvm.loop !17

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %0
  ret void
}

declare dso_local void @Stats_calculate(%struct.StatsStruct* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
