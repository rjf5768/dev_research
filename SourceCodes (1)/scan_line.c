; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/scan_line.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/scan_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [55 x i8] c"eERROR[1]: Label '%s' is too long (MAX %d characters).\00", align 1
@ERROR_REC_BUF = external dso_local global %struct.BUFFER_TYPE, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"eERROR[3]: OpCode field '%s' is too long. Truncating to %d charaters.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"p%d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"eERROR[2]: Illegal LABEL/OPCODE seperater('%c') expected <tab> or <blank>.\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"eERROR[5]: Expected an OPCODE after the '+'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"eERROR[4]: Illegal OPCODE/OPERANDS seperater('%c') expected TAB or BLANK.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @UPPER(i32 noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = trunc i32 %0 to i8
  store i8 %4, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp sge i32 %6, 97
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sle i32 %10, 122
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = sub nsw i32 %14, 97
  %16 = add nsw i32 %15, 65
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %2, align 1
  br label %20

18:                                               ; preds = %8, %1
  %19 = load i8, i8* %3, align 1
  store i8 %19, i8* %2, align 1
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i8, i8* %2, align 1
  ret i8 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @IS_ALPHA_NUM(i32 noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = trunc i32 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  %6 = call signext i8 @UPPER(i32 noundef %5)
  store i8 %6, i8* %2, align 1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sge i32 %8, 65
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sle i32 %12, 90
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %1
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sge i32 %16, 48
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8, i8* %2, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 57
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i1 [ true, %10 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @IS_BLANK_OR_TAB(i32 noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = trunc i32 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 32
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8, i8* %2, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @eoln(i32 noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = trunc i32 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @GET_LABEL(i8* noundef %0, i8* noundef %1, i8** noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = call signext i8 @UPPER(i32 noundef %15)
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 65
  br i1 %18, label %19, label %101

19:                                               ; preds = %4
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call signext i8 @UPPER(i32 noundef %23)
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 90
  br i1 %26, label %27, label %101

27:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  br label %31

31:                                               ; preds = %48, %27
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 @IS_ALPHA_NUM(i32 noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 @eoln(i32 noundef %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %38, %31
  %47 = phi i1 [ false, %31 ], [ %45, %38 ]
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  br label %31, !llvm.loop !4

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 8
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %10, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  %70 = call double @log10(double noundef 8.000000e+00) #4
  %71 = fptosi double %70 to i32
  %72 = add nsw i32 80, %71
  %73 = sext i32 %72 to i64
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strlen(i8* noundef %74) #5
  %76 = add i64 %73, %75
  %77 = trunc i64 %76 to i32
  %78 = zext i32 %77 to i64
  %79 = call noalias i8* @malloc(i64 noundef %78) #4
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %80, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* noundef %81, i32 noundef 8) #4
  %83 = load i8*, i8** %11, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, i8* noundef %83)
  %84 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %84) #4
  %85 = load i8, i8* %10, align 1
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  br label %90

90:                                               ; preds = %60, %57
  store i32 8, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = call i8* @strncpy(i8* noundef %92, i8* noundef %93, i64 noundef %95) #4
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1
  br label %104

101:                                              ; preds = %19, %4
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %101, %91
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local void @ADD_TO_END_OF_BUFFER(...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @GET_OPCODE_STR(i8* noundef %0, i8** noundef %1, i32 noundef %2, %struct._IO_FILE* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call signext i8 @UPPER(i32 noundef %17)
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 65
  br i1 %20, label %21, label %100

21:                                               ; preds = %4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call signext i8 @UPPER(i32 noundef %25)
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 90
  br i1 %28, label %29, label %100

29:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %59, %29
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = call signext i8 @UPPER(i32 noundef %37)
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 65
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = call signext i8 @UPPER(i32 noundef %45)
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 90
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 @eoln(i32 noundef %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %49, %41, %33
  %58 = phi i1 [ false, %41 ], [ false, %33 ], [ %56, %49 ]
  br i1 %58, label %59, label %65

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %62, align 8
  br label %33, !llvm.loop !6

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 8
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %11, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* noundef %82, i32 noundef 8)
  %84 = load i8, i8* %11, align 1
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %71, %68
  store i32 8, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %65
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = call i8* @strncpy(i8* noundef %91, i8* noundef %92, i64 noundef %94) #4
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 0, i8* %99, align 1
  br label %103

100:                                              ; preds = %21, %4
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 0, i8* %102, align 1
  br label %103

103:                                              ; preds = %100, %90
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @SCAN_LINE(i32 noundef %0, i8** noundef %1, i8* noundef %2, i32* noundef %3, i8* noundef %4, i8** noundef %5, i32 noundef %6, %struct._IO_FILE* noundef %7, %struct._IO_FILE* noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._IO_FILE*, align 8
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct._IO_FILE* %7, %struct._IO_FILE** %17, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %18, align 8
  %20 = load i8**, i8*** %11, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef %20, %struct._IO_FILE* noundef %21)
  %22 = load i8**, i8*** %11, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %15, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %16, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8**, i8*** %15, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %29, i8* noundef %31)
  br label %33

33:                                               ; preds = %27, %9
  %34 = load i8**, i8*** %15, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %19, align 8
  %36 = load i8*, i8** %19, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 46
  br i1 %39, label %40, label %162

40:                                               ; preds = %33
  %41 = load i8*, i8** %12, align 8
  %42 = load i8**, i8*** %15, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %16, align 4
  call void @GET_LABEL(i8* noundef %41, i8* noundef %43, i8** noundef %19, i32 noundef %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %45, i32 noundef 1)
  %46 = load i8*, i8** %19, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 @IS_BLANK_OR_TAB(i32 noundef %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %40
  %52 = load i8*, i8** %19, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 @eoln(i32 noundef %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 noundef %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i8*, i8** %19, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %19, align 8
  br label %69

69:                                               ; preds = %66, %51, %40
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i8*, i8** %19, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = call i32 @IS_BLANK_OR_TAB(i32 noundef %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i8*, i8** %19, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 @eoln(i32 noundef %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %76, %70
  %84 = phi i1 [ false, %70 ], [ %82, %76 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %19, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %19, align 8
  br label %70, !llvm.loop !7

88:                                               ; preds = %83
  %89 = load i8*, i8** %19, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 43
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8*, i8** %19, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %19, align 8
  %96 = load i32*, i32** %13, align 8
  store i32 1, i32* %96, align 4
  br label %99

97:                                               ; preds = %88
  %98 = load i32*, i32** %13, align 8
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  call void @GET_OPCODE_STR(i8* noundef %100, i8** noundef %19, i32 noundef %101, %struct._IO_FILE* noundef %102)
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @strcmp(i8* noundef %107, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %16, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110, %106, %99
  %117 = load i8*, i8** %19, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = call i32 @IS_BLANK_OR_TAB(i32 noundef %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %116
  %123 = load i8*, i8** %19, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = call i32 @eoln(i32 noundef %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %16, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %132, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 noundef %135)
  br label %137

137:                                              ; preds = %131, %128
  %138 = load i8*, i8** %19, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %19, align 8
  br label %140

140:                                              ; preds = %137, %122, %116
  br label %141

141:                                              ; preds = %156, %140
  %142 = load i8*, i8** %19, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = call i32 @IS_BLANK_OR_TAB(i32 noundef %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load i8*, i8** %19, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = call i32 @eoln(i32 noundef %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %147, %141
  %155 = phi i1 [ false, %141 ], [ %153, %147 ]
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load i8*, i8** %19, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %19, align 8
  br label %141, !llvm.loop !8

159:                                              ; preds = %154
  %160 = load i8*, i8** %19, align 8
  %161 = load i8**, i8*** %15, align 8
  store i8* %160, i8** %161, align 8
  br label %168

162:                                              ; preds = %33
  %163 = load i8*, i8** %12, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  store i8 0, i8* %164, align 1
  %165 = load i32*, i32** %13, align 8
  store i32 0, i32* %165, align 4
  %166 = load i8*, i8** %14, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 0, i8* %167, align 1
  br label %168

168:                                              ; preds = %162, %159
  ret void
}

declare dso_local void @GET_LINE(...) #3

declare dso_local void @OUTPUT_BUFFER(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
