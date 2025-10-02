; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/search.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._StrTreeNode = type { i32, i8*, i32, i32*, %struct._StrTreeNode*, %struct._PatternNode* }
%struct._PatternNode = type { i32, i32, i32, %struct._IO_FILE*, i8*, i32, i32, i32*, %struct.rtentry*, %struct._PatternNode* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtentry = type opaque

@.str = private unnamed_addr constant [84 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/search.c\00", align 1
@__FUNCTION__.calculate_bm_table = private unnamed_addr constant [19 x i8] c"calculate_bm_table\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Not enough virtual memory \0A\00", align 1
@tree_head = external dso_local global %struct._StrTreeNode*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Source: %x Destination %x \0A\00", align 1
@__FUNCTION__.NewPatternNode = private unnamed_addr constant [15 x i8] c"NewPatternNode\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Run out of virtual memory \0A\00", align 1
@__FUNCTION__.NewStrTreeNode = private unnamed_addr constant [15 x i8] c"NewStrTreeNode\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__FUNCTION__.db_init = private unnamed_addr constant [8 x i8] c"db_init\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can not open the input file\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(%d:%d)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"unrecognized input line start: %c \0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @calculate_bm_table(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call noalias i8* @malloc(i64 noundef 1024) #5
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.calculate_bm_table, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %22, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %13, !llvm.loop !4

25:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  store i32 %34, i32* %42, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %26, !llvm.loop !6

46:                                               ; preds = %26
  %47 = load i32*, i32** %6, align 8
  ret i32* %47
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @_fatal(i8* noundef, i8* noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @boyer_moore(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %84, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %17
  %25 = load i32*, i32** %11, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %25, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %51, %24
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %40, %37
  %50 = phi i1 [ false, %37 ], [ %48, %40 ]
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i32, i32* %55, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %13, align 4
  br label %37, !llvm.loop !7

67:                                               ; preds = %49
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = call i32 @memcmp(i8* noundef %68, i8* noundef %72, i64 noundef %75) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %89

84:                                               ; preds = %78, %67
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %17, !llvm.loop !8

88:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rtentry* @find_destination(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._StrTreeNode*, align 8
  %7 = alloca %struct._PatternNode*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  store %struct._StrTreeNode* %9, %struct._StrTreeNode** %6, align 8
  br label %10

10:                                               ; preds = %107, %2
  %11 = load %struct._StrTreeNode*, %struct._StrTreeNode** %6, align 8
  %12 = icmp ne %struct._StrTreeNode* %11, null
  br i1 %12, label %13, label %111

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct._StrTreeNode*, %struct._StrTreeNode** %6, align 8
  %17 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct._StrTreeNode*, %struct._StrTreeNode** %6, align 8
  %20 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct._StrTreeNode*, %struct._StrTreeNode** %6, align 8
  %23 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @boyer_moore(i8* noundef %14, i32 noundef %15, i8* noundef %18, i32 noundef %21, i32* noundef %24)
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %107

27:                                               ; preds = %13
  %28 = load %struct._StrTreeNode*, %struct._StrTreeNode** %6, align 8
  %29 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %28, i32 0, i32 5
  %30 = load %struct._PatternNode*, %struct._PatternNode** %29, align 8
  store %struct._PatternNode* %30, %struct._PatternNode** %7, align 8
  br label %31

31:                                               ; preds = %102, %27
  %32 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %33 = icmp ne %struct._PatternNode* %32, null
  br i1 %33, label %34, label %106

34:                                               ; preds = %31
  %35 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %36 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %43 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %46 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %49 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @boyer_moore(i8* noundef %40, i32 noundef %41, i8* noundef %44, i32 noundef %47, i32* noundef %50)
  store i32 %51, i32* %8, align 4
  br label %77

52:                                               ; preds = %34
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %56 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %61 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %62, %59 ], [ %64, %63 ]
  %67 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %68 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %71 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %74 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @boyer_moore(i8* noundef %53, i32 noundef %66, i8* noundef %69, i32 noundef %72, i32* noundef %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %65, %39
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %82 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %87 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %86, i32 0, i32 3
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %87, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 12
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 16
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 noundef %92, i32 noundef %96)
  br label %98

98:                                               ; preds = %85, %80
  %99 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %100 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %99, i32 0, i32 8
  %101 = load %struct.rtentry*, %struct.rtentry** %100, align 8
  store %struct.rtentry* %101, %struct.rtentry** %3, align 8
  br label %112

102:                                              ; preds = %77
  %103 = load %struct._PatternNode*, %struct._PatternNode** %7, align 8
  %104 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %103, i32 0, i32 9
  %105 = load %struct._PatternNode*, %struct._PatternNode** %104, align 8
  store %struct._PatternNode* %105, %struct._PatternNode** %7, align 8
  br label %31, !llvm.loop !9

106:                                              ; preds = %31
  br label %107

107:                                              ; preds = %106, %13
  %108 = load %struct._StrTreeNode*, %struct._StrTreeNode** %6, align 8
  %109 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %108, i32 0, i32 4
  %110 = load %struct._StrTreeNode*, %struct._StrTreeNode** %109, align 8
  store %struct._StrTreeNode* %110, %struct._StrTreeNode** %6, align 8
  br label %10, !llvm.loop !10

111:                                              ; preds = %10
  store %struct.rtentry* null, %struct.rtentry** %3, align 8
  br label %112

112:                                              ; preds = %111, %98
  %113 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  ret %struct.rtentry* %113
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._PatternNode* @NewPatternNode(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._PatternNode*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call noalias i8* @malloc(i64 noundef 64) #5
  %13 = bitcast i8* %12 to %struct._PatternNode*
  store %struct._PatternNode* %13, %struct._PatternNode** %11, align 8
  %14 = icmp eq %struct._PatternNode* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewPatternNode, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #6
  unreachable

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  %19 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  %22 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = call noalias i8* @malloc(i64 noundef %24) #5
  %26 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  %27 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = icmp eq i8* %25, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewPatternNode, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #6
  unreachable

30:                                               ; preds = %16
  %31 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  %32 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = call i8* @strncpy(i8* noundef %33, i8* noundef %34, i64 noundef %36) #5
  %38 = load i32, i32* %9, align 4
  %39 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  %40 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  %43 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32* @calculate_bm_table(i8* noundef %44, i32 noundef %45)
  %47 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  %48 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %47, i32 0, i32 7
  store i32* %46, i32** %48, align 8
  %49 = load %struct._PatternNode*, %struct._PatternNode** %11, align 8
  ret %struct._PatternNode* %49
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._StrTreeNode* @NewStrTreeNode(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._StrTreeNode*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call noalias i8* @malloc(i64 noundef 48) #5
  %9 = bitcast i8* %8 to %struct._StrTreeNode*
  store %struct._StrTreeNode* %9, %struct._StrTreeNode** %7, align 8
  %10 = icmp eq %struct._StrTreeNode* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewStrTreeNode, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %15 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = call noalias i8* @malloc(i64 noundef %17) #5
  %19 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %20 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = icmp eq i8* %18, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewStrTreeNode, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #6
  unreachable

23:                                               ; preds = %12
  %24 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %25 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = call i8* @strncpy(i8* noundef %26, i8* noundef %27, i64 noundef %29) #5
  %31 = load i32, i32* %6, align 4
  %32 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %33 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %35 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32* @calculate_bm_table(i8* noundef %36, i32 noundef %37)
  %39 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %40 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  ret %struct._StrTreeNode* %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @find_lcs(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %13, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %25, %5
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @calculate_bm_table(i8* noundef %33, i32 noundef %34)
  store i32* %35, i32** %19, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %15, align 4
  %36 = load i32*, i32** %19, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i32, i32* %36, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  br label %48

48:                                               ; preds = %162, %32
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %163

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i32, i32* %56, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %162

74:                                               ; preds = %52
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %79

79:                                               ; preds = %102, %74
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %16, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %84, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %92, %98
  br label %100

100:                                              ; preds = %83, %79
  %101 = phi i1 [ false, %79 ], [ %99, %83 ]
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %79, !llvm.loop !11

107:                                              ; preds = %100
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %112

112:                                              ; preds = %134, %107
  %113 = load i32, i32* %16, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %20, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %124, %130
  br label %132

132:                                              ; preds = %115, %112
  %133 = phi i1 [ false, %112 ], [ %131, %115 ]
  br i1 %133, label %134, label %141

134:                                              ; preds = %132
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %20, align 4
  br label %112, !llvm.loop !12

141:                                              ; preds = %132
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load i32, i32* %21, align 4
  store i32 %146, i32* %14, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %21, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  store i8* %152, i8** %12, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = load i32, i32* %14, align 4
  %158 = load i32*, i32** %11, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i8*, i8** %12, align 8
  store i8* %159, i8** %6, align 8
  br label %169

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %141
  store i32 1, i32* %16, align 4
  br label %162

162:                                              ; preds = %161, %71
  br label %48, !llvm.loop !13

163:                                              ; preds = %48
  %164 = load i32, i32* %14, align 4
  %165 = load i32*, i32** %11, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32*, i32** %19, align 8
  %167 = bitcast i32* %166 to i8*
  call void @free(i8* noundef %167) #5
  %168 = load i8*, i8** %12, align 8
  store i8* %168, i8** %6, align 8
  br label %169

169:                                              ; preds = %163, %156
  %170 = load i8*, i8** %6, align 8
  ret i8* %170
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @insert_rule(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._StrTreeNode*, align 8
  %8 = alloca %struct._StrTreeNode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct._PatternNode*, align 8
  %14 = alloca %struct._StrTreeNode*, align 8
  %15 = alloca %struct._PatternNode*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  store %struct._StrTreeNode* %16, %struct._StrTreeNode** %7, align 8
  store %struct._StrTreeNode* null, %struct._StrTreeNode** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %37, %3
  %18 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %19 = icmp ne %struct._StrTreeNode* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %22 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %25 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @find_lcs(i8* noundef %23, i32 noundef %26, i8* noundef %27, i32 noundef %28, i32* noundef %11)
  store i8* %29, i8** %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  store %struct._StrTreeNode* %35, %struct._StrTreeNode** %8, align 8
  %36 = load i8*, i8** %12, align 8
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %33, %20
  %38 = load %struct._StrTreeNode*, %struct._StrTreeNode** %7, align 8
  %39 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %38, i32 0, i32 4
  %40 = load %struct._StrTreeNode*, %struct._StrTreeNode** %39, align 8
  store %struct._StrTreeNode* %40, %struct._StrTreeNode** %7, align 8
  br label %17, !llvm.loop !14

41:                                               ; preds = %17
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %46 = icmp ne %struct._StrTreeNode* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %49 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call %struct._StrTreeNode* @NewStrTreeNode(i32 noundef %51, i8* noundef %52, i32 noundef %53)
  store %struct._StrTreeNode* %54, %struct._StrTreeNode** %14, align 8
  br label %59

55:                                               ; preds = %44
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call %struct._StrTreeNode* @NewStrTreeNode(i32 noundef 0, i8* noundef %56, i32 noundef %57)
  store %struct._StrTreeNode* %58, %struct._StrTreeNode** %14, align 8
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call %struct._PatternNode* @NewPatternNode(i32 noundef 0, i32 noundef 1, i8* noundef %60, i32 noundef %61, i32 noundef %62)
  store %struct._PatternNode* %63, %struct._PatternNode** %13, align 8
  %64 = load %struct._PatternNode*, %struct._PatternNode** %13, align 8
  %65 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %64, i32 0, i32 9
  store %struct._PatternNode* null, %struct._PatternNode** %65, align 8
  %66 = load %struct._PatternNode*, %struct._PatternNode** %13, align 8
  %67 = load %struct._StrTreeNode*, %struct._StrTreeNode** %14, align 8
  %68 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %67, i32 0, i32 5
  store %struct._PatternNode* %66, %struct._PatternNode** %68, align 8
  %69 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %70 = load %struct._StrTreeNode*, %struct._StrTreeNode** %14, align 8
  %71 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %70, i32 0, i32 4
  store %struct._StrTreeNode* %69, %struct._StrTreeNode** %71, align 8
  %72 = load %struct._StrTreeNode*, %struct._StrTreeNode** %14, align 8
  store %struct._StrTreeNode* %72, %struct._StrTreeNode** @tree_head, align 8
  br label %102

73:                                               ; preds = %41
  %74 = load %struct._StrTreeNode*, %struct._StrTreeNode** %8, align 8
  %75 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @strncpy(i8* noundef %76, i8* noundef %77, i64 noundef %79) #5
  %81 = load i32, i32* %9, align 4
  %82 = load %struct._StrTreeNode*, %struct._StrTreeNode** %8, align 8
  %83 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct._StrTreeNode*, %struct._StrTreeNode** %8, align 8
  %85 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %84, i32 0, i32 5
  %86 = load %struct._PatternNode*, %struct._PatternNode** %85, align 8
  %87 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call %struct._PatternNode* @NewPatternNode(i32 noundef %89, i32 noundef 1, i8* noundef %90, i32 noundef %91, i32 noundef %92)
  store %struct._PatternNode* %93, %struct._PatternNode** %15, align 8
  %94 = load %struct._StrTreeNode*, %struct._StrTreeNode** %8, align 8
  %95 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %94, i32 0, i32 5
  %96 = load %struct._PatternNode*, %struct._PatternNode** %95, align 8
  %97 = load %struct._PatternNode*, %struct._PatternNode** %15, align 8
  %98 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %97, i32 0, i32 9
  store %struct._PatternNode* %96, %struct._PatternNode** %98, align 8
  %99 = load %struct._PatternNode*, %struct._PatternNode** %15, align 8
  %100 = load %struct._StrTreeNode*, %struct._StrTreeNode** %8, align 8
  %101 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %100, i32 0, i32 5
  store %struct._PatternNode* %99, %struct._PatternNode** %101, align 8
  br label %102

102:                                              ; preds = %73, %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @db_init(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %3, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0)) #6
  unreachable

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %72, %15
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = call i8* @fgets(i8* noundef %17, i32 noundef 2048, %struct._IO_FILE* noundef %18)
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %80

21:                                               ; preds = %16
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %5, align 8
  %24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %25 = load i8, i8* %24, align 16
  %26 = sext i8 %25 to i32
  switch i32 %26, label %33 [
    i32 49, label %27
    i32 50, label %30
  ]

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* noundef %9) #5
  store i32 0, i32* %10, align 4
  br label %37

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* noundef %9, i32* noundef %10) #5
  br label %37

33:                                               ; preds = %21
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 noundef %36) #6
  unreachable

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = call noalias i8* @malloc(i64 noundef %40) #5
  store i8* %41, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #6
  unreachable

44:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %55, %49
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 44
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  br label %50, !llvm.loop !15

58:                                               ; preds = %50
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %61, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* noundef %8) #5
  %63 = load i32, i32* %8, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %64, i8* %68, align 1
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %45, !llvm.loop !16

72:                                               ; preds = %45
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  call void @insert_rule(i8* noundef %77, i32 noundef %78, i32 noundef %79)
  br label %16, !llvm.loop !17

80:                                               ; preds = %16
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
