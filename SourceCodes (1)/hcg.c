; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/hcg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/hcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeHCGType = type { i64*, i64, i64 }

@channelNets = external dso_local global i64, align 8
@HCG = dso_local global %struct._nodeHCGType* null, align 8
@storageRootHCG = dso_local global i64* null, align 8
@storageHCG = dso_local global i64* null, align 8
@storageLimitHCG = dso_local global i64 0, align 8
@FIRST = external dso_local global i64*, align 8
@LAST = external dso_local global i64*, align 8
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/hcg.c\00", align 1
@__PRETTY_FUNCTION__.BuildHCG = private unnamed_addr constant [20 x i8] c"void BuildHCG(void)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"storageLimitHCG > 0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@channelTracks = external dso_local global i64, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocHCG() #0 {
  %1 = load i64, i64* @channelNets, align 8
  %2 = add i64 %1, 1
  %3 = mul i64 %2, 24
  %4 = call noalias i8* @malloc(i64 noundef %3) #4
  %5 = bitcast i8* %4 to %struct._nodeHCGType*
  store %struct._nodeHCGType* %5, %struct._nodeHCGType** @HCG, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = add i64 %6, 1
  %8 = load i64, i64* @channelNets, align 8
  %9 = add i64 %8, 1
  %10 = mul i64 %7, %9
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 noundef %11) #4
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** @storageRootHCG, align 8
  %14 = load i64*, i64** @storageRootHCG, align 8
  store i64* %14, i64** @storageHCG, align 8
  %15 = load i64, i64* @channelNets, align 8
  %16 = add i64 %15, 1
  %17 = load i64, i64* @channelNets, align 8
  %18 = add i64 %17, 1
  %19 = mul i64 %16, %18
  store i64 %19, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeHCG() #0 {
  %1 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %2 = bitcast %struct._nodeHCGType* %1 to i8*
  call void @free(i8* noundef %2) #4
  %3 = load i64*, i64** @storageRootHCG, align 8
  %4 = bitcast i64* %3 to i8*
  call void @free(i8* noundef %4) #4
  store i64 0, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildHCG() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @AllocHCG()
  store i64 1, i64* %1, align 8
  br label %8

8:                                                ; preds = %115, %0
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @channelNets, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %118

12:                                               ; preds = %8
  %13 = load i64*, i64** @FIRST, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64*, i64** @LAST, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  store i64 0, i64* %3, align 8
  %21 = load i64*, i64** @storageHCG, align 8
  %22 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %22, i64 %23
  %25 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %24, i32 0, i32 0
  store i64* %21, i64** %25, align 8
  store i64 1, i64* %2, align 8
  br label %26

26:                                               ; preds = %106, %12
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @channelNets, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %109

30:                                               ; preds = %26
  %31 = load i64*, i64** @FIRST, align 8
  %32 = load i64, i64* %2, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i64*, i64** @LAST, align 8
  %39 = load i64, i64* %2, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %37, %30
  %45 = load i64*, i64** @FIRST, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i64*, i64** @LAST, align 8
  %53 = load i64, i64* %2, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %37
  br label %105

59:                                               ; preds = %51, %44
  store i64 1, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %66 = load i64, i64* %1, align 8
  %67 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %65, i64 %66
  %68 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %2, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i64 0, i64* %7, align 8
  br label %80

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %60, !llvm.loop !4

80:                                               ; preds = %75, %60
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %85

84:                                               ; preds = %80
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildHCG, i64 0, i64 0)) #5
  unreachable

85:                                               ; preds = %83
  %86 = load i64, i64* @storageLimitHCG, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %90

89:                                               ; preds = %85
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildHCG, i64 0, i64 0)) #5
  unreachable

90:                                               ; preds = %88
  %91 = load i64, i64* %2, align 8
  %92 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %93 = load i64, i64* %1, align 8
  %94 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %92, i64 %93
  %95 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %91, i64* %98, align 8
  %99 = load i64*, i64** @storageHCG, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** @storageHCG, align 8
  %101 = load i64, i64* @storageLimitHCG, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* @storageLimitHCG, align 8
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %90, %58
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %2, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %2, align 8
  br label %26, !llvm.loop !6

109:                                              ; preds = %26
  %110 = load i64, i64* %3, align 8
  %111 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %112 = load i64, i64* %1, align 8
  %113 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %111, i64 %112
  %114 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  br label %115

115:                                              ; preds = %109
  %116 = load i64, i64* %1, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %1, align 8
  br label %8, !llvm.loop !7

118:                                              ; preds = %8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @DFSClearHCG(%struct._nodeHCGType* noundef %0) #0 {
  %2 = alloca %struct._nodeHCGType*, align 8
  %3 = alloca i64, align 8
  store %struct._nodeHCGType* %0, %struct._nodeHCGType** %2, align 8
  store i64 1, i64* %3, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load %struct._nodeHCGType*, %struct._nodeHCGType** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %9, i64 %10
  %12 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %3, align 8
  br label %4, !llvm.loop !8

16:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpHCG(%struct._nodeHCGType* noundef %0) #0 {
  %2 = alloca %struct._nodeHCGType*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct._nodeHCGType* %0, %struct._nodeHCGType** %2, align 8
  store i64 1, i64* %3, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @channelNets, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = load i64, i64* %3, align 8
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %10)
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %30, %9
  %13 = load i64, i64* %4, align 8
  %14 = load %struct._nodeHCGType*, %struct._nodeHCGType** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %14, i64 %15
  %17 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct._nodeHCGType*, %struct._nodeHCGType** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %21, i64 %22
  %24 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %12, !llvm.loop !9

33:                                               ; preds = %12
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %5, !llvm.loop !10

38:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @NoHCV(%struct._nodeHCGType* noundef %0, i64 noundef %1, i64* noundef %2, i64* noundef %3) #0 {
  %5 = alloca %struct._nodeHCGType*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct._nodeHCGType* %0, %struct._nodeHCGType** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 1, i64* %9, align 8
  br label %13

13:                                               ; preds = %68, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @channelTracks, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  store i64 1, i64* %12, align 8
  store i64 1, i64* %10, align 8
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @channelNets, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i64, i64* %11, align 8
  %32 = load %struct._nodeHCGType*, %struct._nodeHCGType** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %32, i64 %33
  %35 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %31, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct._nodeHCGType*, %struct._nodeHCGType** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %39, i64 %40
  %42 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i64 0, i64* %12, align 8
  br label %54

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %30, !llvm.loop !11

54:                                               ; preds = %49, %30
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %63

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %18, !llvm.loop !12

63:                                               ; preds = %57, %18
  %64 = load i64, i64* %12, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %13, !llvm.loop !13

71:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
