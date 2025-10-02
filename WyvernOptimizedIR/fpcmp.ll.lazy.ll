; ModuleID = './fpcmp.ll'
source_filename = "/project/test/llvm-test-suite/tools/fpcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: error: unable to open '%s'\0A\00", align 1
@g_program = dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: error: unable to seek '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: error: unable to allocate buffer for '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: error: unable to read data for '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"%s: Comparison failed, textual difference between '%c' and '%c'\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"%s: Comparison failed, unexpected end of one of the files\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"usage: %s [-a VALUE] [-r VALUE] [-i] <path-A> <path-B>\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [248 x i8] c"Search two text files for differences.\0AIf either -a or -r is specified (even if zero), floating numbers are parsed and considered equal if neither the absolute nor relative tolerance is exceeded.\0AThe -i switch also ignores whitespace differences.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"error: invalid argument '%s'\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"error: missing argument to '%s'\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"error: invalid argument to '%s': '%s'\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"error: invalid number of arguments\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"%s: FP Comparison failed, not a numeric difference between '%c' and '%c'\0A\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"%s: Compared: %e and %e\0Aabs. diff = %e rel.diff = %e\0AOut of tolerance: rel/abs: %e/%e\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Input 1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Input 2\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\0A%s: Contains binary data.\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"\0A%s:\0A%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @load_file(i8* noundef %0, i64* nocapture noundef writeonly %1) #0 {
  %3 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #15
  %.not = icmp eq %struct._IO_FILE* %3, null
  br i1 %.not, label %4, label %8

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @g_program, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef %6, i8* noundef %0) #16
  call void @exit(i32 noundef 2) #17
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %2
  %9 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %3, i64 noundef 0, i32 noundef 2) #15
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** @g_program, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* noundef %13, i8* noundef %0) #16
  call void @exit(i32 noundef 2) #17
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %8
  %16 = call i64 @ftell(%struct._IO_FILE* noundef nonnull %3) #15
  %17 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %3, i64 noundef 0, i32 noundef 0) #15
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** @g_program, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* noundef %21, i8* noundef %0) #16
  call void @exit(i32 noundef 2) #17
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %15
  %24 = icmp eq i64 %16, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %42

26:                                               ; preds = %23
  %27 = add nsw i64 %16, 1
  %28 = call noalias i8* @malloc(i64 noundef %27) #15
  %.not1 = icmp eq i8* %28, null
  br i1 %.not1, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** @g_program, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef %31, i8* noundef %0) #16
  call void @exit(i32 noundef 2) #17
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %28, i64 %16
  store i8 0, i8* %34, align 1
  %35 = call i64 @fread(i8* noundef nonnull %28, i64 noundef %16, i64 noundef 1, %struct._IO_FILE* noundef nonnull %3) #15
  %.not2 = icmp eq i64 %35, 1
  br i1 %.not2, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i8*, i8** @g_program, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef %38, i8* noundef %0) #16
  call void @exit(i32 noundef 2) #17
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %33
  %41 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %3) #15
  br label %42

42:                                               ; preds = %40, %25
  %storemerge = phi i64 [ %16, %40 ], [ 0, %25 ]
  %.0 = phi i8* [ %28, %40 ], [ null, %25 ]
  store i64 %storemerge, i64* %1, align 8
  ret i8* %.0

UnifiedUnreachableBlock:                          ; preds = %36, %29, %19, %11, %4
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @diff_file(i8* noundef %0, i8* noundef %1, i1 noundef zeroext %2, double noundef %3, double noundef %4, i1 noundef zeroext %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = call i8* @load_file(i8* noundef %0, i64* noundef nonnull %7)
  %14 = call i8* @load_file(i8* noundef %1, i64* noundef nonnull %8)
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i64, i64* %7, align 8
  %bcmp = call i32 @bcmp(i8* %13, i8* %14, i64 %19)
  %20 = icmp eq i32 %bcmp, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @free(i8* noundef %13) #15
  call void @free(i8* noundef %14) #15
  br label %129

22:                                               ; preds = %18, %6
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %13, i64 %23
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8, i8* %14, i64 %25
  store i8* %13, i8** %9, align 8
  store i8* %14, i8** %10, align 8
  br label %27

27:                                               ; preds = %.backedge, %22
  %28 = load i8*, i8** %9, align 8
  %.not = icmp ult i8* %28, %24
  br i1 %.not, label %29, label %31

29:                                               ; preds = %27
  %30 = load i8*, i8** %10, align 8
  %.not1 = icmp ult i8* %30, %26
  br i1 %.not1, label %36, label %31

31:                                               ; preds = %29, %27
  br i1 %5, label %32, label %35

32:                                               ; preds = %31
  %33 = call zeroext i1 @skip_whitespace(i8** noundef nonnull %9, i8* noundef %24)
  %34 = call zeroext i1 @skip_whitespace(i8** noundef nonnull %10, i8* noundef %26)
  br label %35

35:                                               ; preds = %32, %31
  br label %108

36:                                               ; preds = %29
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp eq i8 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  br i1 %2, label %43, label %47

43:                                               ; preds = %42
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call zeroext i1 @isPossibleStartOfNumber(i8 noundef signext %45)
  br i1 %46, label %52, label %47

47:                                               ; preds = %43, %42
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %10, align 8
  br label %.backedge

.backedge:                                        ; preds = %47, %59, %79, %97, %107
  br label %27

52:                                               ; preds = %43, %36
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %12, align 8
  br i1 %5, label %55, label %61

55:                                               ; preds = %52
  %56 = call zeroext i1 @skip_whitespace(i8** noundef nonnull %9, i8* noundef nonnull %24)
  %57 = call zeroext i1 @skip_whitespace(i8** noundef nonnull %10, i8* noundef nonnull %26)
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %.backedge

60:                                               ; preds = %55
  br label %66

61:                                               ; preds = %52
  br i1 %2, label %62, label %65

62:                                               ; preds = %61
  %63 = call zeroext i1 @skip_whitespace(i8** noundef nonnull %11, i8* noundef nonnull %24)
  %64 = call zeroext i1 @skip_whitespace(i8** noundef nonnull %12, i8* noundef nonnull %26)
  br label %65

65:                                               ; preds = %62, %61
  br label %66

66:                                               ; preds = %65, %60
  br i1 %2, label %85, label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ult i8* %68, %24
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ult i8* %71, %26
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = icmp eq i8 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %10, align 8
  br label %.backedge

84:                                               ; preds = %73, %70, %67
  br label %108

85:                                               ; preds = %66
  %86 = load i8*, i8** %11, align 8
  %87 = call i8* @AdvanceNumber(i8* noundef %86, i8* noundef nonnull %24)
  %88 = load i8*, i8** %12, align 8
  %89 = call i8* @AdvanceNumber(i8* noundef %88, i8* noundef nonnull %26)
  %.not4 = icmp eq i8* %87, null
  br i1 %.not4, label %91, label %90

90:                                               ; preds = %85
  %.not6 = icmp eq i8* %89, null
  br i1 %.not6, label %91, label %102

91:                                               ; preds = %90, %85
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %.not5 = icmp eq i8 %93, %95
  br i1 %.not5, label %97, label %96

96:                                               ; preds = %91
  br label %108

97:                                               ; preds = %91
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %10, align 8
  br label %.backedge

102:                                              ; preds = %90
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = call zeroext i1 @CompareNumbers(i8* noundef %103, i8* noundef %104, i8* noundef nonnull %87, i8* noundef nonnull %89, double noundef %3, double noundef %4)
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  call void @free(i8* noundef %13) #15
  call void @free(i8* noundef %14) #15
  br label %129

107:                                              ; preds = %102
  store i8* %87, i8** %9, align 8
  store i8* %89, i8** %10, align 8
  br label %.backedge

108:                                              ; preds = %96, %84, %35
  %109 = load i8*, i8** %9, align 8
  %.not2 = icmp ult i8* %109, %24
  %110 = load i8*, i8** %10, align 8
  %.not3 = icmp ult i8* %110, %26
  br i1 %.not2, label %111, label %122

111:                                              ; preds = %108
  br i1 %.not3, label %112, label %122

112:                                              ; preds = %111
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = load i8*, i8** @g_program, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* noundef %114, i32 noundef %117, i32 noundef %120) #16
  call void @dump_inputs(i8* noundef %13, i8* noundef %14)
  call void @free(i8* noundef %13) #15
  call void @free(i8* noundef %14) #15
  br label %129

122:                                              ; preds = %111, %108
  br i1 %.not2, label %124, label %123

123:                                              ; preds = %122
  br i1 %.not3, label %124, label %128

124:                                              ; preds = %123, %122
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %126 = load i8*, i8** @g_program, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* noundef %126) #16
  call void @dump_inputs(i8* noundef %13, i8* noundef %14)
  call void @free(i8* noundef %13) #15
  call void @free(i8* noundef %14) #15
  br label %129

128:                                              ; preds = %123
  call void @free(i8* noundef %13) #15
  call void @free(i8* noundef %14) #15
  br label %129

129:                                              ; preds = %128, %124, %112, %106, %21
  %.0 = phi i32 [ 0, %21 ], [ 0, %128 ], [ 1, %124 ], [ 1, %112 ], [ 1, %106 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal zeroext i1 @skip_whitespace(i8** nocapture noundef %0, i8* noundef readnone %1) #5 {
  br label %3

3:                                                ; preds = %18, %2
  %.0 = phi i1 [ false, %2 ], [ true, %18 ]
  %4 = load i8*, i8** %0, align 8
  %5 = icmp ult i8* %4, %1
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = call i16** @__ctype_b_loc() #18
  %8 = load i16*, i16** %7, align 8
  %9 = load i8*, i8** %0, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, i16* %8, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = and i16 %13, 8192
  %15 = icmp ne i16 %14, 0
  br label %16

16:                                               ; preds = %6, %3
  %17 = phi i1 [ false, %3 ], [ %15, %6 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load i8*, i8** %0, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %0, align 8
  br label %3, !llvm.loop !4

21:                                               ; preds = %16
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i1 @isPossibleStartOfNumber(i8 noundef signext %0) #6 {
  %2 = call zeroext i1 @isDigitChar(i8 noundef signext %0)
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = call zeroext i1 @isSignedChar(i8 noundef signext %0)
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp eq i8 %0, 46
  br label %7

7:                                                ; preds = %5, %3, %1
  %8 = phi i1 [ true, %3 ], [ true, %1 ], [ %6, %5 ]
  ret i1 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i8* @AdvanceNumber(i8* noundef readonly %0, i8* noundef readnone %1) #7 {
  %3 = icmp ult i8* %0, %1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1
  %6 = call zeroext i1 @isSignedChar(i8 noundef signext %5)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %0, i64 1
  br label %9

9:                                                ; preds = %7, %4, %2
  %.02 = phi i8* [ %8, %7 ], [ %0, %4 ], [ %0, %2 ]
  br label %10

10:                                               ; preds = %17, %9
  %.13 = phi i8* [ %.02, %9 ], [ %18, %17 ]
  %.01 = phi i8* [ null, %9 ], [ %18, %17 ]
  %11 = icmp ult i8* %.13, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load i8, i8* %.13, align 1
  %14 = call zeroext i1 @isDigitChar(i8 noundef signext %13)
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i1 [ false, %10 ], [ %14, %12 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, i8* %.13, i64 1
  br label %10, !llvm.loop !6

19:                                               ; preds = %15
  %20 = icmp ult i8* %.13, %1
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load i8, i8* %.13, align 1
  %23 = icmp eq i8 %22, 46
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %32, %24
  %.13.pn = phi i8* [ %.13, %24 ], [ %.1, %32 ]
  %.1 = getelementptr inbounds i8, i8* %.13.pn, i64 1
  %26 = icmp ult i8* %.1, %1
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8, i8* %.1, align 1
  %29 = call zeroext i1 @isDigitChar(i8 noundef signext %28)
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i1 [ false, %25 ], [ %29, %27 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %25, !llvm.loop !7

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %21, %19
  %.35 = phi i8* [ %.1, %33 ], [ %.13, %21 ], [ %.13, %19 ]
  %.2 = phi i8* [ %.1, %33 ], [ %.01, %21 ], [ %.01, %19 ]
  %.not = icmp eq i8* %.2, null
  br i1 %.not, label %35, label %36

35:                                               ; preds = %34
  br label %61

36:                                               ; preds = %34
  %37 = icmp ult i8* %.35, %1
  br i1 %37, label %38, label %60

38:                                               ; preds = %36
  %39 = load i8, i8* %.35, align 1
  %40 = call zeroext i1 @isExponentChar(i8 noundef signext %39)
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, i8* %.35, i64 1
  %43 = icmp ult i8* %42, %1
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8, i8* %42, align 1
  %46 = call zeroext i1 @isSignedChar(i8 noundef signext %45)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, i8* %.35, i64 2
  br label %49

49:                                               ; preds = %47, %44, %41
  %.46 = phi i8* [ %48, %47 ], [ %42, %44 ], [ %42, %41 ]
  br label %50

50:                                               ; preds = %57, %49
  %.5 = phi i8* [ %.46, %49 ], [ %58, %57 ]
  %.3 = phi i8* [ %.2, %49 ], [ %58, %57 ]
  %51 = icmp ult i8* %.5, %1
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8, i8* %.5, align 1
  %54 = call zeroext i1 @isDigitChar(i8 noundef signext %53)
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i1 [ false, %50 ], [ %54, %52 ]
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = getelementptr inbounds i8, i8* %.5, i64 1
  br label %50, !llvm.loop !8

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %38, %36
  %.4 = phi i8* [ %.3, %59 ], [ %.2, %38 ], [ %.2, %36 ]
  br label %61

61:                                               ; preds = %60, %35
  %.0 = phi i8* [ %.4, %60 ], [ %.2, %35 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @CompareNumbers(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, double noundef %4, double noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = ptrtoint i8* %2 to i64
  %10 = ptrtoint i8* %0 to i64
  %11 = sub i64 %9, %10
  %12 = ptrtoint i8* %3 to i64
  %13 = ptrtoint i8* %1 to i64
  %14 = sub i64 %12, %13
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %bcmp = call i32 @bcmp(i8* %0, i8* %1, i64 %11)
  %17 = icmp eq i32 %bcmp, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %118

19:                                               ; preds = %16, %6
  %20 = call double @strtod(i8* noundef %0, i8** noundef nonnull %7) #15
  %21 = call double @strtod(i8* noundef %1, i8** noundef nonnull %8) #15
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp eq i8 %23, 68
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp eq i8 %27, 100
  br i1 %28, label %29, label %45

29:                                               ; preds = %25, %19
  %30 = add nsw i64 %11, 1
  %31 = call noalias i8* @malloc(i64 noundef %30) #15
  %32 = add nsw i64 %11, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %0, i64 %32, i1 false)
  %33 = load i8*, i8** %7, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = ptrtoint i8* %0 to i64
  %36 = sub i64 %34, %35
  %37 = and i64 %36, 4294967295
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  store i8 101, i8* %38, align 1
  %39 = call double @strtod(i8* noundef %31, i8** noundef nonnull %7) #15
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = ptrtoint i8* %31 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i8, i8* %0, i64 %43
  store i8* %44, i8** %7, align 8
  call void @free(i8* noundef %31) #15
  br label %45

45:                                               ; preds = %29, %25
  %.03 = phi double [ %39, %29 ], [ %20, %25 ]
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp eq i8 %47, 68
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 100
  br i1 %52, label %53, label %69

53:                                               ; preds = %49, %45
  %54 = add nsw i64 %14, 1
  %55 = call noalias i8* @malloc(i64 noundef %54) #15
  %56 = add nsw i64 %14, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 %1, i64 %56, i1 false)
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = ptrtoint i8* %1 to i64
  %60 = sub i64 %58, %59
  %61 = and i64 %60, 4294967295
  %62 = getelementptr inbounds i8, i8* %55, i64 %61
  store i8 101, i8* %62, align 1
  %63 = call double @strtod(i8* noundef %55, i8** noundef nonnull %8) #15
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = ptrtoint i8* %55 to i64
  %67 = sub i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %1, i64 %67
  store i8* %68, i8** %8, align 8
  call void @free(i8* noundef %55) #15
  br label %69

69:                                               ; preds = %53, %49
  %.02 = phi double [ %63, %53 ], [ %21, %49 ]
  %70 = load i8*, i8** %7, align 8
  %71 = icmp eq i8* %70, %0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %8, align 8
  %74 = icmp eq i8* %73, %1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72, %69
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = load i8*, i8** @g_program, align 8
  %78 = load i8, i8* %0, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* %1, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i8* noundef %77, i32 noundef %79, i32 noundef %81) #16
  br label %118

83:                                               ; preds = %72
  %84 = fcmp oeq double %.03, %.02
  br i1 %84, label %85, label %86

85:                                               ; preds = %83
  br label %118

86:                                               ; preds = %83
  %87 = fcmp oeq double %4, 0.000000e+00
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  %89 = fsub double %.03, %.02
  %90 = call double @llvm.fabs.f64(double %89)
  %91 = fcmp ogt double %90, %4
  br i1 %91, label %92, label %117

92:                                               ; preds = %88, %86
  %93 = fcmp une double %.02, 0.000000e+00
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = fdiv double %.03, %.02
  %96 = fadd double %95, -1.000000e+00
  %97 = call double @llvm.fabs.f64(double %96)
  br label %106

98:                                               ; preds = %92
  %99 = fcmp une double %.03, 0.000000e+00
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = fdiv double %.02, %.03
  %102 = fadd double %101, -1.000000e+00
  %103 = call double @llvm.fabs.f64(double %102)
  br label %105

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %100
  %.01 = phi double [ %103, %100 ], [ 0.000000e+00, %104 ]
  br label %106

106:                                              ; preds = %105, %94
  %.1 = phi double [ %97, %94 ], [ %.01, %105 ]
  %107 = fcmp oeq double %5, 0.000000e+00
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = fcmp ogt double %.1, %5
  br i1 %109, label %110, label %116

110:                                              ; preds = %108, %106
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = load i8*, i8** @g_program, align 8
  %113 = fsub double %.03, %.02
  %114 = call double @llvm.fabs.f64(double %113)
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.14, i64 0, i64 0), i8* noundef %112, double noundef %.03, double noundef %.02, double noundef %114, double noundef %.1, double noundef %5, double noundef %4) #16
  br label %118

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %88
  br label %118

118:                                              ; preds = %117, %110, %85, %75, %18
  %.0 = phi i1 [ false, %18 ], [ true, %75 ], [ false, %85 ], [ true, %110 ], [ false, %117 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_inputs(i8* noundef %0, i8* noundef %1) #0 {
  call void @dump_input(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0)
  call void @dump_input(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* noundef %1)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @usage() #8 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @g_program, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2) #16
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.8, i64 0, i64 0), i64 247, i64 1, %struct._IO_FILE* %4) #19
  call void @exit(i32 noundef 2) #17
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** %1, align 8
  store i8* %4, i8** @g_program, align 8
  br label %5

5:                                                ; preds = %57, %2
  %.09 = phi double [ 0.000000e+00, %2 ], [ %.312, %57 ]
  %.06 = phi double [ 0.000000e+00, %2 ], [ %.3, %57 ]
  %.03 = phi i8 [ 0, %2 ], [ %.25, %57 ]
  %.01 = phi i8 [ 0, %2 ], [ %.12, %57 ]
  %.0 = phi i32 [ 1, %2 ], [ %58, %57 ]
  %.not = icmp eq i32 %.0, %0
  br i1 %.not, label %.loopexit, label %6

6:                                                ; preds = %5
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i8*, i8** %1, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %.not24 = icmp eq i8 %10, 45
  br i1 %.not24, label %12, label %11

11:                                               ; preds = %6
  br label %59

12:                                               ; preds = %6
  %13 = call i64 @strlen(i8* noundef nonnull %9) #20
  %.not25 = icmp eq i64 %13, 2
  br i1 %.not25, label %17, label %14

14:                                               ; preds = %12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %9) #16
  call void @usage()
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds i8, i8* %9, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %53 [
    i32 97, label %21
    i32 114, label %21
    i32 105, label %52
  ]

21:                                               ; preds = %17, %17
  %22 = add nsw i32 %.0, 1
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %9) #16
  call void @usage()
  br label %51

27:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  %28 = add nsw i32 %.0, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call double @strtod(i8* noundef %31, i8** noundef nonnull %3) #15
  %33 = load i8*, i8** %3, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %.not26 = icmp eq i8 %37, 0
  br i1 %.not26, label %44, label %38

38:                                               ; preds = %35, %27
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = sext i32 %28 to i64
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %9, i8* noundef %42) #16
  call void @usage()
  br label %44

44:                                               ; preds = %38, %35
  %45 = getelementptr inbounds i8, i8* %9, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 97
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %48
  %.110 = phi double [ %32, %48 ], [ %.09, %49 ]
  %.17 = phi double [ %.06, %48 ], [ %32, %49 ]
  br label %51

51:                                               ; preds = %50, %24
  %.211 = phi double [ %.09, %24 ], [ %.110, %50 ]
  %.28 = phi double [ %.06, %24 ], [ %.17, %50 ]
  %.14 = phi i8 [ %.03, %24 ], [ 1, %50 ]
  %.1 = phi i32 [ %.0, %24 ], [ %28, %50 ]
  br label %56

52:                                               ; preds = %17
  br label %56

53:                                               ; preds = %17
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %9) #16
  call void @usage()
  br label %56

56:                                               ; preds = %53, %52, %51
  %.312 = phi double [ %.09, %53 ], [ %.09, %52 ], [ %.211, %51 ]
  %.3 = phi double [ %.06, %53 ], [ %.06, %52 ], [ %.28, %51 ]
  %.25 = phi i8 [ %.03, %53 ], [ %.03, %52 ], [ %.14, %51 ]
  %.12 = phi i8 [ %.01, %53 ], [ 1, %52 ], [ %.01, %51 ]
  %.2 = phi i32 [ %.0, %53 ], [ %.0, %52 ], [ %.1, %51 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.2, 1
  br label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5
  br label %59

59:                                               ; preds = %.loopexit, %11
  %60 = add nsw i32 %.0, 2
  %.not23 = icmp eq i32 %60, %0
  br i1 %.not23, label %64, label %61

61:                                               ; preds = %59
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %62) #19
  call void @usage()
  br label %64

64:                                               ; preds = %61, %59
  %65 = sext i32 %.0 to i64
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = add nsw i32 %.0, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = and i8 %.03, 1
  %73 = icmp ne i8 %72, 0
  %74 = and i8 %.01, 1
  %75 = icmp ne i8 %74, 0
  %76 = call i32 @diff_file(i8* noundef %67, i8* noundef %71, i1 noundef zeroext %73, double noundef %.09, double noundef %.06, i1 noundef zeroext %75)
  ret i32 %76
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i1 @isDigitChar(i8 noundef signext %0) #6 {
  %2 = sext i8 %0 to i32
  switch i32 %2, label %4 [
    i32 48, label %3
    i32 49, label %3
    i32 50, label %3
    i32 51, label %3
    i32 52, label %3
    i32 53, label %3
    i32 54, label %3
    i32 55, label %3
    i32 56, label %3
    i32 57, label %3
  ]

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i1 [ false, %4 ], [ true, %3 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i1 @isSignedChar(i8 noundef signext %0) #6 {
  %2 = icmp eq i8 %0, 43
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = icmp eq i8 %0, 45
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i1 [ true, %1 ], [ %4, %3 ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i1 @isExponentChar(i8 noundef signext %0) #6 {
  %2 = sext i8 %0 to i32
  switch i32 %2, label %4 [
    i32 68, label %3
    i32 100, label %3
    i32 101, label %3
    i32 69, label %3
  ]

3:                                                ; preds = %1, %1, %1, %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i1 [ false, %4 ], [ true, %3 ]
  ret i1 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #11

; Function Attrs: noinline nounwind uwtable
define internal void @dump_input(i8* noundef %0, i8* noundef %1) #0 {
  %3 = call zeroext i1 @contains_non_printable_characters(i8* noundef %1)
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* noundef %0) #16
  br label %10

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #16
  br label %10

10:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal zeroext i1 @contains_non_printable_characters(i8* noundef readonly %0) #12 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #20
  br label %3

3:                                                ; preds = %25, %1
  %.01 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %4 = icmp ult i64 %.01, %2
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = call i16** @__ctype_b_loc() #18
  %7 = load i16*, i16** %6, align 8
  %8 = getelementptr inbounds i8, i8* %0, i64 %.01
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = getelementptr inbounds i16, i16* %7, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = and i16 %12, 16384
  %.not = icmp eq i16 %13, 0
  br i1 %.not, label %14, label %24

14:                                               ; preds = %5
  %15 = call i16** @__ctype_b_loc() #18
  %16 = load i16*, i16** %15, align 8
  %17 = getelementptr inbounds i8, i8* %0, i64 %.01
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i64
  %20 = getelementptr inbounds i16, i16* %16, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = and i16 %21, 8192
  %.not2 = icmp eq i16 %22, 0
  br i1 %.not2, label %23, label %24

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %14, %5
  br label %25

25:                                               ; preds = %24
  %26 = add i64 %.01, 1
  br label %3, !llvm.loop !10

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %23
  ret i1 %4
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #14

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { cold }
attributes #20 = { nounwind readonly willreturn }

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
