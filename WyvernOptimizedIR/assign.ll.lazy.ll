; ModuleID = './assign.ll'
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
  %1 = load i64, i64* @channelNets, align 8
  %2 = shl i64 %1, 3
  %3 = add i64 %2, 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #5
  store i8* %4, i8** bitcast (i64*** @costMatrix to i8**), align 8
  br label %5

5:                                                ; preds = %15, %0
  %.0 = phi i64 [ 1, %0 ], [ %16, %15 ]
  %6 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %6
  br i1 %.not, label %17, label %7

7:                                                ; preds = %5
  %8 = load i64, i64* @channelTracks, align 8
  %9 = shl i64 %8, 3
  %10 = add i64 %9, 16
  %11 = call noalias i8* @malloc(i64 noundef %10) #5
  %12 = load i64**, i64*** @costMatrix, align 8
  %13 = getelementptr inbounds i64*, i64** %12, i64 %.0
  %14 = bitcast i64** %13 to i8**
  store i8* %11, i8** %14, align 8
  br label %15

15:                                               ; preds = %7
  %16 = add i64 %.0, 1
  br label %5, !llvm.loop !4

17:                                               ; preds = %5
  %18 = load i64, i64* @channelTracks, align 8
  %19 = shl i64 %18, 3
  %20 = add i64 %19, 16
  %21 = call noalias i8* @malloc(i64 noundef %20) #5
  store i8* %21, i8** bitcast (i64** @tracksNotPref to i8**), align 8
  %22 = shl i64 %18, 3
  %23 = add i64 %22, 16
  %24 = call noalias i8* @malloc(i64 noundef %23) #5
  store i8* %24, i8** bitcast (i64** @tracksTopNotPref to i8**), align 8
  %25 = load i64, i64* @channelTracks, align 8
  %26 = shl i64 %25, 3
  %27 = add i64 %26, 16
  %28 = call noalias i8* @malloc(i64 noundef %27) #5
  store i8* %28, i8** bitcast (i64** @tracksBotNotPref to i8**), align 8
  %29 = shl i64 %25, 3
  %30 = add i64 %29, 16
  %31 = call noalias i8* @malloc(i64 noundef %30) #5
  store i8* %31, i8** bitcast (i64** @tracksNoHCV to i8**), align 8
  %32 = load i64, i64* @channelTracks, align 8
  %33 = shl i64 %32, 3
  %34 = add i64 %33, 16
  %35 = call noalias i8* @malloc(i64 noundef %34) #5
  store i8* %35, i8** bitcast (i64** @tracksAssign to i8**), align 8
  %36 = load i64, i64* @channelNets, align 8
  %37 = shl i64 %36, 3
  %38 = add i64 %37, 8
  %39 = call noalias i8* @malloc(i64 noundef %38) #5
  store i8* %39, i8** bitcast (i64** @netsAssign to i8**), align 8
  %40 = shl i64 %36, 3
  %41 = add i64 %40, 8
  %42 = call noalias i8* @malloc(i64 noundef %41) #5
  store i8* %42, i8** bitcast (i64** @netsAssignCopy to i8**), align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeAssign() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i64 [ 1, %0 ], [ %9, %8 ]
  %2 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %2
  br i1 %.not, label %10, label %3

3:                                                ; preds = %1
  %4 = load i64**, i64*** @costMatrix, align 8
  %5 = getelementptr inbounds i64*, i64** %4, i64 %.0
  %6 = bitcast i64** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7) #5
  br label %8

8:                                                ; preds = %3
  %9 = add i64 %.0, 1
  br label %1, !llvm.loop !6

10:                                               ; preds = %1
  %11 = load i8*, i8** bitcast (i64*** @costMatrix to i8**), align 8
  call void @free(i8* noundef %11) #5
  %12 = load i8*, i8** bitcast (i64** @tracksNotPref to i8**), align 8
  call void @free(i8* noundef %12) #5
  %13 = load i8*, i8** bitcast (i64** @tracksTopNotPref to i8**), align 8
  call void @free(i8* noundef %13) #5
  %14 = load i8*, i8** bitcast (i64** @tracksBotNotPref to i8**), align 8
  call void @free(i8* noundef %14) #5
  %15 = load i8*, i8** bitcast (i64** @tracksNoHCV to i8**), align 8
  call void @free(i8* noundef %15) #5
  %16 = load i8*, i8** bitcast (i64** @tracksAssign to i8**), align 8
  call void @free(i8* noundef %16) #5
  %17 = load i8*, i8** bitcast (i64** @netsAssign to i8**), align 8
  call void @free(i8* noundef %17) #5
  %18 = load i8*, i8** bitcast (i64** @netsAssignCopy to i8**), align 8
  call void @free(i8* noundef %18) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @NetsAssign() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i64 [ 1, %0 ], [ %7, %6 ]
  %2 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %2
  br i1 %.not, label %8, label %3

3:                                                ; preds = %1
  %4 = load i64*, i64** @netsAssign, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 %.0
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %3
  %7 = add i64 %.0, 1
  br label %1, !llvm.loop !7

8:                                                ; preds = %1
  call void @MaxNetsAssign()
  call void @LeftNetsAssign()
  call void @RightNetsAssign()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MaxNetsAssign() #0 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %22, %0
  %.01 = phi i64 [ 0, %0 ], [ %.1, %22 ]
  %.0 = phi i64 [ 1, %0 ], [ %23, %22 ]
  %3 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %3
  br i1 %.not, label %24, label %4

4:                                                ; preds = %2
  %5 = load i64*, i64** @FIRST, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 %.0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @channelDensityColumn, align 8
  %.not3 = icmp ugt i64 %7, %8
  br i1 %.not3, label %18, label %9

9:                                                ; preds = %4
  %10 = load i64*, i64** @LAST, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %.0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @channelDensityColumn, align 8
  %.not4 = icmp ult i64 %12, %13
  br i1 %.not4, label %18, label %14

14:                                               ; preds = %9
  %15 = load i64*, i64** @CROSSING, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 %.0
  store i64 1, i64* %16, align 8
  %17 = add i64 %.01, 1
  br label %21

18:                                               ; preds = %9, %4
  %19 = load i64*, i64** @CROSSING, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 %.0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %14
  %.1 = phi i64 [ %17, %14 ], [ %.01, %18 ]
  br label %22

22:                                               ; preds = %21
  %23 = add i64 %.0, 1
  br label %2, !llvm.loop !8

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %26, %24
  %.2 = phi i64 [ %.01, %24 ], [ %36, %26 ]
  %.not2 = icmp eq i64 %.2, 0
  br i1 %.not2, label %37, label %26

26:                                               ; preds = %25
  %27 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %28 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %29 = load i64*, i64** @netsAssign, align 8
  %30 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* noundef %27, %struct._nodeHCGType* noundef %28, i64* noundef %29, i64* noundef nonnull %1, i64* noundef %30)
  %31 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %32 = load i64*, i64** @netsAssign, align 8
  %33 = load i64, i64* %1, align 8
  call void @Assign(%struct._nodeVCGType* noundef %31, i64* noundef %32, i64 noundef %33)
  %34 = load i64*, i64** @CROSSING, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 0, i64* %35, align 8
  %36 = add i64 %.2, -1
  br label %25, !llvm.loop !9

37:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LeftNetsAssign() #0 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %7, %0
  %.0 = phi i64 [ 1, %0 ], [ %8, %7 ]
  %3 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %3
  br i1 %.not, label %9, label %4

4:                                                ; preds = %2
  %5 = load i64*, i64** @CROSSING, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 %.0
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %4
  %8 = add i64 %.0, 1
  br label %2, !llvm.loop !10

9:                                                ; preds = %2
  %10 = load i64, i64* @channelDensityColumn, align 8
  br label %11

11:                                               ; preds = %76, %9
  %.02 = phi i64 [ 0, %9 ], [ %.6, %76 ]
  %.01.in = phi i64 [ %10, %9 ], [ %.01, %76 ]
  %.01 = add i64 %.01.in, -1
  %.not3 = icmp eq i64 %.01, 0
  br i1 %.not3, label %77, label %12

12:                                               ; preds = %11
  %13 = load i64*, i64** @TOP, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 %.01
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** @BOT, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 %.01
  %18 = load i64, i64* %17, align 8
  %.not5 = icmp eq i64 %15, %18
  br i1 %.not5, label %40, label %19

19:                                               ; preds = %12
  %.not8 = icmp eq i64 %15, 0
  br i1 %.not8, label %29, label %20

20:                                               ; preds = %19
  %21 = load i64*, i64** @LAST, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %15
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, %.01
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64*, i64** @CROSSING, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 %15
  store i64 1, i64* %27, align 8
  %28 = add i64 %.02, 1
  br label %29

29:                                               ; preds = %25, %20, %19
  %.1 = phi i64 [ %28, %25 ], [ %.02, %20 ], [ %.02, %19 ]
  %.not9 = icmp eq i64 %18, 0
  br i1 %.not9, label %39, label %30

30:                                               ; preds = %29
  %31 = load i64*, i64** @LAST, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %18
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, %.01
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64*, i64** @CROSSING, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %18
  store i64 1, i64* %37, align 8
  %38 = add i64 %.1, 1
  br label %39

39:                                               ; preds = %35, %30, %29
  %.2 = phi i64 [ %38, %35 ], [ %.1, %30 ], [ %.1, %29 ]
  br label %51

40:                                               ; preds = %12
  %.not6 = icmp eq i64 %15, 0
  br i1 %.not6, label %50, label %41

41:                                               ; preds = %40
  %42 = load i64*, i64** @LAST, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 %15
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, %.01
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64*, i64** @CROSSING, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 %15
  store i64 1, i64* %48, align 8
  %49 = add i64 %.02, 1
  br label %50

50:                                               ; preds = %46, %41, %40
  %.3 = phi i64 [ %49, %46 ], [ %.02, %41 ], [ %.02, %40 ]
  br label %51

51:                                               ; preds = %50, %39
  %.4 = phi i64 [ %.2, %39 ], [ %.3, %50 ]
  %52 = load i64*, i64** @FIRST, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 %15
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, %.01
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i64*, i64** @FIRST, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 %18
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, %.01
  br i1 %60, label %61, label %75

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %63, %61
  %.5 = phi i64 [ %.4, %61 ], [ %73, %63 ]
  %.not7 = icmp eq i64 %.5, 0
  br i1 %.not7, label %74, label %63

63:                                               ; preds = %62
  %64 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %65 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %66 = load i64*, i64** @netsAssign, align 8
  %67 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* noundef %64, %struct._nodeHCGType* noundef %65, i64* noundef %66, i64* noundef nonnull %1, i64* noundef %67)
  %68 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %69 = load i64*, i64** @netsAssign, align 8
  %70 = load i64, i64* %1, align 8
  call void @Assign(%struct._nodeVCGType* noundef %68, i64* noundef %69, i64 noundef %70)
  %71 = load i64*, i64** @CROSSING, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 %70
  store i64 0, i64* %72, align 8
  %73 = add i64 %.5, -1
  br label %62, !llvm.loop !11

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %56
  %.6 = phi i64 [ %.5, %74 ], [ %.4, %56 ]
  br label %76

76:                                               ; preds = %75
  br label %11, !llvm.loop !12

77:                                               ; preds = %11
  %.not4 = icmp eq i64 %.02, 0
  br i1 %.not4, label %78, label %79

78:                                               ; preds = %77
  br label %80

79:                                               ; preds = %77
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.LeftNetsAssign, i64 0, i64 0)) #6
  unreachable

80:                                               ; preds = %78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RightNetsAssign() #0 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %7, %0
  %.0 = phi i64 [ 1, %0 ], [ %8, %7 ]
  %3 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %3
  br i1 %.not, label %9, label %4

4:                                                ; preds = %2
  %5 = load i64*, i64** @CROSSING, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 %.0
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %4
  %8 = add i64 %.0, 1
  br label %2, !llvm.loop !13

9:                                                ; preds = %2
  %10 = load i64, i64* @channelDensityColumn, align 8
  br label %11

11:                                               ; preds = %77, %9
  %.02 = phi i64 [ 0, %9 ], [ %.6, %77 ]
  %.01.in = phi i64 [ %10, %9 ], [ %.01, %77 ]
  %.01 = add i64 %.01.in, 1
  %12 = load i64, i64* @channelColumns, align 8
  %.not3 = icmp ugt i64 %.01, %12
  br i1 %.not3, label %78, label %13

13:                                               ; preds = %11
  %14 = load i64*, i64** @TOP, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 %.01
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** @BOT, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 %.01
  %19 = load i64, i64* %18, align 8
  %.not5 = icmp eq i64 %16, %19
  br i1 %.not5, label %41, label %20

20:                                               ; preds = %13
  %.not8 = icmp eq i64 %16, 0
  br i1 %.not8, label %30, label %21

21:                                               ; preds = %20
  %22 = load i64*, i64** @FIRST, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 %16
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, %.01
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64*, i64** @CROSSING, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 %16
  store i64 1, i64* %28, align 8
  %29 = add i64 %.02, 1
  br label %30

30:                                               ; preds = %26, %21, %20
  %.1 = phi i64 [ %29, %26 ], [ %.02, %21 ], [ %.02, %20 ]
  %.not9 = icmp eq i64 %19, 0
  br i1 %.not9, label %40, label %31

31:                                               ; preds = %30
  %32 = load i64*, i64** @FIRST, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 %19
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, %.01
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64*, i64** @CROSSING, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 %19
  store i64 1, i64* %38, align 8
  %39 = add i64 %.1, 1
  br label %40

40:                                               ; preds = %36, %31, %30
  %.2 = phi i64 [ %39, %36 ], [ %.1, %31 ], [ %.1, %30 ]
  br label %52

41:                                               ; preds = %13
  %.not6 = icmp eq i64 %16, 0
  br i1 %.not6, label %51, label %42

42:                                               ; preds = %41
  %43 = load i64*, i64** @FIRST, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 %16
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, %.01
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64*, i64** @CROSSING, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 %16
  store i64 1, i64* %49, align 8
  %50 = add i64 %.02, 1
  br label %51

51:                                               ; preds = %47, %42, %41
  %.3 = phi i64 [ %50, %47 ], [ %.02, %42 ], [ %.02, %41 ]
  br label %52

52:                                               ; preds = %51, %40
  %.4 = phi i64 [ %.2, %40 ], [ %.3, %51 ]
  %53 = load i64*, i64** @LAST, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 %16
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, %.01
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i64*, i64** @LAST, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 %19
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, %.01
  br i1 %61, label %62, label %76

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %64, %62
  %.5 = phi i64 [ %.4, %62 ], [ %74, %64 ]
  %.not7 = icmp eq i64 %.5, 0
  br i1 %.not7, label %75, label %64

64:                                               ; preds = %63
  %65 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %66 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %67 = load i64*, i64** @netsAssign, align 8
  %68 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* noundef %65, %struct._nodeHCGType* noundef %66, i64* noundef %67, i64* noundef nonnull %1, i64* noundef %68)
  %69 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %70 = load i64*, i64** @netsAssign, align 8
  %71 = load i64, i64* %1, align 8
  call void @Assign(%struct._nodeVCGType* noundef %69, i64* noundef %70, i64 noundef %71)
  %72 = load i64*, i64** @CROSSING, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 %71
  store i64 0, i64* %73, align 8
  %74 = add i64 %.5, -1
  br label %63, !llvm.loop !14

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %57
  %.6 = phi i64 [ %.5, %75 ], [ %.4, %57 ]
  br label %77

77:                                               ; preds = %76
  br label %11, !llvm.loop !15

78:                                               ; preds = %11
  %.not4 = icmp eq i64 %.02, 0
  br i1 %.not4, label %79, label %80

79:                                               ; preds = %78
  br label %81

80:                                               ; preds = %78
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.RightNetsAssign, i64 0, i64 0)) #6
  unreachable

81:                                               ; preds = %79
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Select(%struct._nodeVCGType* noundef %0, %struct._nodeHCGType* noundef %1, i64* noundef %2, i64* nocapture noundef writeonly %3, i64* nocapture noundef readonly %4) #0 {
  call void @BuildCostMatrix(%struct._nodeVCGType* noundef %0, %struct._nodeHCGType* noundef %1, i64* noundef %2, i64* noundef %4)
  br label %6

6:                                                ; preds = %28, %5
  %.06 = phi i64 [ 1, %5 ], [ %29, %28 ]
  %.02 = phi i64 [ 0, %5 ], [ %.24, %28 ]
  %.0 = phi i64 [ -1, %5 ], [ %.2, %28 ]
  %7 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.06, %7
  br i1 %.not, label %30, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i64, i64* %4, i64 %.06
  %10 = load i64, i64* %9, align 8
  %.not8 = icmp eq i64 %10, 0
  br i1 %.not8, label %27, label %11

11:                                               ; preds = %8
  %12 = load i64**, i64*** @costMatrix, align 8
  %13 = getelementptr inbounds i64*, i64** %12, i64 %.06
  %14 = load i64*, i64** %13, align 8
  br label %15

15:                                               ; preds = %18, %11
  %.05 = phi i64 [ 1, %11 ], [ %22, %18 ]
  %.01 = phi i64 [ 0, %11 ], [ %21, %18 ]
  %16 = load i64, i64* @channelTracks, align 8
  %.not9 = icmp ugt i64 %.05, %16
  br i1 %.not9, label %23, label %17

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds i64, i64* %14, i64 %.05
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %.01, %20
  %22 = add i64 %.05, 1
  br label %15, !llvm.loop !16

23:                                               ; preds = %15
  %24 = icmp sgt i64 %.01, %.0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25, %23
  %.13 = phi i64 [ %.06, %25 ], [ %.02, %23 ]
  %.1 = phi i64 [ %.01, %25 ], [ %.0, %23 ]
  br label %27

27:                                               ; preds = %26, %8
  %.24 = phi i64 [ %.13, %26 ], [ %.02, %8 ]
  %.2 = phi i64 [ %.1, %26 ], [ %.0, %8 ]
  br label %28

28:                                               ; preds = %27
  %29 = add i64 %.06, 1
  br label %6, !llvm.loop !17

30:                                               ; preds = %6
  %.not7 = icmp eq i64 %.02, 0
  br i1 %.not7, label %32, label %31

31:                                               ; preds = %30
  br label %33

32:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 547, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__.Select, i64 0, i64 0)) #6
  unreachable

33:                                               ; preds = %31
  store i64 %.02, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Assign(%struct._nodeVCGType* noundef %0, i64* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* noundef %0, i64 noundef %2) #5
  %5 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %6 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* noundef %5, i64 noundef %2, i64* noundef %1, i64* noundef %6) #5
  %7 = load i64, i64* @channelTracks, align 8
  %8 = load i64, i64* @cardTopNotPref, align 8
  %9 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 noundef %7, i64 noundef %8, i64 noundef %9, i64* noundef nonnull %4)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* @channelNets, align 8
  %.not24 = icmp ult i64 %11, %2
  br i1 %.not24, label %13, label %12

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10, %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %20, %14
  %.012 = phi i64 [ 1, %14 ], [ %21, %20 ]
  %16 = load i64, i64* @channelTracks, align 8
  %.not25 = icmp ugt i64 %.012, %16
  br i1 %.not25, label %22, label %17

17:                                               ; preds = %15
  %18 = load i64*, i64** @tracksAssign, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 %.012
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17
  %21 = add i64 %.012, 1
  br label %15, !llvm.loop !18

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %38, %22
  %.017 = phi i64 [ 0, %22 ], [ %.118, %38 ]
  %.113 = phi i64 [ 1, %22 ], [ %39, %38 ]
  %24 = load i64, i64* @channelTracks, align 8
  %.not26 = icmp ugt i64 %.113, %24
  br i1 %.not26, label %40, label %25

25:                                               ; preds = %23
  %26 = load i64*, i64** @tracksNoHCV, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 %.113
  %28 = load i64, i64* %27, align 8
  %.not40 = icmp eq i64 %28, 0
  br i1 %.not40, label %37, label %29

29:                                               ; preds = %25
  %30 = load i64*, i64** @tracksNotPref, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 %.113
  %32 = load i64, i64* %31, align 8
  %.not41 = icmp eq i64 %32, 0
  br i1 %.not41, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64*, i64** @tracksAssign, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 %.113
  store i64 1, i64* %35, align 8
  %36 = add i64 %.017, 1
  br label %37

37:                                               ; preds = %33, %29, %25
  %.118 = phi i64 [ %.017, %29 ], [ %36, %33 ], [ %.017, %25 ]
  br label %38

38:                                               ; preds = %37
  %39 = add i64 %.113, 1
  br label %23, !llvm.loop !19

40:                                               ; preds = %23
  %41 = icmp eq i64 %.017, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %62, %42
  %.219 = phi i64 [ %.017, %42 ], [ %.320, %62 ]
  %.214 = phi i64 [ 1, %42 ], [ %63, %62 ]
  %44 = load i64, i64* @channelTracks, align 8
  %.not36 = icmp ugt i64 %.214, %44
  br i1 %.not36, label %64, label %45

45:                                               ; preds = %43
  %46 = load i64*, i64** @tracksNoHCV, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %.214
  %48 = load i64, i64* %47, align 8
  %.not37 = icmp eq i64 %48, 0
  br i1 %.not37, label %61, label %49

49:                                               ; preds = %45
  %50 = load i64*, i64** @tracksTopNotPref, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 %.214
  %52 = load i64, i64* %51, align 8
  %.not38 = icmp eq i64 %52, 0
  br i1 %.not38, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64*, i64** @tracksBotNotPref, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 %.214
  %56 = load i64, i64* %55, align 8
  %.not39 = icmp eq i64 %56, 0
  br i1 %.not39, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64*, i64** @tracksAssign, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 %.214
  store i64 1, i64* %59, align 8
  %60 = add i64 %.219, 1
  br label %61

61:                                               ; preds = %57, %53, %49, %45
  %.320 = phi i64 [ %60, %57 ], [ %.219, %53 ], [ %.219, %49 ], [ %.219, %45 ]
  br label %62

62:                                               ; preds = %61
  %63 = add i64 %.214, 1
  br label %43, !llvm.loop !20

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %40
  %.421 = phi i64 [ %.219, %64 ], [ %.017, %40 ]
  %66 = icmp eq i64 %.421, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %84, %67
  %.522 = phi i64 [ %.421, %67 ], [ %.6, %84 ]
  %.315 = phi i64 [ 2, %67 ], [ %85, %84 ]
  %69 = load i64, i64* @channelTracks, align 8
  %70 = icmp ult i64 %.315, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i64*, i64** @tracksNoHCV, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 %.315
  %74 = load i64, i64* %73, align 8
  %.not34 = icmp eq i64 %74, 0
  br i1 %.not34, label %83, label %75

75:                                               ; preds = %71
  %76 = load i64*, i64** @tracksNotPref, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 %.315
  %78 = load i64, i64* %77, align 8
  %.not35 = icmp eq i64 %78, 0
  br i1 %.not35, label %83, label %79

79:                                               ; preds = %75
  %80 = load i64*, i64** @tracksAssign, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 %.315
  store i64 1, i64* %81, align 8
  %82 = add i64 %.522, 1
  br label %83

83:                                               ; preds = %79, %75, %71
  %.6 = phi i64 [ %82, %79 ], [ %.522, %75 ], [ %.522, %71 ]
  br label %84

84:                                               ; preds = %83
  %85 = add i64 %.315, 1
  br label %68, !llvm.loop !21

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %65
  %.7 = phi i64 [ %.522, %86 ], [ %.421, %65 ]
  %88 = icmp eq i64 %.7, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %87
  %90 = load i64*, i64** @tracksNoHCV, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %.not32 = icmp eq i64 %92, 0
  br i1 %.not32, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64*, i64** @tracksAssign, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  store i64 1, i64* %95, align 8
  %96 = add i64 %.7, 1
  br label %97

97:                                               ; preds = %93, %89
  %.8 = phi i64 [ %96, %93 ], [ %.7, %89 ]
  %98 = load i64*, i64** @tracksNoHCV, align 8
  %99 = load i64, i64* @channelTracks, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %.not33 = icmp eq i64 %101, 0
  br i1 %.not33, label %107, label %102

102:                                              ; preds = %97
  %103 = load i64*, i64** @tracksAssign, align 8
  %104 = load i64, i64* @channelTracks, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 1, i64* %105, align 8
  %106 = add i64 %.8, 1
  br label %107

107:                                              ; preds = %102, %97
  %.9 = phi i64 [ %106, %102 ], [ %.8, %97 ]
  br label %108

108:                                              ; preds = %107, %87
  %.10 = phi i64 [ %.9, %107 ], [ %.7, %87 ]
  %.not27 = icmp eq i64 %.10, 0
  br i1 %.not27, label %110, label %109

109:                                              ; preds = %108
  br label %111

110:                                              ; preds = %108
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %147, %111
  %.416 = phi i64 [ 1, %111 ], [ %148, %147 ]
  %.06 = phi i64 [ 0, %111 ], [ %.410, %147 ]
  %.01 = phi i64 [ undef, %111 ], [ %.5, %147 ]
  %.0 = phi i64 [ 1000000, %111 ], [ %.4, %147 ]
  %113 = load i64, i64* @channelTracks, align 8
  %.not28 = icmp ugt i64 %.416, %113
  br i1 %.not28, label %149, label %114

114:                                              ; preds = %112
  %115 = load i64*, i64** @tracksAssign, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 %.416
  %117 = load i64, i64* %116, align 8
  %.not30 = icmp eq i64 %117, 0
  br i1 %.not30, label %146, label %118

118:                                              ; preds = %114
  %119 = load i64*, i64** @netsAssign, align 8
  %120 = call i64 @VCV(%struct._nodeVCGType* noundef %0, i64 noundef %2, i64 noundef %.416, i64* noundef %119) #5
  %121 = icmp ult i64 %120, %.0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i64, i64* %4, align 8
  %124 = sub i64 %.416, %123
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = sub nsw i64 0, %124
  br label %128

128:                                              ; preds = %126, %122
  %.12 = phi i64 [ %127, %126 ], [ %124, %122 ]
  br label %145

129:                                              ; preds = %118
  %130 = icmp eq i64 %120, %.0
  br i1 %130, label %131, label %144

131:                                              ; preds = %129
  %.not31 = icmp eq i64 %.06, 0
  br i1 %.not31, label %133, label %132

132:                                              ; preds = %131
  br label %134

133:                                              ; preds = %131
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

134:                                              ; preds = %132
  %135 = load i64, i64* %4, align 8
  %136 = sub i64 %.416, %135
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = sub nsw i64 0, %136
  br label %140

140:                                              ; preds = %138, %134
  %.011 = phi i64 [ %139, %138 ], [ %136, %134 ]
  %141 = icmp slt i64 %.011, %.01
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %140
  %.17 = phi i64 [ %.416, %142 ], [ %.06, %140 ]
  %.23 = phi i64 [ %.011, %142 ], [ %.01, %140 ]
  %.1 = phi i64 [ %120, %142 ], [ %.0, %140 ]
  br label %144

144:                                              ; preds = %143, %129
  %.28 = phi i64 [ %.17, %143 ], [ %.06, %129 ]
  %.34 = phi i64 [ %.23, %143 ], [ %.01, %129 ]
  %.2 = phi i64 [ %.1, %143 ], [ %.0, %129 ]
  br label %145

145:                                              ; preds = %144, %128
  %.39 = phi i64 [ %.416, %128 ], [ %.28, %144 ]
  %.45 = phi i64 [ %.12, %128 ], [ %.34, %144 ]
  %.3 = phi i64 [ %120, %128 ], [ %.2, %144 ]
  br label %146

146:                                              ; preds = %145, %114
  %.410 = phi i64 [ %.39, %145 ], [ %.06, %114 ]
  %.5 = phi i64 [ %.45, %145 ], [ %.01, %114 ]
  %.4 = phi i64 [ %.3, %145 ], [ %.0, %114 ]
  br label %147

147:                                              ; preds = %146
  %148 = add i64 %.416, 1
  br label %112, !llvm.loop !22

149:                                              ; preds = %112
  %.not29 = icmp eq i64 %.06, 0
  br i1 %.not29, label %151, label %150

150:                                              ; preds = %149
  br label %152

151:                                              ; preds = %149
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

152:                                              ; preds = %150
  %153 = getelementptr inbounds i64, i64* %1, i64 %2
  store i64 %.06, i64* %153, align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %151, %133, %110, %13
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local void @LongestPathVCG(%struct._nodeVCGType* noundef, i64 noundef) #3

declare dso_local void @NoHCV(%struct._nodeHCGType* noundef, i64 noundef, i64* noundef, i64* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @IdealTrack(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64* nocapture noundef writeonly %3) #4 {
  %5 = add i64 %1, %2
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %13, label %6

6:                                                ; preds = %4
  %7 = sub i64 %0, %2
  %8 = mul i64 %7, %1
  %9 = add i64 %1, 1
  %10 = mul i64 %9, %2
  %11 = add i64 %8, %10
  %12 = udiv i64 %11, %5
  br label %14

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %13, %6
  %storemerge = phi i64 [ 1, %13 ], [ %12, %6 ]
  store i64 %storemerge, i64* %3, align 8
  ret void
}

declare dso_local i64 @VCV(%struct._nodeVCGType* noundef, i64 noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildCostMatrix(%struct._nodeVCGType* noundef %0, %struct._nodeHCGType* noundef %1, i64* noundef %2, i64* nocapture noundef readonly %3) #0 {
  %5 = alloca i64, align 8
  br label %6

6:                                                ; preds = %19, %4
  %.02 = phi i64 [ 1, %4 ], [ %20, %19 ]
  %7 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.02, %7
  br i1 %.not, label %21, label %8

8:                                                ; preds = %6
  %9 = load i64**, i64*** @costMatrix, align 8
  %10 = getelementptr inbounds i64*, i64** %9, i64 %.02
  %11 = load i64*, i64** %10, align 8
  br label %12

12:                                               ; preds = %16, %8
  %.01 = phi i64 [ 1, %8 ], [ %17, %16 ]
  %13 = load i64, i64* @channelTracks, align 8
  %.not11 = icmp ugt i64 %.01, %13
  br i1 %.not11, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i64, i64* %11, i64 %.01
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %14
  %17 = add i64 %.01, 1
  br label %12, !llvm.loop !23

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = add i64 %.02, 1
  br label %6, !llvm.loop !24

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %100, %21
  %.13 = phi i64 [ 1, %21 ], [ %101, %100 ]
  %23 = load i64, i64* @channelNets, align 8
  %.not4 = icmp ugt i64 %.13, %23
  br i1 %.not4, label %102, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds i64, i64* %3, i64 %.13
  %26 = load i64, i64* %25, align 8
  %.not5 = icmp eq i64 %26, 0
  br i1 %.not5, label %99, label %27

27:                                               ; preds = %24
  %28 = load i64**, i64*** @costMatrix, align 8
  %29 = getelementptr inbounds i64*, i64** %28, i64 %.13
  %30 = load i64*, i64** %29, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* noundef %0, i64 noundef %.13) #5
  %31 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* noundef %1, i64 noundef %.13, i64* noundef %2, i64* noundef %31) #5
  %32 = load i64, i64* @channelTracks, align 8
  %33 = load i64, i64* @cardTopNotPref, align 8
  %34 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 noundef %32, i64 noundef %33, i64 noundef %34, i64* noundef nonnull %5)
  br label %35

35:                                               ; preds = %96, %27
  %.1 = phi i64 [ 1, %27 ], [ %97, %96 ]
  %36 = load i64, i64* @channelTracks, align 8
  %.not6 = icmp ugt i64 %.1, %36
  br i1 %.not6, label %98, label %37

37:                                               ; preds = %35
  %38 = load i64*, i64** @tracksNoHCV, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 %.1
  %40 = load i64, i64* %39, align 8
  %.not7 = icmp eq i64 %40, 0
  br i1 %.not7, label %93, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @cardNotPref, align 8
  %43 = load i64, i64* @channelTracks, align 8
  %.not8 = icmp eq i64 %42, %43
  br i1 %.not8, label %55, label %44

44:                                               ; preds = %41
  %45 = load i64*, i64** @tracksNotPref, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 %.1
  %47 = load i64, i64* %46, align 8
  %.not10 = icmp eq i64 %47, 0
  br i1 %.not10, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds i64, i64* %30, i64 %.1
  store i64 10000, i64* %49, align 8
  br label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @cardNotPref, align 8
  %52 = mul i64 %51, 100
  %53 = getelementptr inbounds i64, i64* %30, i64 %.1
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %48
  br label %78

55:                                               ; preds = %41
  %56 = load i64, i64* @channelTracks, align 8
  %57 = load i64, i64* @cardBotNotPref, align 8
  %58 = sub i64 %56, %57
  %59 = icmp ugt i64 %.1, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i64, i64* @cardTopNotPref, align 8
  %.not9 = icmp ugt i64 %.1, %61
  br i1 %.not9, label %75, label %62

62:                                               ; preds = %60
  %63 = load i64, i64* @cardNotPref, align 8
  %64 = load i64, i64* @cardTopNotPref, align 8
  %65 = load i64, i64* @cardBotNotPref, align 8
  %66 = add i64 %64, %65
  %67 = load i64, i64* @channelTracks, align 8
  %.neg = sub i64 %67, %66
  %68 = add i64 %.neg, %63
  %69 = icmp sgt i64 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %72

71:                                               ; preds = %62
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.BuildCostMatrix, i64 0, i64 0)) #6
  unreachable

72:                                               ; preds = %70
  %73 = mul nsw i64 %68, 100
  %74 = getelementptr inbounds i64, i64* %30, i64 %.1
  store i64 %73, i64* %74, align 8
  br label %77

75:                                               ; preds = %60, %55
  %76 = getelementptr inbounds i64, i64* %30, i64 %.1
  store i64 10000, i64* %76, align 8
  br label %77

77:                                               ; preds = %75, %72
  br label %78

78:                                               ; preds = %77, %54
  %79 = getelementptr inbounds i64, i64* %30, i64 %.1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 1000000
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i64, i64* %5, align 8
  %84 = sub i64 %83, %.1
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = sub nsw i64 0, %84
  br label %88

88:                                               ; preds = %86, %82
  %.0 = phi i64 [ %87, %86 ], [ %84, %82 ]
  %89 = getelementptr inbounds i64, i64* %30, i64 %.1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %.0
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %88, %78
  br label %95

93:                                               ; preds = %37
  %94 = getelementptr inbounds i64, i64* %30, i64 %.1
  store i64 1000000, i64* %94, align 8
  br label %95

95:                                               ; preds = %93, %92
  br label %96

96:                                               ; preds = %95
  %97 = add i64 %.1, 1
  br label %35, !llvm.loop !25

98:                                               ; preds = %35
  br label %99

99:                                               ; preds = %98, %24
  br label %100

100:                                              ; preds = %99
  %101 = add i64 %.13, 1
  br label %22, !llvm.loop !26

102:                                              ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
