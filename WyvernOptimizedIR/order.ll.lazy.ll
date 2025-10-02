; ModuleID = './order.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }

@ord_PRECEDENCE = dso_local global i32* null, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/SPASS/order.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\0A In ord_Compare:\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0A Illegal ordering type.\00", align 1
@.str.4 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\0A In ord_Compare: Illegal ordering type.\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\0A In ord_ContCompare:\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\0A In ord_ContGreater:\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" uncomparable \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" equal \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c" greater than \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" smaller than \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" Nonsense! \00", align 1
@ord_VARCOUNT = dso_local global [2000 x [2 x i32]] zeroinitializer, align 16
@symbol_TYPEMASK = external dso_local constant i32, align 4
@symbol_SIGNATURE = external dso_local global %struct.signature**, align 8
@symbol_TYPESTATBITS = external dso_local constant i32, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@fol_NOT = external dso_local global i32, align 4
@fol_EQUALITY = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_Compare(%struct.term* noundef %0, %struct.term* noundef %1, i32* nocapture noundef readonly %2, i32* noundef %3) #0 {
  %5 = call i32 @ord_CheckDomPred(%struct.term* noundef %0, %struct.term* noundef %1, i32* noundef %3)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  br label %22

7:                                                ; preds = %4
  store i32* %3, i32** @ord_PRECEDENCE, align 8
  %8 = call i32 @flag_GetFlagValue(i32* noundef %2, i32 noundef 52)
  switch i32 %8, label %13 [
    i32 0, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %7
  %10 = call i32 @kbo_Compare(%struct.term* noundef %0, %struct.term* noundef %1) #7
  br label %22

11:                                               ; preds = %7
  %12 = call i32 @rpos_Compare(%struct.term* noundef %0, %struct.term* noundef %1) #7
  br label %22

13:                                               ; preds = %7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i32 @fflush(%struct._IO_FILE* noundef %14) #7
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116) #8
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #7
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #7
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), i64 132, i64 1, %struct._IO_FILE* %18) #9
  call void @misc_DumpCore()
  br label %20

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21, %11, %9, %6
  %.0 = phi i32 [ %5, %6 ], [ 0, %21 ], [ %12, %11 ], [ %10, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ord_CheckDomPred(%struct.term* nocapture noundef readonly %0, %struct.term* nocapture noundef readonly %1, i32* nocapture noundef readonly %2) #1 {
  %4 = call i32 @term_IsAtom(%struct.term* noundef %0)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %3
  %6 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %7 = call i32 @symbol_HasProperty(i32 noundef %6, i32 noundef 64)
  %.not10 = icmp eq i32 %7, 0
  br i1 %.not10, label %8, label %13

8:                                                ; preds = %5, %3
  %9 = call i32 @term_IsAtom(%struct.term* noundef %1)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %40, label %10

10:                                               ; preds = %8
  %11 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %12 = call i32 @symbol_HasProperty(i32 noundef %11, i32 noundef 64)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %40, label %13

13:                                               ; preds = %10, %5
  %14 = call i32 @term_IsAtom(%struct.term* noundef %0)
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %38, label %15

15:                                               ; preds = %13
  %16 = call i32 @term_IsAtom(%struct.term* noundef %1)
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %36, label %17

17:                                               ; preds = %15
  %18 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %19 = call i32 @symbol_HasProperty(i32 noundef %18, i32 noundef 64)
  %.not5 = icmp eq i32 %19, 0
  br i1 %.not5, label %28, label %20

20:                                               ; preds = %17
  %21 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %22 = call i32 @symbol_HasProperty(i32 noundef %21, i32 noundef 64)
  %.not8 = icmp eq i32 %22, 0
  br i1 %.not8, label %27, label %23

23:                                               ; preds = %20
  %24 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %25 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %26 = call i32 @symbol_PrecedenceGreater(i32* noundef %2, i32 noundef %24, i32 noundef %25)
  %.not9 = icmp eq i32 %26, 0
  br i1 %.not9, label %28, label %27

27:                                               ; preds = %23, %20
  br label %41

28:                                               ; preds = %23, %17
  %29 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %30 = call i32 @symbol_HasProperty(i32 noundef %29, i32 noundef 64)
  %.not6 = icmp eq i32 %30, 0
  br i1 %.not6, label %34, label %31

31:                                               ; preds = %28
  %32 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %33 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %.not7 = icmp eq i32 %32, %33
  br i1 %.not7, label %35, label %34

34:                                               ; preds = %31, %28
  br label %41

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %15
  br label %41

37:                                               ; preds = %35
  br label %39

38:                                               ; preds = %13
  br label %41

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %10, %8
  br label %41

41:                                               ; preds = %40, %38, %36, %34, %27
  %.0 = phi i32 [ 3, %27 ], [ 1, %34 ], [ 0, %40 ], [ 3, %36 ], [ 1, %38 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @flag_GetFlagValue(i32* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

declare dso_local i32 @kbo_Compare(%struct.term* noundef, %struct.term* noundef) #2

declare dso_local i32 @rpos_Compare(%struct.term* noundef, %struct.term* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @misc_ErrorReport(i8* noundef, ...) #2

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @misc_DumpCore() #3 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1) #9
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3) #7
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7) #7
  call void @abort() #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_CompareEqual(%struct.term* noundef %0, %struct.term* noundef %1, i32* nocapture noundef readonly %2) #0 {
  %4 = call i32 @flag_GetFlagValue(i32* noundef %2, i32 noundef 52)
  switch i32 %4, label %9 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %3
  %6 = call i32 @term_Equal(%struct.term* noundef %0, %struct.term* noundef %1) #7
  br label %16

7:                                                ; preds = %3
  %8 = call i32 @rpos_Equal(%struct.term* noundef %0, %struct.term* noundef %1) #7
  br label %16

9:                                                ; preds = %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i32 @fflush(%struct._IO_FILE* noundef %10) #7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137) #8
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)) #7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), i64 132, i64 1, %struct._IO_FILE* %14) #9
  call void @misc_DumpCore()
  br label %16

16:                                               ; preds = %9, %7, %5
  %.0 = phi i32 [ 0, %9 ], [ %8, %7 ], [ %6, %5 ]
  ret i32 %.0
}

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #2

declare dso_local i32 @rpos_Equal(%struct.term* noundef, %struct.term* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32* nocapture noundef readonly %4, i32* noundef %5) #0 {
  %7 = call i32 @ord_CheckDomPred(%struct.term* noundef %1, %struct.term* noundef %3, i32* noundef %5)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6
  br label %24

9:                                                ; preds = %6
  store i32* %5, i32** @ord_PRECEDENCE, align 8
  %10 = call i32 @flag_GetFlagValue(i32* noundef %4, i32 noundef 52)
  switch i32 %10, label %15 [
    i32 0, label %11
    i32 1, label %13
  ]

11:                                               ; preds = %9
  %12 = call i32 @kbo_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #7
  br label %24

13:                                               ; preds = %9
  %14 = call i32 @rpos_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #7
  br label %24

15:                                               ; preds = %9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = call i32 @fflush(%struct._IO_FILE* noundef %16) #7
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 167) #8
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0)) #7
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), i64 132, i64 1, %struct._IO_FILE* %20) #9
  call void @misc_DumpCore()
  br label %22

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23, %13, %11, %8
  %.0 = phi i32 [ %7, %8 ], [ 0, %23 ], [ %14, %13 ], [ %12, %11 ]
  ret i32 %.0
}

declare dso_local i32 @kbo_ContCompare(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #2

declare dso_local i32 @rpos_ContCompare(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32* nocapture noundef readonly %4, i32* noundef %5) #0 {
  %7 = call i32 @ord_CheckDomPred(%struct.term* noundef %1, %struct.term* noundef %3, i32* noundef %5)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %11, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %7, 3
  %10 = zext i1 %9 to i32
  br label %26

11:                                               ; preds = %6
  store i32* %5, i32** @ord_PRECEDENCE, align 8
  %12 = call i32 @flag_GetFlagValue(i32* noundef %4, i32 noundef 52)
  switch i32 %12, label %17 [
    i32 0, label %13
    i32 1, label %15
  ]

13:                                               ; preds = %11
  %14 = call i32 @kbo_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #7
  br label %26

15:                                               ; preds = %11
  %16 = call i32 @rpos_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3)
  br label %26

17:                                               ; preds = %11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 @fflush(%struct._IO_FILE* noundef %18) #7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200) #8
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #7
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #7
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), i64 132, i64 1, %struct._IO_FILE* %22) #9
  call void @misc_DumpCore()
  br label %24

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25, %15, %13, %8
  %.0 = phi i32 [ %10, %8 ], [ 0, %25 ], [ %16, %15 ], [ %14, %13 ]
  ret i32 %.0
}

declare dso_local i32 @kbo_ContGreater(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #7
  %6 = call i32 @ord_IsGreaterThan(i32 noundef %5)
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ord_Not(i32 noundef %0) #4 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3, %1
  br label %10

6:                                                ; preds = %3
  %7 = icmp eq i32 %0, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8, %5
  %.0 = phi i32 [ %0, %5 ], [ 1, %8 ], [ 3, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ord_Print(i32 noundef %0) #0 {
  switch i32 %0, label %14 [
    i32 0, label %2
    i32 2, label %5
    i32 3, label %8
    i32 1, label %11
  ]

2:                                                ; preds = %1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %3)
  br label %17

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %6)
  br label %17

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %9)
  br label %17

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %15)
  br label %17

17:                                               ; preds = %14, %11, %8, %5, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_LiteralCompare(%struct.term* noundef %0, i32 noundef %1, %struct.term* noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef readonly %5, i32* noundef %6) #0 {
  %8 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %9 = call i32 @fol_Not()
  %10 = call i32 @symbol_Equal(i32 noundef %8, i32 noundef %9)
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %13, label %11

11:                                               ; preds = %7
  %12 = call %struct.term* @term_FirstArgument(%struct.term* noundef %0)
  br label %13

13:                                               ; preds = %11, %7
  %.01 = phi %struct.term* [ %12, %11 ], [ %0, %7 ]
  %14 = call i32 @term_TopSymbol(%struct.term* noundef %2)
  %15 = call i32 @fol_Not()
  %16 = call i32 @symbol_Equal(i32 noundef %14, i32 noundef %15)
  %.not15 = icmp eq i32 %16, 0
  br i1 %.not15, label %19, label %17

17:                                               ; preds = %13
  %18 = call %struct.term* @term_FirstArgument(%struct.term* noundef %2)
  br label %19

19:                                               ; preds = %17, %13
  %.02 = phi %struct.term* [ %18, %17 ], [ %2, %13 ]
  %20 = call i32 @fol_IsEquality(%struct.term* noundef %.01)
  %.not16 = icmp eq i32 %20, 0
  br i1 %.not16, label %304, label %21

21:                                               ; preds = %19
  %22 = call i32 @fol_IsEquality(%struct.term* noundef %.02)
  %.not25 = icmp eq i32 %22, 0
  br i1 %.not25, label %289, label %23

23:                                               ; preds = %21
  %24 = call %struct.term* @term_FirstArgument(%struct.term* noundef %.01)
  %25 = call %struct.term* @term_SecondArgument(%struct.term* noundef %.01)
  %26 = call %struct.term* @term_FirstArgument(%struct.term* noundef %.02)
  %27 = call %struct.term* @term_SecondArgument(%struct.term* noundef %.02)
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %28, label %34

28:                                               ; preds = %23
  %.not30 = icmp eq i32 %4, 0
  br i1 %.not30, label %109, label %29

29:                                               ; preds = %28
  %30 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %25, i32* noundef %5, i32* noundef %6)
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = icmp eq i32 %30, 1
  br i1 %33, label %34, label %109

34:                                               ; preds = %32, %29, %23
  %.010 = phi i32 [ 0, %23 ], [ %30, %29 ], [ %30, %32 ]
  %35 = icmp eq i32 %.010, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %34
  %.07 = phi %struct.term* [ %25, %36 ], [ %24, %34 ]
  %.06 = phi %struct.term* [ %24, %36 ], [ %25, %34 ]
  %.not63 = icmp eq i32 %3, 0
  br i1 %.not63, label %38, label %44

38:                                               ; preds = %37
  %.not64 = icmp eq i32 %4, 0
  br i1 %.not64, label %60, label %39

39:                                               ; preds = %38
  %40 = call i32 @ord_Compare(%struct.term* noundef %26, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = icmp eq i32 %40, 1
  br i1 %43, label %44, label %60

44:                                               ; preds = %42, %39, %37
  %.011 = phi i32 [ 0, %37 ], [ %40, %39 ], [ %40, %42 ]
  %45 = icmp eq i32 %.011, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %44
  %.04 = phi %struct.term* [ %27, %46 ], [ %26, %44 ]
  %.03 = phi %struct.term* [ %26, %46 ], [ %27, %44 ]
  %48 = call i32 @ord_Compare(%struct.term* noundef %.07, %struct.term* noundef %.04, i32* noundef %5, i32* noundef %6)
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  br i1 %.not, label %51, label %55

51:                                               ; preds = %50
  br i1 %.not15, label %52, label %54

52:                                               ; preds = %51
  %53 = call i32 @ord_Compare(%struct.term* noundef %.06, %struct.term* noundef %.03, i32* noundef %5, i32* noundef %6)
  br label %334

54:                                               ; preds = %51
  br label %334

55:                                               ; preds = %50
  br i1 %.not15, label %56, label %57

56:                                               ; preds = %55
  br label %334

57:                                               ; preds = %55
  %58 = call i32 @ord_Compare(%struct.term* noundef %.06, %struct.term* noundef %.03, i32* noundef %5, i32* noundef %6)
  br label %334

59:                                               ; preds = %47
  br label %334

60:                                               ; preds = %42, %38
  %61 = call i32 @term_Equal(%struct.term* noundef %.07, %struct.term* noundef %26) #7
  %.not65 = icmp eq i32 %61, 0
  br i1 %.not65, label %74, label %62

62:                                               ; preds = %60
  %63 = call i32 @ord_Compare(%struct.term* noundef %.06, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  br i1 %.not, label %66, label %68

66:                                               ; preds = %65
  br i1 %.not15, label %68, label %67

67:                                               ; preds = %66
  br label %334

68:                                               ; preds = %66, %65
  br i1 %.not, label %71, label %69

69:                                               ; preds = %68
  br i1 %.not15, label %70, label %71

70:                                               ; preds = %69
  br label %334

71:                                               ; preds = %69, %68
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72, %62
  br label %334

74:                                               ; preds = %60
  %75 = call i32 @term_Equal(%struct.term* noundef %.07, %struct.term* noundef %27) #7
  %.not66 = icmp eq i32 %75, 0
  br i1 %.not66, label %88, label %76

76:                                               ; preds = %74
  %77 = call i32 @ord_Compare(%struct.term* noundef %.06, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  br i1 %.not, label %80, label %82

80:                                               ; preds = %79
  br i1 %.not15, label %82, label %81

81:                                               ; preds = %80
  br label %334

82:                                               ; preds = %80, %79
  br i1 %.not, label %85, label %83

83:                                               ; preds = %82
  br i1 %.not15, label %84, label %85

84:                                               ; preds = %83
  br label %334

85:                                               ; preds = %83, %82
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %76
  br label %334

88:                                               ; preds = %74
  %89 = call i32 @ord_Compare(%struct.term* noundef %.07, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %90 = call i32 @ord_Compare(%struct.term* noundef %.07, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %334

93:                                               ; preds = %88
  %94 = call i32 @ord_Compare(%struct.term* noundef %.06, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %95 = icmp eq i32 %89, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %334

97:                                               ; preds = %93
  %98 = icmp eq i32 %90, %94
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp eq i32 %90, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %334

102:                                              ; preds = %99, %97
  %103 = call i32 @ord_Compare(%struct.term* noundef %.06, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %104 = icmp eq i32 %89, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = icmp eq i32 %89, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  br label %334

108:                                              ; preds = %105, %102
  br label %334

109:                                              ; preds = %32, %28
  %.not31 = icmp eq i32 %3, 0
  br i1 %.not31, label %110, label %117

110:                                              ; preds = %109
  %.not32 = icmp eq i32 %4, 0
  br i1 %.not32, label %168, label %111

111:                                              ; preds = %110
  %112 = call %struct.term* @term_FirstArgument(%struct.term* noundef %.02)
  %113 = call %struct.term* @term_SecondArgument(%struct.term* noundef %.02)
  %114 = call i32 @ord_Compare(%struct.term* noundef %112, %struct.term* noundef %113, i32* noundef %5, i32* noundef %6)
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  br i1 %115, label %117, label %168

117:                                              ; preds = %116, %111, %109
  %.112.shrunk = phi i1 [ false, %109 ], [ %115, %111 ], [ %115, %116 ]
  br i1 %.112.shrunk, label %118, label %119

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %117
  %.15 = phi %struct.term* [ %27, %118 ], [ %26, %117 ]
  %.1 = phi %struct.term* [ %26, %118 ], [ %27, %117 ]
  %120 = call i32 @term_Equal(%struct.term* noundef %24, %struct.term* noundef %.15) #7
  %.not53 = icmp eq i32 %120, 0
  br i1 %.not53, label %133, label %121

121:                                              ; preds = %119
  %122 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %.1, i32* noundef %5, i32* noundef %6)
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  br i1 %.not, label %125, label %127

125:                                              ; preds = %124
  br i1 %.not15, label %127, label %126

126:                                              ; preds = %125
  br label %334

127:                                              ; preds = %125, %124
  br i1 %.not, label %130, label %128

128:                                              ; preds = %127
  br i1 %.not15, label %129, label %130

129:                                              ; preds = %128
  br label %334

130:                                              ; preds = %128, %127
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %121
  br label %334

133:                                              ; preds = %119
  %134 = call i32 @term_Equal(%struct.term* noundef %25, %struct.term* noundef %.15) #7
  %.not54 = icmp eq i32 %134, 0
  br i1 %.not54, label %147, label %135

135:                                              ; preds = %133
  %136 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %.1, i32* noundef %5, i32* noundef %6)
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  br i1 %.not, label %139, label %141

139:                                              ; preds = %138
  br i1 %.not15, label %141, label %140

140:                                              ; preds = %139
  br label %334

141:                                              ; preds = %139, %138
  br i1 %.not, label %144, label %142

142:                                              ; preds = %141
  br i1 %.not15, label %143, label %144

143:                                              ; preds = %142
  br label %334

144:                                              ; preds = %142, %141
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %135
  br label %334

147:                                              ; preds = %133
  %148 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %.15, i32* noundef %5, i32* noundef %6)
  %149 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %.15, i32* noundef %5, i32* noundef %6)
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %334

152:                                              ; preds = %147
  %153 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %.1, i32* noundef %5, i32* noundef %6)
  %154 = icmp eq i32 %148, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %334

156:                                              ; preds = %152
  %157 = icmp eq i32 %149, %153
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = icmp eq i32 %149, 3
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  br label %334

161:                                              ; preds = %158, %156
  %162 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %.1, i32* noundef %5, i32* noundef %6)
  %163 = icmp eq i32 %148, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = icmp eq i32 %148, 3
  br i1 %165, label %166, label %167

166:                                              ; preds = %164
  br label %334

167:                                              ; preds = %164, %161
  br label %334

168:                                              ; preds = %116, %110
  %169 = call i32 @term_Equal(%struct.term* noundef %24, %struct.term* noundef %26) #7
  %.not33 = icmp eq i32 %169, 0
  br i1 %.not33, label %182, label %170

170:                                              ; preds = %168
  %171 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  br i1 %.not, label %174, label %176

174:                                              ; preds = %173
  br i1 %.not15, label %176, label %175

175:                                              ; preds = %174
  br label %334

176:                                              ; preds = %174, %173
  br i1 %.not, label %179, label %177

177:                                              ; preds = %176
  br i1 %.not15, label %178, label %179

178:                                              ; preds = %177
  br label %334

179:                                              ; preds = %177, %176
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180, %170
  br label %334

182:                                              ; preds = %168
  %183 = call i32 @term_Equal(%struct.term* noundef %25, %struct.term* noundef %26) #7
  %.not34 = icmp eq i32 %183, 0
  br i1 %.not34, label %196, label %184

184:                                              ; preds = %182
  %185 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  br i1 %.not, label %188, label %190

188:                                              ; preds = %187
  br i1 %.not15, label %190, label %189

189:                                              ; preds = %188
  br label %334

190:                                              ; preds = %188, %187
  br i1 %.not, label %193, label %191

191:                                              ; preds = %190
  br i1 %.not15, label %192, label %193

192:                                              ; preds = %191
  br label %334

193:                                              ; preds = %191, %190
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194, %184
  br label %334

196:                                              ; preds = %182
  %197 = call i32 @term_Equal(%struct.term* noundef %24, %struct.term* noundef %27) #7
  %.not35 = icmp eq i32 %197, 0
  br i1 %.not35, label %210, label %198

198:                                              ; preds = %196
  %199 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  br i1 %.not, label %202, label %204

202:                                              ; preds = %201
  br i1 %.not15, label %204, label %203

203:                                              ; preds = %202
  br label %334

204:                                              ; preds = %202, %201
  br i1 %.not, label %207, label %205

205:                                              ; preds = %204
  br i1 %.not15, label %206, label %207

206:                                              ; preds = %205
  br label %334

207:                                              ; preds = %205, %204
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208, %198
  br label %334

210:                                              ; preds = %196
  %211 = call i32 @term_Equal(%struct.term* noundef %25, %struct.term* noundef %27) #7
  %.not36 = icmp eq i32 %211, 0
  br i1 %.not36, label %224, label %212

212:                                              ; preds = %210
  %213 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  br i1 %.not, label %216, label %218

216:                                              ; preds = %215
  br i1 %.not15, label %218, label %217

217:                                              ; preds = %216
  br label %334

218:                                              ; preds = %216, %215
  br i1 %.not, label %221, label %219

219:                                              ; preds = %218
  br i1 %.not15, label %220, label %221

220:                                              ; preds = %219
  br label %334

221:                                              ; preds = %219, %218
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222, %212
  br label %334

224:                                              ; preds = %210
  %225 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %256

227:                                              ; preds = %224
  %228 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %232 = icmp eq i32 %231, 3
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %235 = icmp eq i32 %234, 3
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %334

237:                                              ; preds = %233, %230
  br label %334

238:                                              ; preds = %227
  %239 = icmp eq i32 %228, 3
  br i1 %239, label %240, label %245

240:                                              ; preds = %238
  %241 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %242 = icmp eq i32 %241, 3
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %334

244:                                              ; preds = %240
  br label %334

245:                                              ; preds = %238
  %246 = icmp eq i32 %228, 1
  br i1 %246, label %247, label %255

247:                                              ; preds = %245
  %248 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %254

253:                                              ; preds = %250, %247
  br label %334

254:                                              ; preds = %250
  br label %334

255:                                              ; preds = %245
  br label %256

256:                                              ; preds = %255, %224
  %.08 = phi i32 [ %228, %255 ], [ %225, %224 ]
  %257 = icmp eq i32 %.08, 3
  br i1 %257, label %258, label %271

258:                                              ; preds = %256
  %259 = call i32 @ord_Compare(%struct.term* noundef %24, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %260 = icmp eq i32 %259, 3
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %263 = icmp eq i32 %262, 3
  br i1 %263, label %264, label %265

264:                                              ; preds = %261, %258
  br label %334

265:                                              ; preds = %261
  %266 = icmp eq i32 %259, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %265
  %268 = icmp eq i32 %262, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %267, %265
  br label %334

270:                                              ; preds = %267
  br label %334

271:                                              ; preds = %256
  %272 = icmp eq i32 %.08, 1
  br i1 %272, label %273, label %286

273:                                              ; preds = %271
  %274 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %26, i32* noundef %5, i32* noundef %6)
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = call i32 @ord_Compare(%struct.term* noundef %25, %struct.term* noundef %27, i32* noundef %5, i32* noundef %6)
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %280

279:                                              ; preds = %276, %273
  br label %334

280:                                              ; preds = %276
  %281 = icmp eq i32 %274, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %280
  %283 = icmp eq i32 %277, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %282, %280
  br label %334

285:                                              ; preds = %282
  br label %334

286:                                              ; preds = %271
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  br label %303

289:                                              ; preds = %21
  %290 = call %struct.term* @term_FirstArgument(%struct.term* noundef %.01)
  %291 = call i32 @ord_Compare(%struct.term* noundef %290, %struct.term* noundef %.02, i32* noundef %5, i32* noundef %6)
  %.not26 = icmp eq i32 %1, 0
  br i1 %.not26, label %292, label %302

292:                                              ; preds = %289
  %.not27 = icmp eq i32 %291, 3
  br i1 %.not27, label %302, label %293

293:                                              ; preds = %292
  %294 = call %struct.term* @term_SecondArgument(%struct.term* noundef %.01)
  %295 = call i32 @ord_Compare(%struct.term* noundef %294, %struct.term* noundef %.02, i32* noundef %5, i32* noundef %6)
  %296 = icmp eq i32 %295, 3
  br i1 %296, label %297, label %298

297:                                              ; preds = %293
  br label %301

298:                                              ; preds = %293
  %.not28 = icmp eq i32 %291, %295
  br i1 %.not28, label %300, label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299, %298
  %.19 = phi i32 [ 0, %299 ], [ %291, %298 ]
  br label %301

301:                                              ; preds = %300, %297
  %.2 = phi i32 [ 3, %297 ], [ %.19, %300 ]
  br label %302

302:                                              ; preds = %301, %292, %289
  %.3 = phi i32 [ %291, %289 ], [ %.2, %301 ], [ %291, %292 ]
  br label %303

303:                                              ; preds = %302, %288
  %.4 = phi i32 [ %.08, %288 ], [ %.3, %302 ]
  br label %333

304:                                              ; preds = %19
  %305 = call i32 @fol_IsEquality(%struct.term* noundef %.02)
  %.not17 = icmp eq i32 %305, 0
  br i1 %.not17, label %320, label %306

306:                                              ; preds = %304
  %307 = call %struct.term* @term_FirstArgument(%struct.term* noundef %.02)
  %308 = call i32 @ord_Compare(%struct.term* noundef %.01, %struct.term* noundef %307, i32* noundef %5, i32* noundef %6)
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %309, label %319

309:                                              ; preds = %306
  %.not23 = icmp eq i32 %308, 1
  br i1 %.not23, label %319, label %310

310:                                              ; preds = %309
  %311 = call %struct.term* @term_SecondArgument(%struct.term* noundef %.02)
  %312 = call i32 @ord_Compare(%struct.term* noundef %.01, %struct.term* noundef %311, i32* noundef %5, i32* noundef %6)
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  br label %318

315:                                              ; preds = %310
  %.not24 = icmp eq i32 %308, %312
  br i1 %.not24, label %317, label %316

316:                                              ; preds = %315
  br label %317

317:                                              ; preds = %316, %315
  %.5 = phi i32 [ 0, %316 ], [ %308, %315 ]
  br label %318

318:                                              ; preds = %317, %314
  %.6 = phi i32 [ 1, %314 ], [ %.5, %317 ]
  br label %319

319:                                              ; preds = %318, %309, %306
  %.7 = phi i32 [ %308, %306 ], [ %.6, %318 ], [ %308, %309 ]
  br label %332

320:                                              ; preds = %304
  %321 = call i32 @ord_Compare(%struct.term* noundef %.01, %struct.term* noundef %.02, i32* noundef %5, i32* noundef %6)
  %322 = icmp eq i32 %321, 2
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  br i1 %.not, label %324, label %326

324:                                              ; preds = %323
  br i1 %.not15, label %326, label %325

325:                                              ; preds = %324
  br label %330

326:                                              ; preds = %324, %323
  br i1 %.not, label %329, label %327

327:                                              ; preds = %326
  br i1 %.not15, label %328, label %329

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328, %327, %326
  %.8 = phi i32 [ %321, %326 ], [ 3, %328 ], [ %321, %327 ]
  br label %330

330:                                              ; preds = %329, %325
  %.9 = phi i32 [ %.8, %329 ], [ 1, %325 ]
  br label %331

331:                                              ; preds = %330, %320
  %.10 = phi i32 [ %.9, %330 ], [ %321, %320 ]
  br label %332

332:                                              ; preds = %331, %319
  %.11 = phi i32 [ %.7, %319 ], [ %.10, %331 ]
  br label %333

333:                                              ; preds = %332, %303
  %.12 = phi i32 [ %.4, %303 ], [ %.11, %332 ]
  br label %334

334:                                              ; preds = %333, %285, %284, %279, %270, %269, %264, %254, %253, %244, %243, %237, %236, %223, %220, %217, %209, %206, %203, %195, %192, %189, %181, %178, %175, %167, %166, %160, %155, %151, %146, %143, %140, %132, %129, %126, %108, %107, %101, %96, %92, %87, %84, %81, %73, %70, %67, %59, %57, %56, %54, %52
  %.0 = phi i32 [ %53, %52 ], [ 1, %54 ], [ 3, %56 ], [ %58, %57 ], [ %48, %59 ], [ %63, %73 ], [ 3, %70 ], [ 1, %67 ], [ %77, %87 ], [ 3, %84 ], [ 1, %81 ], [ %89, %92 ], [ %89, %96 ], [ 1, %101 ], [ 1, %107 ], [ 0, %108 ], [ %122, %132 ], [ 3, %129 ], [ 1, %126 ], [ %136, %146 ], [ 3, %143 ], [ 1, %140 ], [ %148, %151 ], [ %148, %155 ], [ 3, %160 ], [ 3, %166 ], [ 0, %167 ], [ %171, %181 ], [ 3, %178 ], [ 1, %175 ], [ %185, %195 ], [ 3, %192 ], [ 1, %189 ], [ %199, %209 ], [ 3, %206 ], [ 1, %203 ], [ %213, %223 ], [ 3, %220 ], [ 1, %217 ], [ 3, %236 ], [ 0, %237 ], [ 3, %243 ], [ 0, %244 ], [ 1, %253 ], [ 0, %254 ], [ 3, %264 ], [ 0, %269 ], [ 1, %270 ], [ 1, %279 ], [ 0, %284 ], [ 3, %285 ], [ %.12, %333 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Equal(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_TopSymbol(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @fol_Not() #1 {
  %1 = load i32, i32* @fol_NOT, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @term_FirstArgument(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = call i8* @list_First(%struct.LIST_HELP* noundef %3)
  %5 = bitcast i8* %4 to %struct.term*
  ret %struct.term* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @fol_IsEquality(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %3 = load i32, i32* @fol_EQUALITY, align 4
  %4 = icmp eq i32 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @term_SecondArgument(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = call i8* @list_Second(%struct.LIST_HELP* noundef %3)
  %5 = bitcast i8* %4 to %struct.term*
  ret %struct.term* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_IsAtom(%struct.term* nocapture noundef readonly %0) #1 {
  %2 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %3 = call i32 @symbol_IsPredicate(i32 noundef %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_HasProperty(i32 noundef %0, i32 noundef %1) #1 {
  %3 = call i32 @symbol_Index(i32 noundef %0)
  %4 = call %struct.signature* @symbol_Signature(i32 noundef %3)
  %5 = getelementptr inbounds %struct.signature, %struct.signature* %4, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_PrecedenceGreater(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = call i32 @symbol_Ordering(i32* noundef %0, i32 noundef %1)
  %5 = call i32 @symbol_Ordering(i32* noundef %0, i32 noundef %2)
  %6 = icmp slt i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_IsPredicate(i32 noundef %0) #4 {
  %2 = call i32 @symbol_IsSignature(i32 noundef %0)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = call i32 @symbol_Type(i32 noundef %0)
  %5 = icmp eq i32 %4, 2
  %phi.cast = zext i1 %5 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %phi.cast, %3 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_IsSignature(i32 noundef %0) #4 {
  %.lobit = lshr i32 %0, 31
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Type(i32 noundef %0) #4 {
  %2 = sub nsw i32 0, %0
  %3 = load i32, i32* @symbol_TYPEMASK, align 4
  %4 = and i32 %3, %2
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @symbol_CheckNoVariable(i32 noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.signature* @symbol_Signature(i32 noundef %0) #1 {
  %2 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.signature*, %struct.signature** %2, i64 %3
  %5 = load %struct.signature*, %struct.signature** %4, align 8
  ret %struct.signature* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Index(i32 noundef %0) #4 {
  %2 = sub nsw i32 0, %0
  %3 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %4 = ashr i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @symbol_CheckIndexInRange(i32 noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_Ordering(i32* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = call i32 @symbol_Index(i32 noundef %1)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @flag_CheckFlagIdInRange(i32 noundef %0) #4 {
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ord_IsGreaterThan(i32 noundef %0) #4 {
  %2 = icmp eq i32 %0, 3
  %3 = zext i1 %2 to i32
  ret i32 %3
}

declare dso_local i32 @rpos_ContGreaterEqual(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_First(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = call i8* @list_Car(%struct.LIST_HELP* noundef %0)
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_Car(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_Second(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0)
  %3 = call i8* @list_Car(%struct.LIST_HELP* noundef %2)
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
