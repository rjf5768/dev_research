; ModuleID = './search.ll'
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
%_wyvern_thunk_type.14 = type { i8* (%_wyvern_thunk_type.14*)*, i8*, i1, i8*, i32, i8*, i32 }

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
define dso_local noalias i32* @calculate_bm_table(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(1024) i8* @malloc(i64 noundef 1024) #8
  %4 = bitcast i8* %3 to i32*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.calculate_bm_table, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #9
  unreachable

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %13, %7
  %.0 = phi i32 [ 0, %7 ], [ %14, %13 ]
  %9 = icmp ult i32 %.0, 256
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %4, i64 %11
  store i32 %1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10
  %14 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !4

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %26, %15
  %.1 = phi i32 [ 0, %15 ], [ %27, %26 ]
  %17 = icmp slt i32 %.1, %1
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = xor i32 %.1, -1
  %20 = add i32 %19, %1
  %21 = zext i32 %.1 to i64
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %18
  %27 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !6

28:                                               ; preds = %16
  ret i32* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @_fatal(i8* noundef, i8* noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @boyer_moore(i8* noundef readonly %0, i32 noundef %1, i8* noundef readonly %2, i32 noundef %3, i32* nocapture noundef readonly %4) #3 {
  %6 = add nsw i32 %3, -1
  br label %7

7:                                                ; preds = %28, %5
  %.02 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %8 = add nsw i32 %.02, %3
  %.not = icmp sgt i32 %8, %1
  br i1 %.not, label %30, label %9

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %17, %9
  %.1 = phi i32 [ %.02, %9 ], [ %18, %17 ]
  %.pn3.in.in = add nsw i32 %.1, %3
  %.pn3.in = add nsw i32 %.pn3.in.in, -1
  %.pn3 = sext i32 %.pn3.in to i64
  %.pn.in.in = getelementptr inbounds i8, i8* %0, i64 %.pn3
  %.pn.in = load i8, i8* %.pn.in.in, align 1
  %.pn = zext i8 %.pn.in to i64
  %.01.in = getelementptr inbounds i32, i32* %4, i64 %.pn
  %.01 = load i32, i32* %.01.in, align 4
  %.not4 = icmp eq i32 %.01, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %10
  %12 = add nsw i32 %.1, %.01
  %13 = add nsw i32 %12, %3
  %14 = icmp sle i32 %13, %1
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i1 [ false, %10 ], [ %14, %11 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = add nsw i32 %.1, %.01
  br label %10, !llvm.loop !7

19:                                               ; preds = %15
  %20 = sext i32 %.1 to i64
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  %22 = add nsw i32 %3, -1
  %23 = sext i32 %22 to i64
  %bcmp = call i32 @bcmp(i8* %2, i8* %21, i64 %23)
  %24 = icmp eq i32 %bcmp, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = icmp slt i32 %.1, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25, %19
  %29 = add nsw i32 %.1, %6
  br label %7, !llvm.loop !8

30:                                               ; preds = %7
  br label %31

31:                                               ; preds = %30, %27
  %.0 = phi i32 [ %.1, %27 ], [ -1, %30 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rtentry* @find_destination(i8* noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %65, %2
  %.03.in = phi %struct._StrTreeNode** [ @tree_head, %2 ], [ %66, %65 ]
  %.03 = load %struct._StrTreeNode*, %struct._StrTreeNode** %.03.in, align 8
  %.not = icmp eq %struct._StrTreeNode* %.03, null
  br i1 %.not, label %67, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.03, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.03, i64 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.03, i64 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @boyer_moore(i8* noundef %0, i32 noundef %1, i8* noundef %6, i32 noundef %8, i32* noundef %10)
  %.not5 = icmp eq i32 %11, -1
  br i1 %.not5, label %65, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.03, i64 0, i32 5
  br label %14

14:                                               ; preds = %62, %12
  %.02.in = phi %struct._PatternNode** [ %13, %12 ], [ %63, %62 ]
  %.02 = load %struct._PatternNode*, %struct._PatternNode** %.02.in, align 8
  %.not6 = icmp eq %struct._PatternNode* %.02, null
  br i1 %.not6, label %64, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @boyer_moore(i8* noundef %0, i32 noundef %1, i8* noundef %21, i32 noundef %23, i32* noundef %25)
  br label %44

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 6
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ %1, %34 ]
  %37 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @boyer_moore(i8* noundef %0, i32 noundef %36, i8* noundef %38, i32 noundef %40, i32* noundef %42)
  br label %44

44:                                               ; preds = %35, %19
  %.01 = phi i32 [ %26, %19 ], [ %43, %35 ]
  %.not7 = icmp eq i32 %.01, -1
  br i1 %.not7, label %62, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 3
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %52 = getelementptr inbounds i8, i8* %0, i64 12
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds i8, i8* %0, i64 16
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 noundef %54, i32 noundef %57) #8
  br label %59

59:                                               ; preds = %49, %45
  %60 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 8
  %61 = load %struct.rtentry*, %struct.rtentry** %60, align 8
  br label %68

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %.02, i64 0, i32 9
  br label %14, !llvm.loop !9

64:                                               ; preds = %14
  br label %65

65:                                               ; preds = %64, %4
  %66 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.03, i64 0, i32 4
  br label %3, !llvm.loop !10

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %67, %59
  %.0 = phi %struct.rtentry* [ %61, %59 ], [ null, %67 ]
  ret %struct.rtentry* %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct._PatternNode* @NewPatternNode(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = call noalias dereferenceable_or_null(64) i8* @malloc(i64 noundef 64) #8
  %7 = bitcast i8* %6 to %struct._PatternNode*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewPatternNode, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i64 0, i32 1
  store i32 %1, i32* %12, align 4
  %13 = sext i32 %3 to i64
  %14 = call noalias i8* @malloc(i64 noundef %13) #8
  %15 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i64 0, i32 4
  store i8* %14, i8** %15, align 8
  %16 = icmp eq i8* %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewPatternNode, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = sext i32 %3 to i64
  %22 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %20, i8* noundef %2, i64 noundef %21) #8
  %23 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i64 0, i32 5
  store i32 %3, i32* %23, align 8
  %24 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i64 0, i32 6
  store i32 %4, i32* %24, align 4
  %25 = call i32* @calculate_bm_table(i8* noundef %2, i32 noundef %3)
  %26 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i64 0, i32 7
  store i32* %25, i32** %26, align 8
  ret %struct._PatternNode* %7

UnifiedUnreachableBlock:                          ; preds = %17, %9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct._StrTreeNode* @NewStrTreeNode(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #8
  %5 = bitcast i8* %4 to %struct._StrTreeNode*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewStrTreeNode, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %5, i64 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = sext i32 %2 to i64
  %11 = call noalias i8* @malloc(i64 noundef %10) #8
  %12 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %5, i64 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = icmp eq i8* %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewStrTreeNode, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %5, i64 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = sext i32 %2 to i64
  %19 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %17, i8* noundef %1, i64 noundef %18) #8
  %20 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %5, i64 0, i32 2
  store i32 %2, i32* %20, align 8
  %21 = call i32* @calculate_bm_table(i8* noundef %17, i32 noundef %2)
  %22 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %5, i64 0, i32 3
  store i32* %21, i32** %22, align 8
  ret %struct._StrTreeNode* %5

UnifiedUnreachableBlock:                          ; preds = %14, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @find_lcs(i8* noundef readonly %0, i32 noundef %1, i8* noundef readonly %2, i32 noundef %3, i32* nocapture noundef writeonly %4) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.14, align 8
  %6 = icmp sgt i32 %3, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %5
  %.04 = phi i32 [ %1, %7 ], [ %3, %5 ]
  %.02 = phi i32 [ %3, %7 ], [ %1, %5 ]
  %.01 = phi i8* [ %2, %7 ], [ %0, %5 ]
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.14*)* @_wyvern_slice_memo_find_lcs_.03660131570, i8* (%_wyvern_thunk_type.14*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 3
  store i8* %0, i8** %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunk_arg_gep_18 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 4
  store i32 %1, i32* %_wyvern_thunk_arg_gep_18, align 8
  %_wyvern_thunk_arg_gep_19 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 5
  store i8* %2, i8** %_wyvern_thunk_arg_gep_19, align 8
  %_wyvern_thunk_arg_gep_20 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 6
  store i32 %3, i32* %_wyvern_thunk_arg_gep_20, align 8
  %9 = call i32* @_wyvern_calleeclone_calculate_bm_table_0404117967(%_wyvern_thunk_type.14* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %.04)
  %10 = add nsw i32 %.04, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %.01, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load i32, i32* %15, align 4
  br label %17

17:                                               ; preds = %77, %8
  %.013 = phi i32 [ %16, %8 ], [ %.3, %77 ]
  %.012 = phi i32 [ 0, %8 ], [ %20, %77 ]
  %.09 = phi i32 [ 0, %8 ], [ %.211, %77 ]
  %.06 = phi i8* [ null, %8 ], [ %.2, %77 ]
  %18 = icmp slt i32 %.012, %.02
  br i1 %18, label %19, label %78

19:                                               ; preds = %17
  %20 = add nsw i32 %.012, %.013
  %21 = add nsw i32 %20, %.04
  %22 = add nsw i32 %21, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %.01, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %9, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, %.04
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = add nsw i32 %.09, 1
  br label %77

32:                                               ; preds = %19
  %33 = add nsw i32 %20, %.04
  br label %34

34:                                               ; preds = %48, %32
  %.114 = phi i32 [ %28, %32 ], [ %49, %48 ]
  %.07.in = phi i32 [ %33, %32 ], [ %.07, %48 ]
  %.07 = add nsw i32 %.07.in, -1
  %35 = icmp sgt i32 %.04, %.114
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = xor i32 %.114, -1
  %38 = add i32 %.04, %37
  %39 = sext i32 %38 to i64
  %_wyvern_thunkcall21 = call i8* @_wyvern_slice_memo_find_lcs_.03660131570(%_wyvern_thunk_type.14* nonnull %_wyvern_thunk_alloca)
  %40 = getelementptr inbounds i8, i8* %_wyvern_thunkcall21, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i32 %.07 to i64
  %43 = getelementptr inbounds i8, i8* %.01, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = icmp eq i8 %41, %44
  br label %46

46:                                               ; preds = %36, %34
  %47 = phi i1 [ false, %34 ], [ %45, %36 ]
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = add nsw i32 %.114, 1
  br label %34, !llvm.loop !11

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %64, %50
  %.215.in = phi i32 [ %.114, %50 ], [ %.215, %64 ]
  %.18 = phi i32 [ %.07.in, %50 ], [ %66, %64 ]
  %.05 = phi i32 [ 0, %50 ], [ %65, %64 ]
  %.215 = add nsw i32 %.215.in, -1
  %52 = icmp sgt i32 %.215.in, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = sub i32 %.04, %.215.in
  %55 = sext i32 %54 to i64
  %_wyvern_thunkcall = call i8* @_wyvern_slice_memo_find_lcs_.03660131570(%_wyvern_thunk_type.14* nonnull %_wyvern_thunk_alloca)
  %56 = getelementptr inbounds i8, i8* %_wyvern_thunkcall, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i32 %.18 to i64
  %59 = getelementptr inbounds i8, i8* %.01, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = icmp eq i8 %57, %60
  br label %62

62:                                               ; preds = %53, %51
  %63 = phi i1 [ false, %51 ], [ %61, %53 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = add nuw nsw i32 %.05, 1
  %66 = add nsw i32 %.18, 1
  br label %51, !llvm.loop !12

67:                                               ; preds = %62
  %68 = icmp sgt i32 %.05, %.09
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = sub nsw i32 %.18, %.05
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %.01, i64 %71
  %73 = icmp eq i32 %.05, %.04
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 %.05, i32* %4, align 4
  br label %80

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %67
  %.110 = phi i32 [ %.05, %75 ], [ %.09, %67 ]
  %.1 = phi i8* [ %72, %75 ], [ %.06, %67 ]
  br label %77

77:                                               ; preds = %76, %30
  %.3 = phi i32 [ %31, %30 ], [ 1, %76 ]
  %.211 = phi i32 [ %.09, %30 ], [ %.110, %76 ]
  %.2 = phi i8* [ %.06, %30 ], [ %.1, %76 ]
  br label %17, !llvm.loop !13

78:                                               ; preds = %17
  store i32 %.09, i32* %4, align 4
  %79 = bitcast i32* %9 to i8*
  call void @free(i8* noundef %79) #8
  br label %80

80:                                               ; preds = %78, %74
  %.0 = phi i8* [ %72, %74 ], [ %.06, %78 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @insert_rule(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %16, %3
  %.05 = phi %struct._StrTreeNode* [ null, %3 ], [ %.16, %16 ]
  %.04.in = phi %struct._StrTreeNode** [ @tree_head, %3 ], [ %17, %16 ]
  %.02 = phi i32 [ 0, %3 ], [ %.13, %16 ]
  %.01 = phi i8* [ undef, %3 ], [ %.1, %16 ]
  %.04 = load %struct._StrTreeNode*, %struct._StrTreeNode** %.04.in, align 8
  %.not = icmp eq %struct._StrTreeNode* %.04, null
  br i1 %.not, label %18, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.04, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.04, i64 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @find_lcs(i8* noundef %8, i32 noundef %10, i8* noundef %0, i32 noundef %1, i32* noundef nonnull %4)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ugt i32 %12, %.02
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load i32, i32* %4, align 4
  br label %16

16:                                               ; preds = %14, %6
  %.16 = phi %struct._StrTreeNode* [ %.04, %14 ], [ %.05, %6 ]
  %.13 = phi i32 [ %15, %14 ], [ %.02, %6 ]
  %.1 = phi i8* [ %11, %14 ], [ %.01, %6 ]
  %17 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.04, i64 0, i32 4
  br label %5, !llvm.loop !14

18:                                               ; preds = %5
  %19 = icmp ult i32 %.02, 3
  br i1 %19, label %20, label %36

20:                                               ; preds = %18
  %21 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %.not7 = icmp eq %struct._StrTreeNode* %21, null
  br i1 %.not7, label %28, label %22

22:                                               ; preds = %20
  %23 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %24 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %23, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = call %struct._StrTreeNode* @NewStrTreeNode(i32 noundef %26, i8* noundef %0, i32 noundef %1)
  br label %30

28:                                               ; preds = %20
  %29 = call %struct._StrTreeNode* @NewStrTreeNode(i32 noundef 0, i8* noundef %0, i32 noundef %1)
  br label %30

30:                                               ; preds = %28, %22
  %.0 = phi %struct._StrTreeNode* [ %27, %22 ], [ %29, %28 ]
  %31 = call %struct._PatternNode* @NewPatternNode(i32 noundef 0, i32 noundef 1, i8* noundef %0, i32 noundef %1, i32 noundef %2)
  %32 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %31, i64 0, i32 9
  store %struct._PatternNode* null, %struct._PatternNode** %32, align 8
  %33 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.0, i64 0, i32 5
  store %struct._PatternNode* %31, %struct._PatternNode** %33, align 8
  %34 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %35 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.0, i64 0, i32 4
  store %struct._StrTreeNode* %34, %struct._StrTreeNode** %35, align 8
  store %struct._StrTreeNode* %.0, %struct._StrTreeNode** @tree_head, align 8
  br label %52

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.05, i64 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = zext i32 %.02 to i64
  %40 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %38, i8* noundef %.01, i64 noundef %39) #8
  %41 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.05, i64 0, i32 2
  store i32 %.02, i32* %41, align 8
  %42 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.05, i64 0, i32 5
  %43 = load %struct._PatternNode*, %struct._PatternNode** %42, align 8
  %44 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %43, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = call %struct._PatternNode* @NewPatternNode(i32 noundef %46, i32 noundef 1, i8* noundef %0, i32 noundef %1, i32 noundef %2)
  %48 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.05, i64 0, i32 5
  %49 = load %struct._PatternNode*, %struct._PatternNode** %48, align 8
  %50 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %47, i64 0, i32 9
  store %struct._PatternNode* %49, %struct._PatternNode** %50, align 8
  %51 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %.05, i64 0, i32 5
  store %struct._PatternNode* %47, %struct._PatternNode** %51, align 8
  br label %52

52:                                               ; preds = %36, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @db_init(i8* noundef %0) #0 {
  %2 = alloca [2048 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %51, %9
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %12 = call i8* @fgets(i8* noundef nonnull %11, i32 noundef 2048, %struct._IO_FILE* noundef nonnull %6) #8
  %.not = icmp eq i8* %12, null
  br i1 %.not, label %56, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 1
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %16 = load i8, i8* %15, align 16
  %17 = sext i8 %16 to i32
  switch i32 %17, label %22 [
    i32 49, label %18
    i32 50, label %20
  ]

18:                                               ; preds = %13
  %19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %4) #8
  store i32 0, i32* %5, align 4
  br label %26

20:                                               ; preds = %13
  %21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %14, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %4, i32* noundef nonnull %5) #8
  br label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = sext i8 %24 to i32
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 noundef %25) #9
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = call noalias i8* @malloc(i64 noundef %29) #8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %49, %33
  %.01 = phi i8* [ %14, %33 ], [ %43, %49 ]
  %.0 = phi i32 [ 0, %33 ], [ %50, %49 ]
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %.0, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %40, %37
  %.1 = phi i8* [ %.01, %37 ], [ %41, %40 ]
  %39 = load i8, i8* %.1, align 1
  %.not2 = icmp eq i8 %39, 44
  br i1 %.not2, label %42, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %38, !llvm.loop !15

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, i8* %.1, i64 1
  %44 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %3) #8
  %45 = load i32, i32* %3, align 4
  %46 = trunc i32 %45 to i8
  %47 = zext i32 %.0 to i64
  %48 = getelementptr inbounds i8, i8* %30, i64 %47
  store i8 %46, i8* %48, align 1
  br label %49

49:                                               ; preds = %42
  %50 = add nuw nsw i32 %.0, 1
  br label %34, !llvm.loop !16

51:                                               ; preds = %34
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %30, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %5, align 4
  call void @insert_rule(i8* noundef nonnull %30, i32 noundef %52, i32 noundef %55)
  br label %10, !llvm.loop !17

56:                                               ; preds = %10
  ret void

UnifiedUnreachableBlock:                          ; preds = %32, %22, %8
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #5

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_find_lcs_.03660131570(%_wyvern_thunk_type.14* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_1

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_1:                                     ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_3 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_4 = load i32, i32* %_wyvern_arg_addr_3, align 4
  %_wyvern_arg_addr_5 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 5
  %_wyvern_arg_addr_7 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 6
  %_wyvern_arg_8 = load i32, i32* %_wyvern_arg_addr_7, align 4
  %0 = icmp sgt i32 %_wyvern_arg_8, %_wyvern_arg_4
  br i1 %0, label %sliceclone_, label %sliceclone_2

sliceclone_:                                      ; preds = %sliceclone_1
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 3
  br label %sliceclone_2

sliceclone_2:                                     ; preds = %sliceclone_1, %sliceclone_
  %.in = phi i8** [ %_wyvern_arg_addr_, %sliceclone_ ], [ %_wyvern_arg_addr_5, %sliceclone_1 ]
  %1 = load i8*, i8** %.in, align 8
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @_wyvern_calleeclone_calculate_bm_table_0404117967(%_wyvern_thunk_type.14* noundef %_wyvern_thunkptr, i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(1024) i8* @malloc(i64 noundef 1024) #8
  %3 = bitcast i8* %2 to i32*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.calculate_bm_table, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #9
  unreachable

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %12, %6
  %.0 = phi i32 [ 0, %6 ], [ %13, %12 ]
  %8 = icmp ult i32 %.0, 256
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %3, i64 %10
  store i32 %0, i32* %11, align 4
  br label %12

12:                                               ; preds = %9
  %13 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !4

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %25, %14
  %.1 = phi i32 [ 0, %14 ], [ %26, %25 ]
  %16 = icmp slt i32 %.1, %0
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = xor i32 %.1, -1
  %19 = add i32 %18, %0
  %20 = zext i32 %.1 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.14*)*, i8* (%_wyvern_thunk_type.14*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.14* %_wyvern_thunkptr) #8
  %21 = getelementptr inbounds i8, i8* %_wyvern_thunkcall, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i32, i32* %3, i64 %23
  store i32 %19, i32* %24, align 4
  br label %25

25:                                               ; preds = %17
  %26 = add nuw nsw i32 %.1, 1
  br label %15, !llvm.loop !6

27:                                               ; preds = %15
  ret i32* %3
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
