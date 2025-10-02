; ModuleID = './vectorUtils.ll'
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
@str = private unnamed_addr constant [38 x i8] c"Malloc failure in NodePtrVec creation\00", align 1
@str.1 = private unnamed_addr constant [46 x i8] c"Malloc failure in NodePtrVec storage creation\00", align 1
@str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.3 = private unnamed_addr constant [46 x i8] c"Malloc failure in NodeVecVec storage creation\00", align 1
@str.4 = private unnamed_addr constant [38 x i8] c"Malloc failure in NodeVecVec creation\00", align 1
@str.5 = private unnamed_addr constant [32 x i8] c"\0A\0ANodeVecVec_push failed malloc\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IntVectorStruct* @IntVector_new(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %3 = bitcast i8* %2 to %struct.IntVectorStruct*
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %14, label %4

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = shl nsw i64 %5, 2
  %7 = call noalias i8* @malloc(i64 noundef %6) #9
  %.not1 = icmp eq i8* %7, null
  br i1 %.not1, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %3, i64 0, i32 2
  %10 = bitcast i32** %9 to i8**
  store i8* %7, i8** %10, align 8
  %11 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %3, i64 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %3, i64 0, i32 1
  store i32 %0, i32* %12, align 4
  br label %15

13:                                               ; preds = %4
  call void @free(i8* noundef %2) #9
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %13, %8
  %.0 = phi %struct.IntVectorStruct* [ %3, %8 ], [ null, %13 ], [ null, %14 ]
  ret %struct.IntVectorStruct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @IntVector_delete(%struct.IntVectorStruct* noundef %0) #0 {
  %.not = icmp eq %struct.IntVectorStruct* %0, null
  br i1 %.not, label %11, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %4 = load i32*, i32** %3, align 8
  %.not1 = icmp eq i32* %4, null
  br i1 %.not1, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %7 = bitcast i32** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #9
  br label %9

9:                                                ; preds = %5, %2
  %10 = bitcast %struct.IntVectorStruct* %0 to i8*
  call void @free(i8* noundef %10) #9
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq %struct.IntVectorStruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %36

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %12 = bitcast i32** %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = shl nsw i32 %8, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = call i8* @realloc(i8* noundef %13, i64 noundef %16) #9
  %18 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %19 = bitcast i32** %18 to i8**
  store i8* %17, i8** %19, align 8
  %.not1 = icmp eq i8* %17, null
  br i1 %.not1, label %23, label %20

20:                                               ; preds = %10
  %21 = shl nsw i32 %8, 1
  %22 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 1
  store i32 %21, i32* %22, align 4
  br label %27

23:                                               ; preds = %10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = shl nsw i32 %6, 1
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 noundef %25) #10
  br label %36

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %4
  %29 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = sext i32 %6 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %0, i64 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %28, %23, %3
  %.0 = phi i1 [ true, %28 ], [ false, %23 ], [ false, %3 ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @IntVector_createFromString(%struct.IntVectorStruct* noundef %0, i8* noundef %1) #0 {
  %.not = icmp eq %struct.IntVectorStruct* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  %.not4 = icmp eq i8* %1, null
  br i1 %.not4, label %4, label %5

4:                                                ; preds = %3, %2
  br label %25

5:                                                ; preds = %3
  %6 = call i16** @__ctype_b_loc() #11
  %7 = load i16*, i16** %6, align 8
  %8 = load i8, i8* %1, align 1
  %9 = sext i8 %8 to i64
  %10 = getelementptr inbounds i16, i16* %7, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 2048
  %.not5 = icmp eq i16 %12, 0
  br i1 %.not5, label %13, label %15

13:                                               ; preds = %5
  %14 = call i8* @findNextNumber(i8* noundef nonnull %1)
  br label %15

15:                                               ; preds = %13, %5
  %.02 = phi i8* [ %1, %5 ], [ %14, %13 ]
  br label %16

16:                                               ; preds = %22, %15
  %.1 = phi i8* [ %.02, %15 ], [ %19, %22 ]
  %.01 = phi i32 [ 0, %15 ], [ %23, %22 ]
  %.not6 = icmp eq i8* %.1, null
  br i1 %.not6, label %24, label %17

17:                                               ; preds = %16
  %18 = call i32 @atoi(i8* noundef nonnull %.1) #12
  %19 = call i8* @findNextNumber(i8* noundef nonnull %.1)
  %20 = call zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* noundef nonnull %0, i32 noundef %18)
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %25

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !4

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %21, %4
  %.0 = phi i32 [ 0, %21 ], [ %.01, %24 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define internal i8* @findNextNumber(i8* noundef readonly %0) #4 {
  %2 = call i16** @__ctype_b_loc() #11
  %3 = load i16*, i16** %2, align 8
  %4 = load i8, i8* %0, align 1
  %5 = sext i8 %4 to i64
  %6 = getelementptr inbounds i16, i16* %3, i64 %5
  %7 = load i16, i16* %6, align 2
  %8 = and i16 %7, 2048
  %.not = icmp eq i16 %8, 0
  br i1 %.not, label %50, label %9

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %23, %9
  %.pn = phi i8* [ %0, %9 ], [ %.01, %23 ]
  %.01 = getelementptr inbounds i8, i8* %.pn, i64 1
  %11 = call i16** @__ctype_b_loc() #11
  %12 = load i16*, i16** %11, align 8
  %13 = load i8, i8* %.01, align 1
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = and i16 %16, 2048
  %.not3 = icmp eq i16 %17, 0
  br i1 %.not3, label %21, label %18

18:                                               ; preds = %10
  %19 = load i8, i8* %.01, align 1
  %20 = icmp ne i8 %19, 0
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi i1 [ false, %10 ], [ %20, %18 ]
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %10, !llvm.loop !6

24:                                               ; preds = %21
  %25 = load i8, i8* %.01, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %66

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %42, %28
  %.1 = phi i8* [ %.01, %28 ], [ %43, %42 ]
  %30 = call i16** @__ctype_b_loc() #11
  %31 = load i16*, i16** %30, align 8
  %32 = load i8, i8* %.1, align 1
  %33 = sext i8 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = and i16 %35, 2048
  %.not4 = icmp eq i16 %36, 0
  br i1 %.not4, label %37, label %40

37:                                               ; preds = %29
  %38 = load i8, i8* %.1, align 1
  %39 = icmp ne i8 %38, 0
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i1 [ false, %29 ], [ %39, %37 ]
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %29, !llvm.loop !7

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load i8, i8* %.1, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %66

49:                                               ; preds = %45
  br label %66

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %57, %50
  %.2 = phi i8* [ %0, %50 ], [ %56, %57 ]
  %52 = load i8, i8* %.2, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %66

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %57

57:                                               ; preds = %55
  %58 = call i16** @__ctype_b_loc() #11
  %59 = load i16*, i16** %58, align 8
  %60 = load i8, i8* %56, align 1
  %61 = sext i8 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = and i16 %63, 2048
  %.not2 = icmp eq i16 %64, 0
  br i1 %.not2, label %51, label %65, !llvm.loop !8

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %54, %49, %48, %27
  %.0 = phi i8* [ null, %27 ], [ null, %48 ], [ %.1, %49 ], [ null, %54 ], [ %56, %65 ]
  ret i8* %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CharVectorStruct* @CharVector_new(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %3 = bitcast i8* %2 to %struct.CharVectorStruct*
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %12, label %4

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = call noalias i8* @malloc(i64 noundef %5) #9
  %.not1 = icmp eq i8* %6, null
  br i1 %.not1, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %3, i64 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %3, i64 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %3, i64 0, i32 1
  store i32 %0, i32* %10, align 4
  br label %13

11:                                               ; preds = %4
  call void @free(i8* noundef %2) #9
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %11, %7
  %.0 = phi %struct.CharVectorStruct* [ %3, %7 ], [ null, %11 ], [ null, %12 ]
  ret %struct.CharVectorStruct* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CharVector_delete(%struct.CharVectorStruct* noundef %0) #0 {
  %.not = icmp eq %struct.CharVectorStruct* %0, null
  br i1 %.not, label %10, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 2
  %4 = load i8*, i8** %3, align 8
  %.not1 = icmp eq i8* %4, null
  br i1 %.not1, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7) #9
  br label %8

8:                                                ; preds = %5, %2
  %9 = bitcast %struct.CharVectorStruct* %0 to i8*
  call void @free(i8* noundef %9) #9
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* noundef %0, i8 noundef signext %1) #0 {
  %.not = icmp eq %struct.CharVectorStruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %33

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = shl nsw i32 %6, 1
  %14 = sext i32 %13 to i64
  %15 = call i8* @realloc(i8* noundef %12, i64 noundef %14) #9
  %16 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 2
  store i8* %15, i8** %16, align 8
  %.not1 = icmp eq i8* %15, null
  br i1 %.not1, label %20, label %17

17:                                               ; preds = %10
  %18 = shl nsw i32 %6, 1
  %19 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 1
  store i32 %18, i32* %19, align 4
  br label %24

20:                                               ; preds = %10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = shl nsw i32 %6, 1
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 noundef %22) #10
  br label %33

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %4
  %26 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = sext i32 %6 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %1, i8* %29, align 1
  %30 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %25, %20, %3
  %.0 = phi i1 [ true, %25 ], [ false, %20 ], [ false, %3 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %.not = icmp eq %struct.CharVectorStruct* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  %.not2 = icmp eq %struct._IO_FILE* %1, null
  br i1 %.not2, label %4, label %5

4:                                                ; preds = %3, %2
  br label %27

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 0
  store i32 0, i32* %6, align 8
  br label %7

7:                                                ; preds = %19, %5
  %.01 = phi i8 [ 1, %5 ], [ %.1, %19 ]
  %8 = call i32 @fgetc(%struct._IO_FILE* noundef nonnull %1) #9
  %9 = trunc i32 %8 to i8
  %10 = call i32 @feof(%struct._IO_FILE* noundef nonnull %1) #9
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %13

11:                                               ; preds = %7
  %sext.mask = and i32 %8, 255
  %12 = icmp eq i32 %sext.mask, 10
  br i1 %12, label %13, label %14

13:                                               ; preds = %11, %7
  br label %18

14:                                               ; preds = %11
  %15 = call zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* noundef nonnull %0, i8 noundef signext %9)
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  br label %27

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %13
  %.1 = phi i8 [ 0, %13 ], [ %.01, %17 ]
  br label %19

19:                                               ; preds = %18
  %20 = and i8 %.1, 1
  %.not4 = icmp eq i8 %20, 0
  br i1 %.not4, label %21, label %7, !llvm.loop !9

21:                                               ; preds = %19
  %22 = call zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* noundef nonnull %0, i8 noundef signext 0)
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  br label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %0, i64 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %24, %23, %16, %4
  %.0 = phi i32 [ %26, %24 ], [ -1, %23 ], [ -1, %16 ], [ -1, %4 ]
  ret i32 %.0
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 3
  %4 = call noalias i8* @malloc(i64 noundef %3) #9
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0))
  br label %15

6:                                                ; preds = %1
  %7 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %8 = bitcast i8* %7 to %struct.NodePtrVecStruct*
  %.not1 = icmp eq i8* %7, null
  br i1 %.not1, label %9, label %10

9:                                                ; preds = %6
  call void @free(i8* noundef %4) #9
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @str.1, i64 0, i64 0))
  br label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %8, i64 0, i32 1
  store i32 %0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %8, i64 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %8, i64 0, i32 2
  %14 = bitcast %struct.NodeStruct*** %13 to i8**
  store i8* %4, i8** %14, align 8
  br label %15

15:                                               ; preds = %10, %9, %5
  %.0 = phi %struct.NodePtrVecStruct* [ %8, %10 ], [ null, %9 ], [ null, %5 ]
  ret %struct.NodePtrVecStruct* %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %0) #0 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %11, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %4 = load %struct.NodeStruct**, %struct.NodeStruct*** %3, align 8
  %.not1 = icmp eq %struct.NodeStruct** %4, null
  br i1 %.not1, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %7 = bitcast %struct.NodeStruct*** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #9
  br label %9

9:                                                ; preds = %5, %2
  %10 = bitcast %struct.NodePtrVecStruct* %0 to i8*
  call void @free(i8* noundef %10) #9
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodePtrVecStruct* @NodePtrVec_copy(%struct.NodePtrVecStruct* noundef readonly %0, i1 noundef zeroext %1) #0 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %37

4:                                                ; preds = %2
  br i1 %1, label %5, label %9

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %7)
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %11)
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi %struct.NodePtrVecStruct* [ %8, %5 ], [ %12, %9 ]
  %.not2 = icmp eq %struct.NodePtrVecStruct* %14, null
  br i1 %.not2, label %15, label %16

15:                                               ; preds = %13
  br label %37

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %31, %16
  %.01 = phi i32 [ 0, %16 ], [ %32, %31 ]
  %18 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %.01, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %23 = load %struct.NodeStruct**, %struct.NodeStruct*** %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %23, i64 %24
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %25, align 8
  %27 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %14, i64 0, i32 2
  %28 = load %struct.NodeStruct**, %struct.NodeStruct*** %27, align 8
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %28, i64 %29
  store %struct.NodeStruct* %26, %struct.NodeStruct** %30, align 8
  br label %31

31:                                               ; preds = %21
  %32 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !10

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %14, i64 0, i32 0
  store i32 %35, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %15, %3
  %.0 = phi %struct.NodePtrVecStruct* [ %14, %33 ], [ null, %15 ], [ null, %3 ]
  ret %struct.NodePtrVecStruct* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %45

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %12 = bitcast %struct.NodeStruct*** %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = shl nsw i32 %8, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = call i8* @realloc(i8* noundef %13, i64 noundef %16) #9
  %18 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %19 = bitcast %struct.NodeStruct*** %18 to i8**
  store i8* %17, i8** %19, align 8
  %.not1 = icmp eq i8* %17, null
  br i1 %.not1, label %23, label %20

20:                                               ; preds = %10
  %21 = shl nsw i32 %8, 1
  %22 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 1
  store i32 %21, i32* %22, align 4
  br label %36

23:                                               ; preds = %10
  %24 = shl nsw i32 %8, 1
  %25 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 noundef %24, i32 noundef %26) #9
  %28 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %.not2 = icmp eq i8* %29, null
  br i1 %.not2, label %34, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* noundef %32) #9
  br label %35

34:                                               ; preds = %23
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %30
  br label %45

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %4
  %38 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %39 = load %struct.NodeStruct**, %struct.NodeStruct*** %38, align 8
  %40 = sext i32 %6 to i64
  %41 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %39, i64 %40
  store %struct.NodeStruct* %1, %struct.NodeStruct** %41, align 8
  %42 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %37, %35, %3
  %.0 = phi i1 [ true, %37 ], [ false, %35 ], [ false, %3 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef %0) #6 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %17

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 8
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %12 = load %struct.NodeStruct**, %struct.NodeStruct*** %11, align 8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %12, i64 %13
  %15 = load %struct.NodeStruct*, %struct.NodeStruct** %14, align 8
  br label %16

16:                                               ; preds = %7, %3
  %.01 = phi %struct.NodeStruct* [ %15, %7 ], [ null, %3 ]
  br label %17

17:                                               ; preds = %16, %2
  %.0 = phi %struct.NodeStruct* [ %.01, %16 ], [ null, %2 ]
  ret %struct.NodeStruct* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local zeroext i1 @NodePtrVec_find(%struct.NodePtrVecStruct* noundef readonly %0, %struct.NodeStruct* noundef readnone %1) #7 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %21

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %18, %4
  %.01 = phi i32 [ 0, %4 ], [ %19, %18 ]
  %6 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %.01, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %11 = load %struct.NodeStruct**, %struct.NodeStruct*** %10, align 8
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %11, i64 %12
  %14 = load %struct.NodeStruct*, %struct.NodeStruct** %13, align 8
  %15 = icmp eq %struct.NodeStruct* %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !11

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %16, %3
  %.0 = phi i1 [ true, %16 ], [ false, %20 ], [ false, %3 ]
  ret i1 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local zeroext i1 @NodePtrVec_findReverse(%struct.NodePtrVecStruct* noundef readonly %0, %struct.NodeStruct* noundef readnone %1) #7 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %5 = load %struct.NodeStruct**, %struct.NodeStruct*** %4, align 8
  %.not2 = icmp eq %struct.NodeStruct** %5, null
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %3
  %.not3 = icmp eq %struct.NodeStruct* %1, null
  br i1 %.not3, label %7, label %8

7:                                                ; preds = %6, %3, %2
  br label %24

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  br label %11

11:                                               ; preds = %22, %8
  %.01.in = phi i32 [ %10, %8 ], [ %.01, %22 ]
  %.01 = add nsw i32 %.01.in, -1
  %12 = icmp sgt i32 %.01.in, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %0, i64 0, i32 2
  %15 = load %struct.NodeStruct**, %struct.NodeStruct*** %14, align 8
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %15, i64 %16
  %18 = load %struct.NodeStruct*, %struct.NodeStruct** %17, align 8
  %19 = icmp eq %struct.NodeStruct* %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %24

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  br label %11, !llvm.loop !12

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %20, %7
  %.0 = phi i1 [ true, %20 ], [ false, %23 ], [ false, %7 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef %0, %struct.NodePtrVecStruct* noundef readonly %1, i1 noundef zeroext %2) #0 {
  %.not = icmp eq %struct.NodePtrVecStruct* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  %.not1 = icmp eq %struct.NodePtrVecStruct* %1, null
  br i1 %.not1, label %5, label %6

5:                                                ; preds = %4, %3
  br label %23

6:                                                ; preds = %4
  br i1 %2, label %7, label %8

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %8 ]
  br label %10

10:                                               ; preds = %21, %9
  %.1 = phi i32 [ %.0, %9 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %.1, %12
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %1, i64 0, i32 2
  %16 = load %struct.NodeStruct**, %struct.NodeStruct*** %15, align 8
  %17 = zext i32 %.1 to i64
  %18 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %16, i64 %17
  %19 = load %struct.NodeStruct*, %struct.NodeStruct** %18, align 8
  %20 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %0, %struct.NodeStruct* noundef %19)
  br label %21

21:                                               ; preds = %14
  %22 = add nuw nsw i32 %.1, 1
  br label %10, !llvm.loop !13

.loopexit:                                        ; preds = %10
  br label %23

23:                                               ; preds = %.loopexit, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.NodeVecVecStruct* @NodeVecVec_new(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 3
  %4 = call noalias i8* @malloc(i64 noundef %3) #9
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %5, label %8

5:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @str.3, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = call i32 @fflush(%struct._IO_FILE* noundef %6) #9
  br label %19

8:                                                ; preds = %1
  %9 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %10 = bitcast i8* %9 to %struct.NodeVecVecStruct*
  %.not1 = icmp eq i8* %9, null
  br i1 %.not1, label %11, label %14

11:                                               ; preds = %8
  call void @free(i8* noundef %4) #9
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @str.4, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* noundef %12) #9
  br label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %10, i64 0, i32 1
  store i32 %0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %10, i64 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %10, i64 0, i32 2
  %18 = bitcast %struct.NodePtrVecStruct*** %17 to i8**
  store i8* %4, i8** %18, align 8
  br label %19

19:                                               ; preds = %14, %11, %5
  %.0 = phi %struct.NodeVecVecStruct* [ %10, %14 ], [ null, %11 ], [ null, %5 ]
  ret %struct.NodeVecVecStruct* %.0
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodeVecVec_delete(%struct.NodeVecVecStruct* noundef %0) #0 {
  %.not = icmp eq %struct.NodeVecVecStruct* %0, null
  br i1 %.not, label %24, label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %4 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp slt i32 %.0, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 2
  %9 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %9, i64 %10
  %12 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %12)
  br label %13

13:                                               ; preds = %7
  %14 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !14

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 2
  %17 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %16, align 8
  %.not1 = icmp eq %struct.NodePtrVecStruct** %17, null
  br i1 %.not1, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 2
  %20 = bitcast %struct.NodePtrVecStruct*** %19 to i8**
  %21 = load i8*, i8** %20, align 8
  call void @free(i8* noundef %21) #9
  br label %22

22:                                               ; preds = %18, %15
  %23 = bitcast %struct.NodeVecVecStruct* %0 to i8*
  call void @free(i8* noundef %23) #9
  br label %24

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* noundef %0, %struct.NodePtrVecStruct* noundef %1) #0 {
  %3 = call %struct.NodePtrVecStruct* @NodePtrVec_copy(%struct.NodePtrVecStruct* noundef %1, i1 noundef zeroext false)
  %.not = icmp eq %struct.NodeVecVecStruct* %0, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %.not1 = icmp eq %struct.NodePtrVecStruct* %1, null
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %4
  %.not2 = icmp eq %struct.NodePtrVecStruct* %3, null
  br i1 %.not2, label %6, label %7

6:                                                ; preds = %5, %4, %2
  br label %38

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 2
  %15 = bitcast %struct.NodePtrVecStruct*** %14 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = shl nsw i32 %11, 1
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = call i8* @realloc(i8* noundef %16, i64 noundef %19) #9
  %21 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 2
  %22 = bitcast %struct.NodePtrVecStruct*** %21 to i8**
  store i8* %20, i8** %22, align 8
  %.not3 = icmp eq i8* %20, null
  br i1 %.not3, label %26, label %23

23:                                               ; preds = %13
  %24 = shl nsw i32 %11, 1
  %25 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 1
  store i32 %24, i32* %25, align 4
  br label %29

26:                                               ; preds = %13
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.5, i64 0, i64 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @fflush(%struct._IO_FILE* noundef %27) #9
  br label %38

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %7
  %31 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 2
  %32 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %31, align 8
  %33 = sext i32 %9 to i64
  %34 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %32, i64 %33
  store %struct.NodePtrVecStruct* %3, %struct.NodePtrVecStruct** %34, align 8
  %35 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %0, i64 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %30, %26, %6
  %.0 = phi i1 [ true, %30 ], [ false, %26 ], [ false, %6 ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { nounwind readonly willreturn }

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
