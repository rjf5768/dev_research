; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/getargs.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/getargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@verboseflag = dso_local global i32 0, align 4
@definesflag = dso_local global i32 0, align 4
@debugflag = dso_local global i32 0, align 4
@fixed_outfiles = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"yvdlto:\00", align 1
@nolinesflag = dso_local global i32 0, align 4
@optarg = external dso_local global i8*, align 8
@spec_outfile = external dso_local global i8*, align 8
@optind = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"grammar file not specified\00", align 1
@infile = external dso_local global i8*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"bison: warning: extra arguments ignored\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getargs(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* @verboseflag, align 4
  store i32 0, i32* @definesflag, align 4
  store i32 0, i32* @debugflag, align 4
  store i32 0, i32* @fixed_outfiles, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  br label %12, !llvm.loop !4

27:                                               ; preds = %12
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* @fixed_outfiles, align 4
  br label %32

32:                                               ; preds = %31, %27
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = call i32 @getopt(i32 noundef %34, i8** noundef %35, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %47 [
    i32 121, label %40
    i32 118, label %41
    i32 100, label %42
    i32 108, label %43
    i32 116, label %44
    i32 111, label %45
  ]

40:                                               ; preds = %38
  store i32 1, i32* @fixed_outfiles, align 4
  br label %47

41:                                               ; preds = %38
  store i32 1, i32* @verboseflag, align 4
  br label %47

42:                                               ; preds = %38
  store i32 1, i32* @definesflag, align 4
  br label %47

43:                                               ; preds = %38
  store i32 1, i32* @nolinesflag, align 4
  br label %47

44:                                               ; preds = %38
  store i32 1, i32* @debugflag, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** @spec_outfile, align 8
  br label %47

47:                                               ; preds = %45, %38, %44, %43, %42, %41, %40
  br label %33, !llvm.loop !6

48:                                               ; preds = %33
  %49 = load i32, i32* @optind, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @fatal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %59

53:                                               ; preds = %48
  %54 = load i8**, i8*** %4, align 8
  %55 = load i32, i32* @optind, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** @infile, align 8
  br label %59

59:                                               ; preds = %53, %52
  %60 = load i32, i32* @optind, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @getopt(i32 noundef, i8** noundef, i8* noundef) #2

declare dso_local void @fatal(i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
