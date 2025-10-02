; ModuleID = './scan_line.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @UPPER(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i8
  %3 = trunc i32 %0 to i8
  %4 = icmp sgt i8 %3, 96
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = trunc i32 %0 to i8
  %7 = icmp slt i8 %6, 123
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = trunc i32 %0 to i8
  %10 = add i8 %9, -32
  br label %12

11:                                               ; preds = %5, %1
  br label %12

12:                                               ; preds = %11, %8
  %.0 = phi i8 [ %10, %8 ], [ %2, %11 ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @IS_ALPHA_NUM(i32 noundef %0) #0 {
  %sext = shl i32 %0, 24
  %2 = ashr exact i32 %sext, 24
  %3 = call signext i8 @UPPER(i32 noundef %2)
  %4 = icmp sgt i8 %3, 64
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = icmp slt i8 %3, 91
  br i1 %6, label %13, label %7

7:                                                ; preds = %5, %1
  %8 = icmp sgt i8 %3, 47
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = icmp slt i8 %3, 58
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i1 [ false, %7 ], [ %10, %9 ]
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i1 [ true, %5 ], [ %12, %11 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @IS_BLANK_OR_TAB(i32 noundef %0) #0 {
  %sext.mask = and i32 %0, 255
  %2 = icmp eq i32 %sext.mask, 32
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %sext.mask1 = and i32 %0, 255
  %4 = icmp eq i32 %sext.mask1, 9
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 1, %1 ], [ %phi.cast, %3 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @eoln(i32 noundef %0) #0 {
  %sext.mask = and i32 %0, 255
  %2 = icmp eq i32 %sext.mask, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @GET_LABEL(i8* noundef %0, i8* noundef %1, i8** nocapture noundef %2, i32 noundef %3) #1 {
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = call signext i8 @UPPER(i32 noundef %7)
  %9 = icmp sgt i8 %8, 64
  br i1 %9, label %10, label %54

10:                                               ; preds = %4
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call signext i8 @UPPER(i32 noundef %13)
  %15 = icmp slt i8 %14, 91
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %28, %16
  %.0 = phi i32 [ 1, %16 ], [ %29, %28 ]
  %.pn = load i8*, i8** %2, align 8
  %storemerge = getelementptr inbounds i8, i8* %.pn, i64 1
  store i8* %storemerge, i8** %2, align 8
  %18 = load i8, i8* %storemerge, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @IS_ALPHA_NUM(i32 noundef %19)
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %26, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @eoln(i32 noundef %24)
  %.not1 = icmp eq i32 %25, 0
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %.not1, %21 ]
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = add nuw nsw i32 %.0, 1
  br label %17, !llvm.loop !4

30:                                               ; preds = %26
  %31 = icmp ugt i32 %.0, 8
  br i1 %31, label %32, label %49

32:                                               ; preds = %30
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds i8, i8* %1, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i32 %.0 to i64
  %39 = getelementptr inbounds i8, i8* %1, i64 %38
  store i8 0, i8* %39, align 1
  %40 = call double @log10(double noundef 8.000000e+00) #6
  %41 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #7
  %42 = add i64 %41, 80
  %43 = and i64 %42, 4294967295
  %44 = call noalias i8* @malloc(i64 noundef %43) #6
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %44, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* noundef %1, i32 noundef 8) #6
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, i8* noundef %44) #6
  call void @free(i8* noundef %44) #6
  %46 = zext i32 %.0 to i64
  %47 = getelementptr inbounds i8, i8* %1, i64 %46
  store i8 %37, i8* %47, align 1
  br label %48

48:                                               ; preds = %34, %32
  br label %49

49:                                               ; preds = %48, %30
  %.1 = phi i32 [ 8, %48 ], [ %.0, %30 ]
  %50 = zext i32 %.1 to i64
  %51 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1, i64 noundef %50) #6
  %52 = zext i32 %.1 to i64
  %53 = getelementptr inbounds i8, i8* %0, i64 %52
  store i8 0, i8* %53, align 1
  br label %55

54:                                               ; preds = %10, %4
  store i8 0, i8* %0, align 1
  br label %55

55:                                               ; preds = %54, %49
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local void @ADD_TO_END_OF_BUFFER(...) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @GET_OPCODE_STR(i8* noundef %0, i8** nocapture noundef %1, i32 noundef %2, %struct._IO_FILE* noundef %3) #1 {
  %5 = load i8*, i8** %1, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = call signext i8 @UPPER(i32 noundef %7)
  %9 = icmp sgt i8 %8, 64
  br i1 %9, label %10, label %56

10:                                               ; preds = %4
  %11 = load i8*, i8** %1, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call signext i8 @UPPER(i32 noundef %13)
  %15 = icmp slt i8 %14, 91
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %35, %16
  %.0 = phi i32 [ 1, %16 ], [ %36, %35 ]
  %.pn = load i8*, i8** %1, align 8
  %storemerge = getelementptr inbounds i8, i8* %.pn, i64 1
  store i8* %storemerge, i8** %1, align 8
  %18 = load i8, i8* %storemerge, align 1
  %19 = sext i8 %18 to i32
  %20 = call signext i8 @UPPER(i32 noundef %19)
  %21 = icmp sgt i8 %20, 64
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i8*, i8** %1, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call signext i8 @UPPER(i32 noundef %25)
  %27 = icmp slt i8 %26, 91
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %1, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @eoln(i32 noundef %31)
  %.not = icmp eq i32 %32, 0
  br label %33

33:                                               ; preds = %28, %22, %17
  %34 = phi i1 [ false, %22 ], [ false, %17 ], [ %.not, %28 ]
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = add nuw nsw i32 %.0, 1
  br label %17, !llvm.loop !6

37:                                               ; preds = %33
  %38 = icmp ugt i32 %.0, 8
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = zext i32 %.0 to i64
  %43 = getelementptr inbounds i8, i8* %5, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds i8, i8* %5, i64 %45
  store i8 0, i8* %46, align 1
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %5, i32 noundef 8) #6
  %48 = zext i32 %.0 to i64
  %49 = getelementptr inbounds i8, i8* %5, i64 %48
  store i8 %44, i8* %49, align 1
  br label %50

50:                                               ; preds = %41, %39
  br label %51

51:                                               ; preds = %50, %37
  %.1 = phi i32 [ 8, %50 ], [ %.0, %37 ]
  %52 = zext i32 %.1 to i64
  %53 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %5, i64 noundef %52) #6
  %54 = zext i32 %.1 to i64
  %55 = getelementptr inbounds i8, i8* %0, i64 %54
  store i8 0, i8* %55, align 1
  br label %57

56:                                               ; preds = %10, %4
  store i8 0, i8* %0, align 1
  br label %57

57:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @SCAN_LINE(i32 noundef %0, i8** noundef %1, i8* noundef %2, i32* nocapture noundef %3, i8* noundef %4, i8** nocapture noundef %5, i32 noundef %6, %struct._IO_FILE* noundef %7, %struct._IO_FILE* noundef %8) #1 {
  %10 = alloca i8*, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef %1, %struct._IO_FILE* noundef %8) #6
  %11 = load i8*, i8** %1, align 8
  store i8* %11, i8** %5, align 8
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i8* noundef %14) #6
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8, i8* %17, align 1
  %.not = icmp eq i8 %18, 46
  br i1 %.not, label %110, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  call void @GET_LABEL(i8* noundef %2, i8* noundef %20, i8** noundef nonnull %10, i32 noundef %6)
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef nonnull @ERROR_REC_BUF, %struct._IO_FILE* noundef %7, i32 noundef 1) #6
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @IS_BLANK_OR_TAB(i32 noundef %23)
  %.not1 = icmp eq i32 %24, 0
  br i1 %.not1, label %25, label %40

25:                                               ; preds = %19
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 @eoln(i32 noundef %28)
  %.not2 = icmp eq i32 %29, 0
  br i1 %.not2, label %30, label %40

30:                                               ; preds = %25
  %31 = icmp eq i32 %6, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 noundef %35) #6
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %37, %25, %19
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 @IS_BLANK_OR_TAB(i32 noundef %44)
  %.not3 = icmp eq i32 %45, 0
  br i1 %.not3, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 @eoln(i32 noundef %49)
  %.not9 = icmp eq i32 %50, 0
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %.not9, %46 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %10, align 8
  br label %41, !llvm.loop !7

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 43
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %10, align 8
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %60
  %storemerge = phi i32 [ 0, %63 ], [ 1, %60 ]
  store i32 %storemerge, i32* %3, align 4
  call void @GET_OPCODE_STR(i8* noundef %4, i8** noundef nonnull %10, i32 noundef %6, %struct._IO_FILE* noundef %7)
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %strcmpload = load i8, i8* %4, align 1
  %.not8 = icmp eq i8 %strcmpload, 0
  br i1 %.not8, label %68, label %72

68:                                               ; preds = %67
  %69 = icmp eq i32 %6, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %7)
  br label %72

72:                                               ; preds = %70, %68, %67, %64
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = call i32 @IS_BLANK_OR_TAB(i32 noundef %75)
  %.not4 = icmp eq i32 %76, 0
  br i1 %.not4, label %77, label %92

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 @eoln(i32 noundef %80)
  %.not5 = icmp eq i32 %81, 0
  br i1 %.not5, label %82, label %92

82:                                               ; preds = %77
  %83 = icmp eq i32 %6, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 noundef %87) #6
  br label %89

89:                                               ; preds = %84, %82
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %89, %77, %72
  br label %93

93:                                               ; preds = %105, %92
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 @IS_BLANK_OR_TAB(i32 noundef %96)
  %.not6 = icmp eq i32 %97, 0
  br i1 %.not6, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = call i32 @eoln(i32 noundef %101)
  %.not7 = icmp eq i32 %102, 0
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi i1 [ false, %93 ], [ %.not7, %98 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %10, align 8
  br label %93, !llvm.loop !8

108:                                              ; preds = %103
  %109 = load i8*, i8** %10, align 8
  store i8* %109, i8** %5, align 8
  br label %111

110:                                              ; preds = %16
  store i8 0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  store i8 0, i8* %4, align 1
  br label %111

111:                                              ; preds = %110, %108
  ret void
}

declare dso_local void @GET_LINE(...) #4

declare dso_local void @OUTPUT_BUFFER(...) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
