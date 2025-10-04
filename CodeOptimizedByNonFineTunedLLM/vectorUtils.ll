; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/vectorUtils.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/vectorUtils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.IntVectorStruct = type { i32, i32, i32* }
%struct.CharVectorStruct = type { i32, i32, i8* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.NodeVecVecStruct = type { i32, i32, %struct.NodePtrVecStruct** }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [48 x i8] c"\0A\0AIntVector_insertEnd failed realloc size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Malloc failure in NodePtrVec creation\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Malloc failure in NodePtrVec storage creation\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\0A\0ANodePtrVec_push failed malloc(%d). Node: %d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c", label: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Malloc failure in NodeVecVec storage creation\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"Malloc failure in NodeVecVec creation\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\0A\0ANodeVecVec_push failed malloc\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IntVectorStruct* @IntVector_new(i32 noundef %0) #0 {
  %2 = alloca %struct.IntVectorStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call noalias i8* @malloc(i64 noundef 16) #5
  %7 = bitcast i8* %6 to %struct.IntVectorStruct*
  store %struct.IntVectorStruct* %7, %struct.IntVectorStruct** %4, align 8
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call noalias i8* @malloc(i64 noundef %13) #5
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %21 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %23 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %26 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  store %struct.IntVectorStruct* %27, %struct.IntVectorStruct** %2, align 8
  br label %32

28:                                               ; preds = %10
  %29 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %30 = bitcast %struct.IntVectorStruct* %29 to i8*
  call void @free(i8* noundef %30) #5
  store %struct.IntVectorStruct* null, %struct.IntVectorStruct** %2, align 8
  br label %32

31:                                               ; preds = %1
  store %struct.IntVectorStruct* null, %struct.IntVectorStruct** %2, align 8
  br label %32

32:                                               ; preds = %31, %28, %18
  %33 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  ret %struct.IntVectorStruct* %33
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @IntVector_delete(%struct.IntVectorStruct* noundef %0) #0 {
  %2 = alloca %struct.IntVectorStruct*, align 8
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %2, align 8
  %3 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %4 = icmp ne %struct.IntVectorStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %7 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %12 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* noundef %14) #5
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %17 = bitcast %struct.IntVectorStruct* %16 to i8*
  call void @free(i8* noundef %17) #5
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %13 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %16 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %11
  %22 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %23 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call i8* @realloc(i8* noundef %25, i64 noundef %29) #5
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %33 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %35 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %42 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %48

43:                                               ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 2
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 noundef %46)
  store i1 false, i1* %3, align 1
  br label %61

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %11
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %52 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %58 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  store i1 true, i1* %3, align 1
  br label %61

61:                                               ; preds = %49, %43, %10
  %62 = load i1, i1* %3, align 1
  ret i1 %62
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %10
  %15 = call i16** @__ctype_b_loc() #6
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %16, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 2048
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @findNextNumber(i8* noundef %28)
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %27, %14
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @atoi(i8* noundef %35) #7
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @findNextNumber(i8* noundef %37)
  store i8* %38, i8** %5, align 8
  %39 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef %39, i32 noundef %40)
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %31, !llvm.loop !4

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %42, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @findNextNumber(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call i16** @__ctype_b_loc() #6
  %5 = load i16*, i16** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %5, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 2048
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %39, %16
  %20 = call i16** @__ctype_b_loc() #6
  %21 = load i16*, i16** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %21, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 2048
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %19
  %38 = phi i1 [ false, %19 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  br label %19, !llvm.loop !6

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i8* null, i8** %2, align 8
  br label %110

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %70, %49
  %51 = call i16** @__ctype_b_loc() #6
  %52 = load i16*, i16** %51, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %52, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 2048
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %63, %50
  %69 = phi i1 [ false, %50 ], [ %67, %63 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  br label %50, !llvm.loop !7

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i8* null, i8** %2, align 8
  br label %110

81:                                               ; preds = %74
  %82 = load i8*, i8** %3, align 8
  store i8* %82, i8** %2, align 8
  br label %110

83:                                               ; preds = %1
  br label %84

84:                                               ; preds = %94, %83
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i8* null, i8** %2, align 8
  br label %110

91:                                               ; preds = %84
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %91
  %95 = call i16** @__ctype_b_loc() #6
  %96 = load i16*, i16** %95, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %96, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 2048
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br i1 %107, label %84, label %108, !llvm.loop !8

108:                                              ; preds = %94
  %109 = load i8*, i8** %3, align 8
  store i8* %109, i8** %2, align 8
  br label %110

110:                                              ; preds = %108, %90, %81, %80, %48
  %111 = load i8*, i8** %2, align 8
  ret i8* %111
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CharVectorStruct* @CharVector_new(i32 noundef %0) #0 {
  %2 = alloca %struct.CharVectorStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.CharVectorStruct*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call noalias i8* @malloc(i64 noundef 16) #5
  %7 = bitcast i8* %6 to %struct.CharVectorStruct*
  store %struct.CharVectorStruct* %7, %struct.CharVectorStruct** %4, align 8
  %8 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %9 = icmp ne %struct.CharVectorStruct* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1
  %14 = call noalias i8* @malloc(i64 noundef %13) #5
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %20 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %22 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %25 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  store %struct.CharVectorStruct* %26, %struct.CharVectorStruct** %2, align 8
  br label %31

27:                                               ; preds = %10
  %28 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %29 = bitcast %struct.CharVectorStruct* %28 to i8*
  call void @free(i8* noundef %29) #5
  store %struct.CharVectorStruct* null, %struct.CharVectorStruct** %2, align 8
  br label %31

30:                                               ; preds = %1
  store %struct.CharVectorStruct* null, %struct.CharVectorStruct** %2, align 8
  br label %31

31:                                               ; preds = %30, %27, %17
  %32 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  ret %struct.CharVectorStruct* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CharVector_delete(%struct.CharVectorStruct* noundef %0) #0 {
  %2 = alloca %struct.CharVectorStruct*, align 8
  store %struct.CharVectorStruct* %0, %struct.CharVectorStruct** %2, align 8
  %3 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %4 = icmp ne %struct.CharVectorStruct* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %7 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %12 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %13) #5
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %16 = bitcast %struct.CharVectorStruct* %15 to i8*
  call void @free(i8* noundef %16) #5
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.CharVectorStruct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.CharVectorStruct* %0, %struct.CharVectorStruct** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %9 = icmp ne %struct.CharVectorStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %13 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %16 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %11
  %22 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %23 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = call i8* @realloc(i8* noundef %24, i64 noundef %28) #5
  %30 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %31 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %33 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 2
  %39 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %40 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %46

41:                                               ; preds = %21
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 noundef %44)
  store i1 false, i1* %3, align 1
  br label %59

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %11
  %48 = load i8, i8* %5, align 1
  %49 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %50 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %48, i8* %54, align 1
  %55 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %56 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  store i1 true, i1* %3, align 1
  br label %59

59:                                               ; preds = %47, %41, %10
  %60 = load i1, i1* %3, align 1
  ret i1 %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CharVectorStruct*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.CharVectorStruct* %0, %struct.CharVectorStruct** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i8 1, i8* %6, align 1
  store i8 0, i8* %7, align 1
  %8 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %9 = icmp ne %struct.CharVectorStruct* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %47

14:                                               ; preds = %10
  %15 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %16 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %17

17:                                               ; preds = %36, %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %19 = call i32 @fgetc(%struct._IO_FILE* noundef %18)
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %22 = call i32 @feof(%struct._IO_FILE* noundef %21) #5
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %17
  store i8 0, i8* %6, align 1
  br label %35

29:                                               ; preds = %24
  %30 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %31 = load i8, i8* %7, align 1
  %32 = call zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* noundef %30, i8 noundef signext %31)
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %47

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8, i8* %6, align 1
  %38 = trunc i8 %37 to i1
  br i1 %38, label %17, label %39, !llvm.loop !9

39:                                               ; preds = %36
  %40 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %41 = call zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* noundef %40, i8 noundef signext 0)
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %47

43:                                               ; preds = %39
  %44 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %45 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %42, %33, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %0) #0 {
  %2 = alloca %struct.NodePtrVecStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct**, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = call noalias i8* @malloc(i64 noundef %8) #5
  %10 = bitcast i8* %9 to %struct.NodeStruct**
  store %struct.NodeStruct** %10, %struct.NodeStruct*** %5, align 8
  %11 = load %struct.NodeStruct**, %struct.NodeStruct*** %5, align 8
  %12 = icmp ne %struct.NodeStruct** %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %2, align 8
  br label %34

15:                                               ; preds = %1
  %16 = call noalias i8* @malloc(i64 noundef 16) #5
  %17 = bitcast i8* %16 to %struct.NodePtrVecStruct*
  store %struct.NodePtrVecStruct* %17, %struct.NodePtrVecStruct** %4, align 8
  %18 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %19 = icmp ne %struct.NodePtrVecStruct* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.NodeStruct**, %struct.NodeStruct*** %5, align 8
  %22 = bitcast %struct.NodeStruct** %21 to i8*
  call void @free(i8* noundef %22) #5
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %2, align 8
  br label %34

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %27 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %29 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.NodeStruct**, %struct.NodeStruct*** %5, align 8
  %31 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %32 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %31, i32 0, i32 2
  store %struct.NodeStruct** %30, %struct.NodeStruct*** %32, align 8
  %33 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %33, %struct.NodePtrVecStruct** %2, align 8
  br label %34

34:                                               ; preds = %24, %20, %13
  %35 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  ret %struct.NodePtrVecStruct* %35
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %0) #0 {
  %2 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %2, align 8
  %3 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %4 = icmp ne %struct.NodePtrVecStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %7 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %6, i32 0, i32 2
  %8 = load %struct.NodeStruct**, %struct.NodeStruct*** %7, align 8
  %9 = icmp ne %struct.NodeStruct** %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %12 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %11, i32 0, i32 2
  %13 = load %struct.NodeStruct**, %struct.NodeStruct*** %12, align 8
  %14 = bitcast %struct.NodeStruct** %13 to i8*
  call void @free(i8* noundef %14) #5
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %17 = bitcast %struct.NodePtrVecStruct* %16 to i8*
  call void @free(i8* noundef %17) #5
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodePtrVecStruct* @NodePtrVec_copy(%struct.NodePtrVecStruct* noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %5, align 1
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %10 = icmp ne %struct.NodePtrVecStruct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %17 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %18)
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %22 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi %struct.NodePtrVecStruct* [ %19, %15 ], [ %24, %20 ]
  store %struct.NodePtrVecStruct* %26, %struct.NodePtrVecStruct** %7, align 8
  %27 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %28 = icmp ne %struct.NodePtrVecStruct* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %61

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %34 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %39 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %38, i32 0, i32 2
  %40 = load %struct.NodeStruct**, %struct.NodeStruct*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %40, i64 %42
  %44 = load %struct.NodeStruct*, %struct.NodeStruct** %43, align 8
  %45 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %46 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %45, i32 0, i32 2
  %47 = load %struct.NodeStruct**, %struct.NodeStruct*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %47, i64 %49
  store %struct.NodeStruct* %44, %struct.NodeStruct** %50, align 8
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31, !llvm.loop !10

54:                                               ; preds = %31
  %55 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %56 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %59 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  store %struct.NodePtrVecStruct* %60, %struct.NodePtrVecStruct** %3, align 8
  br label %61

61:                                               ; preds = %54, %29, %11
  %62 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  ret %struct.NodePtrVecStruct* %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %8 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %9 = icmp ne %struct.NodePtrVecStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %75

11:                                               ; preds = %2
  %12 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %13 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %16 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %11
  %22 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %23 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %22, i32 0, i32 2
  %24 = load %struct.NodeStruct**, %struct.NodeStruct*** %23, align 8
  %25 = bitcast %struct.NodeStruct** %24 to i8*
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = call i8* @realloc(i8* noundef %25, i64 noundef %29) #5
  %31 = bitcast i8* %30 to %struct.NodeStruct**
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %33 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %32, i32 0, i32 2
  store %struct.NodeStruct** %31, %struct.NodeStruct*** %33, align 8
  %34 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %35 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %34, i32 0, i32 2
  %36 = load %struct.NodeStruct**, %struct.NodeStruct*** %35, align 8
  %37 = icmp ne %struct.NodeStruct** %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %42 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %62

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 2, %44
  %46 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %47 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 noundef %45, i32 noundef %48)
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %56 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* noundef %57)
  br label %61

59:                                               ; preds = %43
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  store i1 false, i1* %3, align 1
  br label %75

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %11
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %65 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %66 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %65, i32 0, i32 2
  %67 = load %struct.NodeStruct**, %struct.NodeStruct*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %67, i64 %69
  store %struct.NodeStruct* %64, %struct.NodeStruct** %70, align 8
  %71 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %72 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  store i1 true, i1* %3, align 1
  br label %75

75:                                               ; preds = %63, %61, %10
  %76 = load i1, i1* %3, align 1
  ret i1 %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef %0) #0 {
  %2 = alloca %struct.NodeStruct*, align 8
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %3, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %4, align 8
  %5 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %6 = icmp ne %struct.NodePtrVecStruct* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.NodeStruct* null, %struct.NodeStruct** %2, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %10 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %15 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %19 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %18, i32 0, i32 2
  %20 = load %struct.NodeStruct**, %struct.NodeStruct*** %19, align 8
  %21 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %22 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %20, i64 %24
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %25, align 8
  store %struct.NodeStruct* %26, %struct.NodeStruct** %4, align 8
  br label %27

27:                                               ; preds = %13, %8
  %28 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  store %struct.NodeStruct* %28, %struct.NodeStruct** %2, align 8
  br label %29

29:                                               ; preds = %27, %7
  %30 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  ret %struct.NodeStruct* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodePtrVec_find(%struct.NodePtrVecStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %8 = icmp ne %struct.NodePtrVecStruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i1 false, i1* %3, align 1
  br label %33

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %14 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %19 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %18, i32 0, i32 2
  %20 = load %struct.NodeStruct**, %struct.NodeStruct*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %20, i64 %22
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %23, align 8
  %25 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %26 = icmp eq %struct.NodeStruct* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i1 true, i1* %3, align 1
  br label %33

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %11, !llvm.loop !11

32:                                               ; preds = %11
  store i1 false, i1* %3, align 1
  br label %33

33:                                               ; preds = %32, %27, %9
  %34 = load i1, i1* %3, align 1
  ret i1 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodePtrVec_findReverse(%struct.NodePtrVecStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %8 = icmp ne %struct.NodePtrVecStruct* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %10, i32 0, i32 2
  %12 = load %struct.NodeStruct**, %struct.NodeStruct*** %11, align 8
  %13 = icmp ne %struct.NodeStruct** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %16 = icmp ne %struct.NodeStruct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %9, %2
  store i1 false, i1* %3, align 1
  br label %42

18:                                               ; preds = %14
  %19 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %20 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %38, %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %28 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %27, i32 0, i32 2
  %29 = load %struct.NodeStruct**, %struct.NodeStruct*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %29, i64 %31
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %32, align 8
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %35 = icmp eq %struct.NodeStruct* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i1 true, i1* %3, align 1
  br label %42

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %23, !llvm.loop !12

41:                                               ; preds = %23
  store i1 false, i1* %3, align 1
  br label %42

42:                                               ; preds = %41, %36, %17
  %43 = load i1, i1* %3, align 1
  ret i1 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef %0, %struct.NodePtrVecStruct* noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %10 = icmp ne %struct.NodePtrVecStruct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %13 = icmp ne %struct.NodePtrVecStruct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  br label %40

15:                                               ; preds = %11
  %16 = load i8, i8* %6, align 1
  %17 = trunc i8 %16 to i1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %20

19:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %24 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %29 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %30 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %29, i32 0, i32 2
  %31 = load %struct.NodeStruct**, %struct.NodeStruct*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %31, i64 %33
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %34, align 8
  %36 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %28, %struct.NodeStruct* noundef %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %21, !llvm.loop !13

40:                                               ; preds = %14, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeVecVecStruct* @NodeVecVec_new(i32 noundef %0) #0 {
  %2 = alloca %struct.NodeVecVecStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.NodeVecVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct**, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = call noalias i8* @malloc(i64 noundef %8) #5
  %10 = bitcast i8* %9 to %struct.NodePtrVecStruct**
  store %struct.NodePtrVecStruct** %10, %struct.NodePtrVecStruct*** %5, align 8
  %11 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %5, align 8
  %12 = icmp ne %struct.NodePtrVecStruct** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15)
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = call noalias i8* @malloc(i64 noundef 16) #5
  %19 = bitcast i8* %18 to %struct.NodeVecVecStruct*
  store %struct.NodeVecVecStruct* %19, %struct.NodeVecVecStruct** %4, align 8
  %20 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %21 = icmp ne %struct.NodeVecVecStruct* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %5, align 8
  %24 = bitcast %struct.NodePtrVecStruct** %23 to i8*
  call void @free(i8* noundef %24) #5
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = call i32 @fflush(%struct._IO_FILE* noundef %26)
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %2, align 8
  br label %38

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %31 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %33 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %5, align 8
  %35 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %36 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %35, i32 0, i32 2
  store %struct.NodePtrVecStruct** %34, %struct.NodePtrVecStruct*** %36, align 8
  %37 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  store %struct.NodeVecVecStruct* %37, %struct.NodeVecVecStruct** %2, align 8
  br label %38

38:                                               ; preds = %28, %22, %13
  %39 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  ret %struct.NodeVecVecStruct* %39
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodeVecVec_delete(%struct.NodeVecVecStruct* noundef %0) #0 {
  %2 = alloca %struct.NodeVecVecStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.NodeVecVecStruct* %0, %struct.NodeVecVecStruct** %2, align 8
  %4 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %5 = icmp ne %struct.NodeVecVecStruct* %4, null
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %21, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %10 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %15 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %14, i32 0, i32 2
  %16 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %16, i64 %18
  %20 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %19, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %20)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %7, !llvm.loop !14

24:                                               ; preds = %7
  %25 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %26 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %25, i32 0, i32 2
  %27 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %26, align 8
  %28 = icmp ne %struct.NodePtrVecStruct** %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %31 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %30, i32 0, i32 2
  %32 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %31, align 8
  %33 = bitcast %struct.NodePtrVecStruct** %32 to i8*
  call void @free(i8* noundef %33) #5
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %36 = bitcast %struct.NodeVecVecStruct* %35 to i8*
  call void @free(i8* noundef %36) #5
  br label %37

37:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* noundef %0, %struct.NodePtrVecStruct* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodeVecVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodeVecVecStruct* %0, %struct.NodeVecVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %10 = call %struct.NodePtrVecStruct* @NodePtrVec_copy(%struct.NodePtrVecStruct* noundef %9, i1 noundef zeroext false)
  store %struct.NodePtrVecStruct* %10, %struct.NodePtrVecStruct** %8, align 8
  %11 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %12 = icmp ne %struct.NodeVecVecStruct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %15 = icmp ne %struct.NodePtrVecStruct* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %18 = icmp ne %struct.NodePtrVecStruct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %2
  store i1 false, i1* %3, align 1
  br label %69

20:                                               ; preds = %16
  %21 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %22 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %25 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %20
  %31 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %32 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %31, i32 0, i32 2
  %33 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %32, align 8
  %34 = bitcast %struct.NodePtrVecStruct** %33 to i8*
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = call i8* @realloc(i8* noundef %34, i64 noundef %38) #5
  %40 = bitcast i8* %39 to %struct.NodePtrVecStruct**
  %41 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %42 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %41, i32 0, i32 2
  store %struct.NodePtrVecStruct** %40, %struct.NodePtrVecStruct*** %42, align 8
  %43 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %44 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %43, i32 0, i32 2
  %45 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %44, align 8
  %46 = icmp ne %struct.NodePtrVecStruct** %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 2, %48
  %50 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %51 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %30
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = call i32 @fflush(%struct._IO_FILE* noundef %54)
  store i1 false, i1* %3, align 1
  br label %69

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %59 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %60 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %59, i32 0, i32 2
  %61 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %61, i64 %63
  store %struct.NodePtrVecStruct* %58, %struct.NodePtrVecStruct** %64, align 8
  %65 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %66 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i1 true, i1* %3, align 1
  br label %69

69:                                               ; preds = %57, %52, %19
  %70 = load i1, i1* %3, align 1
  ret i1 %70
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind readonly willreturn }

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
