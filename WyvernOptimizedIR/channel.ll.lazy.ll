; ModuleID = './channel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@channelFile = dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Error:\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\09Channel file cannot be opened.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%u%u%u\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\09Channel file description invalid at line %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\09Incorrect number of specifiers.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\09Channel file cannot be closed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\09Channel description invalid.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\09Channel has null dimension.\0A\00", align 1
@channelColumns = dso_local global i64 0, align 8
@channelNets = dso_local global i64 0, align 8
@TOP = dso_local global i64* null, align 8
@BOT = dso_local global i64* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"\09Column number out of range.\0A\00", align 1
@FIRST = dso_local global i64* null, align 8
@LAST = dso_local global i64* null, align 8
@DENSITY = dso_local global i64* null, align 8
@CROSSING = dso_local global i64* null, align 8
@channelTracks = dso_local global i64 0, align 8
@channelDensity = dso_local global i64 0, align 8
@channelDensityColumn = dso_local global i64 0, align 8
@channelTracksCopy = dso_local global i64 0, align 8
@str = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.1 = private unnamed_addr constant [30 x i8] c"\09Channel description invalid.\00", align 1
@str.2 = private unnamed_addr constant [29 x i8] c"\09Channel has null dimension.\00", align 1
@str.3 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.4 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be closed.\00", align 1
@str.5 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.6 = private unnamed_addr constant [33 x i8] c"\09Incorrect number of specifiers.\00", align 1
@str.7 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.8 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be opened.\00", align 1
@str.9 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.10 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be closed.\00", align 1
@str.11 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.12 = private unnamed_addr constant [33 x i8] c"\09Incorrect number of specifiers.\00", align 1
@str.13 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.14 = private unnamed_addr constant [29 x i8] c"\09Column number out of range.\00", align 1
@str.15 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.16 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be opened.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildChannel() #0 {
  call void @DimensionChannel()
  call void @DescribeChannel()
  call void @DensityChannel()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DimensionChannel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @channelFile, align 8
  %5 = call noalias %struct._IO_FILE* @fopen(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.7, i64 0, i64 0))
  %puts14 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.8, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %34, %8
  %.02 = phi i64 [ 0, %8 ], [ %.24, %34 ]
  %.01 = phi i64 [ 0, %8 ], [ %10, %34 ]
  %.0 = phi i64 [ 0, %8 ], [ %.3, %34 ]
  %10 = add i64 %.01, 1
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %.not = icmp eq i32 %11, -1
  br i1 %.not, label %33, label %18

18:                                               ; preds = %9
  %19 = icmp eq i32 %11, 3
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = icmp ult i64 %.02, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20
  %.13 = phi i64 [ %13, %22 ], [ %.02, %20 ]
  %24 = icmp ult i64 %.0, %15
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25, %23
  %.1 = phi i64 [ %15, %25 ], [ %.0, %23 ]
  %27 = icmp ult i64 %.1, %17
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %26
  %.2 = phi i64 [ %17, %28 ], [ %.1, %26 ]
  br label %32

30:                                               ; preds = %18
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.5, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 noundef %10) #5
  %puts12 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %9
  %.24 = phi i64 [ %.13, %32 ], [ %.02, %9 ]
  %.3 = phi i64 [ %.2, %32 ], [ %.0, %9 ]
  br label %34

34:                                               ; preds = %33
  %.not6 = icmp eq i32 %11, -1
  br i1 %.not6, label %35, label %9, !llvm.loop !4

35:                                               ; preds = %34
  %36 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %5) #5
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.3, i64 0, i64 0))
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %35
  %40 = icmp eq i64 %.24, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @str.1, i64 0, i64 0))
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  store i64 %.24, i64* @channelColumns, align 8
  store i64 %.3, i64* @channelNets, align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %41, %38, %30, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DescribeChannel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @channelColumns, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 8
  %7 = call noalias i8* @malloc(i64 noundef %6) #5
  store i8* %7, i8** bitcast (i64** @TOP to i8**), align 8
  %8 = shl i64 %4, 3
  %9 = add i64 %8, 8
  %10 = call noalias i8* @malloc(i64 noundef %9) #5
  store i8* %10, i8** bitcast (i64** @BOT to i8**), align 8
  br label %11

11:                                               ; preds = %18, %0
  %.0 = phi i64 [ 0, %0 ], [ %19, %18 ]
  %12 = load i64, i64* @channelColumns, align 8
  %.not = icmp ugt i64 %.0, %12
  br i1 %.not, label %20, label %13

13:                                               ; preds = %11
  %14 = load i64*, i64** @TOP, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 %.0
  store i64 0, i64* %15, align 8
  %16 = load i64*, i64** @BOT, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 %.0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %13
  %19 = add i64 %.0, 1
  br label %11, !llvm.loop !6

20:                                               ; preds = %11
  %21 = load i8*, i8** @channelFile, align 8
  %22 = call noalias %struct._IO_FILE* @fopen(i8* noundef %21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %23 = icmp eq %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.15, i64 0, i64 0))
  %puts12 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.16, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %52, %25
  %.01 = phi i64 [ 0, %25 ], [ %27, %52 ]
  %27 = add i64 %.01, 1
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %29 = load i32, i32* %1, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* %2, align 4
  %32 = zext i32 %31 to i64
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %.not4 = icmp eq i32 %28, -1
  br i1 %.not4, label %51, label %35

35:                                               ; preds = %26
  %36 = icmp eq i32 %28, 3
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load i64, i64* @channelColumns, align 8
  %39 = icmp ult i64 %38, %30
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.13, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 noundef %27) #5
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.14, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %37
  %43 = load i64*, i64** @BOT, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 %30
  store i64 %32, i64* %44, align 8
  %45 = load i64*, i64** @TOP, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 %30
  store i64 %34, i64* %46, align 8
  br label %47

47:                                               ; preds = %42
  br label %50

48:                                               ; preds = %35
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.11, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 noundef %27) #5
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.12, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51
  %.not5 = icmp eq i32 %28, -1
  br i1 %.not5, label %53, label %26, !llvm.loop !7

53:                                               ; preds = %52
  %54 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %22) #5
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.9, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.10, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %53
  ret void

UnifiedUnreachableBlock:                          ; preds = %56, %48, %40, %24
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DensityChannel() #0 {
  %1 = load i64, i64* @channelNets, align 8
  %2 = shl i64 %1, 3
  %3 = add i64 %2, 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #5
  store i8* %4, i8** bitcast (i64** @FIRST to i8**), align 8
  %5 = shl i64 %1, 3
  %6 = add i64 %5, 8
  %7 = call noalias i8* @malloc(i64 noundef %6) #5
  store i8* %7, i8** bitcast (i64** @LAST to i8**), align 8
  %8 = load i64, i64* @channelColumns, align 8
  %9 = shl i64 %8, 3
  %10 = add i64 %9, 8
  %11 = call noalias i8* @malloc(i64 noundef %10) #5
  store i8* %11, i8** bitcast (i64** @DENSITY to i8**), align 8
  %12 = load i64, i64* @channelNets, align 8
  %13 = shl i64 %12, 3
  %14 = add i64 %13, 8
  %15 = call noalias i8* @malloc(i64 noundef %14) #5
  store i8* %15, i8** bitcast (i64** @CROSSING to i8**), align 8
  br label %16

16:                                               ; preds = %25, %0
  %.0 = phi i64 [ 0, %0 ], [ %26, %25 ]
  %17 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %17
  br i1 %.not, label %27, label %18

18:                                               ; preds = %16
  %19 = load i64*, i64** @FIRST, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 %.0
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** @LAST, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %.0
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** @CROSSING, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 %.0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18
  %26 = add i64 %.0, 1
  br label %16, !llvm.loop !8

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %33, %27
  %.1 = phi i64 [ 0, %27 ], [ %34, %33 ]
  %29 = load i64, i64* @channelColumns, align 8
  %.not11 = icmp ugt i64 %.1, %29
  br i1 %.not11, label %35, label %30

30:                                               ; preds = %28
  %31 = load i64*, i64** @DENSITY, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %.1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30
  %34 = add i64 %.1, 1
  br label %28, !llvm.loop !9

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %92, %35
  %.01 = phi i64 [ 1, %35 ], [ %93, %92 ]
  %37 = load i64, i64* @channelNets, align 8
  %.not12 = icmp ugt i64 %.01, %37
  br i1 %.not12, label %94, label %38

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %55, %38
  %.02 = phi i64 [ 1, %38 ], [ %56, %55 ]
  %40 = load i64, i64* @channelColumns, align 8
  %.not14 = icmp ugt i64 %.02, %40
  br i1 %.not14, label %.loopexit8, label %41

41:                                               ; preds = %39
  %42 = load i64*, i64** @BOT, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 %.02
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, %.01
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i64*, i64** @TOP, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 %.02
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, %.01
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %41
  %52 = load i64*, i64** @FIRST, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 %.01
  store i64 %.02, i64* %53, align 8
  br label %57

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = add i64 %.02, 1
  br label %39, !llvm.loop !10

.loopexit8:                                       ; preds = %39
  br label %57

57:                                               ; preds = %.loopexit8, %51
  %58 = load i64, i64* @channelColumns, align 8
  br label %59

59:                                               ; preds = %74, %57
  %.13 = phi i64 [ %58, %57 ], [ %75, %74 ]
  %.not15 = icmp eq i64 %.13, 0
  br i1 %.not15, label %.loopexit, label %60

60:                                               ; preds = %59
  %61 = load i64*, i64** @BOT, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 %.13
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, %.01
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i64*, i64** @TOP, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 %.13
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, %.01
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %60
  %71 = load i64*, i64** @LAST, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 %.01
  store i64 %.13, i64* %72, align 8
  br label %76

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = add i64 %.13, -1
  br label %59, !llvm.loop !11

.loopexit:                                        ; preds = %59
  br label %76

76:                                               ; preds = %.loopexit, %70
  %77 = load i64*, i64** @FIRST, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 %.01
  %79 = load i64, i64* %78, align 8
  br label %80

80:                                               ; preds = %89, %76
  %.2 = phi i64 [ %79, %76 ], [ %90, %89 ]
  %81 = load i64*, i64** @LAST, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 %.01
  %83 = load i64, i64* %82, align 8
  %.not16 = icmp ugt i64 %.2, %83
  br i1 %.not16, label %91, label %84

84:                                               ; preds = %80
  %85 = load i64*, i64** @DENSITY, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 %.2
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %84
  %90 = add i64 %.2, 1
  br label %80, !llvm.loop !12

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = add i64 %.01, 1
  br label %36, !llvm.loop !13

94:                                               ; preds = %36
  %95 = load i64, i64* @channelColumns, align 8
  br label %96

96:                                               ; preds = %107, %94
  %.06 = phi i64 [ undef, %94 ], [ %.17, %107 ]
  %.04 = phi i64 [ 0, %94 ], [ %.15, %107 ]
  %.3 = phi i64 [ %95, %94 ], [ %108, %107 ]
  %.not13 = icmp eq i64 %.3, 0
  br i1 %.not13, label %109, label %97

97:                                               ; preds = %96
  %98 = load i64*, i64** @DENSITY, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 %.3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ugt i64 %100, %.04
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64*, i64** @DENSITY, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 %.3
  %105 = load i64, i64* %104, align 8
  br label %106

106:                                              ; preds = %102, %97
  %.17 = phi i64 [ %.3, %102 ], [ %.06, %97 ]
  %.15 = phi i64 [ %105, %102 ], [ %.04, %97 ]
  br label %107

107:                                              ; preds = %106
  %108 = add i64 %.3, -1
  br label %96, !llvm.loop !14

109:                                              ; preds = %96
  store i64 %.04, i64* @channelTracks, align 8
  store i64 %.04, i64* @channelDensity, align 8
  store i64 %.06, i64* @channelDensityColumn, align 8
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
