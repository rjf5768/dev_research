; ModuleID = './statistics.ll'
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
@str = private unnamed_addr constant [11 x i8] c"Histogram:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.HistogramElementStruct* @HistogramElement_new(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %3 = bitcast i8* %2 to %struct.HistogramElementStruct*
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %1
  br label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %3, i64 0, i32 0
  store i32 %0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %3, i64 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %3, i64 0, i32 2
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %8, align 8
  br label %9

9:                                                ; preds = %5, %4
  %.0 = phi %struct.HistogramElementStruct* [ %3, %5 ], [ null, %4 ]
  ret %struct.HistogramElementStruct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HistogramElement_updateList(%struct.HistogramElementStruct** nocapture noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %28, %2
  %.03.in = phi %struct.HistogramElementStruct** [ %0, %2 ], [ %29, %28 ]
  %.02 = phi %struct.HistogramElementStruct** [ %0, %2 ], [ %.1, %28 ]
  %.03 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %.03.in, align 8
  %.not = icmp eq %struct.HistogramElementStruct* %.03, null
  br i1 %.not, label %.loopexit, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %.03, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %.03, i64 0, i32 2
  br label %28

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %.03, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %.03, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  br label %30

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %.03, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = call %struct.HistogramElementStruct* @HistogramElement_new(i32 noundef %1)
  %.not9 = icmp eq %struct.HistogramElementStruct* %23, null
  br i1 %.not9, label %24, label %25

24:                                               ; preds = %22
  br label %37

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %23, i64 0, i32 2
  store %struct.HistogramElementStruct* %.03, %struct.HistogramElementStruct** %26, align 8
  store %struct.HistogramElementStruct* %23, %struct.HistogramElementStruct** %.02, align 8
  br label %30

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %8
  %.1 = phi %struct.HistogramElementStruct** [ %9, %8 ], [ %.02, %27 ]
  %29 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %.03, i64 0, i32 2
  br label %3, !llvm.loop !4

.loopexit:                                        ; preds = %3
  br label %30

30:                                               ; preds = %.loopexit, %25, %14
  %.01 = phi i1 [ true, %14 ], [ true, %25 ], [ false, %.loopexit ]
  br i1 %.01, label %36, label %31

31:                                               ; preds = %30
  %32 = call %struct.HistogramElementStruct* @HistogramElement_new(i32 noundef %1)
  store %struct.HistogramElementStruct* %32, %struct.HistogramElementStruct** %.02, align 8
  %33 = icmp eq %struct.HistogramElementStruct* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %36, %34, %24
  %.0 = phi i1 [ true, %36 ], [ false, %34 ], [ false, %24 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.StatsStruct* @Stats_new() #0 {
  %1 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #5
  %2 = bitcast i8* %1 to %struct.StatsStruct*
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %15, label %3

3:                                                ; preds = %0
  %4 = call %struct.IntVectorStruct* @IntVector_new(i32 noundef 16) #5
  %5 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 0
  store %struct.IntVectorStruct* %4, %struct.IntVectorStruct** %5, align 8
  %6 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 3
  store double 0.000000e+00, double* %6, align 8
  %7 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 4
  store double 0.000000e+00, double* %7, align 8
  %8 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 1
  store i32 2147483647, i32* %8, align 8
  %9 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 5
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 0
  %12 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %11, align 8
  %.not1 = icmp eq %struct.IntVectorStruct* %12, null
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %3
  br label %16

14:                                               ; preds = %3
  call void @free(i8* noundef %1) #5
  br label %16

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %15, %14, %13
  %.0 = phi %struct.StatsStruct* [ %2, %13 ], [ null, %14 ], [ null, %15 ]
  ret %struct.StatsStruct* %.0
}

declare dso_local %struct.IntVectorStruct* @IntVector_new(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stats_delete(%struct.StatsStruct* noundef %0) #0 {
  %.not = icmp eq %struct.StatsStruct* %0, null
  br i1 %.not, label %10, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %4 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %.not1 = icmp eq %struct.IntVectorStruct* %4, null
  br i1 %.not1, label %8, label %5

5:                                                ; preds = %2
  %6 = bitcast %struct.StatsStruct* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7) #5
  br label %8

8:                                                ; preds = %5, %2
  %9 = bitcast %struct.StatsStruct* %0 to i8*
  call void @free(i8* noundef %9) #5
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %0, %struct.NodePtrVecStruct* noundef readonly %1) #0 {
  %.not = icmp eq %struct.StatsStruct* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %5 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %.not1 = icmp eq %struct.IntVectorStruct* %5, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %3
  %.not2 = icmp eq %struct.NodePtrVecStruct* %1, null
  br i1 %.not2, label %7, label %8

7:                                                ; preds = %6, %3, %2
  br label %26

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 1
  store i32 %10, i32* %15, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %10, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 2
  store i32 %10, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %24 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %23, align 8
  %25 = call zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef %24, i32 noundef %10) #5
  br label %26

26:                                               ; preds = %22, %7
  %.0 = phi i1 [ %25, %22 ], [ false, %7 ]
  ret i1 %.0
}

declare dso_local zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stats_calculate(%struct.StatsStruct* noundef %0) #0 {
  %.not = icmp eq %struct.StatsStruct* %0, null
  br i1 %.not, label %9, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %4 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %.not3 = icmp eq %struct.IntVectorStruct* %4, null
  br i1 %.not3, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %7 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %6, align 8
  %8 = icmp eq %struct.IntVectorStruct* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %2, %1
  br label %97

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = call noalias i8* @calloc(i64 noundef %14, i64 noundef 4) #5
  %16 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 5
  %17 = bitcast i32** %16 to i8**
  store i8* %15, i8** %17, align 8
  %.not4 = icmp eq i8* %15, null
  br i1 %.not4, label %18, label %19

18:                                               ; preds = %10
  br label %97

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %52, %19
  %.01 = phi i32 [ 0, %19 ], [ %53, %52 ]
  %.0 = phi double [ undef, %19 ], [ %.1, %52 ]
  %21 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %22 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %21, align 8
  %23 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %22, i64 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %.01, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %28 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %27, align 8
  %29 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %28, i64 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %37 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %36, align 8
  %38 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %37, i64 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to double
  %44 = fadd double %.0, %43
  %45 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %35, %26
  %.1 = phi double [ %44, %35 ], [ %.0, %26 ]
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.01, 1
  br label %20, !llvm.loop !6

54:                                               ; preds = %20
  %.not5 = icmp eq i32 %.01, 0
  br i1 %.not5, label %59, label %55

55:                                               ; preds = %54
  %56 = sitofp i32 %.01 to double
  %57 = fdiv double %.0, %56
  %58 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 3
  store double %57, double* %58, align 8
  br label %59

59:                                               ; preds = %55, %54
  br label %60

60:                                               ; preds = %89, %59
  %.12 = phi i32 [ 0, %59 ], [ %90, %89 ]
  %.2 = phi double [ 0.000000e+00, %59 ], [ %.3, %89 ]
  %61 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %62 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %61, align 8
  %63 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %62, i64 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %.12, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %68 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %67, align 8
  %69 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %68, i64 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = zext i32 %.12 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 0
  %77 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %76, align 8
  %78 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %77, i64 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = zext i32 %.12 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to double
  %84 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 3
  %85 = load double, double* %84, align 8
  %86 = fsub double %83, %85
  %87 = call double @llvm.fmuladd.f64(double %86, double %86, double %.2)
  br label %88

88:                                               ; preds = %75, %66
  %.3 = phi double [ %87, %75 ], [ %.2, %66 ]
  br label %89

89:                                               ; preds = %88
  %90 = add nuw nsw i32 %.12, 1
  br label %60, !llvm.loop !7

91:                                               ; preds = %60
  %.not6 = icmp eq i32 %.12, 0
  br i1 %.not6, label %97, label %92

92:                                               ; preds = %91
  %93 = sitofp i32 %.12 to double
  %94 = fdiv double %.2, %93
  %95 = call double @sqrt(double noundef %94) #5
  %96 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %0, i64 0, i32 4
  store double %95, double* %96, align 8
  br label %97

97:                                               ; preds = %92, %91, %18, %9
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testStats() #0 {
  %1 = alloca %struct.NodePtrVecStruct, align 8
  %2 = call %struct.StatsStruct* @Stats_new()
  br label %3

3:                                                ; preds = %8, %0
  %.0 = phi i32 [ 2, %0 ], [ %9, %8 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 %.0, i32* %6, align 8
  %7 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  br label %8

8:                                                ; preds = %5
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %13 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %15 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 5, i32* %15, align 8
  %16 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %17 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 6, i32* %17, align 8
  %18 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %19 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 5, i32* %19, align 8
  %20 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %21 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 5, i32* %21, align 8
  %22 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %23 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %25 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 5, i32* %25, align 8
  %26 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %27 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 6, i32* %27, align 8
  %28 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %29 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 5, i32* %29, align 8
  %30 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  %31 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  store i32 5, i32* %31, align 8
  %32 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* noundef %2, %struct.NodePtrVecStruct* noundef nonnull %1)
  call void @Stats_calculate(%struct.StatsStruct* noundef %2)
  %33 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 3
  %34 = load double, double* %33, align 8
  %35 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 4
  %36 = load double, double* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double noundef %34, double noundef %36) #5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 1
  %39 = load i32, i32* %38, align 8
  br label %40

40:                                               ; preds = %51, %10
  %.1 = phi i32 [ %39, %10 ], [ %52, %51 ]
  %41 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %.1, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %2, i64 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = sext i32 %.1 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.1, i32 noundef %49) #5
  br label %51

51:                                               ; preds = %44
  %52 = add nsw i32 %.1, 1
  br label %40, !llvm.loop !9

53:                                               ; preds = %40
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind }
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
