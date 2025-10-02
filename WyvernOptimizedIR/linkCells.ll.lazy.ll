; ModuleID = './linkCells.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/linkCells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], i32* }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.AtomsSt = type { i32, i32, i32*, i32*, [3 x double]*, [3 x double]*, [3 x double]*, double* }

@.str = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/linkCells.c\00", align 1
@__PRETTY_FUNCTION__.initLinkCells = private unnamed_addr constant [48 x i8] c"LinkCell *initLinkCells(const Domain *, real_t)\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"(ll->gridSize[0] >= 2) && (ll->gridSize[1] >= 2) && (ll->gridSize[2] >= 2)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"iBox >= 0\00", align 1
@__PRETTY_FUNCTION__.getBoxFromTuple = private unnamed_addr constant [47 x i8] c"int getBoxFromTuple(LinkCell *, int, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"iBox < boxes->nTotalBoxes\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"boxes->nAtoms[jBox] < MAXATOMS\00", align 1
@__PRETTY_FUNCTION__.moveAtom = private unnamed_addr constant [50 x i8] c"void moveAtom(LinkCell *, Atoms *, int, int, int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LinkCellSt* @initLinkCells(%struct.DomainSt* noundef readonly %0, double noundef %1) #0 {
  %.not = icmp eq %struct.DomainSt* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.initLinkCells, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %6 = call i8* @comdMalloc(i64 noundef 128)
  br label %7

7:                                                ; preds = %55, %5
  %.01 = phi i32 [ 0, %5 ], [ %56, %55 ]
  %8 = icmp ult i32 %.01, 3
  br i1 %8, label %9, label %57

9:                                                ; preds = %7
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 5, i64 %10
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds i8, i8* %6, i64 24
  %14 = bitcast i8* %13 to [3 x double]*
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 %15
  store double %12, double* %16, align 8
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 6, i64 %17
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds i8, i8* %6, i64 48
  %21 = bitcast i8* %20 to [3 x double]*
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 %22
  store double %19, double* %23, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 7, i64 %24
  %26 = load double, double* %25, align 8
  %27 = fdiv double %26, %1
  %28 = fptosi double %27 to i32
  %29 = bitcast i8* %6 to [3 x i32]*
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 7, i64 %32
  %34 = load double, double* %33, align 8
  %35 = bitcast i8* %6 to [3 x i32]*
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %34, %39
  %41 = getelementptr inbounds i8, i8* %6, i64 72
  %42 = bitcast i8* %41 to [3 x double]*
  %43 = zext i32 %.01 to i64
  %44 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 %43
  store double %40, double* %44, align 8
  %45 = getelementptr inbounds i8, i8* %6, i64 72
  %46 = bitcast i8* %45 to [3 x double]*
  %47 = zext i32 %.01 to i64
  %48 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fdiv double 1.000000e+00, %49
  %51 = getelementptr inbounds i8, i8* %6, i64 96
  %52 = bitcast i8* %51 to [3 x double]*
  %53 = zext i32 %.01 to i64
  %54 = getelementptr inbounds [3 x double], [3 x double]* %52, i64 0, i64 %53
  store double %50, double* %54, align 8
  br label %55

55:                                               ; preds = %9
  %56 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !4

57:                                               ; preds = %7
  %58 = bitcast i8* %6 to i32*
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds i8, i8* %6, i64 4
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = getelementptr inbounds i8, i8* %6, i64 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = getelementptr inbounds i8, i8* %6, i64 12
  %69 = bitcast i8* %68 to i32*
  store i32 %67, i32* %69, align 4
  %70 = bitcast i8* %6 to i32*
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 2
  %73 = getelementptr inbounds i8, i8* %6, i64 4
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds i8, i8* %6, i64 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %75, %78
  %80 = add nsw i32 %79, 2
  %81 = mul nsw i32 %72, %80
  %82 = getelementptr inbounds i8, i8* %6, i64 4
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds i8, i8* %6, i64 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %81, %88
  %90 = shl nsw i32 %89, 1
  %91 = getelementptr inbounds i8, i8* %6, i64 16
  %92 = bitcast i8* %91 to i32*
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds i8, i8* %6, i64 12
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %90
  %97 = getelementptr inbounds i8, i8* %6, i64 20
  %98 = bitcast i8* %97 to i32*
  store i32 %96, i32* %98, align 4
  %99 = sext i32 %96 to i64
  %100 = shl nsw i64 %99, 2
  %101 = call i8* @comdMalloc(i64 noundef %100)
  %102 = getelementptr inbounds i8, i8* %6, i64 120
  %103 = bitcast i8* %102 to i8**
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %115, %57
  %.0 = phi i32 [ 0, %57 ], [ %116, %115 ]
  %105 = getelementptr inbounds i8, i8* %6, i64 20
  %106 = bitcast i8* %105 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %.0, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = getelementptr inbounds i8, i8* %6, i64 120
  %111 = bitcast i8* %110 to i32**
  %112 = load i32*, i32** %111, align 8
  %113 = zext i32 %.0 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %109
  %116 = add nuw nsw i32 %.0, 1
  br label %104, !llvm.loop !6

117:                                              ; preds = %104
  %118 = bitcast i8* %6 to i32*
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = getelementptr inbounds i8, i8* %6, i64 4
  %123 = bitcast i8* %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = getelementptr inbounds i8, i8* %6, i64 8
  %128 = bitcast i8* %127 to i32*
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %133

132:                                              ; preds = %126, %121, %117
  call void @__assert_fail(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.initLinkCells, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

133:                                              ; preds = %131
  %134 = bitcast i8* %6 to %struct.LinkCellSt*
  ret %struct.LinkCellSt* %134

UnifiedUnreachableBlock:                          ; preds = %132, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = call noalias i8* @malloc(i64 noundef %0) #10
  ret i8* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroyLinkCells(%struct.LinkCellSt** noundef %0) #0 {
  %.not = icmp eq %struct.LinkCellSt** %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %13

3:                                                ; preds = %1
  %4 = load %struct.LinkCellSt*, %struct.LinkCellSt** %0, align 8
  %.not1 = icmp eq %struct.LinkCellSt* %4, null
  br i1 %.not1, label %5, label %6

5:                                                ; preds = %3
  br label %13

6:                                                ; preds = %3
  %7 = load %struct.LinkCellSt*, %struct.LinkCellSt** %0, align 8
  %8 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %7, i64 0, i32 8
  %9 = bitcast i32** %8 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @comdFree(i8* noundef %10)
  %11 = bitcast %struct.LinkCellSt** %0 to i8**
  %12 = load i8*, i8** %11, align 8
  call void @comdFree(i8* noundef %12)
  store %struct.LinkCellSt* null, %struct.LinkCellSt** %0, align 8
  br label %13

13:                                               ; preds = %6, %5, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getNeighborBoxes(%struct.LinkCellSt* noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @getTuple(%struct.LinkCellSt* noundef %0, i32 noundef %1, i32* noundef nonnull %4, i32* noundef nonnull %5, i32* noundef nonnull %6)
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  br label %9

9:                                                ; preds = %35, %3
  %.03 = phi i32 [ 0, %3 ], [ %.1, %35 ]
  %.02 = phi i32 [ %8, %3 ], [ %36, %35 ]
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  %.not = icmp sgt i32 %.02, %11
  br i1 %.not, label %37, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  br label %15

15:                                               ; preds = %32, %12
  %.1 = phi i32 [ %.03, %12 ], [ %.2, %32 ]
  %.01 = phi i32 [ %14, %12 ], [ %33, %32 ]
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %.not4 = icmp sgt i32 %.01, %17
  br i1 %.not4, label %34, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  br label %21

21:                                               ; preds = %28, %18
  %.2 = phi i32 [ %.1, %18 ], [ %29, %28 ]
  %.0 = phi i32 [ %20, %18 ], [ %30, %28 ]
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %.not5 = icmp sgt i32 %.0, %23
  br i1 %.not5, label %31, label %24

24:                                               ; preds = %21
  %25 = call i32 @getBoxFromTuple(%struct.LinkCellSt* noundef %0, i32 noundef %.02, i32 noundef %.01, i32 noundef %.0)
  %26 = sext i32 %.2 to i64
  %27 = getelementptr inbounds i32, i32* %2, i64 %26
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24
  %29 = add nsw i32 %.2, 1
  %30 = add nsw i32 %.0, 1
  br label %21, !llvm.loop !7

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %.01, 1
  br label %15, !llvm.loop !8

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.02, 1
  br label %9, !llvm.loop !9

37:                                               ; preds = %9
  ret i32 %.03
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @getTuple(%struct.LinkCellSt* noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4) #2 {
  %6 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load i32, i32* %6, align 4
  %12 = srem i32 %1, %11
  %13 = sdiv i32 %1, %11
  %14 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = srem i32 %13, %15
  %17 = sdiv i32 %13, %15
  br label %132

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %1, %20
  %22 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = shl nsw i32 %23, 1
  %25 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %24, %26
  %28 = icmp slt i32 %21, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %31, %33
  %35 = icmp slt i32 %21, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %46

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %39, %41
  %43 = sub nsw i32 %21, %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  br label %46

46:                                               ; preds = %37, %36
  %.08 = phi i32 [ 0, %36 ], [ %45, %37 ]
  %.0 = phi i32 [ %21, %36 ], [ %43, %37 ]
  %47 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %.0, %48
  %50 = add nsw i32 %49, 1
  %51 = sdiv i32 %.0, %48
  %52 = add nsw i32 %51, 1
  br label %128

53:                                               ; preds = %18
  %54 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = shl nsw i32 %55, 1
  %57 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %58, %59
  %61 = add nsw i32 %60, 2
  %62 = mul nsw i32 %56, %61
  %63 = icmp slt i32 %21, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %66 = load i32, i32* %65, align 4
  %.neg13 = mul i32 %66, -2
  %67 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %68 = load i32, i32* %67, align 4
  %.neg14 = mul i32 %.neg13, %68
  %69 = add i32 %.neg14, %21
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 2
  %72 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %71, %73
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %87

77:                                               ; preds = %64
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 2
  %80 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %79, %81
  %83 = sub nsw i32 %69, %82
  %84 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  br label %87

87:                                               ; preds = %77, %76
  %.04 = phi i32 [ 0, %76 ], [ %86, %77 ]
  %.1 = phi i32 [ %69, %76 ], [ %83, %77 ]
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 2
  %90 = srem i32 %.1, %89
  %91 = add nsw i32 %88, 2
  %92 = sdiv i32 %.1, %91
  %93 = add nsw i32 %92, 1
  br label %127

94:                                               ; preds = %53
  %95 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %96 = load i32, i32* %95, align 4
  %.neg = mul i32 %96, -2
  %97 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %98, %99
  %101 = add nsw i32 %100, 2
  %.neg12 = mul i32 %.neg, %101
  %102 = add i32 %.neg12, %21
  %103 = add nsw i32 %99, 2
  %104 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 2
  %107 = mul nsw i32 %103, %106
  %108 = icmp slt i32 %102, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %121

110:                                              ; preds = %94
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 2
  %113 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 2
  %116 = mul nsw i32 %112, %115
  %117 = sub nsw i32 %102, %116
  %118 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  br label %121

121:                                              ; preds = %110, %109
  %.01 = phi i32 [ 0, %109 ], [ %120, %110 ]
  %.2 = phi i32 [ %102, %109 ], [ %117, %110 ]
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 2
  %124 = srem i32 %.2, %123
  %125 = add nsw i32 %122, 2
  %126 = sdiv i32 %.2, %125
  br label %127

127:                                              ; preds = %121, %87
  %.19 = phi i32 [ %90, %87 ], [ %124, %121 ]
  %.15 = phi i32 [ %.04, %87 ], [ %126, %121 ]
  %.12 = phi i32 [ %93, %87 ], [ %.01, %121 ]
  br label %128

128:                                              ; preds = %127, %46
  %.210 = phi i32 [ %.08, %46 ], [ %.19, %127 ]
  %.26 = phi i32 [ %50, %46 ], [ %.15, %127 ]
  %.23 = phi i32 [ %52, %46 ], [ %.12, %127 ]
  %129 = add nsw i32 %.210, -1
  %130 = add nsw i32 %.26, -1
  %131 = add nsw i32 %.23, -1
  br label %132

132:                                              ; preds = %128, %10
  %.311 = phi i32 [ %12, %10 ], [ %129, %128 ]
  %.37 = phi i32 [ %16, %10 ], [ %130, %128 ]
  %.3 = phi i32 [ %17, %10 ], [ %131, %128 ]
  store i32 %.311, i32* %2, align 4
  store i32 %.37, i32* %3, align 4
  store i32 %.3, i32* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getBoxFromTuple(%struct.LinkCellSt* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %9, label %39

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = shl nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %14, %16
  %18 = add nsw i32 %11, %17
  %19 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = shl nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 2
  %24 = mul nsw i32 %21, %23
  %25 = add nsw i32 %18, %24
  %26 = add nsw i32 %22, 2
  %27 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %25, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 2
  %34 = add nsw i32 %2, 1
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %31, %35
  %37 = add nsw i32 %1, 1
  %38 = add nsw i32 %36, %37
  br label %146

39:                                               ; preds = %4
  %40 = icmp eq i32 %3, -1
  br i1 %40, label %41, label %64

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = shl nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = add nsw i32 %43, %49
  %51 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl nsw i32 %52, 1
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 2
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %50, %56
  %58 = add nsw i32 %54, 2
  %59 = add nsw i32 %2, 1
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  %62 = add nsw i32 %1, 1
  %63 = add nsw i32 %61, %62
  br label %145

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, %2
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = shl nsw i32 %72, 1
  %74 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %73, %75
  %77 = add nsw i32 %70, %76
  %78 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 2
  %82 = mul nsw i32 %79, %81
  %83 = add nsw i32 %77, %82
  %84 = add nsw i32 %80, 2
  %85 = mul nsw i32 %84, %3
  %86 = add nsw i32 %83, %85
  %87 = add nsw i32 %1, 1
  %88 = add nsw i32 %86, %87
  br label %144

89:                                               ; preds = %64
  %90 = icmp eq i32 %2, -1
  br i1 %90, label %91, label %107

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = shl nsw i32 %95, 1
  %97 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %96, %98
  %100 = add nsw i32 %93, %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 2
  %103 = mul nsw i32 %102, %3
  %104 = add nsw i32 %100, %103
  %105 = add nsw i32 %1, 1
  %106 = add nsw i32 %104, %105
  br label %143

107:                                              ; preds = %89
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, %1
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %114, %116
  %118 = add nsw i32 %112, %117
  %119 = mul nsw i32 %114, %3
  %120 = add nsw i32 %118, %119
  %121 = add nsw i32 %120, %2
  br label %142

122:                                              ; preds = %107
  %123 = icmp eq i32 %1, -1
  br i1 %123, label %124, label %132

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, %3
  %130 = add nsw i32 %126, %129
  %131 = add nsw i32 %130, %2
  br label %141

132:                                              ; preds = %122
  %133 = load i32, i32* %5, align 4
  %134 = mul nsw i32 %133, %2
  %135 = add nsw i32 %134, %1
  %136 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %133, %137
  %139 = mul nsw i32 %138, %3
  %140 = add nsw i32 %135, %139
  br label %141

141:                                              ; preds = %132, %124
  %.0 = phi i32 [ %131, %124 ], [ %140, %132 ]
  br label %142

142:                                              ; preds = %141, %110
  %.1 = phi i32 [ %121, %110 ], [ %.0, %141 ]
  br label %143

143:                                              ; preds = %142, %91
  %.2 = phi i32 [ %106, %91 ], [ %.1, %142 ]
  br label %144

144:                                              ; preds = %143, %68
  %.3 = phi i32 [ %88, %68 ], [ %.2, %143 ]
  br label %145

145:                                              ; preds = %144, %41
  %.4 = phi i32 [ %63, %41 ], [ %.3, %144 ]
  br label %146

146:                                              ; preds = %145, %9
  %.5 = phi i32 [ %38, %9 ], [ %.4, %145 ]
  %147 = icmp sgt i32 %.5, -1
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  br label %150

149:                                              ; preds = %146
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.getBoxFromTuple, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %.5, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %156

155:                                              ; preds = %150
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.getBoxFromTuple, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %154
  ret i32 %.5

UnifiedUnreachableBlock:                          ; preds = %155, %149
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @putAtomInBox(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* nocapture noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) #0 {
  %11 = alloca [3 x double], align 16
  %12 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  store double %4, double* %12, align 16
  %13 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  store double %5, double* %13, align 8
  %14 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  store double %6, double* %14, align 16
  %15 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  %16 = call i32 @getBoxFromCoord(%struct.LinkCellSt* noundef %0, double* noundef nonnull %15)
  %17 = shl nsw i32 %16, 6
  %18 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %17, %22
  %24 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %16, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %27, %10
  %32 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = sext i32 %16 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = sext i32 %23 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %2, i32* %41, align 4
  %42 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = sext i32 %23 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %3, i32* %45, align 4
  %46 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 4
  %47 = load [3 x double]*, [3 x double]** %46, align 8
  %48 = sext i32 %23 to i64
  %49 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 %48, i64 0
  store double %4, double* %49, align 8
  %50 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 4
  %51 = load [3 x double]*, [3 x double]** %50, align 8
  %52 = sext i32 %23 to i64
  %53 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 %52, i64 1
  store double %5, double* %53, align 8
  %54 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 4
  %55 = load [3 x double]*, [3 x double]** %54, align 8
  %56 = sext i32 %23 to i64
  %57 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 %56, i64 2
  store double %6, double* %57, align 8
  %58 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 5
  %59 = load [3 x double]*, [3 x double]** %58, align 8
  %60 = sext i32 %23 to i64
  %61 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 %60, i64 0
  store double %7, double* %61, align 8
  %62 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 5
  %63 = load [3 x double]*, [3 x double]** %62, align 8
  %64 = sext i32 %23 to i64
  %65 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 %64, i64 1
  store double %8, double* %65, align 8
  %66 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 5
  %67 = load [3 x double]*, [3 x double]** %66, align 8
  %68 = sext i32 %23 to i64
  %69 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 %68, i64 2
  store double %9, double* %69, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @getBoxFromCoord(%struct.LinkCellSt* noundef %0, double* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 4, i64 0
  %4 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 5, i64 0
  %5 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 0
  %6 = load double, double* %1, align 8
  %7 = load double, double* %3, align 8
  %8 = fsub double %6, %7
  %9 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 7, i64 0
  %10 = load double, double* %9, align 8
  %11 = fmul double %8, %10
  %12 = call double @llvm.floor.f64(double %11)
  %13 = fptosi double %12 to i32
  %14 = getelementptr inbounds double, double* %1, i64 1
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 4, i64 1
  %17 = load double, double* %16, align 8
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 7, i64 1
  %20 = load double, double* %19, align 8
  %21 = fmul double %18, %20
  %22 = call double @llvm.floor.f64(double %21)
  %23 = fptosi double %22 to i32
  %24 = getelementptr inbounds double, double* %1, i64 2
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 4, i64 2
  %27 = load double, double* %26, align 8
  %28 = fsub double %25, %27
  %29 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 7, i64 2
  %30 = load double, double* %29, align 8
  %31 = fmul double %28, %30
  %32 = call double @llvm.floor.f64(double %31)
  %33 = fptosi double %32 to i32
  %34 = load double, double* %1, align 8
  %35 = load double, double* %4, align 8
  %36 = fcmp olt double %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, %13
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  br label %43

43:                                               ; preds = %40, %37
  %.03 = phi i32 [ %42, %40 ], [ %13, %37 ]
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %43
  %.14 = phi i32 [ %.03, %43 ], [ %45, %44 ]
  %47 = getelementptr inbounds double, double* %1, i64 1
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 5, i64 1
  %50 = load double, double* %49, align 8
  %51 = fcmp olt double %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, %23
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  br label %60

60:                                               ; preds = %56, %52
  %.01 = phi i32 [ %59, %56 ], [ %23, %52 ]
  br label %64

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 1
  %63 = load i32, i32* %62, align 4
  br label %64

64:                                               ; preds = %61, %60
  %.12 = phi i32 [ %.01, %60 ], [ %63, %61 ]
  %65 = getelementptr inbounds double, double* %1, i64 2
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 5, i64 2
  %68 = load double, double* %67, align 8
  %69 = fcmp olt double %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, %33
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  br label %78

78:                                               ; preds = %74, %70
  %.0 = phi i32 [ %77, %74 ], [ %33, %70 ]
  br label %82

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 0, i64 2
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %79, %78
  %.1 = phi i32 [ %.0, %78 ], [ %81, %79 ]
  %83 = call i32 @getBoxFromTuple(%struct.LinkCellSt* noundef %0, i32 noundef %.14, i32 noundef %.12, i32 noundef %.1)
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @moveAtom(%struct.LinkCellSt* nocapture noundef readonly %0, %struct.AtomsSt* nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %7 = load i32*, i32** %6, align 8
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  call void @copyAtom(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %10, i32 noundef %4)
  %11 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %12 = load i32*, i32** %11, align 8
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = sext i32 %4 to i64
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %25

24:                                               ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.moveAtom, i64 0, i64 0)) #9
  unreachable

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = sext i32 %3 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = sext i32 %3 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %.not = icmp eq i32 %36, 0
  br i1 %.not, label %38, label %37

37:                                               ; preds = %25
  call void @copyAtom(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* noundef %1, i32 noundef %36, i32 noundef %3, i32 noundef %2, i32 noundef %3)
  br label %38

38:                                               ; preds = %37, %25
  %39 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, %4
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @copyAtom(%struct.LinkCellSt* nocapture noundef readnone %0, %struct.AtomsSt* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #3 {
  %7 = shl nsw i32 %3, 6
  %8 = add nsw i32 %7, %2
  %9 = shl nsw i32 %5, 6
  %10 = add nsw i32 %9, %4
  %11 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %10 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %10 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 4
  %26 = load [3 x double]*, [3 x double]** %25, align 8
  %27 = sext i32 %10 to i64
  %28 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 %27, i64 0
  %29 = bitcast double* %28 to i8*
  %30 = sext i32 %8 to i64
  %31 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 %30, i64 0
  %32 = bitcast double* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %29, i8* noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false)
  %33 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 5
  %34 = load [3 x double]*, [3 x double]** %33, align 8
  %35 = sext i32 %10 to i64
  %36 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 %35, i64 0
  %37 = bitcast double* %36 to i8*
  %38 = sext i32 %8 to i64
  %39 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 %38, i64 0
  %40 = bitcast double* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %37, i8* noundef nonnull align 8 dereferenceable(24) %40, i64 24, i1 false)
  %41 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 6
  %42 = load [3 x double]*, [3 x double]** %41, align 8
  %43 = sext i32 %10 to i64
  %44 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 %43, i64 0
  %45 = bitcast double* %44 to i8*
  %46 = sext i32 %8 to i64
  %47 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 %46, i64 0
  %48 = bitcast double* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %45, i8* noundef nonnull align 8 dereferenceable(24) %48, i64 24, i1 false)
  %49 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 7
  %50 = load double*, double** %49, align 8
  %51 = sext i32 %10 to i64
  %52 = getelementptr inbounds double, double* %50, i64 %51
  %53 = sext i32 %8 to i64
  %54 = getelementptr inbounds double, double* %50, i64 %53
  %55 = bitcast double* %54 to i64*
  %56 = bitcast double* %52 to i64*
  %57 = load i64, i64* %55, align 8
  store i64 %57, i64* %56, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @updateLinkCells(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* nocapture noundef %1) #0 {
  call void @emptyHaloCells(%struct.LinkCellSt* noundef %0)
  br label %3

3:                                                ; preds = %28, %2
  %.01 = phi i32 [ 0, %2 ], [ %29, %28 ]
  %4 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %.01, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = shl nsw i32 %.01, 6
  br label %9

9:                                                ; preds = %26, %7
  %.0 = phi i32 [ 0, %7 ], [ %.1, %26 ]
  %10 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %.0, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %1, i64 0, i32 4
  %18 = load [3 x double]*, [3 x double]** %17, align 8
  %19 = add nsw i32 %8, %.0
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 %20, i64 0
  %22 = call i32 @getBoxFromCoord(%struct.LinkCellSt* noundef %0, double* noundef %21)
  %.not = icmp eq i32 %22, %.01
  br i1 %.not, label %24, label %23

23:                                               ; preds = %16
  call void @moveAtom(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* noundef %1, i32 noundef %.0, i32 noundef %.01, i32 noundef %22)
  br label %26

24:                                               ; preds = %16
  %25 = add nsw i32 %.0, 1
  br label %26

26:                                               ; preds = %24, %23
  %.1 = phi i32 [ %.0, %23 ], [ %25, %24 ]
  br label %9, !llvm.loop !10

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !11

30:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @emptyHaloCells(%struct.LinkCellSt* nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  br label %4

4:                                                ; preds = %13, %1
  %.0 = phi i32 [ %3, %1 ], [ %14, %13 ]
  %5 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %.0, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !12

15:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @maxOccupancy(%struct.LinkCellSt* nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %24, %1
  %.0 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %5 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %.0, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  br label %22

22:                                               ; preds = %17, %16
  %.in = phi i32* [ %2, %16 ], [ %21, %17 ]
  %23 = load i32, i32* %.in, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !13

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26
  call void @profileStart(i32 noundef 10) #10
  br label %28

28:                                               ; preds = %27
  call void @maxIntParallel(i32* noundef nonnull %2, i32* noundef nonnull %3, i32 noundef 1) #10
  br label %29

29:                                               ; preds = %28
  call void @profileStop(i32 noundef 10) #10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local void @profileStart(i32 noundef) #5

declare dso_local void @maxIntParallel(i32* noundef, i32* noundef, i32 noundef) #5

declare dso_local void @profileStop(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

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
