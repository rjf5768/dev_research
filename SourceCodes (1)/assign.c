; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/assign.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeVCGType = type { %struct._constraintVCGType*, i64, i64, i64, %struct._constraintVCGType*, i64, i64, i64 }
%struct._constraintVCGType = type { i64, i64, i64, i64 }
%struct._nodeHCGType = type { i64*, i64, i64 }

@channelNets = external dso_local global i64, align 8
@costMatrix = dso_local global i64** null, align 8
@channelTracks = external dso_local global i64, align 8
@tracksNotPref = dso_local global i64* null, align 8
@tracksTopNotPref = dso_local global i64* null, align 8
@tracksBotNotPref = dso_local global i64* null, align 8
@tracksNoHCV = dso_local global i64* null, align 8
@tracksAssign = dso_local global i64* null, align 8
@netsAssign = dso_local global i64* null, align 8
@netsAssignCopy = dso_local global i64* null, align 8
@FIRST = external dso_local global i64*, align 8
@channelDensityColumn = external dso_local global i64, align 8
@LAST = external dso_local global i64*, align 8
@CROSSING = external dso_local global i64*, align 8
@VCG = external dso_local global %struct._nodeVCGType*, align 8
@HCG = external dso_local global %struct._nodeHCGType*, align 8
@channelColumns = external dso_local global i64, align 8
@TOP = external dso_local global i64*, align 8
@BOT = external dso_local global i64*, align 8
@.str = private unnamed_addr constant [15 x i8] c"! netsCrossing\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/assign.c\00", align 1
@__PRETTY_FUNCTION__.RightNetsAssign = private unnamed_addr constant [27 x i8] c"void RightNetsAssign(void)\00", align 1
@__PRETTY_FUNCTION__.LeftNetsAssign = private unnamed_addr constant [26 x i8] c"void LeftNetsAssign(void)\00", align 1
@cardTopNotPref = dso_local global i64 0, align 8
@cardBotNotPref = dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"(select >= 1) && (select <= channelNets)\00", align 1
@__PRETTY_FUNCTION__.Assign = private unnamed_addr constant [59 x i8] c"void Assign(nodeVCGType *, unsigned long *, unsigned long)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tracks != 0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"trackAssign\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@__PRETTY_FUNCTION__.Select = private unnamed_addr constant [93 x i8] c"void Select(nodeVCGType *, nodeHCGType *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@cardNotPref = dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"mult >= 0\00", align 1
@__PRETTY_FUNCTION__.BuildCostMatrix = private unnamed_addr constant [85 x i8] c"void BuildCostMatrix(nodeVCGType *, nodeHCGType *, unsigned long *, unsigned long *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocAssign() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @channelNets, align 8
  %3 = add i64 %2, 1
  %4 = mul i64 %3, 8
  %5 = call noalias i8* @malloc(i64 noundef %4) #4
  %6 = bitcast i8* %5 to i64**
  store i64** %6, i64*** @costMatrix, align 8
  store i64 1, i64* %1, align 8
  br label %7

7:                                                ; preds = %20, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @channelNets, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i64, i64* @channelTracks, align 8
  %13 = add i64 %12, 2
  %14 = mul i64 %13, 8
  %15 = call noalias i8* @malloc(i64 noundef %14) #4
  %16 = bitcast i8* %15 to i64*
  %17 = load i64**, i64*** @costMatrix, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds i64*, i64** %17, i64 %18
  store i64* %16, i64** %19, align 8
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %1, align 8
  br label %7, !llvm.loop !4

23:                                               ; preds = %7
  %24 = load i64, i64* @channelTracks, align 8
  %25 = add i64 %24, 2
  %26 = mul i64 %25, 8
  %27 = call noalias i8* @malloc(i64 noundef %26) #4
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** @tracksNotPref, align 8
  %29 = load i64, i64* @channelTracks, align 8
  %30 = add i64 %29, 2
  %31 = mul i64 %30, 8
  %32 = call noalias i8* @malloc(i64 noundef %31) #4
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** @tracksTopNotPref, align 8
  %34 = load i64, i64* @channelTracks, align 8
  %35 = add i64 %34, 2
  %36 = mul i64 %35, 8
  %37 = call noalias i8* @malloc(i64 noundef %36) #4
  %38 = bitcast i8* %37 to i64*
  store i64* %38, i64** @tracksBotNotPref, align 8
  %39 = load i64, i64* @channelTracks, align 8
  %40 = add i64 %39, 2
  %41 = mul i64 %40, 8
  %42 = call noalias i8* @malloc(i64 noundef %41) #4
  %43 = bitcast i8* %42 to i64*
  store i64* %43, i64** @tracksNoHCV, align 8
  %44 = load i64, i64* @channelTracks, align 8
  %45 = add i64 %44, 2
  %46 = mul i64 %45, 8
  %47 = call noalias i8* @malloc(i64 noundef %46) #4
  %48 = bitcast i8* %47 to i64*
  store i64* %48, i64** @tracksAssign, align 8
  %49 = load i64, i64* @channelNets, align 8
  %50 = add i64 %49, 1
  %51 = mul i64 %50, 8
  %52 = call noalias i8* @malloc(i64 noundef %51) #4
  %53 = bitcast i8* %52 to i64*
  store i64* %53, i64** @netsAssign, align 8
  %54 = load i64, i64* @channelNets, align 8
  %55 = add i64 %54, 1
  %56 = mul i64 %55, 8
  %57 = call noalias i8* @malloc(i64 noundef %56) #4
  %58 = bitcast i8* %57 to i64*
  store i64* %58, i64** @netsAssignCopy, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeAssign() #0 {
  %1 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @channelNets, align 8
  %5 = icmp ule i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i64**, i64*** @costMatrix, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64*, i64** %7, i64 %8
  %10 = load i64*, i64** %9, align 8
  %11 = bitcast i64* %10 to i8*
  call void @free(i8* noundef %11) #4
  br label %12

12:                                               ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %2, !llvm.loop !6

15:                                               ; preds = %2
  %16 = load i64**, i64*** @costMatrix, align 8
  %17 = bitcast i64** %16 to i8*
  call void @free(i8* noundef %17) #4
  %18 = load i64*, i64** @tracksNotPref, align 8
  %19 = bitcast i64* %18 to i8*
  call void @free(i8* noundef %19) #4
  %20 = load i64*, i64** @tracksTopNotPref, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* noundef %21) #4
  %22 = load i64*, i64** @tracksBotNotPref, align 8
  %23 = bitcast i64* %22 to i8*
  call void @free(i8* noundef %23) #4
  %24 = load i64*, i64** @tracksNoHCV, align 8
  %25 = bitcast i64* %24 to i8*
  call void @free(i8* noundef %25) #4
  %26 = load i64*, i64** @tracksAssign, align 8
  %27 = bitcast i64* %26 to i8*
  call void @free(i8* noundef %27) #4
  %28 = load i64*, i64** @netsAssign, align 8
  %29 = bitcast i64* %28 to i8*
  call void @free(i8* noundef %29) #4
  %30 = load i64*, i64** @netsAssignCopy, align 8
  %31 = bitcast i64* %30 to i8*
  call void @free(i8* noundef %31) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @NetsAssign() #0 {
  %1 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @channelNets, align 8
  %5 = icmp ule i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i64*, i64** @netsAssign, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %1, align 8
  br label %2, !llvm.loop !7

13:                                               ; preds = %2
  call void @MaxNetsAssign()
  call void @LeftNetsAssign()
  call void @RightNetsAssign()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MaxNetsAssign() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i64 1, i64* %1, align 8
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load i64*, i64** @FIRST, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @channelDensityColumn, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load i64*, i64** @LAST, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @channelDensityColumn, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i64*, i64** @CROSSING, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 1, i64* %25, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %32

28:                                               ; preds = %15, %8
  %29 = load i64*, i64** @CROSSING, align 8
  %30 = load i64, i64* %1, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %1, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %1, align 8
  br label %4, !llvm.loop !8

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %40, %36
  %38 = load i64, i64* %3, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %42 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %43 = load i64*, i64** @netsAssign, align 8
  %44 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* noundef %41, %struct._nodeHCGType* noundef %42, i64* noundef %43, i64* noundef %2, i64* noundef %44)
  %45 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %46 = load i64*, i64** @netsAssign, align 8
  %47 = load i64, i64* %2, align 8
  call void @Assign(%struct._nodeVCGType* noundef %45, i64* noundef %46, i64 noundef %47)
  %48 = load i64*, i64** @CROSSING, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %3, align 8
  br label %37, !llvm.loop !9

53:                                               ; preds = %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LeftNetsAssign() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %7

7:                                                ; preds = %15, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @channelNets, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i64*, i64** @CROSSING, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %7, !llvm.loop !10

18:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  %19 = load i64, i64* @channelDensityColumn, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %119, %18
  %22 = load i64, i64* %2, align 8
  %23 = icmp uge i64 %22, 1
  br i1 %23, label %24, label %122

24:                                               ; preds = %21
  %25 = load i64*, i64** @TOP, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  %29 = load i64*, i64** @BOT, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %24
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i64*, i64** @LAST, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i64*, i64** @CROSSING, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 1, i64* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %46, %39, %36
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i64*, i64** @LAST, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %2, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i64*, i64** @CROSSING, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 1, i64* %65, align 8
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %62, %55, %52
  br label %86

69:                                               ; preds = %24
  %70 = load i64, i64* %3, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i64*, i64** @LAST, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %2, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i64*, i64** @CROSSING, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 1, i64* %82, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %79, %72, %69
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i64*, i64** @FIRST, align 8
  %88 = load i64, i64* %3, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %2, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load i64*, i64** @FIRST, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %104, %100
  %102 = load i64, i64* %5, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %106 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %107 = load i64*, i64** @netsAssign, align 8
  %108 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* noundef %105, %struct._nodeHCGType* noundef %106, i64* noundef %107, i64* noundef %6, i64* noundef %108)
  %109 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %110 = load i64*, i64** @netsAssign, align 8
  %111 = load i64, i64* %6, align 8
  call void @Assign(%struct._nodeVCGType* noundef %109, i64* noundef %110, i64 noundef %111)
  %112 = load i64*, i64** @CROSSING, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 0, i64* %114, align 8
  %115 = load i64, i64* %5, align 8
  %116 = add i64 %115, -1
  store i64 %116, i64* %5, align 8
  br label %101, !llvm.loop !11

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %2, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %2, align 8
  br label %21, !llvm.loop !12

122:                                              ; preds = %21
  %123 = load i64, i64* %5, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %127

126:                                              ; preds = %122
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.LeftNetsAssign, i64 0, i64 0)) #5
  unreachable

127:                                              ; preds = %125
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RightNetsAssign() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %7

7:                                                ; preds = %15, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @channelNets, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i64*, i64** @CROSSING, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %7, !llvm.loop !13

18:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  %19 = load i64, i64* @channelDensityColumn, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %120, %18
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @channelColumns, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %123

25:                                               ; preds = %21
  %26 = load i64*, i64** @TOP, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  %30 = load i64*, i64** @BOT, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %25
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i64*, i64** @FIRST, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i64*, i64** @CROSSING, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 1, i64* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %47, %40, %37
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i64*, i64** @FIRST, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %2, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i64*, i64** @CROSSING, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 1, i64* %66, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %63, %56, %53
  br label %87

70:                                               ; preds = %25
  %71 = load i64, i64* %3, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i64*, i64** @FIRST, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %2, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i64*, i64** @CROSSING, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 1, i64* %83, align 8
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %80, %73, %70
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i64*, i64** @LAST, align 8
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load i64*, i64** @LAST, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %2, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %105, %101
  %103 = load i64, i64* %5, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %107 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %108 = load i64*, i64** @netsAssign, align 8
  %109 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* noundef %106, %struct._nodeHCGType* noundef %107, i64* noundef %108, i64* noundef %6, i64* noundef %109)
  %110 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %111 = load i64*, i64** @netsAssign, align 8
  %112 = load i64, i64* %6, align 8
  call void @Assign(%struct._nodeVCGType* noundef %110, i64* noundef %111, i64 noundef %112)
  %113 = load i64*, i64** @CROSSING, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 0, i64* %115, align 8
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %5, align 8
  br label %102, !llvm.loop !14

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %2, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %2, align 8
  br label %21, !llvm.loop !15

123:                                              ; preds = %21
  %124 = load i64, i64* %5, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  br label %128

127:                                              ; preds = %123
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.RightNetsAssign, i64 0, i64 0)) #5
  unreachable

128:                                              ; preds = %126
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Select(%struct._nodeVCGType* noundef %0, %struct._nodeHCGType* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4) #0 {
  %6 = alloca %struct._nodeVCGType*, align 8
  %7 = alloca %struct._nodeHCGType*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %6, align 8
  store %struct._nodeHCGType* %1, %struct._nodeHCGType** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %6, align 8
  %18 = load %struct._nodeHCGType*, %struct._nodeHCGType** %7, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64*, i64** %10, align 8
  call void @BuildCostMatrix(%struct._nodeVCGType* noundef %17, %struct._nodeHCGType* noundef %18, i64* noundef %19, i64* noundef %20)
  store i64 -1, i64* %16, align 8
  store i64 0, i64* %13, align 8
  store i64 1, i64* %11, align 8
  br label %21

21:                                               ; preds = %59, %5
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @channelNets, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  store i64 0, i64* %15, align 8
  %32 = load i64**, i64*** @costMatrix, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %14, align 8
  store i64 1, i64* %12, align 8
  br label %36

36:                                               ; preds = %47, %31
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @channelTracks, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %15, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %36, !llvm.loop !16

50:                                               ; preds = %36
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %15, align 8
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %25
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %21, !llvm.loop !17

62:                                               ; preds = %21
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 547, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__.Select, i64 0, i64 0)) #5
  unreachable

67:                                               ; preds = %65
  %68 = load i64, i64* %13, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Assign(%struct._nodeVCGType* noundef %0, i64* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct._nodeVCGType*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %17 = load i64, i64* %6, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* noundef %16, i64 noundef %17)
  %18 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* noundef %18, i64 noundef %19, i64* noundef %20, i64* noundef %21)
  %22 = load i64, i64* @channelTracks, align 8
  %23 = load i64, i64* @cardTopNotPref, align 8
  %24 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 noundef %22, i64 noundef %23, i64 noundef %24, i64* noundef %8)
  %25 = load i64**, i64*** @costMatrix, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64*, i64** %25, i64 %26
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %15, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp uge i64 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @channelNets, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31, %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #5
  unreachable

37:                                               ; preds = %35
  store i64 0, i64* %10, align 8
  store i64 1, i64* %9, align 8
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @channelTracks, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64*, i64** @tracksAssign, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %38, !llvm.loop !18

49:                                               ; preds = %38
  store i64 1, i64* %9, align 8
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @channelTracks, align 8
  %53 = icmp ule i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i64*, i64** @tracksNoHCV, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i64*, i64** @tracksNotPref, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i64*, i64** @tracksAssign, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 1, i64* %69, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %66, %60, %54
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %50, !llvm.loop !19

76:                                               ; preds = %50
  %77 = load i64, i64* %10, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  store i64 1, i64* %9, align 8
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @channelTracks, align 8
  %83 = icmp ule i64 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load i64*, i64** @tracksNoHCV, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load i64*, i64** @tracksTopNotPref, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i64*, i64** @tracksBotNotPref, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i64*, i64** @tracksAssign, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 1, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %102, %96, %90, %84
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  br label %80, !llvm.loop !20

112:                                              ; preds = %80
  br label %113

113:                                              ; preds = %112, %76
  %114 = load i64, i64* %10, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %113
  store i64 2, i64* %9, align 8
  br label %117

117:                                              ; preds = %140, %116
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @channelTracks, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load i64*, i64** @tracksNoHCV, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %121
  %128 = load i64*, i64** @tracksNotPref, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i64*, i64** @tracksAssign, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 1, i64* %136, align 8
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %133, %127, %121
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %117, !llvm.loop !21

143:                                              ; preds = %117
  br label %144

144:                                              ; preds = %143, %113
  %145 = load i64, i64* %10, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %144
  %148 = load i64*, i64** @tracksNoHCV, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i64*, i64** @tracksAssign, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  store i64 1, i64* %154, align 8
  %155 = load i64, i64* %10, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %10, align 8
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i64*, i64** @tracksNoHCV, align 8
  %159 = load i64, i64* @channelTracks, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i64*, i64** @tracksAssign, align 8
  %165 = load i64, i64* @channelTracks, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 1, i64* %166, align 8
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %169

169:                                              ; preds = %163, %157
  br label %170

170:                                              ; preds = %169, %144
  %171 = load i64, i64* %10, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %175

174:                                              ; preds = %170
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #5
  unreachable

175:                                              ; preds = %173
  store i64 0, i64* %11, align 8
  store i64 1000000, i64* %14, align 8
  store i64 1, i64* %9, align 8
  br label %176

176:                                              ; preds = %237, %175
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* @channelTracks, align 8
  %179 = icmp ule i64 %177, %178
  br i1 %179, label %180, label %240

180:                                              ; preds = %176
  %181 = load i64*, i64** @tracksAssign, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %236

186:                                              ; preds = %180
  %187 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64*, i64** @netsAssign, align 8
  %191 = call i64 @VCV(%struct._nodeVCGType* noundef %187, i64 noundef %188, i64 noundef %189, i64* noundef %190)
  store i64 %191, i64* %12, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %14, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %186
  %196 = load i64, i64* %12, align 8
  store i64 %196, i64* %14, align 8
  %197 = load i64, i64* %9, align 8
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load i64, i64* %8, align 8
  %200 = sub i64 %198, %199
  store i64 %200, i64* %13, align 8
  %201 = load i64, i64* %13, align 8
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %195
  %204 = load i64, i64* %13, align 8
  %205 = mul nsw i64 %204, -1
  store i64 %205, i64* %13, align 8
  br label %206

206:                                              ; preds = %203, %195
  br label %235

207:                                              ; preds = %186
  %208 = load i64, i64* %12, align 8
  %209 = load i64, i64* %14, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %234

211:                                              ; preds = %207
  %212 = load i64, i64* %11, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %216

215:                                              ; preds = %211
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #5
  unreachable

216:                                              ; preds = %214
  %217 = load i64, i64* %9, align 8
  %218 = load i64, i64* %8, align 8
  %219 = sub i64 %217, %218
  store i64 %219, i64* %7, align 8
  %220 = load i64, i64* %7, align 8
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i64, i64* %7, align 8
  %224 = mul nsw i64 %223, -1
  store i64 %224, i64* %7, align 8
  br label %225

225:                                              ; preds = %222, %216
  %226 = load i64, i64* %7, align 8
  %227 = load i64, i64* %13, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load i64, i64* %7, align 8
  store i64 %230, i64* %13, align 8
  %231 = load i64, i64* %12, align 8
  store i64 %231, i64* %14, align 8
  %232 = load i64, i64* %9, align 8
  store i64 %232, i64* %11, align 8
  br label %233

233:                                              ; preds = %229, %225
  br label %234

234:                                              ; preds = %233, %207
  br label %235

235:                                              ; preds = %234, %206
  br label %236

236:                                              ; preds = %235, %180
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %9, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %9, align 8
  br label %176, !llvm.loop !22

240:                                              ; preds = %176
  %241 = load i64, i64* %11, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %245

244:                                              ; preds = %240
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #5
  unreachable

245:                                              ; preds = %243
  %246 = load i64, i64* %11, align 8
  %247 = load i64*, i64** %5, align 8
  %248 = load i64, i64* %6, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  store i64 %246, i64* %249, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local void @LongestPathVCG(%struct._nodeVCGType* noundef, i64 noundef) #3

declare dso_local void @NoHCV(%struct._nodeHCGType* noundef, i64 noundef, i64* noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @IdealTrack(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub i64 %12, %13
  %15 = mul i64 %11, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 1
  %19 = mul i64 %16, %18
  %20 = add i64 %15, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = udiv i64 %27, %28
  %30 = load i64*, i64** %8, align 8
  store i64 %29, i64* %30, align 8
  br label %33

31:                                               ; preds = %4
  %32 = load i64*, i64** %8, align 8
  store i64 1, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %26
  ret void
}

declare dso_local i64 @VCV(%struct._nodeVCGType* noundef, i64 noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildCostMatrix(%struct._nodeVCGType* noundef %0, %struct._nodeHCGType* noundef %1, i64* noundef %2, i64* noundef %3) #0 {
  %5 = alloca %struct._nodeVCGType*, align 8
  %6 = alloca %struct._nodeHCGType*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %5, align 8
  store %struct._nodeHCGType* %1, %struct._nodeHCGType** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 1, i64* %9, align 8
  br label %15

15:                                               ; preds = %36, %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @channelNets, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i64**, i64*** @costMatrix, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i64*, i64** %20, i64 %21
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %14, align 8
  store i64 1, i64* %10, align 8
  br label %24

24:                                               ; preds = %32, %19
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @channelTracks, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64*, i64** %14, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %24, !llvm.loop !23

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %15, !llvm.loop !24

39:                                               ; preds = %15
  store i64 1, i64* %9, align 8
  br label %40

40:                                               ; preds = %162, %39
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @channelNets, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %165

44:                                               ; preds = %40
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %161

50:                                               ; preds = %44
  %51 = load i64**, i64*** @costMatrix, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64*, i64** %51, i64 %52
  %54 = load i64*, i64** %53, align 8
  store i64* %54, i64** %14, align 8
  %55 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %56 = load i64, i64* %9, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* noundef %55, i64 noundef %56)
  %57 = load %struct._nodeHCGType*, %struct._nodeHCGType** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* noundef %57, i64 noundef %58, i64* noundef %59, i64* noundef %60)
  %61 = load i64, i64* @channelTracks, align 8
  %62 = load i64, i64* @cardTopNotPref, align 8
  %63 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 noundef %61, i64 noundef %62, i64 noundef %63, i64* noundef %11)
  store i64 1, i64* %10, align 8
  br label %64

64:                                               ; preds = %157, %50
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @channelTracks, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %160

68:                                               ; preds = %64
  %69 = load i64*, i64** @tracksNoHCV, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %152

74:                                               ; preds = %68
  %75 = load i64, i64* @cardNotPref, align 8
  %76 = load i64, i64* @channelTracks, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i64*, i64** @tracksNotPref, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 10000, i64* %87, align 8
  br label %94

88:                                               ; preds = %78
  %89 = load i64, i64* @cardNotPref, align 8
  %90 = mul i64 100, %89
  %91 = load i64*, i64** %14, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %84
  br label %128

95:                                               ; preds = %74
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @channelTracks, align 8
  %98 = load i64, i64* @cardBotNotPref, align 8
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @cardTopNotPref, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load i64, i64* @cardNotPref, align 8
  %107 = load i64, i64* @cardTopNotPref, align 8
  %108 = load i64, i64* @cardBotNotPref, align 8
  %109 = add i64 %107, %108
  %110 = load i64, i64* @channelTracks, align 8
  %111 = sub i64 %109, %110
  %112 = sub i64 %106, %111
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %117

116:                                              ; preds = %105
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.BuildCostMatrix, i64 0, i64 0)) #5
  unreachable

117:                                              ; preds = %115
  %118 = load i64, i64* %13, align 8
  %119 = mul nsw i64 100, %118
  %120 = load i64*, i64** %14, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  store i64 %119, i64* %122, align 8
  br label %127

123:                                              ; preds = %101, %95
  %124 = load i64*, i64** %14, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 10000, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %117
  br label %128

128:                                              ; preds = %127, %94
  %129 = load i64*, i64** %14, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %132, 1000000
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %10, align 8
  %137 = sub i64 %135, %136
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i64, i64* %12, align 8
  %142 = mul nsw i64 %141, -1
  store i64 %142, i64* %12, align 8
  br label %143

143:                                              ; preds = %140, %134
  %144 = load i64, i64* %12, align 8
  %145 = mul nsw i64 1, %144
  %146 = load i64*, i64** %14, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %145
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %143, %128
  br label %156

152:                                              ; preds = %68
  %153 = load i64*, i64** %14, align 8
  %154 = load i64, i64* %10, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64 1000000, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %151
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %64, !llvm.loop !25

160:                                              ; preds = %64
  br label %161

161:                                              ; preds = %160, %44
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %40, !llvm.loop !26

165:                                              ; preds = %40
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
