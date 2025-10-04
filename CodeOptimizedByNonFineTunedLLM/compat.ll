; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/compat.c'
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
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = load i32, i32* @COUNT, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @FILENAMEONLY, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @APPROX, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @PAT_FILE, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %9, %6, %3
  store i32 0, i32* @BESTMATCH, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i32, i32* @PAT_FILE, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* @APPROX, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @LINENUM, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #3
  unreachable

34:                                               ; preds = %28
  %35 = load i32, i32* @DELIMITER, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #3
  unreachable

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* @JUMP, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* @REGEX, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @JUMP, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @I, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @S, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @DD, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %53, %50
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #3
  unreachable

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* @DELIMITER, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* @WHOLELINE, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #3
  unreachable

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %63
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

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
