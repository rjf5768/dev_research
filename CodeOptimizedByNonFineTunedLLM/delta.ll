; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/delta.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @ASSIGNCOST(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %6 = load i32, i32* @lexical, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i16*, i16** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = load i16*, i16** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  store i16 %17, i16* %21, align 2
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %9, !llvm.loop !4

25:                                               ; preds = %9
  br label %32

26:                                               ; preds = %2
  %27 = load i16*, i16** %4, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 0
  %29 = load i16, i16* %28, align 2
  %30 = load i16*, i16** %3, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 0
  store i16 %29, i16* %31, align 2
  br label %32

32:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADDCOST(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %6 = load i32, i32* @lexical, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i16*, i16** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16*, i16** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = add nsw i32 %24, %18
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %22, align 2
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9, !llvm.loop !6

30:                                               ; preds = %9
  br label %42

31:                                               ; preds = %2
  %32 = load i16*, i16** %4, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 0
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = load i16*, i16** %3, align 8
  %37 = getelementptr inbounds i16, i16* %36, i64 0
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %39, %35
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %37, align 2
  br label %42

42:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MINUSCOST(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %6 = load i32, i32* @lexical, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i16*, i16** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16*, i16** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = sub nsw i32 %24, %18
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %22, align 2
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9, !llvm.loop !7

30:                                               ; preds = %9
  br label %42

31:                                               ; preds = %2
  %32 = load i16*, i16** %4, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 0
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = load i16*, i16** %3, align 8
  %37 = getelementptr inbounds i16, i16* %36, i64 0
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  %40 = sub nsw i32 %39, %35
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %37, align 2
  br label %42

42:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ZEROCOST(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %4 = load i32, i32* @lexical, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %15, %6
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i16*, i16** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %11, i64 %13
  store i16 0, i16* %14, align 2
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %7, !llvm.loop !8

18:                                               ; preds = %7
  br label %22

19:                                               ; preds = %1
  %20 = load i16*, i16** %2, align 8
  %21 = getelementptr inbounds i16, i16* %20, i64 0
  store i16 0, i16* %21, align 2
  br label %22

22:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LESSCOST(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  %7 = load i32, i32* @lexical, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %45, %9
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load i16*, i16** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %14, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16*, i16** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %60

28:                                               ; preds = %13
  %29 = load i16*, i16** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16*, i16** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %35, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp sgt i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %60

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %10, !llvm.loop !9

48:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %60

49:                                               ; preds = %2
  %50 = load i16*, i16** %4, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 0
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16*, i16** %5, align 8
  %55 = getelementptr inbounds i16, i16* %54, i64 0
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp slt i32 %53, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %48, %42, %27
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @EQUALCOST(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  %7 = load i32, i32* @lexical, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %9
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i16*, i16** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %14, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16*, i16** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp ne i32 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %44

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %10, !llvm.loop !10

32:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %44

33:                                               ; preds = %2
  %34 = load i16*, i16** %4, align 8
  %35 = getelementptr inbounds i16, i16* %34, i64 0
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = load i16*, i16** %5, align 8
  %39 = getelementptr inbounds i16, i16* %38, i64 0
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp eq i32 %37, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %32, %27
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHECKDIVERGE(i16* noundef %0, %struct.item_set* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca %struct.item_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [100 x i8], align 16
  %11 = alloca [100 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca [100 x i8], align 16
  store i16* %0, i16** %5, align 8
  store %struct.item_set* %1, %struct.item_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @prevent_divergence, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %108

17:                                               ; preds = %4
  %18 = load i32, i32* @lexical, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %66, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %69

24:                                               ; preds = %21
  %25 = load i16*, i16** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = load i32, i32* @prevent_divergence, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %24
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @nonTerminalName(i8* noundef %34, i32 noundef %35)
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @nonTerminalName(i8* noundef %37, i32 noundef %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %45 = load i16*, i16** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %45, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef %43, i8* noundef %44, i32 noundef %50)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = load %struct.item_set*, %struct.item_set** %6, align 8
  %54 = getelementptr inbounds %struct.item_set, %struct.item_set* %53, i32 0, i32 2
  %55 = load %struct.operator*, %struct.operator** %54, align 8
  %56 = getelementptr inbounds %struct.operator, %struct.operator* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load %struct.item_set*, %struct.item_set** %6, align 8
  call void @printRepresentative(%struct._IO_FILE* noundef %61, %struct.item_set* noundef %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #3
  unreachable

65:                                               ; preds = %24
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %21, !llvm.loop !11

69:                                               ; preds = %21
  br label %108

70:                                               ; preds = %17
  %71 = load i16*, i16** %5, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 0
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = load i32, i32* @prevent_divergence, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %70
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @nonTerminalName(i8* noundef %78, i32 noundef %79)
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @nonTerminalName(i8* noundef %81, i32 noundef %82)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %89 = load i16*, i16** %5, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 0
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef %87, i8* noundef %88, i32 noundef %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = load %struct.item_set*, %struct.item_set** %6, align 8
  %96 = getelementptr inbounds %struct.item_set, %struct.item_set* %95, i32 0, i32 2
  %97 = load %struct.operator*, %struct.operator** %96, align 8
  %98 = getelementptr inbounds %struct.operator, %struct.operator* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %104 = load %struct.item_set*, %struct.item_set** %6, align 8
  call void @printRepresentative(%struct._IO_FILE* noundef %103, %struct.item_set* noundef %104)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #3
  unreachable

107:                                              ; preds = %70
  br label %108

108:                                              ; preds = %16, %107, %69
  ret void
}

declare dso_local i32 @nonTerminalName(i8* noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @printRepresentative(%struct._IO_FILE* noundef, %struct.item_set* noundef) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
