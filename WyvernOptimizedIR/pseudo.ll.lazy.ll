; ModuleID = './pseudo.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [50 x i8] c"eERROR[18]: Null hexidecimal/character constant.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eERROR[20]: Illegal hexidecimal.\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"eERROR[21]: Illegal hexidecimal/character constant. Missing close quote.\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"eERROR[22]: Hexidecimal number is not divisible into whole bytes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"t%dB%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"t%dB\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"eERROR[13]: Expected a <space> after the operand, found %c.\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"eERROR[19]: Expected hexidecimal or character constant.\0A\00", align 1
@SEEN_END_OP = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"eERROR[27]: Section %s has no 'end'.\0A\00", align 1
@MODULE_NAME = external dso_local global [9 x i8], align 1
@MOD_REC_BUF = external dso_local global %struct.BUFFER_TYPE, align 8
@LOCATION_EXCEEDS_MEM_SIZE = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"eERROR[26]: CSECT requires a label.\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"eERROR[55]: Multiply defined module name.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"s%s\0A\00", align 1
@ERROR_REC_BUF = external dso_local global %struct.BUFFER_TYPE, align 8
@MAIN_ROUTINE = external dso_local global [9 x i8], align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"eERROR[28]: Label %s not defined.\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"eERROR[28]: Expected label, found constant %s.\0A\00", align 1
@START_ADDRESS = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [55 x i8] c"eERROR[54]: Multiple starting addresses. Using first.\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"eERROR[31]: Expected a Symbol, found %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"eERROR[23]: EQU requires a label.\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"eERROR[40]: EXTDEF requires arguments.\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"eERROR[39]: Invalid list of symbols. Expected symbol found %s.\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"eERROR[37]: EXTREF requires arguments.\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"eERROR[38]: %s is already defined.\0A\00", align 1
@SEEN_START_OP = external dso_local global i32, align 4
@.str.27 = private unnamed_addr constant [43 x i8] c"eERROR[32]: Multiple STARTs in this file.\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"eERROR[33]: START requires a label.\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"eERROR[34]: Negative starting address.\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"t%dW\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_BYTE(i8* nocapture noundef readnone %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** nocapture noundef readnone %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = load i32, i32* %2, align 4
  %7 = load i8, i8* %1, align 1
  %8 = icmp eq i8 %7, 88
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 39, i8* %10, align 1
  br label %11

11:                                               ; preds = %9, %5
  br i1 %8, label %17, label %12

12:                                               ; preds = %11
  %13 = load i8, i8* %1, align 1
  %14 = icmp eq i8 %13, 67
  br i1 %14, label %15, label %103

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 39, i8* %16, align 1
  br i1 true, label %17, label %103

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds i8, i8* %1, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = icmp eq i8 %19, 39
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %4)
  br label %102

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %47, %23
  %.04 = phi i32 [ 0, %23 ], [ %.15, %47 ]
  %.02 = phi i32 [ 0, %23 ], [ %.13, %47 ]
  %.01 = phi i8* [ %18, %23 ], [ %44, %47 ]
  %25 = load i8, i8* %.01, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %26) #6
  %.not = icmp eq i32 %27, 0
  br i1 %.not, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8, i8* %.01, align 1
  %30 = icmp ne i8 %29, 39
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i1 [ false, %24 ], [ %30, %28 ]
  br i1 %32, label %33, label %48

33:                                               ; preds = %31
  br i1 %8, label %34, label %43

34:                                               ; preds = %33
  %.not13 = icmp eq i32 %.04, 0
  br i1 %.not13, label %35, label %40

35:                                               ; preds = %34
  %36 = load i8, i8* %.01, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 noundef %37, i32 noundef 16) #6
  %39 = icmp eq i32 %38, -1
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i1 [ true, %34 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %40, %33
  %.15 = phi i32 [ %42, %40 ], [ %.04, %33 ]
  %44 = getelementptr inbounds i8, i8* %.01, i64 1
  %.not12 = icmp eq i32 %.15, 0
  br i1 %.not12, label %45, label %47

45:                                               ; preds = %43
  %46 = add nsw i32 %.02, 1
  br label %47

47:                                               ; preds = %45, %43
  %.13 = phi i32 [ %.02, %43 ], [ %46, %45 ]
  br label %24, !llvm.loop !4

48:                                               ; preds = %31
  %.not6 = icmp eq i32 %.04, 0
  br i1 %.not6, label %51, label %49

49:                                               ; preds = %48
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %4)
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i8, i8* %.01, align 1
  %53 = icmp eq i8 %52, 39
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %58

56:                                               ; preds = %51
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %4)
  br label %58

58:                                               ; preds = %56, %54
  %.2 = phi i32 [ %.04, %54 ], [ 1, %56 ]
  %.1 = phi i8* [ %55, %54 ], [ %.01, %56 ]
  br i1 %8, label %59, label %64

59:                                               ; preds = %58
  %60 = sdiv i32 %.02, 2
  %61 = shl nsw i32 %60, 1
  %.not11 = icmp eq i32 %61, %.02
  br i1 %.not11, label %64, label %62

62:                                               ; preds = %59
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %4)
  br label %64

64:                                               ; preds = %62, %59, %58
  %.3 = phi i32 [ 1, %62 ], [ %.2, %59 ], [ %.2, %58 ]
  %.not7 = icmp eq i32 %.3, 0
  br i1 %.not7, label %65, label %89

65:                                               ; preds = %64
  br i1 %8, label %66, label %68

66:                                               ; preds = %65
  %67 = sdiv i32 %.02, 2
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef nonnull %2, i32 noundef %67, %struct._IO_FILE* noundef %4) #6
  br label %69

68:                                               ; preds = %65
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef nonnull %2, i32 noundef %.02, %struct._IO_FILE* noundef %4) #6
  br label %69

69:                                               ; preds = %68, %66
  br i1 %8, label %70, label %77

70:                                               ; preds = %69
  %71 = getelementptr inbounds i8, i8* %.1, i64 -1
  %72 = load i8, i8* %71, align 1
  %73 = getelementptr inbounds i8, i8* %.1, i64 -1
  store i8 0, i8* %73, align 1
  %74 = getelementptr inbounds i8, i8* %1, i64 2
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %6, i8* noundef nonnull %74) #6
  %76 = getelementptr inbounds i8, i8* %.1, i64 -1
  store i8 %72, i8* %76, align 1
  br label %88

77:                                               ; preds = %69
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 noundef %6) #6
  %79 = getelementptr inbounds i8, i8* %1, i64 2
  br label %80

80:                                               ; preds = %85, %77
  %.0 = phi i8* [ %79, %77 ], [ %86, %85 ]
  %81 = getelementptr inbounds i8, i8* %.1, i64 -2
  %.not8 = icmp ugt i8* %.0, %81
  br i1 %.not8, label %87, label %82

82:                                               ; preds = %80
  %83 = load i8, i8* %.0, align 1
  %84 = sext i8 %83 to i32
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %84, i32 noundef 16, i32 noundef 2, %struct._IO_FILE* noundef %4) #6
  br label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %80, !llvm.loop !6

87:                                               ; preds = %80
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i8, i8* %.1, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %91) #6
  %.not9 = icmp eq i32 %92, 0
  br i1 %.not9, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8, i8* %.1, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %95) #6
  %.not10 = icmp eq i32 %96, 0
  br i1 %.not10, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8, i8* %.1, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %99) #6
  br label %101

101:                                              ; preds = %97, %93, %89
  br label %102

102:                                              ; preds = %101, %21
  br label %105

103:                                              ; preds = %15, %12
  %104 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %4)
  br label %105

105:                                              ; preds = %103, %102
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @eoln(...) #1

declare dso_local i32 @CHAR_TO_DIGIT(...) #1

declare dso_local void @CHANGE_LOCATION(...) #1

declare dso_local void @PRT_NUM(...) #1

declare dso_local i32 @IS_BLANK_OR_TAB(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_CSECT(i8* noundef %0, i8* nocapture noundef readnone %1, i32* nocapture noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = load i32, i32* @SEEN_END_OP, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %16

7:                                                ; preds = %5
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0)) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @MOD_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %4)
  %10 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %11 = load i32, i32* %2, align 4
  %12 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %11, %13
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 3
  store i32 %14, i32* %15, align 8
  br label %16

16:                                               ; preds = %7, %5
  store i32 0, i32* @SEEN_END_OP, align 4
  %strcmpload = load i8, i8* %0, align 1
  %.not1 = icmp eq i8 %strcmpload, 0
  br i1 %.not1, label %17, label %19

17:                                               ; preds = %16
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %4)
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @GET_NEXT_MISSING_LABEL to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef nonnull %0, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  br label %19

19:                                               ; preds = %17, %16
  %20 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef nonnull %0, i8* noundef nonnull %0, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %.not2 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %20, null
  br i1 %.not2, label %24, label %21

21:                                               ; preds = %19
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %4)
  %23 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %0) #6
  br label %31

24:                                               ; preds = %19
  %25 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %0, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %26 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %25, i64 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %25, i64 0, i32 1, i64 0
  %28 = call i8* @strcpy(i8* noundef nonnull %27, i8* noundef nonnull %0) #6
  %29 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %0) #6
  store i32 0, i32* %2, align 4
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0)) #6
  br label %31

31:                                               ; preds = %24, %21
  ret void
}

declare dso_local void @OUTPUT_BUFFER(...) #1

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local void @GET_NEXT_MISSING_LABEL(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_END(i8* nocapture noundef readnone %0, i8* noundef %1, i32* nocapture noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca [9 x i8], align 1
  %7 = alloca i8*, align 8
  store i32 1, i32* @SEEN_END_OP, align 4
  %strcmpload = load i8, i8* %1, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %57, label %8

8:                                                ; preds = %5
  store i8* %1, i8** %7, align 8
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* noundef nonnull %9, i8* noundef nonnull %1, i8** noundef nonnull %7, i32 noundef 0) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %10 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %strcmpload1 = load i8, i8* %10, align 1
  %.not2 = icmp eq i8 %strcmpload1, 0
  br i1 %.not2, label %54, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %13 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef nonnull %12, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %14 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %16) #6
  br label %36

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %13, i64 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %23) #6
  br label %35

25:                                               ; preds = %18
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @MOD_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %4)
  %27 = load i32, i32* @START_ADDRESS, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %13, i64 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @START_ADDRESS, align 4
  br label %34

32:                                               ; preds = %25
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %4)
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %39) #6
  %.not3 = icmp eq i32 %40, 0
  br i1 %.not3, label %41, label %53

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %44) #6
  %.not4 = icmp eq i32 %45, 0
  br i1 %.not4, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %.not5 = icmp eq i8* %47, %1
  br i1 %.not5, label %53, label %48

48:                                               ; preds = %46
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %51) #6
  br label %53

53:                                               ; preds = %48, %46, %41, %36
  br label %56

54:                                               ; preds = %8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %1) #6
  br label %56

56:                                               ; preds = %54, %53
  br label %59

57:                                               ; preds = %5
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @MOD_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %58 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %4)
  br label %59

59:                                               ; preds = %57, %56
  %60 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %61 = load i32, i32* %2, align 4
  %62 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %60, i64 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %60, i64 0, i32 3
  store i32 %64, i32* %65, align 8
  store i16 95, i16* bitcast ([9 x i8]* @MODULE_NAME to i16*), align 1
  store i32 0, i32* %2, align 4
  ret void
}

declare dso_local void @GET_LABEL(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_EQU(i8* noundef %0, i8* noundef %1, i32* nocapture noundef readonly %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %strcmpload = load i8, i8* %0, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %8, label %10

8:                                                ; preds = %5
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %4)
  br label %33

10:                                               ; preds = %5
  store i32 1, i32* %7, align 4
  store i8* %1, i8** %6, align 8
  %11 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %0, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef nonnull %6, i32 noundef 21, i32 noundef %12, %struct.SYMBOL_TABLE_ENTRY** noundef %3, i32* noundef nonnull %7) #6
  %14 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %11, i64 0, i32 2
  store i32 %13, i32* %14, align 4
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %11, i64 0, i32 4
  store i32 1, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %18) #6
  %.not1 = icmp eq i32 %19, 0
  br i1 %.not1, label %20, label %32

20:                                               ; preds = %10
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %23) #6
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %25, label %32

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %.not3 = icmp eq i8* %26, %1
  br i1 %.not3, label %32, label %27

27:                                               ; preds = %25
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %30) #6
  br label %32

32:                                               ; preds = %27, %25, %20, %10
  br label %33

33:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @GET_EXPRESSION(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_EXTDEF(i8* nocapture noundef readnone %0, i8* noundef %1, i32* nocapture noundef readnone %2, %struct.SYMBOL_TABLE_ENTRY** nocapture noundef readnone %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca [9 x i8], align 1
  %strcmpload = load i8, i8* %1, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %9, label %11

9:                                                ; preds = %5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %4)
  br label %60

11:                                               ; preds = %5
  store i8* %1, i8** %6, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @INITIALIZE_RECORD to void (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 41) #6
  br label %12

12:                                               ; preds = %34, %11
  %.0 = phi i32 [ 0, %11 ], [ %.1, %34 ]
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* noundef nonnull %14, i8* noundef %13, i8** noundef nonnull %6, i32 noundef 0) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %strcmpload1 = load i8, i8* %15, align 1
  %.not2 = icmp eq i8 %strcmpload1, 0
  br i1 %.not2, label %16, label %17

16:                                               ; preds = %12
  br label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @BLANK_STR to void (i8*, ...)*)(i8* noundef nonnull %18) #6
  %19 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %22 = call i64 @strlen(i8* noundef nonnull %21) #7
  %23 = call i8* @strncpy(i8* noundef nonnull %19, i8* noundef nonnull %20, i64 noundef %22) #6
  %24 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_RECORD to void (i8*, %struct._IO_FILE*, ...)*)(i8* noundef nonnull %24, %struct._IO_FILE* noundef %4) #6
  br label %25

25:                                               ; preds = %17, %16
  %.1 = phi i32 [ %.0, %17 ], [ 1, %16 ]
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %25
  %.not3 = icmp eq i32 %.1, 0
  br i1 %.not3, label %29, label %34

29:                                               ; preds = %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 44
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i1 [ false, %28 ], [ %33, %29 ]
  br i1 %35, label %12, label %36, !llvm.loop !7

36:                                               ; preds = %34
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef %4) #6
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %39) #6
  %.not4 = icmp eq i32 %40, 0
  br i1 %.not4, label %41, label %55

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %44) #6
  %.not5 = icmp eq i32 %45, 0
  br i1 %.not5, label %46, label %55

46:                                               ; preds = %41
  %.not6 = icmp eq i32 %.1, 0
  br i1 %.not6, label %47, label %55

47:                                               ; preds = %46
  %48 = load i8*, i8** %6, align 8
  %.not7 = icmp eq i8* %48, %13
  br i1 %.not7, label %55, label %49

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %53) #6
  br label %55

55:                                               ; preds = %49, %47, %46, %41, %36
  %56 = icmp eq i32 %.1, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0), i8* noundef %13) #6
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %9
  ret void
}

declare dso_local void @INITIALIZE_RECORD(...) #1

declare dso_local void @BLANK_STR(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @ADD_TO_RECORD(...) #1

declare dso_local void @PRT_RECORD(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_EXTREF(i8* nocapture noundef readnone %0, i8* noundef %1, i32* nocapture noundef readnone %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca [9 x i8], align 1
  %strcmpload = load i8, i8* %1, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %9, label %11

9:                                                ; preds = %5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %4)
  br label %71

11:                                               ; preds = %5
  store i8* %1, i8** %6, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @INITIALIZE_RECORD to void (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef 73) #6
  br label %12

12:                                               ; preds = %39, %11
  %.0 = phi i32 [ 0, %11 ], [ %.2, %39 ]
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* noundef nonnull %14, i8* noundef %13, i8** noundef nonnull %6, i32 noundef 0) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %strcmpload1 = load i8, i8* %15, align 1
  %.not2 = icmp eq i8 %strcmpload1, 0
  br i1 %.not2, label %16, label %17

16:                                               ; preds = %12
  br label %30

17:                                               ; preds = %12
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %19 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %18, i32 noundef 0, i32 noundef 2, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %.not8 = icmp eq i32 %19, 0
  br i1 %.not8, label %20, label %21

20:                                               ; preds = %17
  br label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @BLANK_STR to void (i8*, ...)*)(i8* noundef nonnull %22) #6
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %24 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %26 = call i64 @strlen(i8* noundef nonnull %25) #7
  %27 = call i8* @strncpy(i8* noundef nonnull %23, i8* noundef nonnull %24, i64 noundef %26) #6
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_RECORD to void (i8*, %struct._IO_FILE*, ...)*)(i8* noundef nonnull %28, %struct._IO_FILE* noundef %4) #6
  br label %29

29:                                               ; preds = %21, %20
  %.1 = phi i32 [ %.0, %21 ], [ 2, %20 ]
  br label %30

30:                                               ; preds = %29, %16
  %.2 = phi i32 [ %.1, %29 ], [ 1, %16 ]
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %30
  %.not3 = icmp eq i32 %.2, 0
  br i1 %.not3, label %34, label %39

34:                                               ; preds = %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = load i8, i8* %36, align 1
  %38 = icmp eq i8 %37, 44
  br label %39

39:                                               ; preds = %34, %33
  %40 = phi i1 [ false, %33 ], [ %38, %34 ]
  br i1 %40, label %12, label %41, !llvm.loop !8

41:                                               ; preds = %39
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef %4) #6
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %44) #6
  %.not4 = icmp eq i32 %45, 0
  br i1 %.not4, label %46, label %60

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %49) #6
  %.not5 = icmp eq i32 %50, 0
  br i1 %.not5, label %51, label %60

51:                                               ; preds = %46
  %.not6 = icmp eq i32 %.2, 0
  br i1 %.not6, label %52, label %60

52:                                               ; preds = %51
  %53 = load i8*, i8** %6, align 8
  %.not7 = icmp eq i8* %53, %13
  br i1 %.not7, label %60, label %54

54:                                               ; preds = %52
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %58) #6
  br label %60

60:                                               ; preds = %54, %52, %51, %46, %41
  %61 = icmp eq i32 %.2, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0), i8* noundef %13) #6
  br label %64

64:                                               ; preds = %62, %60
  %65 = icmp eq i32 %.2, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  store i8 0, i8* %68, align 1
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* noundef %13) #6
  br label %70

70:                                               ; preds = %66, %64
  br label %71

71:                                               ; preds = %70, %9
  ret void
}

declare dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef, i8* noundef, i32 noundef, i32 noundef, %struct.SYMBOL_TABLE_ENTRY** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_RESB(i8* nocapture noundef readnone %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 1, i32* %7, align 4
  store i8* %1, i8** %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef nonnull %6, i32 noundef 21, i32 noundef %8, %struct.SYMBOL_TABLE_ENTRY** noundef %3, i32* noundef nonnull %7) #6
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef nonnull %2, i32 noundef %9, %struct._IO_FILE* noundef %4) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %12) #6
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %14, label %26

14:                                               ; preds = %5
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %17) #6
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %.not2 = icmp eq i8* %20, %1
  br i1 %.not2, label %26, label %21

21:                                               ; preds = %19
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %24) #6
  br label %26

26:                                               ; preds = %21, %19, %14, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_RESW(i8* nocapture noundef readnone %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 1, i32* %7, align 4
  store i8* %1, i8** %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef nonnull %6, i32 noundef 20, i32 noundef %8, %struct.SYMBOL_TABLE_ENTRY** noundef %3, i32* noundef nonnull %7) #6
  %10 = mul nsw i32 %9, 3
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef nonnull %2, i32 noundef %10, %struct._IO_FILE* noundef %4) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %13) #6
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %15, label %27

15:                                               ; preds = %5
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %18) #6
  %.not1 = icmp eq i32 %19, 0
  br i1 %.not1, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %.not2 = icmp eq i8* %21, %1
  br i1 %.not2, label %27, label %22

22:                                               ; preds = %20
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %25) #6
  br label %27

27:                                               ; preds = %22, %20, %15, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_START(i8* noundef %0, i8* noundef %1, i32* nocapture noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @SEEN_END_OP, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %17

8:                                                ; preds = %5
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0)) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @MOD_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %4)
  %11 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %12 = load i32, i32* %2, align 4
  %13 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %11, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %12, %14
  %16 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %11, i64 0, i32 3
  store i32 %15, i32* %16, align 8
  br label %17

17:                                               ; preds = %8, %5
  %18 = load i32, i32* @SEEN_START_OP, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %4)
  br label %22

22:                                               ; preds = %20, %17
  store i32 1, i32* @SEEN_START_OP, align 4
  store i32 0, i32* @SEEN_END_OP, align 4
  %strcmpload = load i8, i8* %0, align 1
  %.not1 = icmp eq i8 %strcmpload, 0
  br i1 %.not1, label %23, label %25

23:                                               ; preds = %22
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %4)
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @GET_NEXT_MISSING_LABEL to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef nonnull %0, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  br label %25

25:                                               ; preds = %23, %22
  %26 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef nonnull %0, i8* noundef nonnull %0, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  %.not2 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %26, null
  br i1 %.not2, label %30, label %27

27:                                               ; preds = %25
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %4)
  %29 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %0) #6
  br label %63

30:                                               ; preds = %25
  %31 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %0, %struct.SYMBOL_TABLE_ENTRY** noundef %3) #6
  store i8* %1, i8** %6, align 8
  %32 = call i32 (i8**, i32, i32, ...) bitcast (i32 (...)* @GET_NUM to i32 (i8**, i32, i32, ...)*)(i8** noundef nonnull %6, i32 noundef 21, i32 noundef 10) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %4)
  br label %38

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %31, i64 0, i32 2
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %41) #6
  %.not3 = icmp eq i32 %42, 0
  br i1 %.not3, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %46) #6
  %.not4 = icmp eq i32 %47, 0
  br i1 %.not4, label %48, label %55

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %.not5 = icmp eq i8* %49, %1
  br i1 %.not5, label %55, label %50

50:                                               ; preds = %48
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %53) #6
  br label %55

55:                                               ; preds = %50, %48, %43, %38
  %56 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %31, i64 0, i32 1, i64 0
  %57 = call i8* @strcpy(i8* noundef nonnull %56, i8* noundef nonnull %0) #6
  %58 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef nonnull %0) #6
  %59 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef nonnull %0) #6
  %60 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %31, i64 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0)) #6
  br label %63

63:                                               ; preds = %55, %27
  ret void
}

declare dso_local i32 @GET_NUM(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_WORD(i8* nocapture noundef readnone %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 1, i32* %7, align 4
  store i8* %1, i8** %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef nonnull %6, i32 noundef 24, i32 noundef %8, %struct.SYMBOL_TABLE_ENTRY** noundef %3, i32* noundef nonnull %7) #6
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %4, i32 noundef 1) #6
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 noundef %10) #6
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %9, i32 noundef 16, i32 noundef 6, %struct._IO_FILE* noundef %4) #6
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef nonnull %2, i32 noundef 3, %struct._IO_FILE* noundef %4) #6
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %14) #6
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %16, label %28

16:                                               ; preds = %5
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %19) #6
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %.not2 = icmp eq i8* %22, %1
  br i1 %.not2, label %28, label %23

23:                                               ; preds = %21
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %26) #6
  br label %28

28:                                               ; preds = %23, %21, %16, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DO_PSEUDO(i32 noundef %0, i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5) #0 {
  switch i32 %0, label %17 [
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
    i32 6, label %12
    i32 7, label %13
    i32 8, label %14
    i32 9, label %15
    i32 10, label %16
  ]

7:                                                ; preds = %6
  call void @PSEUDO_BYTE(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

8:                                                ; preds = %6
  call void @PSEUDO_CSECT(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

9:                                                ; preds = %6
  call void @PSEUDO_END(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

10:                                               ; preds = %6
  call void @PSEUDO_EQU(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

11:                                               ; preds = %6
  call void @PSEUDO_EXTDEF(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

12:                                               ; preds = %6
  call void @PSEUDO_EXTREF(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

13:                                               ; preds = %6
  call void @PSEUDO_RESB(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

14:                                               ; preds = %6
  call void @PSEUDO_RESW(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

15:                                               ; preds = %6
  call void @PSEUDO_START(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

16:                                               ; preds = %6
  call void @PSEUDO_WORD(i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5)
  br label %18

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
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
