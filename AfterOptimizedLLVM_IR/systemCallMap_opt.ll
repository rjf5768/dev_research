; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/systemCallMap.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/systemCallMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SystemCallMapElementStruct = type { i8*, i32, %struct.NodePtrVecStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.SystemCallMapStruct = type { i32, i32, %struct.SystemCallMapElementStruct** }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SystemCallMapElementStruct* @SystemCallMapElement_new(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.SystemCallMapElementStruct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SystemCallMapElementStruct*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call noalias i8* @malloc(i64 noundef 24) #4
  %8 = bitcast i8* %7 to %struct.SystemCallMapElementStruct*
  store %struct.SystemCallMapElementStruct* %8, %struct.SystemCallMapElementStruct** %6, align 8
  %9 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %10 = icmp ne %struct.SystemCallMapElementStruct* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call noalias i8* @strdup(i8* noundef %12) #4
  %14 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %15 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %17 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 8
  %18 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %19 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %24 = bitcast %struct.SystemCallMapElementStruct* %23 to i8*
  call void @free(i8* noundef %24) #4
  store %struct.SystemCallMapElementStruct* null, %struct.SystemCallMapElementStruct** %3, align 8
  br label %43

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %26)
  %28 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %29 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %28, i32 0, i32 2
  store %struct.NodePtrVecStruct* %27, %struct.NodePtrVecStruct** %29, align 8
  %30 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %31 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %30, i32 0, i32 2
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %31, align 8
  %33 = icmp ne %struct.NodePtrVecStruct* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %36 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  call void @free(i8* noundef %37) #4
  %38 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %39 = bitcast %struct.SystemCallMapElementStruct* %38 to i8*
  call void @free(i8* noundef %39) #4
  store %struct.SystemCallMapElementStruct* null, %struct.SystemCallMapElementStruct** %3, align 8
  br label %43

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  store %struct.SystemCallMapElementStruct* %42, %struct.SystemCallMapElementStruct** %3, align 8
  br label %43

43:                                               ; preds = %41, %34, %22
  %44 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %3, align 8
  ret %struct.SystemCallMapElementStruct* %44
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* noundef %0) #0 {
  %2 = alloca %struct.SystemCallMapElementStruct*, align 8
  store %struct.SystemCallMapElementStruct* %0, %struct.SystemCallMapElementStruct** %2, align 8
  %3 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %4 = icmp ne %struct.SystemCallMapElementStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %7 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %12 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %13) #4
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %16 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %15, i32 0, i32 2
  %17 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %16, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %17)
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

declare dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SystemCallMapStruct* @SystemCallMap_new(i32 noundef %0) #0 {
  %2 = alloca %struct.SystemCallMapStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.SystemCallMapStruct*, align 8
  %5 = alloca %struct.SystemCallMapElementStruct**, align 8
  store i32 %0, i32* %3, align 4
  store %struct.SystemCallMapStruct* null, %struct.SystemCallMapStruct** %4, align 8
  store %struct.SystemCallMapElementStruct** null, %struct.SystemCallMapElementStruct*** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.SystemCallMapStruct* null, %struct.SystemCallMapStruct** %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @malloc(i64 noundef %12) #4
  %14 = bitcast i8* %13 to %struct.SystemCallMapElementStruct**
  store %struct.SystemCallMapElementStruct** %14, %struct.SystemCallMapElementStruct*** %5, align 8
  %15 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %5, align 8
  %16 = icmp ne %struct.SystemCallMapElementStruct** %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = call noalias i8* @malloc(i64 noundef 16) #4
  %19 = bitcast i8* %18 to %struct.SystemCallMapStruct*
  store %struct.SystemCallMapStruct* %19, %struct.SystemCallMapStruct** %4, align 8
  %20 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %21 = icmp ne %struct.SystemCallMapStruct* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %25 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %27 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %5, align 8
  %29 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %30 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %29, i32 0, i32 2
  store %struct.SystemCallMapElementStruct** %28, %struct.SystemCallMapElementStruct*** %30, align 8
  br label %34

31:                                               ; preds = %17
  %32 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %5, align 8
  %33 = bitcast %struct.SystemCallMapElementStruct** %32 to i8*
  call void @free(i8* noundef %33) #4
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34, %9
  %36 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  store %struct.SystemCallMapStruct* %36, %struct.SystemCallMapStruct** %2, align 8
  br label %37

37:                                               ; preds = %35, %8
  %38 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  ret %struct.SystemCallMapStruct* %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SystemCallMap_delete(%struct.SystemCallMapStruct* noundef %0) #0 {
  %2 = alloca %struct.SystemCallMapStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %2, align 8
  %4 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %5 = icmp ne %struct.SystemCallMapStruct* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %11 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %16 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %15, i32 0, i32 2
  %17 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %17, i64 %19
  %21 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %20, align 8
  call void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* noundef %21)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8, !llvm.loop !4

25:                                               ; preds = %6, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* noundef %0, i8* noundef %1, %struct.NodeStruct* noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.SystemCallMapStruct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.SystemCallMapElementStruct*, align 8
  %10 = alloca i8, align 1
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.NodeStruct* %2, %struct.NodeStruct** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.SystemCallMapElementStruct* null, %struct.SystemCallMapElementStruct** %9, align 8
  store i8 0, i8* %10, align 1
  %11 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %12 = icmp ne %struct.SystemCallMapStruct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %18 = icmp ne %struct.NodeStruct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  store i1 false, i1* %4, align 1
  br label %147

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %24 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %30 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %29, i32 0, i32 2
  %31 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %31, i64 %33
  %35 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %34, align 8
  %36 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* noundef %28, i8* noundef %37) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %27
  %41 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %42 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %41, i32 0, i32 2
  %43 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %43, i64 %45
  %47 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %46, align 8
  %48 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %54 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %56 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %55, i32 0, i32 2
  %57 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %57, i64 %59
  %61 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %60, align 8
  %62 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %61, i32 0, i32 2
  %63 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %62, align 8
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %65 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %63, %struct.NodeStruct* noundef %64)
  store i1 %65, i1* %4, align 1
  br label %147

66:                                               ; preds = %27
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %21, !llvm.loop !6

70:                                               ; preds = %21
  %71 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %72 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %75 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %70
  %79 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %80 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %79, i32 0, i32 2
  %81 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %80, align 8
  %82 = bitcast %struct.SystemCallMapElementStruct** %81 to i8*
  %83 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %84 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = call i8* @realloc(i8* noundef %82, i64 noundef %88) #4
  %90 = bitcast i8* %89 to %struct.SystemCallMapElementStruct**
  %91 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %92 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %91, i32 0, i32 2
  store %struct.SystemCallMapElementStruct** %90, %struct.SystemCallMapElementStruct*** %92, align 8
  %93 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %94 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %93, i32 0, i32 2
  %95 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %94, align 8
  %96 = icmp ne %struct.SystemCallMapElementStruct** %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %78
  %98 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %99 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, i32* %99, align 4
  br label %103

102:                                              ; preds = %78
  store i1 false, i1* %4, align 1
  br label %147

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %70
  %105 = load i8*, i8** %6, align 8
  %106 = call %struct.SystemCallMapElementStruct* @SystemCallMapElement_new(i8* noundef %105, i32 noundef 8)
  store %struct.SystemCallMapElementStruct* %106, %struct.SystemCallMapElementStruct** %9, align 8
  %107 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %108 = icmp ne %struct.SystemCallMapElementStruct* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i1 false, i1* %4, align 1
  br label %147

110:                                              ; preds = %104
  %111 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %112 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %111, i32 0, i32 2
  %113 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %112, align 8
  %114 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %115 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %113, %struct.NodeStruct* noundef %114)
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %10, align 1
  %117 = load i8, i8* %10, align 1
  %118 = trunc i8 %117 to i1
  br i1 %118, label %121, label %119

119:                                              ; preds = %110
  %120 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  call void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* noundef %120)
  br label %121

121:                                              ; preds = %119, %110
  %122 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %123 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %126 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %128 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %131 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %133 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %132, i32 0, i32 3
  store i32 %129, i32* %133, align 8
  %134 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %135 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %136 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %135, i32 0, i32 2
  %137 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %136, align 8
  %138 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %139 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %137, i64 %141
  store %struct.SystemCallMapElementStruct* %134, %struct.SystemCallMapElementStruct** %142, align 8
  %143 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %144 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  store i1 true, i1* %4, align 1
  br label %147

147:                                              ; preds = %121, %109, %102, %40, %19
  %148 = load i1, i1* %4, align 1
  ret i1 %148
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef, %struct.NodeStruct* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca %struct.SystemCallMapStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %8 = icmp ne %struct.SystemCallMapStruct* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %48

13:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %17 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %23 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %22, i32 0, i32 2
  %24 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %24, i64 %26
  %28 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %27, align 8
  %29 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* noundef %21, i8* noundef %30) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %35 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %34, i32 0, i32 2
  %36 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %36, i64 %38
  %40 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %39, align 8
  %41 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %40, i32 0, i32 2
  %42 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %41, align 8
  store %struct.NodePtrVecStruct* %42, %struct.NodePtrVecStruct** %3, align 8
  br label %48

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %14, !llvm.loop !7

47:                                               ; preds = %14
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %48

48:                                               ; preds = %47, %33, %12
  %49 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  ret %struct.NodePtrVecStruct* %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SystemCallMap_getLabelIndex(%struct.SystemCallMapStruct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SystemCallMapStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %10 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %16 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %15, i32 0, i32 2
  %17 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %17, i64 %19
  %21 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %20, align 8
  %22 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* noundef %14, i8* noundef %23) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7, !llvm.loop !8

32:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SystemCallMap_signatureRepresented(%struct.SystemCallMapStruct* noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.SystemCallMapStruct*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i8 1, i8* %6, align 1
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i8, i8* %6, align 1
  %16 = trunc i8 %15 to i1
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i1 [ false, %7 ], [ %16, %14 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %3, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @SystemCallMap_getLabelIndex(%struct.SystemCallMapStruct* noundef %20, i8* noundef %25)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i8 0, i8* %6, align 1
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7, !llvm.loop !9

33:                                               ; preds = %17
  %34 = load i8, i8* %6, align 1
  %35 = trunc i8 %34 to i1
  ret i1 %35
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
