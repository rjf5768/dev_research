; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/graphGen.c'
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
define dso_local %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.GraphStruct*, align 8
  %4 = alloca %struct.NodeVecVecStruct**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.GraphStruct*, align 8
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca %struct.NodeStruct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.NodeVecVecStruct** %0, %struct.NodeVecVecStruct*** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = call %struct.GraphStruct* (...) @Graph_new()
  store %struct.GraphStruct* %13, %struct.GraphStruct** %6, align 8
  %14 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %15 = icmp ne %struct.NodeVecVecStruct** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %18 = icmp ne %struct.GraphStruct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store %struct.GraphStruct* null, %struct.GraphStruct** %3, align 8
  br label %168

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %163, %20
  %22 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %22, i64 %24
  %26 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %25, align 8
  %27 = icmp ne %struct.NodeVecVecStruct* %26, null
  br i1 %27, label %28, label %166

28:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %159, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %31, i64 %33
  %35 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %34, align 8
  %36 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %30, %37
  br i1 %38, label %39, label %162

39:                                               ; preds = %29
  %40 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %40, i64 %42
  %44 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %43, align 8
  %45 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %44, i32 0, i32 2
  %46 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %46, i64 %48
  %50 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %49, align 8
  %51 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %50, i32 0, i32 2
  %52 = load %struct.NodeStruct**, %struct.NodeStruct*** %51, align 8
  %53 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %52, i64 0
  %54 = load %struct.NodeStruct*, %struct.NodeStruct** %53, align 8
  store %struct.NodeStruct* %54, %struct.NodeStruct** %7, align 8
  %55 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %56 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %57 = call %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* noundef %55, %struct.NodeStruct* noundef %56)
  store %struct.NodeStruct* %57, %struct.NodeStruct** %8, align 8
  %58 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %59 = icmp ne %struct.NodeStruct* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %39
  store %struct.GraphStruct* null, %struct.GraphStruct** %3, align 8
  br label %168

61:                                               ; preds = %39
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %155, %61
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %64, i64 %66
  %68 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %67, align 8
  %69 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %68, i32 0, i32 2
  %70 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %70, i64 %72
  %74 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %73, align 8
  %75 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %63, %76
  br i1 %77, label %78, label %158

78:                                               ; preds = %62
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %82, i64 %84
  %86 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %85, align 8
  %87 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %86, i32 0, i32 2
  %88 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %88, i64 %90
  %92 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %91, align 8
  %93 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %126

96:                                               ; preds = %78
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %121, %99
  %101 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %101, i64 %103
  %105 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %104, align 8
  %106 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %105, i32 0, i32 2
  %107 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %107, i64 %109
  %111 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %110, align 8
  %112 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %111, i32 0, i32 2
  %113 = load %struct.NodeStruct**, %struct.NodeStruct*** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %113, i64 %115
  %117 = load %struct.NodeStruct*, %struct.NodeStruct** %116, align 8
  %118 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %100
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %100, !llvm.loop !4

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124, %96
  br label %126

126:                                              ; preds = %125, %81
  %127 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %127, i64 %129
  %131 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %130, align 8
  %132 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %131, i32 0, i32 2
  %133 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %133, i64 %135
  %137 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %136, align 8
  %138 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %137, i32 0, i32 2
  %139 = load %struct.NodeStruct**, %struct.NodeStruct*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %139, i64 %141
  %143 = load %struct.NodeStruct*, %struct.NodeStruct** %142, align 8
  store %struct.NodeStruct* %143, %struct.NodeStruct** %7, align 8
  %144 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %145 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %146 = call %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* noundef %144, %struct.NodeStruct* noundef %145)
  store %struct.NodeStruct* %146, %struct.NodeStruct** %9, align 8
  %147 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  %148 = icmp ne %struct.NodeStruct* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %126
  store %struct.GraphStruct* null, %struct.GraphStruct** %3, align 8
  br label %168

150:                                              ; preds = %126
  %151 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %152 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  %153 = call zeroext i1 @Node_addEdgeToNode(%struct.NodeStruct* noundef %151, %struct.NodeStruct* noundef %152)
  %154 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  store %struct.NodeStruct* %154, %struct.NodeStruct** %8, align 8
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %62, !llvm.loop !6

158:                                              ; preds = %62
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %29, !llvm.loop !7

162:                                              ; preds = %29
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %21, !llvm.loop !8

166:                                              ; preds = %21
  %167 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  store %struct.GraphStruct* %167, %struct.GraphStruct** %3, align 8
  br label %168

168:                                              ; preds = %166, %149, %60, %19
  %169 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  ret %struct.GraphStruct* %169
}

declare dso_local %struct.GraphStruct* @Graph_new(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca %struct.NodeStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %8 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %9 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef %7, i32 noundef %10, i1 noundef zeroext true)
  store %struct.NodeStruct* %11, %struct.NodeStruct** %6, align 8
  %12 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %13 = icmp ne %struct.NodeStruct* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %15, %struct.NodeStruct** %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %18 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %19 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = call %struct.NodeStruct* @Node_duplicate(%struct.NodeStruct* noundef %17, i32 noundef %20)
  store %struct.NodeStruct* %22, %struct.NodeStruct** %6, align 8
  %23 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %24 = icmp ne %struct.NodeStruct* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %28 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef %26, %struct.NodeStruct* noundef %27)
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %31, %struct.NodeStruct** %3, align 8
  br label %34

32:                                               ; preds = %16
  %33 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  call void @Graph_delete(%struct.GraphStruct* noundef %33)
  store %struct.NodeStruct* null, %struct.NodeStruct** %3, align 8
  br label %34

34:                                               ; preds = %32, %25, %14
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  ret %struct.NodeStruct* %35
}

declare dso_local zeroext i1 @Node_addEdgeToNode(%struct.NodeStruct* noundef, %struct.NodeStruct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @exportGraph(%struct.GraphStruct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.NodeListStruct*, align 8
  %8 = alloca %struct.EdgeListStruct*, align 8
  %9 = alloca i32, align 4
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %7, align 8
  store %struct.EdgeListStruct* null, %struct.EdgeListStruct** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %11 = icmp ne %struct.GraphStruct* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  store i1 false, i1* %3, align 1
  br label %165

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call noalias %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %6, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i1 false, i1* %3, align 1
  br label %165

22:                                               ; preds = %16
  %23 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %24 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %23, i32 0, i32 2
  %25 = load %struct.NodeListStruct*, %struct.NodeListStruct** %24, align 8
  store %struct.NodeListStruct* %25, %struct.NodeListStruct** %7, align 8
  br label %26

26:                                               ; preds = %32, %22
  %27 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %28 = icmp ne %struct.NodeListStruct* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %34 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %33, i32 0, i32 1
  %35 = load %struct.NodeListStruct*, %struct.NodeListStruct** %34, align 8
  store %struct.NodeListStruct* %35, %struct.NodeListStruct** %7, align 8
  br label %26, !llvm.loop !9

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %41 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %42 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef %43)
  %45 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %46 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %45, i32 0, i32 2
  %47 = load %struct.NodeListStruct*, %struct.NodeListStruct** %46, align 8
  store %struct.NodeListStruct* %47, %struct.NodeListStruct** %7, align 8
  br label %48

48:                                               ; preds = %126, %36
  %49 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %50 = icmp ne %struct.NodeListStruct* %49, null
  br i1 %50, label %51, label %130

51:                                               ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %53 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %54 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %53, i32 0, i32 0
  %55 = load %struct.NodeStruct*, %struct.NodeStruct** %54, align 8
  %56 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %57)
  %59 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %60 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %59, i32 0, i32 0
  %61 = load %struct.NodeStruct*, %struct.NodeStruct** %60, align 8
  %62 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %61, i32 0, i32 7
  %63 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %62, align 8
  %64 = icmp ne %struct.EdgeListStruct* %63, null
  br i1 %64, label %65, label %122

65:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  %66 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %67 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %66, i32 0, i32 0
  %68 = load %struct.NodeStruct*, %struct.NodeStruct** %67, align 8
  %69 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %68, i32 0, i32 7
  %70 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %69, align 8
  store %struct.EdgeListStruct* %70, %struct.EdgeListStruct** %8, align 8
  br label %71

71:                                               ; preds = %85, %65
  %72 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %73 = icmp ne %struct.EdgeListStruct* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %76 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %75, i32 0, i32 1
  %77 = load %struct.NodeStruct*, %struct.NodeStruct** %76, align 8
  %78 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %74
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %87 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %86, i32 0, i32 2
  %88 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %87, align 8
  store %struct.EdgeListStruct* %88, %struct.EdgeListStruct** %8, align 8
  br label %71, !llvm.loop !10

89:                                               ; preds = %71
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %90, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %91)
  %93 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %94 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %93, i32 0, i32 0
  %95 = load %struct.NodeStruct*, %struct.NodeStruct** %94, align 8
  %96 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %95, i32 0, i32 7
  %97 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %96, align 8
  store %struct.EdgeListStruct* %97, %struct.EdgeListStruct** %8, align 8
  br label %98

98:                                               ; preds = %115, %89
  %99 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %100 = icmp ne %struct.EdgeListStruct* %99, null
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %103 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %102, i32 0, i32 1
  %104 = load %struct.NodeStruct*, %struct.NodeStruct** %103, align 8
  %105 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %110 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %111 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %112)
  br label %114

114:                                              ; preds = %108, %101
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %117 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %116, i32 0, i32 2
  %118 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %117, align 8
  store %struct.EdgeListStruct* %118, %struct.EdgeListStruct** %8, align 8
  br label %98, !llvm.loop !11

119:                                              ; preds = %98
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %125

122:                                              ; preds = %51
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %128 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %127, i32 0, i32 1
  %129 = load %struct.NodeListStruct*, %struct.NodeListStruct** %128, align 8
  store %struct.NodeListStruct* %129, %struct.NodeListStruct** %7, align 8
  br label %48, !llvm.loop !12

130:                                              ; preds = %48
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %133 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %134 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %133, i32 0, i32 2
  %135 = load %struct.NodeListStruct*, %struct.NodeListStruct** %134, align 8
  store %struct.NodeListStruct* %135, %struct.NodeListStruct** %7, align 8
  br label %136

136:                                              ; preds = %160, %130
  %137 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %138 = icmp ne %struct.NodeListStruct* %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %141 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %140, i32 0, i32 0
  %142 = load %struct.NodeStruct*, %struct.NodeStruct** %141, align 8
  %143 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %139
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %148 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %149 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %148, i32 0, i32 0
  %150 = load %struct.NodeStruct*, %struct.NodeStruct** %149, align 8
  %151 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %154 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %153, i32 0, i32 0
  %155 = load %struct.NodeStruct*, %struct.NodeStruct** %154, align 8
  %156 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %152, i8* noundef %157)
  br label %159

159:                                              ; preds = %146, %139
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %162 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %161, i32 0, i32 1
  %163 = load %struct.NodeListStruct*, %struct.NodeListStruct** %162, align 8
  store %struct.NodeListStruct* %163, %struct.NodeListStruct** %7, align 8
  br label %136, !llvm.loop !13

164:                                              ; preds = %136
  store i1 true, i1* %3, align 1
  br label %165

165:                                              ; preds = %164, %21, %15
  %166 = load i1, i1* %3, align 1
  ret i1 %166
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* noundef, i32 noundef, i1 noundef zeroext) #1

declare dso_local %struct.NodeStruct* @Node_duplicate(%struct.NodeStruct* noundef, i32 noundef) #1

declare dso_local zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* noundef, %struct.NodeStruct* noundef) #1

declare dso_local void @Graph_delete(%struct.GraphStruct* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
