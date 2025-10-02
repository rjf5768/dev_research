; ModuleID = './loadexe.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/loadexe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@MAIN_ROUTINE = external dso_local global [9 x i8], align 1
@START_ADDRESS = external dso_local global i32, align 4
@MEMORY = external dso_local global i8*, align 8
@.str = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@SYM_TAB = external dso_local global %struct.SYMBOL_TABLE_ENTRY*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"ERROR: Input is not an executable file. Aborting.\0A\00", align 1
@TYPE_OUT_MODE = dso_local global [6 x i8] zeroinitializer, align 1
@str = private unnamed_addr constant [50 x i8] c"ERROR: Input is not an executable file. Aborting.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @LOAD(i32 noundef %0, i32* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  store i8 0, i8* %8, align 1
  %9 = call i32 @feof(%struct._IO_FILE* noundef %2) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %3
  store i32 1, i32* %1, align 4
  br label %27

11:                                               ; preds = %3
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef nonnull %4, %struct._IO_FILE* noundef %2) #5
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %.not1 = icmp eq i8 %13, 83
  br i1 %.not1, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #6
  %.not2 = icmp eq i64 %16, 14
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %14, %11
  store i32 1, i32* %1, align 4
  br label %26

18:                                               ; preds = %14
  %.not3 = icmp eq i32 %0, 0
  br i1 %.not3, label %23, label %19

19:                                               ; preds = %18
  store i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 8), align 1
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef nonnull %21, i64 noundef 8) #5
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %25, i32 noundef 5, i32 noundef 16, i32* noundef nonnull @START_ADDRESS, i32* noundef %1) #5
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %10
  br label %28

28:                                               ; preds = %110, %27
  %29 = call i32 @feof(%struct._IO_FILE* noundef %2) #5
  %.not4 = icmp eq i32 %29, 0
  br i1 %.not4, label %30, label %35

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 1048577
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %.not13 = icmp eq i32 %34, 0
  br label %35

35:                                               ; preds = %33, %30, %28
  %36 = phi i1 [ false, %30 ], [ false, %28 ], [ %.not13, %33 ]
  br i1 %36, label %37, label %111

37:                                               ; preds = %35
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef nonnull %4, %struct._IO_FILE* noundef %2) #5
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %109 [
    i32 84, label %41
    i32 77, label %66
    i32 71, label %90
    i32 0, label %108
  ]

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #6
  %44 = icmp ult i64 %43, 9
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %1, align 4
  br label %65

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %48, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %6, i32* noundef %1) #5
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %50, i32 noundef 2, i32 noundef 16, i32* noundef nonnull %5, i32* noundef %1) #5
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %51) #6
  %53 = load i32, i32* %5, align 4
  %54 = shl nsw i32 %53, 1
  %55 = add nsw i32 %54, 9
  %56 = sext i32 %55 to i64
  %.not12 = icmp eq i64 %52, %56
  br i1 %.not12, label %58, label %57

57:                                               ; preds = %46
  store i32 1, i32* %1, align 4
  br label %64

58:                                               ; preds = %46
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 9
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** @MEMORY, align 8
  call void (i8*, i32, i32, i8*, i32*, ...) bitcast (void (...)* @STORE_AT to void (i8*, i32, i32, i8*, i32*, ...)*)(i8* noundef nonnull %60, i32 noundef %61, i32 noundef %62, i8* noundef %63, i32* noundef %1) #5
  br label %64

64:                                               ; preds = %58, %57
  br label %65

65:                                               ; preds = %64, %45
  br label %110

66:                                               ; preds = %37
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %67) #6
  %.not9 = icmp eq i64 %68, 21
  br i1 %.not9, label %70, label %69

69:                                               ; preds = %66
  store i32 1, i32* %1, align 4
  br label %89

70:                                               ; preds = %66
  %.not10 = icmp eq i32 %0, 0
  br i1 %.not10, label %88, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i8* @strncpy(i8* noundef nonnull %72, i8* noundef nonnull %74, i64 noundef 8) #5
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %77, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %6, i32* noundef %1) #5
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %78, i32 noundef %79, i32 noundef 3, %struct.SYMBOL_TABLE_ENTRY** noundef nonnull @SYM_TAB) #5
  %.not11 = icmp eq i32 %80, 0
  %81 = zext i1 %.not11 to i32
  store i32 %81, i32* %1, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 15
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %83, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %5, i32* noundef nonnull %1) #5
  %84 = load i32, i32* %5, align 4
  %85 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %86 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %85, %struct.SYMBOL_TABLE_ENTRY** noundef nonnull @SYM_TAB) #5
  %87 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %86, i64 0, i32 3
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %71, %70
  br label %89

89:                                               ; preds = %88, %69
  br label %110

90:                                               ; preds = %37
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %91) #6
  %.not6 = icmp eq i64 %92, 15
  br i1 %.not6, label %94, label %93

93:                                               ; preds = %90
  store i32 1, i32* %1, align 4
  br label %107

94:                                               ; preds = %90
  %.not7 = icmp eq i32 %0, 0
  br i1 %.not7, label %106, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i8* @strncpy(i8* noundef nonnull %96, i8* noundef nonnull %98, i64 noundef 8) #5
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %101, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %6, i32* noundef %1) #5
  %102 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %102, i32 noundef %103, i32 noundef 4, %struct.SYMBOL_TABLE_ENTRY** noundef nonnull @SYM_TAB) #5
  %.not8 = icmp eq i32 %104, 0
  %105 = zext i1 %.not8 to i32
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %95, %94
  br label %107

107:                                              ; preds = %106, %93
  br label %110

108:                                              ; preds = %37
  br label %109

109:                                              ; preds = %108, %37
  br label %110

110:                                              ; preds = %109, %107, %89, %65
  br label %28, !llvm.loop !4

111:                                              ; preds = %35
  %112 = load i32, i32* %1, align 4
  %.not5 = icmp eq i32 %112, 0
  br i1 %.not5, label %114, label %113

113:                                              ; preds = %111
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %113, %111
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local void @GET_LINE(...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @STR_TO_NUM(...) #2

declare dso_local void @STORE_AT(...) #2

declare dso_local i32 @INSERT_IN_SYM_TAB(...) #2

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
