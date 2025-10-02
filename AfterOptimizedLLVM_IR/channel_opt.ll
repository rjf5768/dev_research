; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/channel.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildChannel() #0 {
  call void @DimensionChannel()
  call void @DescribeChannel()
  call void @DensityChannel()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DimensionChannel() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i8*, i8** @channelFile, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %1, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

19:                                               ; preds = %0
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i64, i64* %2, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %2, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* noundef %9, i32* noundef %10, i32* noundef %11)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %62

34:                                               ; preds = %20
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %49
  br label %61

56:                                               ; preds = %34
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %2, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 noundef %58)
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %20
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %20, label %66, !llvm.loop !4

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %68 = call i32 @fclose(%struct._IO_FILE* noundef %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

73:                                               ; preds = %66
  %74 = load i64, i64* %3, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

80:                                               ; preds = %73
  %81 = load i64, i64* %3, align 8
  store i64 %81, i64* @channelColumns, align 8
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* @channelNets, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DescribeChannel() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* @channelColumns, align 8
  %11 = add i64 %10, 1
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @malloc(i64 noundef %12) #5
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** @TOP, align 8
  %15 = load i64, i64* @channelColumns, align 8
  %16 = add i64 %15, 1
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 noundef %17) #5
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** @BOT, align 8
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %31, %0
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @channelColumns, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64*, i64** @TOP, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** @BOT, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %20, !llvm.loop !6

34:                                               ; preds = %20
  %35 = load i8*, i8** @channelFile, align 8
  %36 = call noalias %struct._IO_FILE* @fopen(i8* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %36, %struct._IO_FILE** %1, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %38 = icmp eq %struct._IO_FILE* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

42:                                               ; preds = %34
  store i64 0, i64* %2, align 8
  br label %43

43:                                               ; preds = %86, %42
  %44 = load i64, i64* %2, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %2, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* noundef %7, i32* noundef %8, i32* noundef %9)
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, -1
  br i1 %56, label %57, label %85

57:                                               ; preds = %43
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @channelColumns, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i64, i64* %2, align 8
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 noundef %66)
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

69:                                               ; preds = %60
  %70 = load i64, i64* %4, align 8
  %71 = load i64*, i64** @BOT, align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64*, i64** @TOP, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %69
  br label %84

79:                                               ; preds = %57
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i64, i64* %2, align 8
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 noundef %81)
  %83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %43
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, -1
  br i1 %88, label %43, label %89, !llvm.loop !7

89:                                               ; preds = %86
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* noundef %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

96:                                               ; preds = %89
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DensityChannel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = add i64 %6, 1
  %8 = mul i64 %7, 8
  %9 = call noalias i8* @malloc(i64 noundef %8) #5
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** @FIRST, align 8
  %11 = load i64, i64* @channelNets, align 8
  %12 = add i64 %11, 1
  %13 = mul i64 %12, 8
  %14 = call noalias i8* @malloc(i64 noundef %13) #5
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** @LAST, align 8
  %16 = load i64, i64* @channelColumns, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 noundef %18) #5
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** @DENSITY, align 8
  %21 = load i64, i64* @channelNets, align 8
  %22 = add i64 %21, 1
  %23 = mul i64 %22, 8
  %24 = call noalias i8* @malloc(i64 noundef %23) #5
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** @CROSSING, align 8
  store i64 0, i64* %1, align 8
  br label %26

26:                                               ; preds = %40, %0
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @channelNets, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i64*, i64** @FIRST, align 8
  %32 = load i64, i64* %1, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** @LAST, align 8
  %35 = load i64, i64* %1, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** @CROSSING, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %1, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %1, align 8
  br label %26, !llvm.loop !8

43:                                               ; preds = %26
  store i64 0, i64* %1, align 8
  br label %44

44:                                               ; preds = %52, %43
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @channelColumns, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i64*, i64** @DENSITY, align 8
  %50 = load i64, i64* %1, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %1, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %1, align 8
  br label %44, !llvm.loop !9

55:                                               ; preds = %44
  store i64 1, i64* %2, align 8
  br label %56

56:                                               ; preds = %138, %55
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* @channelNets, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %141

60:                                               ; preds = %56
  store i64 1, i64* %3, align 8
  br label %61

61:                                               ; preds = %85, %60
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @channelColumns, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i64*, i64** @BOT, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %2, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i64*, i64** @TOP, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %2, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72, %65
  %80 = load i64, i64* %3, align 8
  %81 = load i64*, i64** @FIRST, align 8
  %82 = load i64, i64* %2, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %80, i64* %83, align 8
  br label %88

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %3, align 8
  br label %61, !llvm.loop !10

88:                                               ; preds = %79, %61
  %89 = load i64, i64* @channelColumns, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %113, %88
  %91 = load i64, i64* %3, align 8
  %92 = icmp uge i64 %91, 1
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i64*, i64** @BOT, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load i64*, i64** @TOP, align 8
  %102 = load i64, i64* %3, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %2, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100, %93
  %108 = load i64, i64* %3, align 8
  %109 = load i64*, i64** @LAST, align 8
  %110 = load i64, i64* %2, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %108, i64* %111, align 8
  br label %116

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* %3, align 8
  br label %90, !llvm.loop !11

116:                                              ; preds = %107, %90
  %117 = load i64*, i64** @FIRST, align 8
  %118 = load i64, i64* %2, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %134, %116
  %122 = load i64, i64* %3, align 8
  %123 = load i64*, i64** @LAST, align 8
  %124 = load i64, i64* %2, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ule i64 %122, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load i64*, i64** @DENSITY, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %128
  %135 = load i64, i64* %3, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %3, align 8
  br label %121, !llvm.loop !12

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %2, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %2, align 8
  br label %56, !llvm.loop !13

141:                                              ; preds = %56
  store i64 0, i64* %4, align 8
  %142 = load i64, i64* @channelColumns, align 8
  store i64 %142, i64* %3, align 8
  br label %143

143:                                              ; preds = %160, %141
  %144 = load i64, i64* %3, align 8
  %145 = icmp uge i64 %144, 1
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load i64*, i64** @DENSITY, align 8
  %148 = load i64, i64* %3, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = icmp ugt i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i64*, i64** @DENSITY, align 8
  %155 = load i64, i64* %3, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %4, align 8
  %158 = load i64, i64* %3, align 8
  store i64 %158, i64* %5, align 8
  br label %159

159:                                              ; preds = %153, %146
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, -1
  store i64 %162, i64* %3, align 8
  br label %143, !llvm.loop !14

163:                                              ; preds = %143
  %164 = load i64, i64* %4, align 8
  store i64 %164, i64* @channelTracks, align 8
  %165 = load i64, i64* %4, align 8
  store i64 %165, i64* @channelDensity, align 8
  %166 = load i64, i64* %5, align 8
  store i64 %166, i64* @channelDensityColumn, align 8
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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
