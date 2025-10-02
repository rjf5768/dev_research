; ModuleID = './delta.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.list = type { i8*, %struct.list* }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }

@rcsid_delta = dso_local global [5 x i8] c"$Id$\00", align 1
@principleCost = dso_local global i32 0, align 4
@lexical = dso_local global i32 0, align 4
@prevent_divergence = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"ERROR:  The grammar appears to diverge\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\09Relative Costs: %s(0), %s(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09Offending Operator: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09Offending Tree: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ASSIGNCOST(i16* nocapture noundef writeonly %0, i16* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* @lexical, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %16, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.0 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %6 = icmp ult i32 %.0, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i16, i16* %1, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i16, i16* %0, i64 %11
  store i16 %10, i16* %12, align 2
  br label %13

13:                                               ; preds = %7
  %14 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  br label %18

16:                                               ; preds = %2
  %17 = load i16, i16* %1, align 2
  store i16 %17, i16* %0, align 2
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ADDCOST(i16* nocapture noundef %0, i16* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* @lexical, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %18, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %15, %4
  %.0 = phi i32 [ 0, %4 ], [ %16, %15 ]
  %6 = icmp ult i32 %.0, 4
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i16, i16* %1, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i16, i16* %0, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = add i16 %13, %10
  store i16 %14, i16* %12, align 2
  br label %15

15:                                               ; preds = %7
  %16 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !6

17:                                               ; preds = %5
  br label %22

18:                                               ; preds = %2
  %19 = load i16, i16* %1, align 2
  %20 = load i16, i16* %0, align 2
  %21 = add i16 %20, %19
  store i16 %21, i16* %0, align 2
  br label %22

22:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @MINUSCOST(i16* nocapture noundef %0, i16* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* @lexical, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %18, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %15, %4
  %.0 = phi i32 [ 0, %4 ], [ %16, %15 ]
  %6 = icmp ult i32 %.0, 4
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i16, i16* %1, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i16, i16* %0, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = sub i16 %13, %10
  store i16 %14, i16* %12, align 2
  br label %15

15:                                               ; preds = %7
  %16 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !7

17:                                               ; preds = %5
  br label %22

18:                                               ; preds = %2
  %19 = load i16, i16* %1, align 2
  %20 = load i16, i16* %0, align 2
  %21 = sub i16 %20, %19
  store i16 %21, i16* %0, align 2
  br label %22

22:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ZEROCOST(i16* nocapture noundef writeonly %0) #0 {
  %2 = load i32, i32* @lexical, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %12, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %5 = icmp ult i32 %.0, 4
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i16, i16* %0, i64 %7
  store i16 0, i16* %8, align 2
  br label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !8

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %1
  store i16 0, i16* %0, align 2
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @LESSCOST(i16* nocapture noundef readonly %0, i16* nocapture noundef readonly %1) #1 {
  %3 = load i32, i32* @lexical, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %30, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %27, %4
  %.01 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %6 = icmp ult i32 %.01, 4
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i16, i16* %0, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds i16, i16* %1, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = icmp slt i16 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %35

16:                                               ; preds = %7
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds i16, i16* %0, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds i16, i16* %1, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = icmp sgt i16 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %35

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !9

29:                                               ; preds = %5
  br label %35

30:                                               ; preds = %2
  %31 = load i16, i16* %0, align 2
  %32 = load i16, i16* %1, align 2
  %33 = icmp slt i16 %31, %32
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %30, %29, %24, %15
  %.0 = phi i32 [ 1, %15 ], [ 0, %24 ], [ 0, %29 ], [ %34, %30 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @EQUALCOST(i16* nocapture noundef readonly %0, i16* nocapture noundef readonly %1) #1 {
  %3 = load i32, i32* @lexical, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %19, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %16, %4
  %.01 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %6 = icmp ult i32 %.01, 4
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i16, i16* %0, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds i16, i16* %1, i64 %11
  %13 = load i16, i16* %12, align 2
  %.not2 = icmp eq i16 %10, %13
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %7
  br label %24

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !10

18:                                               ; preds = %5
  br label %24

19:                                               ; preds = %2
  %20 = load i16, i16* %0, align 2
  %21 = load i16, i16* %1, align 2
  %22 = icmp eq i16 %20, %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %19, %18, %14
  %.0 = phi i32 [ 0, %14 ], [ 1, %18 ], [ %23, %19 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHECKDIVERGE(i16* nocapture noundef readonly %0, %struct.item_set* noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = load i32, i32* @prevent_divergence, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %82

12:                                               ; preds = %4
  %13 = load i32, i32* @lexical, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %53, label %14

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %50, %14
  %.0 = phi i32 [ 0, %14 ], [ %51, %50 ]
  %16 = icmp ult i32 %.0, 4
  br i1 %16, label %17, label %52

17:                                               ; preds = %15
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds i16, i16* %0, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = load i32, i32* @prevent_divergence, align 4
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %24, label %49

24:                                               ; preds = %17
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %26 = call i32 @nonTerminalName(i8* noundef nonnull %25, i32 noundef %2) #6
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %28 = call i32 @nonTerminalName(i8* noundef nonnull %27, i32 noundef %3) #6
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %29) #7
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds i16, i16* %0, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %32, i8* noundef nonnull %33, i32 noundef %37) #8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = getelementptr inbounds %struct.item_set, %struct.item_set* %1, i64 0, i32 2
  %41 = load %struct.operator*, %struct.operator** %40, align 8
  %42 = getelementptr inbounds %struct.operator, %struct.operator* %41, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %43) #8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %45) #7
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @printRepresentative(%struct._IO_FILE* noundef %47, %struct.item_set* noundef %1) #6
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc2 = call i32 @fputc(i32 10, %struct._IO_FILE* %48)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %17
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !11

52:                                               ; preds = %15
  br label %82

53:                                               ; preds = %12
  %54 = load i16, i16* %0, align 2
  %55 = sext i16 %54 to i32
  %56 = load i32, i32* @prevent_divergence, align 4
  %57 = icmp slt i32 %56, %55
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %60 = call i32 @nonTerminalName(i8* noundef nonnull %59, i32 noundef %2) #6
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %62 = call i32 @nonTerminalName(i8* noundef nonnull %61, i32 noundef %3) #6
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %63) #7
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %68 = load i16, i16* %0, align 2
  %69 = sext i16 %68 to i32
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %66, i8* noundef nonnull %67, i32 noundef %69) #8
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = getelementptr inbounds %struct.item_set, %struct.item_set* %1, i64 0, i32 2
  %73 = load %struct.operator*, %struct.operator** %72, align 8
  %74 = getelementptr inbounds %struct.operator, %struct.operator* %73, i64 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %75) #8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %77) #7
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @printRepresentative(%struct._IO_FILE* noundef %79, %struct.item_set* noundef %1) #6
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %80)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %53
  br label %82

82:                                               ; preds = %81, %52, %11
  ret void

UnifiedUnreachableBlock:                          ; preds = %58, %24
  unreachable
}

declare dso_local i32 @nonTerminalName(i8* noundef, i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local void @printRepresentative(%struct._IO_FILE* noundef, %struct.item_set* noundef) #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
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
