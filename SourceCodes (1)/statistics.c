; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/statistics.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HistogramElementStruct = type { i32, i32, %struct.HistogramElementStruct* }
%struct.StatsStruct = type { %struct.IntVectorStruct*, i32, i32, double, double, i32* }
%struct.IntVectorStruct = type { i32, i32, i32* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }

@.str = private unnamed_addr constant [21 x i8] c"avg: %f\0Astd dev: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Histogram:\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09length %d appeared %d times\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.HistogramElementStruct* @HistogramElement_new(i32 noundef %0) #0 {
  %2 = alloca %struct.HistogramElementStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HistogramElementStruct*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 noundef 16) #4
  %6 = bitcast i8* %5 to %struct.HistogramElementStruct*
  store %struct.HistogramElementStruct* %6, %struct.HistogramElementStruct** %4, align 8
  %7 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %8 = icmp ne %struct.HistogramElementStruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %2, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %13 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %15 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %17 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %16, i32 0, i32 2
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %17, align 8
  %18 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  store %struct.HistogramElementStruct* %18, %struct.HistogramElementStruct** %2, align 8
  br label %19

19:                                               ; preds = %10, %9
  %20 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %2, align 8
  ret %struct.HistogramElementStruct* %20
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HistogramElement_updateList(%struct.HistogramElementStruct** noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.HistogramElementStruct**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.HistogramElementStruct**, align 8
  %7 = alloca %struct.HistogramElementStruct*, align 8
  %8 = alloca %struct.HistogramElementStruct*, align 8
  %9 = alloca i8, align 1
  store %struct.HistogramElementStruct** %0, %struct.HistogramElementStruct*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.HistogramElementStruct** null, %struct.HistogramElementStruct*** %6, align 8
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %7, align 8
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %8, align 8
  store i8 0, i8* %9, align 1
  %10 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %4, align 8
  store %struct.HistogramElementStruct** %10, %struct.HistogramElementStruct*** %6, align 8
  %11 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %4, align 8
  %12 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %11, align 8
  store %struct.HistogramElementStruct* %12, %struct.HistogramElementStruct** %7, align 8
  br label %13

13:                                               ; preds = %55, %2
  %14 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %15 = icmp ne %struct.HistogramElementStruct* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %13
  %17 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %18 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %24 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %23, i32 0, i32 2
  store %struct.HistogramElementStruct** %24, %struct.HistogramElementStruct*** %6, align 8
  br label %55

25:                                               ; preds = %16
  %26 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %27 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %33 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i8 1, i8* %9, align 1
  br label %59

36:                                               ; preds = %25
  %37 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %38 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.HistogramElementStruct* @HistogramElement_new(i32 noundef %43)
  store %struct.HistogramElementStruct* %44, %struct.HistogramElementStruct** %8, align 8
  %45 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %8, align 8
  %46 = icmp ne %struct.HistogramElementStruct* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i1 false, i1* %3, align 1
  br label %72

48:                                               ; preds = %42
  %49 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %50 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %8, align 8
  %51 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %50, i32 0, i32 2
  store %struct.HistogramElementStruct* %49, %struct.HistogramElementStruct** %51, align 8
  %52 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %8, align 8
  %53 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %6, align 8
  store %struct.HistogramElementStruct* %52, %struct.HistogramElementStruct** %53, align 8
  store i8 1, i8* %9, align 1
  br label %59

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %57 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %56, i32 0, i32 2
  %58 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %57, align 8
  store %struct.HistogramElementStruct* %58, %struct.HistogramElementStruct** %7, align 8
  br label %13, !llvm.loop !4

59:                                               ; preds = %48, %31, %13
  %60 = load i8, i8* %9, align 1
  %61 = trunc i8 %60 to i1
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.HistogramElementStruct* @HistogramElement_new(i32 noundef %63)
  %65 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %6, align 8
  store %struct.HistogramElementStruct* %64, %struct.HistogramElementStruct** %65, align 8
  %66 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %6, align 8
  %67 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %66, align 8
  %68 = icmp eq %struct.HistogramElementStruct* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i1 false, i1* %3, align 1
  br label %72

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %59
  store i1 true, i1* %3, align 1
  br label %72

72:                                               ; preds = %71, %69, %47
  %73 = load i1, i1* %3, align 1
  ret i1 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.StatsStruct* @Stats_new() #0 {
  %1 = alloca %struct.StatsStruct*, align 8
  %2 = alloca %struct.StatsStruct*, align 8
  %3 = call noalias i8* @malloc(i64 noundef 40) #4
  %4 = bitcast i8* %3 to %struct.StatsStruct*
  store %struct.StatsStruct* %4, %struct.StatsStruct** %2, align 8
  %5 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %6 = icmp ne %struct.StatsStruct* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %0
  %8 = call %struct.IntVectorStruct* @IntVector_new(i32 noundef 16)
  %9 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %10 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %9, i32 0, i32 0
  store %struct.IntVectorStruct* %8, %struct.IntVectorStruct** %10, align 8
  %11 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %12 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %11, i32 0, i32 3
  store double 0.000000e+00, double* %12, align 8
  %13 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %14 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %13, i32 0, i32 4
  store double 0.000000e+00, double* %14, align 8
  %15 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %16 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %15, i32 0, i32 1
  store i32 2147483647, i32* %16, align 8
  %17 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %18 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %20 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %22 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %21, i32 0, i32 0
  %23 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %22, align 8
  %24 = icmp ne %struct.IntVectorStruct* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  store %struct.StatsStruct* %26, %struct.StatsStruct** %1, align 8
  br label %31

27:                                               ; preds = %7
  %28 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %29 = bitcast %struct.StatsStruct* %28 to i8*
  call void @free(i8* noundef %29) #4
  store %struct.StatsStruct* null, %struct.StatsStruct** %1, align 8
  br label %31

30:                                               ; preds = %0
  store %struct.StatsStruct* null, %struct.StatsStruct** %1, align 8
  br label %31

31:                                               ; preds = %30, %27, %25
  %32 = load %struct.StatsStruct*, %struct.StatsStruct** %1, align 8
  ret %struct.StatsStruct* %32
}

declare dso_local %struct.IntVectorStruct* @IntVector_new(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stats_delete(%struct.StatsStruct* noundef %0) #0 {
  %2 = alloca %struct.StatsStruct*, align 8
  store %struct.StatsStruct* %0, %struct.StatsStruct** %2, align 8
  %3 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %4 = icmp ne %struct.StatsStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %7 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %6, i32 0, i32 0
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %7, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %12 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %11, i32 0, i32 0
  %13 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %12, align 8
  %14 = bitcast %struct.IntVectorStruct* %13 to i8*
  call void @free(i8* noundef %14) #4
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %17 = bitcast %struct.StatsStruct* %16 to i8*
  call void @free(i8* noundef %17) #4
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %0, %struct.NodePtrVecStruct* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.StatsStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.StatsStruct* %0, %struct.StatsStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  %7 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %8 = icmp ne %struct.StatsStruct* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %11 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %10, i32 0, i32 0
  %12 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %11, align 8
  %13 = icmp ne %struct.IntVectorStruct* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %16 = icmp ne %struct.NodePtrVecStruct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %9, %2
  store i1 false, i1* %3, align 1
  br label %47

18:                                               ; preds = %14
  %19 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %20 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %24 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %30 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %34 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %40 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %43 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %42, i32 0, i32 0
  %44 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef %44, i32 noundef %45)
  store i1 %46, i1* %3, align 1
  br label %47

47:                                               ; preds = %41, %17
  %48 = load i1, i1* %3, align 1
  ret i1 %48
}

declare dso_local zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stats_calculate(%struct.StatsStruct* noundef %0) #0 {
  %2 = alloca %struct.StatsStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.StatsStruct* %0, %struct.StatsStruct** %2, align 8
  %7 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %8 = icmp ne %struct.StatsStruct* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %11 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %10, i32 0, i32 0
  %12 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %11, align 8
  %13 = icmp ne %struct.IntVectorStruct* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %16 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %15, i32 0, i32 0
  %17 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %16, align 8
  %18 = icmp eq %struct.IntVectorStruct* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %1
  br label %145

20:                                               ; preds = %14
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %22 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = call noalias i8* @calloc(i64 noundef %25, i64 noundef 4) #4
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %29 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %31 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %145

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %78, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %39 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %38, i32 0, i32 0
  %40 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %39, align 8
  %41 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %36
  %45 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %46 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %45, i32 0, i32 0
  %47 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %46, align 8
  %48 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %44
  %56 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %57 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %56, i32 0, i32 0
  %58 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %57, align 8
  %59 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sitofp i32 %65 to double
  %67 = load double, double* %5, align 8
  %68 = fadd double %67, %66
  store double %68, double* %5, align 8
  %69 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %70 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %55, %44
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %36, !llvm.loop !6

81:                                               ; preds = %36
  %82 = load i32, i32* %3, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load double, double* %5, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %85, %87
  %89 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %90 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %89, i32 0, i32 3
  store double %88, double* %90, align 8
  br label %91

91:                                               ; preds = %84, %81
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %131, %91
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %95 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %94, i32 0, i32 0
  %96 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %95, align 8
  %97 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %92
  %101 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %102 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %101, i32 0, i32 0
  %103 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %102, align 8
  %104 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %100
  %112 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %113 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %112, i32 0, i32 0
  %114 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %113, align 8
  %115 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sitofp i32 %120 to double
  %122 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %123 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %122, i32 0, i32 3
  %124 = load double, double* %123, align 8
  %125 = fsub double %121, %124
  store double %125, double* %6, align 8
  %126 = load double, double* %6, align 8
  %127 = load double, double* %6, align 8
  %128 = load double, double* %5, align 8
  %129 = call double @llvm.fmuladd.f64(double %126, double %127, double %128)
  store double %129, double* %5, align 8
  br label %130

130:                                              ; preds = %111, %100
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %92, !llvm.loop !7

134:                                              ; preds = %92
  %135 = load i32, i32* %3, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load double, double* %5, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %138, %140
  %142 = call double @sqrt(double noundef %141) #4
  %143 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %144 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %143, i32 0, i32 4
  store double %142, double* %144, align 8
  br label %145

145:                                              ; preds = %19, %34, %137, %134
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testStats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.StatsStruct*, align 8
  %3 = alloca %struct.NodePtrVecStruct, align 8
  %4 = call %struct.StatsStruct* @Stats_new()
  store %struct.StatsStruct* %4, %struct.StatsStruct** %2, align 8
  store i32 2, i32* %1, align 4
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %12 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %11, %struct.NodePtrVecStruct* noundef %3)
  br label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %5, !llvm.loop !8

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %19 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %18, %struct.NodePtrVecStruct* noundef %3)
  %20 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %22 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %21, %struct.NodePtrVecStruct* noundef %3)
  %23 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %23, align 8
  %24 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %25 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %24, %struct.NodePtrVecStruct* noundef %3)
  %26 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 6, i32* %26, align 8
  %27 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %28 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %27, %struct.NodePtrVecStruct* noundef %3)
  %29 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %29, align 8
  %30 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %31 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %30, %struct.NodePtrVecStruct* noundef %3)
  %32 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %32, align 8
  %33 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %34 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %33, %struct.NodePtrVecStruct* noundef %3)
  %35 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %37 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %36, %struct.NodePtrVecStruct* noundef %3)
  %38 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %38, align 8
  %39 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %40 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %39, %struct.NodePtrVecStruct* noundef %3)
  %41 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 6, i32* %41, align 8
  %42 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %43 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %42, %struct.NodePtrVecStruct* noundef %3)
  %44 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %44, align 8
  %45 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %46 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %45, %struct.NodePtrVecStruct* noundef %3)
  %47 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %47, align 8
  %48 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %49 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %48, %struct.NodePtrVecStruct* noundef %3)
  %50 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  call void @Stats_calculate(%struct.StatsStruct* noundef %50)
  %51 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %52 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %51, i32 0, i32 3
  %53 = load double, double* %52, align 8
  %54 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %55 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %54, i32 0, i32 4
  %56 = load double, double* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double noundef %53, double noundef %56)
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %60 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %78, %16
  %63 = load i32, i32* %1, align 4
  %64 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %65 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %1, align 4
  %70 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %71 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 noundef %69, i32 noundef %76)
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %62, !llvm.loop !9

81:                                               ; preds = %62
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
