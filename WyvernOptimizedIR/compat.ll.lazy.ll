; ModuleID = './compat.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@BESTMATCH = external dso_local global i32, align 4
@COUNT = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@APPROX = external dso_local global i32, align 4
@PAT_FILE = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [63 x i8] c"%s: WARNING!!! -B option ignored when -c, -l, -f, or -# is on\0A\00", align 1
@Progname = external dso_local global [32 x i8], align 16
@.str.1 = private unnamed_addr constant [66 x i8] c"WARNING!!!  approximate matching is not supported with -f option\0A\00", align 1
@LINENUM = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: -f and -n are not compatible\0A\00", align 1
@DELIMITER = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: -f and -d are not compatible\0A\00", align 1
@JUMP = external dso_local global i32, align 4
@REGEX = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"WARNING!!! -D#, -I#, or -S# option is ignored for regular expression pattern\0A\00", align 1
@I = external dso_local global i32, align 4
@S = external dso_local global i32, align 4
@DD = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: the error cost cannot be 0\0A\00", align 1
@WHOLELINE = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: -d and -x is not compatible\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compat() #0 {
  %1 = load i32, i32* @BESTMATCH, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %14, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* @COUNT, align 4
  %.not9 = icmp eq i32 %3, 0
  br i1 %.not9, label %4, label %10

4:                                                ; preds = %2
  %5 = load i32, i32* @FILENAMEONLY, align 4
  %.not10 = icmp eq i32 %5, 0
  br i1 %.not10, label %6, label %10

6:                                                ; preds = %4
  %7 = load i32, i32* @APPROX, align 4
  %.not11 = icmp eq i32 %7, 0
  br i1 %.not11, label %8, label %10

8:                                                ; preds = %6
  %9 = load i32, i32* @PAT_FILE, align 4
  %.not12 = icmp eq i32 %9, 0
  br i1 %.not12, label %13, label %10

10:                                               ; preds = %8, %6, %4, %2
  store i32 0, i32* @BESTMATCH, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0)) #4
  br label %13

13:                                               ; preds = %10, %8
  br label %14

14:                                               ; preds = %13, %0
  %15 = load i32, i32* @PAT_FILE, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %32, label %16

16:                                               ; preds = %14
  %17 = load i32, i32* @APPROX, align 4
  %.not6 = icmp eq i32 %17, 0
  br i1 %.not6, label %21, label %18

18:                                               ; preds = %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %19) #5
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i32, i32* @LINENUM, align 4
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %26, label %23

23:                                               ; preds = %21
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0)) #4
  call void @exit(i32 noundef 2) #6
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %21
  %27 = load i32, i32* @DELIMITER, align 4
  %.not8 = icmp eq i32 %27, 0
  br i1 %.not8, label %31, label %28

28:                                               ; preds = %26
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0)) #4
  call void @exit(i32 noundef 2) #6
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* @JUMP, align 4
  %.not2 = icmp eq i32 %33, 0
  br i1 %.not2, label %52, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* @REGEX, align 4
  %.not5 = icmp eq i32 %35, 0
  br i1 %.not5, label %39, label %36

36:                                               ; preds = %34
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %37) #5
  store i32 0, i32* @JUMP, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i32, i32* @I, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @S, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @DD, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42, %39
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0)) #4
  call void @exit(i32 noundef 2) #6
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* @DELIMITER, align 4
  %.not3 = icmp eq i32 %53, 0
  br i1 %.not3, label %60, label %54

54:                                               ; preds = %52
  %55 = load i32, i32* @WHOLELINE, align 4
  %.not4 = icmp eq i32 %55, 0
  br i1 %.not4, label %59, label %56

56:                                               ; preds = %54
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0)) #4
  call void @exit(i32 noundef 2) #6
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %52
  ret void

UnifiedUnreachableBlock:                          ; preds = %56, %48, %28, %23
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold nounwind }
attributes #5 = { cold }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
