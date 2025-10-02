; ModuleID = './exptree.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Comb = type { i32, i32, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"Out of memory for work list\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Out of memory for combination list\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" d%d \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%d=%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stopSearch = internal global i32 0, align 4
@nbNodes = internal global i32 0, align 4
@dmax = internal global i32 0, align 4
@workList = internal global i32* null, align 8
@listLength = internal global i32 0, align 4
@goal = internal global i32 0, align 4
@best = internal global i32 0, align 4
@bestDepth = internal global i32 0, align 4
@solution = internal global %struct.Comb* null, align 8
@combList = internal global %struct.Comb* null, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@str = private unnamed_addr constant [2 x i8] c".\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @newWorkList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call noalias i8* @calloc(i64 noundef %2, i64 noundef 4) #10
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %1
  %5 = bitcast i8* %3 to i32*
  ret i32* %5

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %7) #11
  call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Comb* @newCombList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call noalias i8* @calloc(i64 noundef %2, i64 noundef 12) #10
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %1
  %5 = bitcast i8* %3 to %struct.Comb*
  ret %struct.Comb* %5

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %7) #11
  call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @initWorkList(i32* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) #4 {
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32, i32* %1, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @initCombList(%struct.Comb* nocapture noundef writeonly %0, i32 noundef %1) #5 {
  br label %3

3:                                                ; preds = %8, %2
  %.0 = phi i32 [ 0, %2 ], [ %9, %8 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %6, i32 2
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

10:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @saveSolution(%struct.Comb* nocapture noundef writeonly %0, %struct.Comb* nocapture noundef readonly %1, i32 noundef %2) #4 {
  br label %4

4:                                                ; preds = %22, %3
  %.0 = phi i32 [ 0, %3 ], [ %23, %22 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %24

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.Comb, %struct.Comb* %1, i64 %7, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %10, i32 0
  store i32 %9, i32* %11, align 4
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.Comb, %struct.Comb* %1, i64 %12, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %15, i32 1
  store i32 %14, i32* %16, align 4
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds %struct.Comb, %struct.Comb* %1, i64 %17, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %20, i32 2
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %6
  %23 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !7

24:                                               ; preds = %4
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %25, i32 2
  store i32 0, i32* %26, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @calculate(%struct.Comb* nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %28 [
    i32 1, label %4
    i32 2, label %10
    i32 3, label %16
    i32 4, label %22
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %6, %8
  br label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %12, %14
  br label %29

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %18, %20
  br label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %24, %26
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %22, %16, %10, %4
  %.0 = phi i32 [ 0, %28 ], [ %27, %22 ], [ %21, %16 ], [ %15, %10 ], [ %9, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(%struct.Comb* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %37, %2
  %.0 = phi i32 [ 0, %2 ], [ %38, %37 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %6, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %8) #10
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %10, i32 2
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
    i32 4, label %17
  ]

13:                                               ; preds = %5
  %putchar5 = call i32 @putchar(i32 32)
  br label %23

14:                                               ; preds = %5
  %putchar4 = call i32 @putchar(i32 43)
  br label %23

15:                                               ; preds = %5
  %putchar3 = call i32 @putchar(i32 45)
  br label %23

16:                                               ; preds = %5
  %putchar2 = call i32 @putchar(i32 42)
  br label %23

17:                                               ; preds = %5
  %putchar1 = call i32 @putchar(i32 58)
  br label %23

18:                                               ; preds = %5
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %19, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 noundef %21) #10
  br label %23

23:                                               ; preds = %18, %17, %16, %15, %14, %13
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %24, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i64 %27
  %29 = call i32 @calculate(%struct.Comb* noundef %28)
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 noundef %26, i32 noundef %29) #10
  %31 = add nsw i32 %1, -1
  %32 = icmp slt i32 %.0, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #10
  br label %36

35:                                               ; preds = %23
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %35, %33
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

39:                                               ; preds = %3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = shl i32 1, %.0
  %8 = and i32 %7, %2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6
  br label %15

10:                                               ; preds = %6
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 noundef %13) #10
  br label %15

15:                                               ; preds = %10, %9
  %16 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !9

17:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %127

5:                                                ; preds = %2
  %6 = load i32, i32* @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @nbNodes, align 4
  %8 = load i32, i32* @dmax, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  %11 = load i32*, i32** @workList, align 8
  %12 = load i32, i32* @listLength, align 4
  %13 = add nsw i32 %12, %0
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @goal, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = load i32, i32* @best, align 4
  %22 = sub nsw i32 %21, %18
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %10
  %26 = load i32*, i32** @workList, align 8
  %27 = load i32, i32* @listLength, align 4
  %28 = add nsw i32 %27, %0
  %29 = add nsw i32 %28, -1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* @best, align 4
  store i32 %0, i32* @bestDepth, align 4
  %33 = load %struct.Comb*, %struct.Comb** @solution, align 8
  %34 = load %struct.Comb*, %struct.Comb** @combList, align 8
  call void @saveSolution(%struct.Comb* noundef %33, %struct.Comb* noundef %34, i32 noundef %0)
  %35 = load i32, i32* @best, align 4
  %36 = load i32, i32* @goal, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load %struct.Comb*, %struct.Comb** @combList, align 8
  call void @printSolution(%struct.Comb* noundef %39, i32 noundef %0)
  store i32 1, i32* @stopSearch, align 4
  br label %40

40:                                               ; preds = %38, %25
  br label %41

41:                                               ; preds = %40, %10
  br label %127

42:                                               ; preds = %5
  br label %43

43:                                               ; preds = %124, %42
  %.02 = phi i32 [ 1, %42 ], [ %125, %124 ]
  %44 = icmp ult i32 %.02, 5
  br i1 %44, label %45, label %126

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %121, %45
  %.04 = phi i32 [ 0, %45 ], [ %122, %121 ]
  %47 = load i32, i32* @listLength, align 4
  %48 = add nsw i32 %47, %0
  %49 = icmp slt i32 %.04, %48
  br i1 %49, label %50, label %123

50:                                               ; preds = %46
  %51 = shl i32 1, %.04
  %52 = and i32 %51, %1
  %.not5 = icmp eq i32 %52, 0
  br i1 %.not5, label %54, label %53

53:                                               ; preds = %50
  br label %121

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %118, %54
  %.03 = phi i32 [ 0, %54 ], [ %119, %118 ]
  %56 = icmp ult i32 %.03, %.04
  br i1 %56, label %57, label %120

57:                                               ; preds = %55
  %58 = shl i32 1, %.03
  %59 = and i32 %58, %1
  %.not6 = icmp eq i32 %59, 0
  br i1 %.not6, label %61, label %60

60:                                               ; preds = %57
  br label %118

61:                                               ; preds = %57
  %62 = load i32*, i32** @workList, align 8
  %63 = zext i32 %.04 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %.03 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %.02, 3
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = icmp eq i32 %.02, 4
  br i1 %71, label %72, label %77

72:                                               ; preds = %70, %61
  %73 = icmp eq i32 %65, 1
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %68, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %74, %72
  br label %118

77:                                               ; preds = %74, %70
  %78 = icmp eq i32 %65, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = icmp eq i32 %68, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %77
  br label %118

82:                                               ; preds = %79
  %83 = icmp eq i32 %.02, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = srem i32 %65, %68
  %.not7 = icmp eq i32 %85, 0
  br i1 %.not7, label %87, label %86

86:                                               ; preds = %84
  br label %118

87:                                               ; preds = %84, %82
  %88 = icmp eq i32 %.02, 4
  br i1 %88, label %91, label %89

89:                                               ; preds = %87
  %90 = icmp eq i32 %.02, 2
  br i1 %90, label %91, label %94

91:                                               ; preds = %89, %87
  %92 = icmp slt i32 %65, %68
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %91, %89
  %.01 = phi i32 [ %68, %93 ], [ %65, %91 ], [ %65, %89 ]
  %.0 = phi i32 [ %65, %93 ], [ %68, %91 ], [ %68, %89 ]
  %95 = shl i32 1, %.04
  %96 = or i32 %95, %1
  %97 = shl i32 1, %.03
  %98 = or i32 %96, %97
  %99 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %100 = sext i32 %0 to i64
  %101 = getelementptr inbounds %struct.Comb, %struct.Comb* %99, i64 %100, i32 0
  store i32 %.01, i32* %101, align 4
  %102 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %103 = sext i32 %0 to i64
  %104 = getelementptr inbounds %struct.Comb, %struct.Comb* %102, i64 %103, i32 1
  store i32 %.0, i32* %104, align 4
  %105 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %106 = sext i32 %0 to i64
  %107 = getelementptr inbounds %struct.Comb, %struct.Comb* %105, i64 %106, i32 2
  store i32 %.02, i32* %107, align 4
  %108 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %109 = sext i32 %0 to i64
  %110 = getelementptr inbounds %struct.Comb, %struct.Comb* %108, i64 %109
  %111 = call i32 @calculate(%struct.Comb* noundef %110)
  %112 = load i32*, i32** @workList, align 8
  %113 = load i32, i32* @listLength, align 4
  %114 = add nsw i32 %113, %0
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %117, i32 noundef %98)
  br label %118

118:                                              ; preds = %94, %86, %81, %76, %60
  %119 = add nuw nsw i32 %.03, 1
  br label %55, !llvm.loop !10

120:                                              ; preds = %55
  br label %121

121:                                              ; preds = %120, %53
  %122 = add nuw nsw i32 %.04, 1
  br label %46, !llvm.loop !11

123:                                              ; preds = %46
  br label %124

124:                                              ; preds = %123
  %125 = add nuw nsw i32 %.02, 1
  br label %43, !llvm.loop !12

126:                                              ; preds = %43
  br label %127

127:                                              ; preds = %126, %41, %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = load i32, i32* @listLength, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  %5 = load i32*, i32** @workList, align 8
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, i32* @best, align 4
  %13 = sub nsw i32 %12, %9
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32*, i32** @workList, align 8
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @best, align 4
  br label %21

21:                                               ; preds = %16, %4
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !13

24:                                               ; preds = %1
  %25 = load i32, i32* @best, align 4
  %26 = load i32, i32* @goal, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.1, i64 0, i64 0))
  br label %46

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %37, %29
  %storemerge = phi i32 [ 1, %29 ], [ %39, %37 ]
  store i32 %storemerge, i32* @dmax, align 4
  %31 = load i32, i32* @listLength, align 4
  %32 = icmp slt i32 %storemerge, %31
  br i1 %32, label %33, label %.loopexit

33:                                               ; preds = %30
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %34 = load i32, i32* @stopSearch, align 4
  %.not = icmp eq i32 %34, 0
  br i1 %.not, label %36, label %35

35:                                               ; preds = %33
  br label %40

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @dmax, align 4
  %39 = add nsw i32 %38, 1
  br label %30, !llvm.loop !14

.loopexit:                                        ; preds = %30
  br label %40

40:                                               ; preds = %.loopexit, %35
  %41 = load i32, i32* @stopSearch, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.Comb*, %struct.Comb** @solution, align 8
  %45 = load i32, i32* @bestDepth, align 4
  call void @printSolution(%struct.Comb* noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %43, %40, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  store i32 13, i32* %2, align 16
  %3 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 1
  store i32 32, i32* %3, align 4
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 2
  store i32 14, i32* %4, align 8
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 3
  store i32 1412, i32* %5, align 4
  br label %6

6:                                                ; preds = %12, %0
  %.0 = phi i32 [ 0, %0 ], [ %19, %12 ]
  %7 = call i32 @getchar() #10
  %.not = icmp eq i32 %7, 10
  br i1 %.not, label %10, label %8

8:                                                ; preds = %6
  %9 = icmp ne i32 %7, -1
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i1 [ false, %6 ], [ %9, %8 ]
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %14 = call i32 @ungetc(i32 noundef %7, %struct._IO_FILE* noundef %13) #10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %16
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %17) #10
  %19 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !15

20:                                               ; preds = %10
  %21 = icmp eq i32 %.0, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20
  %.1 = phi i32 [ 4, %22 ], [ %.0, %20 ]
  %24 = add nsw i32 %.1, -1
  store i32 %24, i32* @listLength, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @goal, align 4
  %28 = shl nsw i32 %24, 1
  %29 = call i32* @newWorkList(i32 noundef %28)
  store i32* %29, i32** @workList, align 8
  %30 = load i32, i32* @listLength, align 4
  %31 = call %struct.Comb* @newCombList(i32 noundef %30)
  store %struct.Comb* %31, %struct.Comb** @combList, align 8
  %32 = load i32, i32* @listLength, align 4
  %33 = call %struct.Comb* @newCombList(i32 noundef %32)
  store %struct.Comb* %33, %struct.Comb** @solution, align 8
  %34 = load i32*, i32** @workList, align 8
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %36 = load i32, i32* @listLength, align 4
  call void @initWorkList(i32* noundef %34, i32* noundef nonnull %35, i32 noundef %36)
  %37 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %38 = load i32, i32* @listLength, align 4
  call void @initCombList(%struct.Comb* noundef %37, i32 noundef %38)
  %39 = load %struct.Comb*, %struct.Comb** @solution, align 8
  %40 = load i32, i32* @listLength, align 4
  call void @initCombList(%struct.Comb* noundef %39, i32 noundef %40)
  %41 = load i32, i32* @listLength, align 4
  ret i32 %41
}

declare dso_local i32 @getchar() #2

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @search() #0 {
  store i32 0, i32* @stopSearch, align 4
  store i32 0, i32* @nbNodes, align 4
  call void @doSearch()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call i32 @getInput()
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @search()
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

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
