; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/order.c'
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
define dso_local i32 @ord_Compare(%struct.term* noundef %0, %struct.term* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.term*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.term* %0, %struct.term** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.term*, %struct.term** %6, align 8
  %12 = load %struct.term*, %struct.term** %7, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @ord_CheckDomPred(%struct.term* noundef %11, %struct.term* noundef %12, i32* noundef %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %40

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  store i32* %20, i32** @ord_PRECEDENCE, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @flag_GetFlagValue(i32* noundef %21, i32 noundef 52)
  switch i32 %22, label %31 [
    i32 0, label %23
    i32 1, label %27
  ]

23:                                               ; preds = %19
  %24 = load %struct.term*, %struct.term** %6, align 8
  %25 = load %struct.term*, %struct.term** %7, align 8
  %26 = call i32 @kbo_Compare(%struct.term* noundef %24, %struct.term* noundef %25)
  store i32 %26, i32* %5, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load %struct.term*, %struct.term** %6, align 8
  %29 = load %struct.term*, %struct.term** %7, align 8
  %30 = call i32 @rpos_Compare(%struct.term* noundef %28, %struct.term* noundef %29)
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %19
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 @fflush(%struct._IO_FILE* noundef %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116)
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 @fputs(i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %36)
  call void @misc_DumpCore()
  br label %38

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %27, %23, %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_CheckDomPred(%struct.term* noundef %0, %struct.term* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.term*, align 8
  %7 = alloca i32*, align 8
  store %struct.term* %0, %struct.term** %5, align 8
  store %struct.term* %1, %struct.term** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.term*, %struct.term** %5, align 8
  %9 = call i32 @term_IsAtom(%struct.term* noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.term*, %struct.term** %5, align 8
  %13 = call i32 @term_TopSymbol(%struct.term* noundef %12)
  %14 = call i32 @symbol_HasProperty(i32 noundef %13, i32 noundef 64)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11, %3
  %17 = load %struct.term*, %struct.term** %6, align 8
  %18 = call i32 @term_IsAtom(%struct.term* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load %struct.term*, %struct.term** %6, align 8
  %22 = call i32 @term_TopSymbol(%struct.term* noundef %21)
  %23 = call i32 @symbol_HasProperty(i32 noundef %22, i32 noundef 64)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %20, %11
  %26 = load %struct.term*, %struct.term** %5, align 8
  %27 = call i32 @term_IsAtom(%struct.term* noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load %struct.term*, %struct.term** %6, align 8
  %31 = call i32 @term_IsAtom(%struct.term* noundef %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load %struct.term*, %struct.term** %5, align 8
  %35 = call i32 @term_TopSymbol(%struct.term* noundef %34)
  %36 = call i32 @symbol_HasProperty(i32 noundef %35, i32 noundef 64)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.term*, %struct.term** %6, align 8
  %40 = call i32 @term_TopSymbol(%struct.term* noundef %39)
  %41 = call i32 @symbol_HasProperty(i32 noundef %40, i32 noundef 64)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.term*, %struct.term** %5, align 8
  %46 = call i32 @term_TopSymbol(%struct.term* noundef %45)
  %47 = load %struct.term*, %struct.term** %6, align 8
  %48 = call i32 @term_TopSymbol(%struct.term* noundef %47)
  %49 = call i32 @symbol_PrecedenceGreater(i32* noundef %44, i32 noundef %46, i32 noundef %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %38
  store i32 3, i32* %4, align 4
  br label %70

52:                                               ; preds = %43, %33
  %53 = load %struct.term*, %struct.term** %5, align 8
  %54 = call i32 @term_TopSymbol(%struct.term* noundef %53)
  %55 = call i32 @symbol_HasProperty(i32 noundef %54, i32 noundef 64)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.term*, %struct.term** %5, align 8
  %59 = call i32 @term_TopSymbol(%struct.term* noundef %58)
  %60 = load %struct.term*, %struct.term** %6, align 8
  %61 = call i32 @term_TopSymbol(%struct.term* noundef %60)
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %52
  store i32 1, i32* %4, align 4
  br label %70

64:                                               ; preds = %57
  br label %66

65:                                               ; preds = %29
  store i32 3, i32* %4, align 4
  br label %70

66:                                               ; preds = %64
  br label %68

67:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %70

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %20, %16
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %67, %65, %63, %51
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flag_GetFlagValue(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %6)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

declare dso_local i32 @kbo_Compare(%struct.term* noundef, %struct.term* noundef) #1

declare dso_local i32 @rpos_Compare(%struct.term* noundef, %struct.term* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @misc_ErrorReport(i8* noundef, ...) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @misc_DumpCore() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7)
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_CompareEqual(%struct.term* noundef %0, %struct.term* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.term*, align 8
  %7 = alloca i32*, align 8
  store %struct.term* %0, %struct.term** %5, align 8
  store %struct.term* %1, %struct.term** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @flag_GetFlagValue(i32* noundef %8, i32 noundef 52)
  switch i32 %9, label %18 [
    i32 0, label %10
    i32 1, label %14
  ]

10:                                               ; preds = %3
  %11 = load %struct.term*, %struct.term** %5, align 8
  %12 = load %struct.term*, %struct.term** %6, align 8
  %13 = call i32 @term_Equal(%struct.term* noundef %11, %struct.term* noundef %12)
  store i32 %13, i32* %4, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load %struct.term*, %struct.term** %5, align 8
  %16 = load %struct.term*, %struct.term** %6, align 8
  %17 = call i32 @rpos_Equal(%struct.term* noundef %15, %struct.term* noundef %16)
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = call i32 @fflush(%struct._IO_FILE* noundef %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137)
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fputs(i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %23)
  call void @misc_DumpCore()
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %14, %10
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #1

declare dso_local i32 @rpos_Equal(%struct.term* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32* noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca %struct.binding*, align 8
  %11 = alloca %struct.term*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %8, align 8
  store %struct.term* %1, %struct.term** %9, align 8
  store %struct.binding* %2, %struct.binding** %10, align 8
  store %struct.term* %3, %struct.term** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.term*, %struct.term** %9, align 8
  %16 = load %struct.term*, %struct.term** %11, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = call i32 @ord_CheckDomPred(%struct.term* noundef %15, %struct.term* noundef %16, i32* noundef %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %7, align 4
  br label %48

23:                                               ; preds = %6
  %24 = load i32*, i32** %13, align 8
  store i32* %24, i32** @ord_PRECEDENCE, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @flag_GetFlagValue(i32* noundef %25, i32 noundef 52)
  switch i32 %26, label %39 [
    i32 0, label %27
    i32 1, label %33
  ]

27:                                               ; preds = %23
  %28 = load %struct.binding*, %struct.binding** %8, align 8
  %29 = load %struct.term*, %struct.term** %9, align 8
  %30 = load %struct.binding*, %struct.binding** %10, align 8
  %31 = load %struct.term*, %struct.term** %11, align 8
  %32 = call i32 @kbo_ContCompare(%struct.binding* noundef %28, %struct.term* noundef %29, %struct.binding* noundef %30, %struct.term* noundef %31)
  store i32 %32, i32* %7, align 4
  br label %48

33:                                               ; preds = %23
  %34 = load %struct.binding*, %struct.binding** %8, align 8
  %35 = load %struct.term*, %struct.term** %9, align 8
  %36 = load %struct.binding*, %struct.binding** %10, align 8
  %37 = load %struct.term*, %struct.term** %11, align 8
  %38 = call i32 @rpos_ContCompare(%struct.binding* noundef %34, %struct.term* noundef %35, %struct.binding* noundef %36, %struct.term* noundef %37)
  store i32 %38, i32* %7, align 4
  br label %48

39:                                               ; preds = %23
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = call i32 @fflush(%struct._IO_FILE* noundef %40)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 167)
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 @fputs(i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %44)
  call void @misc_DumpCore()
  br label %46

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %33, %27, %21
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @kbo_ContCompare(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

declare dso_local i32 @rpos_ContCompare(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32* noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca %struct.binding*, align 8
  %11 = alloca %struct.term*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %8, align 8
  store %struct.term* %1, %struct.term** %9, align 8
  store %struct.binding* %2, %struct.binding** %10, align 8
  store %struct.term* %3, %struct.term** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.term*, %struct.term** %9, align 8
  %16 = load %struct.term*, %struct.term** %11, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = call i32 @ord_CheckDomPred(%struct.term* noundef %15, %struct.term* noundef %16, i32* noundef %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 3
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %50

25:                                               ; preds = %6
  %26 = load i32*, i32** %13, align 8
  store i32* %26, i32** @ord_PRECEDENCE, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @flag_GetFlagValue(i32* noundef %27, i32 noundef 52)
  switch i32 %28, label %41 [
    i32 0, label %29
    i32 1, label %35
  ]

29:                                               ; preds = %25
  %30 = load %struct.binding*, %struct.binding** %8, align 8
  %31 = load %struct.term*, %struct.term** %9, align 8
  %32 = load %struct.binding*, %struct.binding** %10, align 8
  %33 = load %struct.term*, %struct.term** %11, align 8
  %34 = call i32 @kbo_ContGreater(%struct.binding* noundef %30, %struct.term* noundef %31, %struct.binding* noundef %32, %struct.term* noundef %33)
  store i32 %34, i32* %7, align 4
  br label %50

35:                                               ; preds = %25
  %36 = load %struct.binding*, %struct.binding** %8, align 8
  %37 = load %struct.term*, %struct.term** %9, align 8
  %38 = load %struct.binding*, %struct.binding** %10, align 8
  %39 = load %struct.term*, %struct.term** %11, align 8
  %40 = call i32 @rpos_ContGreater(%struct.binding* noundef %36, %struct.term* noundef %37, %struct.binding* noundef %38, %struct.term* noundef %39)
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %25
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = call i32 @fflush(%struct._IO_FILE* noundef %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200)
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  call void (i8*, ...) @misc_ErrorReport(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 @fputs(i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %46)
  call void @misc_DumpCore()
  br label %48

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %35, %29, %21
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @kbo_ContGreater(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.term*, align 8
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.term*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.term* %1, %struct.term** %6, align 8
  store %struct.binding* %2, %struct.binding** %7, align 8
  store %struct.term* %3, %struct.term** %8, align 8
  %9 = load %struct.binding*, %struct.binding** %5, align 8
  %10 = load %struct.term*, %struct.term** %6, align 8
  %11 = load %struct.binding*, %struct.binding** %7, align 8
  %12 = load %struct.term*, %struct.term** %8, align 8
  %13 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %9, %struct.term* noundef %10, %struct.binding* noundef %11, %struct.term* noundef %12)
  %14 = call i32 @ord_IsGreaterThan(i32 noundef %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_Not(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %16

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ord_Print(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %16 [
    i32 0, label %4
    i32 2, label %7
    i32 3, label %10
    i32 1, label %13
  ]

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fputs(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* noundef %5)
  br label %19

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = call i32 @fputs(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* noundef %8)
  br label %19

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = call i32 @fputs(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* noundef %11)
  br label %19

13:                                               ; preds = %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i32 @fputs(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), %struct._IO_FILE* noundef %14)
  br label %19

16:                                               ; preds = %1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fputs(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* noundef %17)
  br label %19

19:                                               ; preds = %16, %13, %10, %7, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ord_LiteralCompare(%struct.term* noundef %0, i32 noundef %1, %struct.term* noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef %5, i32* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.term*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.term*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.term*, align 8
  %26 = alloca %struct.term*, align 8
  %27 = alloca %struct.term*, align 8
  %28 = alloca %struct.term*, align 8
  %29 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.term* %2, %struct.term** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 1, i32* %24, align 4
  store i32 1, i32* %23, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %30 = load %struct.term*, %struct.term** %9, align 8
  %31 = call i32 @term_TopSymbol(%struct.term* noundef %30)
  %32 = call i32 @fol_Not()
  %33 = call i32 @symbol_Equal(i32 noundef %31, i32 noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load %struct.term*, %struct.term** %9, align 8
  %37 = call %struct.term* @term_FirstArgument(%struct.term* noundef %36)
  store %struct.term* %37, %struct.term** %9, align 8
  store i32 0, i32* %23, align 4
  br label %38

38:                                               ; preds = %35, %7
  %39 = load %struct.term*, %struct.term** %11, align 8
  %40 = call i32 @term_TopSymbol(%struct.term* noundef %39)
  %41 = call i32 @fol_Not()
  %42 = call i32 @symbol_Equal(i32 noundef %40, i32 noundef %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.term*, %struct.term** %11, align 8
  %46 = call %struct.term* @term_FirstArgument(%struct.term* noundef %45)
  store %struct.term* %46, %struct.term** %11, align 8
  store i32 0, i32* %24, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.term*, %struct.term** %9, align 8
  %49 = call i32 @fol_IsEquality(%struct.term* noundef %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %664

51:                                               ; preds = %47
  %52 = load %struct.term*, %struct.term** %11, align 8
  %53 = call i32 @fol_IsEquality(%struct.term* noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %633

55:                                               ; preds = %51
  %56 = load %struct.term*, %struct.term** %9, align 8
  %57 = call %struct.term* @term_FirstArgument(%struct.term* noundef %56)
  store %struct.term* %57, %struct.term** %25, align 8
  %58 = load %struct.term*, %struct.term** %9, align 8
  %59 = call %struct.term* @term_SecondArgument(%struct.term* noundef %58)
  store %struct.term* %59, %struct.term** %26, align 8
  %60 = load %struct.term*, %struct.term** %11, align 8
  %61 = call %struct.term* @term_FirstArgument(%struct.term* noundef %60)
  store %struct.term* %61, %struct.term** %27, align 8
  %62 = load %struct.term*, %struct.term** %11, align 8
  %63 = call %struct.term* @term_SecondArgument(%struct.term* noundef %62)
  store %struct.term* %63, %struct.term** %28, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %253

69:                                               ; preds = %66
  %70 = load %struct.term*, %struct.term** %25, align 8
  %71 = load %struct.term*, %struct.term** %26, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @ord_Compare(%struct.term* noundef %70, %struct.term* noundef %71, i32* noundef %72, i32* noundef %73)
  store i32 %74, i32* %21, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %21, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %253

79:                                               ; preds = %76, %69, %55
  %80 = load i32, i32* %21, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.term*, %struct.term** %25, align 8
  store %struct.term* %83, %struct.term** %29, align 8
  %84 = load %struct.term*, %struct.term** %26, align 8
  store %struct.term* %84, %struct.term** %25, align 8
  %85 = load %struct.term*, %struct.term** %29, align 8
  store %struct.term* %85, %struct.term** %26, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %89
  %93 = load %struct.term*, %struct.term** %27, align 8
  %94 = load %struct.term*, %struct.term** %28, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @ord_Compare(%struct.term* noundef %93, %struct.term* noundef %94, i32* noundef %95, i32* noundef %96)
  store i32 %97, i32* %22, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %22, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %142

102:                                              ; preds = %99, %92, %86
  %103 = load i32, i32* %22, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.term*, %struct.term** %27, align 8
  store %struct.term* %106, %struct.term** %29, align 8
  %107 = load %struct.term*, %struct.term** %28, align 8
  store %struct.term* %107, %struct.term** %27, align 8
  %108 = load %struct.term*, %struct.term** %29, align 8
  store %struct.term* %108, %struct.term** %28, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.term*, %struct.term** %25, align 8
  %111 = load %struct.term*, %struct.term** %27, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @ord_Compare(%struct.term* noundef %110, %struct.term* noundef %111, i32* noundef %112, i32* noundef %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %140

117:                                              ; preds = %109
  %118 = load i32, i32* %23, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* %24, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.term*, %struct.term** %26, align 8
  %125 = load %struct.term*, %struct.term** %28, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = call i32 @ord_Compare(%struct.term* noundef %124, %struct.term* noundef %125, i32* noundef %126, i32* noundef %127)
  store i32 %128, i32* %8, align 4
  br label %726

129:                                              ; preds = %120
  store i32 1, i32* %8, align 4
  br label %726

130:                                              ; preds = %117
  %131 = load i32, i32* %24, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 3, i32* %8, align 4
  br label %726

134:                                              ; preds = %130
  %135 = load %struct.term*, %struct.term** %26, align 8
  %136 = load %struct.term*, %struct.term** %28, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @ord_Compare(%struct.term* noundef %135, %struct.term* noundef %136, i32* noundef %137, i32* noundef %138)
  store i32 %139, i32* %8, align 4
  br label %726

140:                                              ; preds = %109
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %8, align 4
  br label %726

142:                                              ; preds = %99, %89
  %143 = load %struct.term*, %struct.term** %25, align 8
  %144 = load %struct.term*, %struct.term** %27, align 8
  %145 = call i32 @term_Equal(%struct.term* noundef %143, %struct.term* noundef %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %142
  %148 = load %struct.term*, %struct.term** %26, align 8
  %149 = load %struct.term*, %struct.term** %28, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @ord_Compare(%struct.term* noundef %148, %struct.term* noundef %149, i32* noundef %150, i32* noundef %151)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %171

155:                                              ; preds = %147
  %156 = load i32, i32* %23, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* %24, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  store i32 1, i32* %8, align 4
  br label %726

162:                                              ; preds = %158, %155
  %163 = load i32, i32* %23, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %24, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 3, i32* %8, align 4
  br label %726

169:                                              ; preds = %165, %162
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170, %147
  %172 = load i32, i32* %16, align 4
  store i32 %172, i32* %8, align 4
  br label %726

173:                                              ; preds = %142
  %174 = load %struct.term*, %struct.term** %25, align 8
  %175 = load %struct.term*, %struct.term** %28, align 8
  %176 = call i32 @term_Equal(%struct.term* noundef %174, %struct.term* noundef %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %204

178:                                              ; preds = %173
  %179 = load %struct.term*, %struct.term** %26, align 8
  %180 = load %struct.term*, %struct.term** %27, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load i32*, i32** %15, align 8
  %183 = call i32 @ord_Compare(%struct.term* noundef %179, %struct.term* noundef %180, i32* noundef %181, i32* noundef %182)
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %186, label %202

186:                                              ; preds = %178
  %187 = load i32, i32* %23, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i32, i32* %24, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  store i32 1, i32* %8, align 4
  br label %726

193:                                              ; preds = %189, %186
  %194 = load i32, i32* %23, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 3, i32* %8, align 4
  br label %726

200:                                              ; preds = %196, %193
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201, %178
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %8, align 4
  br label %726

204:                                              ; preds = %173
  %205 = load %struct.term*, %struct.term** %25, align 8
  %206 = load %struct.term*, %struct.term** %27, align 8
  %207 = load i32*, i32** %14, align 8
  %208 = load i32*, i32** %15, align 8
  %209 = call i32 @ord_Compare(%struct.term* noundef %205, %struct.term* noundef %206, i32* noundef %207, i32* noundef %208)
  store i32 %209, i32* %16, align 4
  %210 = load %struct.term*, %struct.term** %25, align 8
  %211 = load %struct.term*, %struct.term** %28, align 8
  %212 = load i32*, i32** %14, align 8
  %213 = load i32*, i32** %15, align 8
  %214 = call i32 @ord_Compare(%struct.term* noundef %210, %struct.term* noundef %211, i32* noundef %212, i32* noundef %213)
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %204
  %219 = load i32, i32* %16, align 4
  store i32 %219, i32* %8, align 4
  br label %726

220:                                              ; preds = %204
  %221 = load %struct.term*, %struct.term** %26, align 8
  %222 = load %struct.term*, %struct.term** %28, align 8
  %223 = load i32*, i32** %14, align 8
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @ord_Compare(%struct.term* noundef %221, %struct.term* noundef %222, i32* noundef %223, i32* noundef %224)
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %19, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %220
  %230 = load i32, i32* %16, align 4
  store i32 %230, i32* %8, align 4
  br label %726

231:                                              ; preds = %220
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %19, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32, i32* %18, align 4
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 1, i32* %8, align 4
  br label %726

239:                                              ; preds = %235, %231
  %240 = load %struct.term*, %struct.term** %26, align 8
  %241 = load %struct.term*, %struct.term** %27, align 8
  %242 = load i32*, i32** %14, align 8
  %243 = load i32*, i32** %15, align 8
  %244 = call i32 @ord_Compare(%struct.term* noundef %240, %struct.term* noundef %241, i32* noundef %242, i32* noundef %243)
  store i32 %244, i32* %20, align 4
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %20, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %239
  %249 = load i32, i32* %16, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  store i32 1, i32* %8, align 4
  br label %726

252:                                              ; preds = %248, %239
  store i32 0, i32* %8, align 4
  br label %726

253:                                              ; preds = %76, %66
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %272, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %13, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %390

259:                                              ; preds = %256
  %260 = load %struct.term*, %struct.term** %11, align 8
  %261 = call %struct.term* @term_FirstArgument(%struct.term* noundef %260)
  %262 = load %struct.term*, %struct.term** %11, align 8
  %263 = call %struct.term* @term_SecondArgument(%struct.term* noundef %262)
  %264 = load i32*, i32** %14, align 8
  %265 = load i32*, i32** %15, align 8
  %266 = call i32 @ord_Compare(%struct.term* noundef %261, %struct.term* noundef %263, i32* noundef %264, i32* noundef %265)
  %267 = icmp eq i32 %266, 3
  %268 = zext i1 %267 to i32
  store i32 %268, i32* %22, align 4
  br i1 %267, label %272, label %269

269:                                              ; preds = %259
  %270 = load i32, i32* %22, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %390

272:                                              ; preds = %269, %259, %253
  %273 = load i32, i32* %22, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load %struct.term*, %struct.term** %27, align 8
  store %struct.term* %276, %struct.term** %29, align 8
  %277 = load %struct.term*, %struct.term** %28, align 8
  store %struct.term* %277, %struct.term** %27, align 8
  %278 = load %struct.term*, %struct.term** %29, align 8
  store %struct.term* %278, %struct.term** %28, align 8
  br label %279

279:                                              ; preds = %275, %272
  %280 = load %struct.term*, %struct.term** %25, align 8
  %281 = load %struct.term*, %struct.term** %27, align 8
  %282 = call i32 @term_Equal(%struct.term* noundef %280, %struct.term* noundef %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %310

284:                                              ; preds = %279
  %285 = load %struct.term*, %struct.term** %26, align 8
  %286 = load %struct.term*, %struct.term** %28, align 8
  %287 = load i32*, i32** %14, align 8
  %288 = load i32*, i32** %15, align 8
  %289 = call i32 @ord_Compare(%struct.term* noundef %285, %struct.term* noundef %286, i32* noundef %287, i32* noundef %288)
  store i32 %289, i32* %16, align 4
  %290 = load i32, i32* %16, align 4
  %291 = icmp eq i32 %290, 2
  br i1 %291, label %292, label %308

292:                                              ; preds = %284
  %293 = load i32, i32* %23, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load i32, i32* %24, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  store i32 1, i32* %8, align 4
  br label %726

299:                                              ; preds = %295, %292
  %300 = load i32, i32* %23, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %24, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  store i32 3, i32* %8, align 4
  br label %726

306:                                              ; preds = %302, %299
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307, %284
  %309 = load i32, i32* %16, align 4
  store i32 %309, i32* %8, align 4
  br label %726

310:                                              ; preds = %279
  %311 = load %struct.term*, %struct.term** %26, align 8
  %312 = load %struct.term*, %struct.term** %27, align 8
  %313 = call i32 @term_Equal(%struct.term* noundef %311, %struct.term* noundef %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %341

315:                                              ; preds = %310
  %316 = load %struct.term*, %struct.term** %25, align 8
  %317 = load %struct.term*, %struct.term** %28, align 8
  %318 = load i32*, i32** %14, align 8
  %319 = load i32*, i32** %15, align 8
  %320 = call i32 @ord_Compare(%struct.term* noundef %316, %struct.term* noundef %317, i32* noundef %318, i32* noundef %319)
  store i32 %320, i32* %16, align 4
  %321 = load i32, i32* %16, align 4
  %322 = icmp eq i32 %321, 2
  br i1 %322, label %323, label %339

323:                                              ; preds = %315
  %324 = load i32, i32* %23, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load i32, i32* %24, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %326
  store i32 1, i32* %8, align 4
  br label %726

330:                                              ; preds = %326, %323
  %331 = load i32, i32* %23, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %330
  %334 = load i32, i32* %24, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  store i32 3, i32* %8, align 4
  br label %726

337:                                              ; preds = %333, %330
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338, %315
  %340 = load i32, i32* %16, align 4
  store i32 %340, i32* %8, align 4
  br label %726

341:                                              ; preds = %310
  %342 = load %struct.term*, %struct.term** %25, align 8
  %343 = load %struct.term*, %struct.term** %27, align 8
  %344 = load i32*, i32** %14, align 8
  %345 = load i32*, i32** %15, align 8
  %346 = call i32 @ord_Compare(%struct.term* noundef %342, %struct.term* noundef %343, i32* noundef %344, i32* noundef %345)
  store i32 %346, i32* %16, align 4
  %347 = load %struct.term*, %struct.term** %26, align 8
  %348 = load %struct.term*, %struct.term** %27, align 8
  %349 = load i32*, i32** %14, align 8
  %350 = load i32*, i32** %15, align 8
  %351 = call i32 @ord_Compare(%struct.term* noundef %347, %struct.term* noundef %348, i32* noundef %349, i32* noundef %350)
  store i32 %351, i32* %20, align 4
  %352 = load i32, i32* %16, align 4
  %353 = load i32, i32* %20, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %341
  %356 = load i32, i32* %16, align 4
  store i32 %356, i32* %8, align 4
  br label %726

357:                                              ; preds = %341
  %358 = load %struct.term*, %struct.term** %26, align 8
  %359 = load %struct.term*, %struct.term** %28, align 8
  %360 = load i32*, i32** %14, align 8
  %361 = load i32*, i32** %15, align 8
  %362 = call i32 @ord_Compare(%struct.term* noundef %358, %struct.term* noundef %359, i32* noundef %360, i32* noundef %361)
  store i32 %362, i32* %19, align 4
  %363 = load i32, i32* %16, align 4
  %364 = load i32, i32* %19, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %357
  %367 = load i32, i32* %16, align 4
  store i32 %367, i32* %8, align 4
  br label %726

368:                                              ; preds = %357
  %369 = load i32, i32* %20, align 4
  %370 = load i32, i32* %19, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %376

372:                                              ; preds = %368
  %373 = load i32, i32* %20, align 4
  %374 = icmp eq i32 %373, 3
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  store i32 3, i32* %8, align 4
  br label %726

376:                                              ; preds = %372, %368
  %377 = load %struct.term*, %struct.term** %25, align 8
  %378 = load %struct.term*, %struct.term** %28, align 8
  %379 = load i32*, i32** %14, align 8
  %380 = load i32*, i32** %15, align 8
  %381 = call i32 @ord_Compare(%struct.term* noundef %377, %struct.term* noundef %378, i32* noundef %379, i32* noundef %380)
  store i32 %381, i32* %18, align 4
  %382 = load i32, i32* %16, align 4
  %383 = load i32, i32* %18, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %389

385:                                              ; preds = %376
  %386 = load i32, i32* %16, align 4
  %387 = icmp eq i32 %386, 3
  br i1 %387, label %388, label %389

388:                                              ; preds = %385
  store i32 3, i32* %8, align 4
  br label %726

389:                                              ; preds = %385, %376
  store i32 0, i32* %8, align 4
  br label %726

390:                                              ; preds = %269, %256
  %391 = load %struct.term*, %struct.term** %25, align 8
  %392 = load %struct.term*, %struct.term** %27, align 8
  %393 = call i32 @term_Equal(%struct.term* noundef %391, %struct.term* noundef %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %421

395:                                              ; preds = %390
  %396 = load %struct.term*, %struct.term** %26, align 8
  %397 = load %struct.term*, %struct.term** %28, align 8
  %398 = load i32*, i32** %14, align 8
  %399 = load i32*, i32** %15, align 8
  %400 = call i32 @ord_Compare(%struct.term* noundef %396, %struct.term* noundef %397, i32* noundef %398, i32* noundef %399)
  store i32 %400, i32* %16, align 4
  %401 = load i32, i32* %16, align 4
  %402 = icmp eq i32 %401, 2
  br i1 %402, label %403, label %419

403:                                              ; preds = %395
  %404 = load i32, i32* %23, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = load i32, i32* %24, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %406
  store i32 1, i32* %8, align 4
  br label %726

410:                                              ; preds = %406, %403
  %411 = load i32, i32* %23, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %410
  %414 = load i32, i32* %24, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  store i32 3, i32* %8, align 4
  br label %726

417:                                              ; preds = %413, %410
  br label %418

418:                                              ; preds = %417
  br label %419

419:                                              ; preds = %418, %395
  %420 = load i32, i32* %16, align 4
  store i32 %420, i32* %8, align 4
  br label %726

421:                                              ; preds = %390
  %422 = load %struct.term*, %struct.term** %26, align 8
  %423 = load %struct.term*, %struct.term** %27, align 8
  %424 = call i32 @term_Equal(%struct.term* noundef %422, %struct.term* noundef %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %452

426:                                              ; preds = %421
  %427 = load %struct.term*, %struct.term** %25, align 8
  %428 = load %struct.term*, %struct.term** %28, align 8
  %429 = load i32*, i32** %14, align 8
  %430 = load i32*, i32** %15, align 8
  %431 = call i32 @ord_Compare(%struct.term* noundef %427, %struct.term* noundef %428, i32* noundef %429, i32* noundef %430)
  store i32 %431, i32* %16, align 4
  %432 = load i32, i32* %16, align 4
  %433 = icmp eq i32 %432, 2
  br i1 %433, label %434, label %450

434:                                              ; preds = %426
  %435 = load i32, i32* %23, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %434
  %438 = load i32, i32* %24, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %437
  store i32 1, i32* %8, align 4
  br label %726

441:                                              ; preds = %437, %434
  %442 = load i32, i32* %23, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %448, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* %24, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  store i32 3, i32* %8, align 4
  br label %726

448:                                              ; preds = %444, %441
  br label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449, %426
  %451 = load i32, i32* %16, align 4
  store i32 %451, i32* %8, align 4
  br label %726

452:                                              ; preds = %421
  %453 = load %struct.term*, %struct.term** %25, align 8
  %454 = load %struct.term*, %struct.term** %28, align 8
  %455 = call i32 @term_Equal(%struct.term* noundef %453, %struct.term* noundef %454)
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %483

457:                                              ; preds = %452
  %458 = load %struct.term*, %struct.term** %26, align 8
  %459 = load %struct.term*, %struct.term** %27, align 8
  %460 = load i32*, i32** %14, align 8
  %461 = load i32*, i32** %15, align 8
  %462 = call i32 @ord_Compare(%struct.term* noundef %458, %struct.term* noundef %459, i32* noundef %460, i32* noundef %461)
  store i32 %462, i32* %16, align 4
  %463 = load i32, i32* %16, align 4
  %464 = icmp eq i32 %463, 2
  br i1 %464, label %465, label %481

465:                                              ; preds = %457
  %466 = load i32, i32* %23, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %465
  %469 = load i32, i32* %24, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %468
  store i32 1, i32* %8, align 4
  br label %726

472:                                              ; preds = %468, %465
  %473 = load i32, i32* %23, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %479, label %475

475:                                              ; preds = %472
  %476 = load i32, i32* %24, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  store i32 3, i32* %8, align 4
  br label %726

479:                                              ; preds = %475, %472
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480, %457
  %482 = load i32, i32* %16, align 4
  store i32 %482, i32* %8, align 4
  br label %726

483:                                              ; preds = %452
  %484 = load %struct.term*, %struct.term** %26, align 8
  %485 = load %struct.term*, %struct.term** %28, align 8
  %486 = call i32 @term_Equal(%struct.term* noundef %484, %struct.term* noundef %485)
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %514

488:                                              ; preds = %483
  %489 = load %struct.term*, %struct.term** %25, align 8
  %490 = load %struct.term*, %struct.term** %27, align 8
  %491 = load i32*, i32** %14, align 8
  %492 = load i32*, i32** %15, align 8
  %493 = call i32 @ord_Compare(%struct.term* noundef %489, %struct.term* noundef %490, i32* noundef %491, i32* noundef %492)
  store i32 %493, i32* %16, align 4
  %494 = load i32, i32* %16, align 4
  %495 = icmp eq i32 %494, 2
  br i1 %495, label %496, label %512

496:                                              ; preds = %488
  %497 = load i32, i32* %23, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %503

499:                                              ; preds = %496
  %500 = load i32, i32* %24, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %503, label %502

502:                                              ; preds = %499
  store i32 1, i32* %8, align 4
  br label %726

503:                                              ; preds = %499, %496
  %504 = load i32, i32* %23, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %510, label %506

506:                                              ; preds = %503
  %507 = load i32, i32* %24, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %506
  store i32 3, i32* %8, align 4
  br label %726

510:                                              ; preds = %506, %503
  br label %511

511:                                              ; preds = %510
  br label %512

512:                                              ; preds = %511, %488
  %513 = load i32, i32* %16, align 4
  store i32 %513, i32* %8, align 4
  br label %726

514:                                              ; preds = %483
  %515 = load %struct.term*, %struct.term** %25, align 8
  %516 = load %struct.term*, %struct.term** %27, align 8
  %517 = load i32*, i32** %14, align 8
  %518 = load i32*, i32** %15, align 8
  %519 = call i32 @ord_Compare(%struct.term* noundef %515, %struct.term* noundef %516, i32* noundef %517, i32* noundef %518)
  store i32 %519, i32* %16, align 4
  %520 = load i32, i32* %16, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %578

522:                                              ; preds = %514
  %523 = load %struct.term*, %struct.term** %25, align 8
  %524 = load %struct.term*, %struct.term** %28, align 8
  %525 = load i32*, i32** %14, align 8
  %526 = load i32*, i32** %15, align 8
  %527 = call i32 @ord_Compare(%struct.term* noundef %523, %struct.term* noundef %524, i32* noundef %525, i32* noundef %526)
  store i32 %527, i32* %16, align 4
  %528 = load i32, i32* %16, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %546

530:                                              ; preds = %522
  %531 = load %struct.term*, %struct.term** %26, align 8
  %532 = load %struct.term*, %struct.term** %27, align 8
  %533 = load i32*, i32** %14, align 8
  %534 = load i32*, i32** %15, align 8
  %535 = call i32 @ord_Compare(%struct.term* noundef %531, %struct.term* noundef %532, i32* noundef %533, i32* noundef %534)
  %536 = icmp eq i32 %535, 3
  br i1 %536, label %537, label %545

537:                                              ; preds = %530
  %538 = load %struct.term*, %struct.term** %26, align 8
  %539 = load %struct.term*, %struct.term** %28, align 8
  %540 = load i32*, i32** %14, align 8
  %541 = load i32*, i32** %15, align 8
  %542 = call i32 @ord_Compare(%struct.term* noundef %538, %struct.term* noundef %539, i32* noundef %540, i32* noundef %541)
  %543 = icmp eq i32 %542, 3
  br i1 %543, label %544, label %545

544:                                              ; preds = %537
  store i32 3, i32* %8, align 4
  br label %726

545:                                              ; preds = %537, %530
  store i32 0, i32* %8, align 4
  br label %726

546:                                              ; preds = %522
  %547 = load i32, i32* %16, align 4
  %548 = icmp eq i32 %547, 3
  br i1 %548, label %549, label %558

549:                                              ; preds = %546
  %550 = load %struct.term*, %struct.term** %26, align 8
  %551 = load %struct.term*, %struct.term** %27, align 8
  %552 = load i32*, i32** %14, align 8
  %553 = load i32*, i32** %15, align 8
  %554 = call i32 @ord_Compare(%struct.term* noundef %550, %struct.term* noundef %551, i32* noundef %552, i32* noundef %553)
  %555 = icmp eq i32 %554, 3
  br i1 %555, label %556, label %557

556:                                              ; preds = %549
  store i32 3, i32* %8, align 4
  br label %726

557:                                              ; preds = %549
  store i32 0, i32* %8, align 4
  br label %726

558:                                              ; preds = %546
  %559 = load i32, i32* %16, align 4
  %560 = icmp eq i32 %559, 1
  br i1 %560, label %561, label %577

561:                                              ; preds = %558
  %562 = load %struct.term*, %struct.term** %26, align 8
  %563 = load %struct.term*, %struct.term** %27, align 8
  %564 = load i32*, i32** %14, align 8
  %565 = load i32*, i32** %15, align 8
  %566 = call i32 @ord_Compare(%struct.term* noundef %562, %struct.term* noundef %563, i32* noundef %564, i32* noundef %565)
  %567 = icmp eq i32 %566, 1
  br i1 %567, label %575, label %568

568:                                              ; preds = %561
  %569 = load %struct.term*, %struct.term** %26, align 8
  %570 = load %struct.term*, %struct.term** %28, align 8
  %571 = load i32*, i32** %14, align 8
  %572 = load i32*, i32** %15, align 8
  %573 = call i32 @ord_Compare(%struct.term* noundef %569, %struct.term* noundef %570, i32* noundef %571, i32* noundef %572)
  %574 = icmp eq i32 %573, 1
  br i1 %574, label %575, label %576

575:                                              ; preds = %568, %561
  store i32 1, i32* %8, align 4
  br label %726

576:                                              ; preds = %568
  store i32 0, i32* %8, align 4
  br label %726

577:                                              ; preds = %558
  br label %578

578:                                              ; preds = %577, %514
  %579 = load i32, i32* %16, align 4
  %580 = icmp eq i32 %579, 3
  br i1 %580, label %581, label %604

581:                                              ; preds = %578
  %582 = load %struct.term*, %struct.term** %25, align 8
  %583 = load %struct.term*, %struct.term** %28, align 8
  %584 = load i32*, i32** %14, align 8
  %585 = load i32*, i32** %15, align 8
  %586 = call i32 @ord_Compare(%struct.term* noundef %582, %struct.term* noundef %583, i32* noundef %584, i32* noundef %585)
  store i32 %586, i32* %16, align 4
  %587 = icmp eq i32 %586, 3
  br i1 %587, label %595, label %588

588:                                              ; preds = %581
  %589 = load %struct.term*, %struct.term** %26, align 8
  %590 = load %struct.term*, %struct.term** %28, align 8
  %591 = load i32*, i32** %14, align 8
  %592 = load i32*, i32** %15, align 8
  %593 = call i32 @ord_Compare(%struct.term* noundef %589, %struct.term* noundef %590, i32* noundef %591, i32* noundef %592)
  store i32 %593, i32* %17, align 4
  %594 = icmp eq i32 %593, 3
  br i1 %594, label %595, label %596

595:                                              ; preds = %588, %581
  store i32 3, i32* %8, align 4
  br label %726

596:                                              ; preds = %588
  %597 = load i32, i32* %16, align 4
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %602, label %599

599:                                              ; preds = %596
  %600 = load i32, i32* %17, align 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %599, %596
  store i32 0, i32* %8, align 4
  br label %726

603:                                              ; preds = %599
  store i32 1, i32* %8, align 4
  br label %726

604:                                              ; preds = %578
  %605 = load i32, i32* %16, align 4
  %606 = icmp eq i32 %605, 1
  br i1 %606, label %607, label %630

607:                                              ; preds = %604
  %608 = load %struct.term*, %struct.term** %26, align 8
  %609 = load %struct.term*, %struct.term** %27, align 8
  %610 = load i32*, i32** %14, align 8
  %611 = load i32*, i32** %15, align 8
  %612 = call i32 @ord_Compare(%struct.term* noundef %608, %struct.term* noundef %609, i32* noundef %610, i32* noundef %611)
  store i32 %612, i32* %16, align 4
  %613 = icmp eq i32 %612, 1
  br i1 %613, label %621, label %614

614:                                              ; preds = %607
  %615 = load %struct.term*, %struct.term** %26, align 8
  %616 = load %struct.term*, %struct.term** %28, align 8
  %617 = load i32*, i32** %14, align 8
  %618 = load i32*, i32** %15, align 8
  %619 = call i32 @ord_Compare(%struct.term* noundef %615, %struct.term* noundef %616, i32* noundef %617, i32* noundef %618)
  store i32 %619, i32* %17, align 4
  %620 = icmp eq i32 %619, 1
  br i1 %620, label %621, label %622

621:                                              ; preds = %614, %607
  store i32 1, i32* %8, align 4
  br label %726

622:                                              ; preds = %614
  %623 = load i32, i32* %16, align 4
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %628, label %625

625:                                              ; preds = %622
  %626 = load i32, i32* %17, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %625, %622
  store i32 0, i32* %8, align 4
  br label %726

629:                                              ; preds = %625
  store i32 3, i32* %8, align 4
  br label %726

630:                                              ; preds = %604
  br label %631

631:                                              ; preds = %630
  br label %632

632:                                              ; preds = %631
  br label %663

633:                                              ; preds = %51
  %634 = load %struct.term*, %struct.term** %9, align 8
  %635 = call %struct.term* @term_FirstArgument(%struct.term* noundef %634)
  %636 = load %struct.term*, %struct.term** %11, align 8
  %637 = load i32*, i32** %14, align 8
  %638 = load i32*, i32** %15, align 8
  %639 = call i32 @ord_Compare(%struct.term* noundef %635, %struct.term* noundef %636, i32* noundef %637, i32* noundef %638)
  store i32 %639, i32* %16, align 4
  %640 = load i32, i32* %10, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %662, label %642

642:                                              ; preds = %633
  %643 = load i32, i32* %16, align 4
  %644 = icmp ne i32 %643, 3
  br i1 %644, label %645, label %662

645:                                              ; preds = %642
  %646 = load %struct.term*, %struct.term** %9, align 8
  %647 = call %struct.term* @term_SecondArgument(%struct.term* noundef %646)
  %648 = load %struct.term*, %struct.term** %11, align 8
  %649 = load i32*, i32** %14, align 8
  %650 = load i32*, i32** %15, align 8
  %651 = call i32 @ord_Compare(%struct.term* noundef %647, %struct.term* noundef %648, i32* noundef %649, i32* noundef %650)
  store i32 %651, i32* %17, align 4
  %652 = load i32, i32* %17, align 4
  %653 = icmp eq i32 %652, 3
  br i1 %653, label %654, label %655

654:                                              ; preds = %645
  store i32 3, i32* %16, align 4
  br label %661

655:                                              ; preds = %645
  %656 = load i32, i32* %16, align 4
  %657 = load i32, i32* %17, align 4
  %658 = icmp ne i32 %656, %657
  br i1 %658, label %659, label %660

659:                                              ; preds = %655
  store i32 0, i32* %16, align 4
  br label %660

660:                                              ; preds = %659, %655
  br label %661

661:                                              ; preds = %660, %654
  br label %662

662:                                              ; preds = %661, %642, %633
  br label %663

663:                                              ; preds = %662, %632
  br label %724

664:                                              ; preds = %47
  %665 = load %struct.term*, %struct.term** %11, align 8
  %666 = call i32 @fol_IsEquality(%struct.term* noundef %665)
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %698

668:                                              ; preds = %664
  %669 = load %struct.term*, %struct.term** %9, align 8
  %670 = load %struct.term*, %struct.term** %11, align 8
  %671 = call %struct.term* @term_FirstArgument(%struct.term* noundef %670)
  %672 = load i32*, i32** %14, align 8
  %673 = load i32*, i32** %15, align 8
  %674 = call i32 @ord_Compare(%struct.term* noundef %669, %struct.term* noundef %671, i32* noundef %672, i32* noundef %673)
  store i32 %674, i32* %16, align 4
  %675 = load i32, i32* %12, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %697, label %677

677:                                              ; preds = %668
  %678 = load i32, i32* %16, align 4
  %679 = icmp ne i32 %678, 1
  br i1 %679, label %680, label %697

680:                                              ; preds = %677
  %681 = load %struct.term*, %struct.term** %9, align 8
  %682 = load %struct.term*, %struct.term** %11, align 8
  %683 = call %struct.term* @term_SecondArgument(%struct.term* noundef %682)
  %684 = load i32*, i32** %14, align 8
  %685 = load i32*, i32** %15, align 8
  %686 = call i32 @ord_Compare(%struct.term* noundef %681, %struct.term* noundef %683, i32* noundef %684, i32* noundef %685)
  store i32 %686, i32* %17, align 4
  %687 = load i32, i32* %17, align 4
  %688 = icmp eq i32 %687, 1
  br i1 %688, label %689, label %690

689:                                              ; preds = %680
  store i32 1, i32* %16, align 4
  br label %696

690:                                              ; preds = %680
  %691 = load i32, i32* %16, align 4
  %692 = load i32, i32* %17, align 4
  %693 = icmp ne i32 %691, %692
  br i1 %693, label %694, label %695

694:                                              ; preds = %690
  store i32 0, i32* %16, align 4
  br label %695

695:                                              ; preds = %694, %690
  br label %696

696:                                              ; preds = %695, %689
  br label %697

697:                                              ; preds = %696, %677, %668
  br label %723

698:                                              ; preds = %664
  %699 = load %struct.term*, %struct.term** %9, align 8
  %700 = load %struct.term*, %struct.term** %11, align 8
  %701 = load i32*, i32** %14, align 8
  %702 = load i32*, i32** %15, align 8
  %703 = call i32 @ord_Compare(%struct.term* noundef %699, %struct.term* noundef %700, i32* noundef %701, i32* noundef %702)
  store i32 %703, i32* %16, align 4
  %704 = load i32, i32* %16, align 4
  %705 = icmp eq i32 %704, 2
  br i1 %705, label %706, label %722

706:                                              ; preds = %698
  %707 = load i32, i32* %23, align 4
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %713

709:                                              ; preds = %706
  %710 = load i32, i32* %24, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %713, label %712

712:                                              ; preds = %709
  store i32 1, i32* %16, align 4
  br label %721

713:                                              ; preds = %709, %706
  %714 = load i32, i32* %23, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %720, label %716

716:                                              ; preds = %713
  %717 = load i32, i32* %24, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %720

719:                                              ; preds = %716
  store i32 3, i32* %16, align 4
  br label %720

720:                                              ; preds = %719, %716, %713
  br label %721

721:                                              ; preds = %720, %712
  br label %722

722:                                              ; preds = %721, %698
  br label %723

723:                                              ; preds = %722, %697
  br label %724

724:                                              ; preds = %723, %663
  %725 = load i32, i32* %16, align 4
  store i32 %725, i32* %8, align 4
  br label %726

726:                                              ; preds = %724, %629, %628, %621, %603, %602, %595, %576, %575, %557, %556, %545, %544, %512, %509, %502, %481, %478, %471, %450, %447, %440, %419, %416, %409, %389, %388, %375, %366, %355, %339, %336, %329, %308, %305, %298, %252, %251, %238, %229, %218, %202, %199, %192, %171, %168, %161, %140, %134, %133, %129, %123
  %727 = load i32, i32* %8, align 4
  ret i32 %727
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Equal(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fol_Not() #0 {
  %1 = load i32, i32* @fol_NOT, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @term_FirstArgument(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 2
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %6 = call i8* @list_First(%struct.LIST_HELP* noundef %5)
  %7 = bitcast i8* %6 to %struct.term*
  ret %struct.term* %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fol_IsEquality(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %3)
  %5 = load i32, i32* @fol_EQUALITY, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @term_SecondArgument(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 2
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  %6 = call i8* @list_Second(%struct.LIST_HELP* noundef %5)
  %7 = bitcast i8* %6 to %struct.term*
  ret %struct.term* %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_IsAtom(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %3)
  %5 = call i32 @symbol_IsPredicate(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_HasProperty(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @symbol_Index(i32 noundef %5)
  %7 = call %struct.signature* @symbol_Signature(i32 noundef %6)
  %8 = getelementptr inbounds %struct.signature, %struct.signature* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %9, %10
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_PrecedenceGreater(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @symbol_Ordering(i32* noundef %7, i32 noundef %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @symbol_Ordering(i32* noundef %10, i32 noundef %11)
  %13 = icmp slt i32 %9, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_IsPredicate(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @symbol_IsSignature(i32 noundef %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @symbol_Type(i32 noundef %7)
  %9 = icmp eq i32 %8, 2
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_IsSignature(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Type(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @symbol_CheckNoVariable(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 0, %4
  %6 = load i32, i32* @symbol_TYPEMASK, align 4
  %7 = and i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @symbol_CheckIndexInRange(i32 noundef %3)
  %4 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.signature*, %struct.signature** %4, i64 %6
  %8 = load %struct.signature*, %struct.signature** %7, align 8
  ret %struct.signature* %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Index(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @symbol_CheckNoVariable(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 0, %4
  %6 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %7 = ashr i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Ordering(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @symbol_Index(i32 noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_IsGreaterThan(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 3, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare dso_local i32 @rpos_ContGreaterEqual(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = call i8* @list_Car(%struct.LIST_HELP* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_Second(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %3)
  %5 = call i8* @list_Car(%struct.LIST_HELP* noundef %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 0
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
