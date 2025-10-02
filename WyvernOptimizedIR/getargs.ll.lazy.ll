; ModuleID = './getargs.ll'
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
  %3 = load i8*, i8** %1, align 8
  store i32 0, i32* @verboseflag, align 4
  store i32 0, i32* @definesflag, align 4
  store i32 0, i32* @debugflag, align 4
  store i32 0, i32* @fixed_outfiles, align 4
  br label %4

4:                                                ; preds = %11, %2
  %.01 = phi i8* [ %3, %2 ], [ %12, %11 ]
  %.0 = phi i8* [ %3, %2 ], [ %.1, %11 ]
  %5 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %13, label %6

6:                                                ; preds = %4
  %7 = load i8, i8* %.01, align 1
  %8 = icmp eq i8 %7, 47
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %11

11:                                               ; preds = %9, %6
  %.1 = phi i8* [ %10, %9 ], [ %.0, %6 ]
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  %14 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %.0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %15, label %16

15:                                               ; preds = %13
  store i32 1, i32* @fixed_outfiles, align 4
  br label %16

16:                                               ; preds = %15, %13
  br label %17

17:                                               ; preds = %27, %16
  %18 = call i32 @getopt(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #5
  %.not3 = icmp eq i32 %18, -1
  br i1 %.not3, label %28, label %19

19:                                               ; preds = %17
  switch i32 %18, label %27 [
    i32 121, label %20
    i32 118, label %21
    i32 100, label %22
    i32 108, label %23
    i32 116, label %24
    i32 111, label %25
  ]

20:                                               ; preds = %19
  store i32 1, i32* @fixed_outfiles, align 4
  br label %27

21:                                               ; preds = %19
  store i32 1, i32* @verboseflag, align 4
  br label %27

22:                                               ; preds = %19
  store i32 1, i32* @definesflag, align 4
  br label %27

23:                                               ; preds = %19
  store i32 1, i32* @nolinesflag, align 4
  br label %27

24:                                               ; preds = %19
  store i32 1, i32* @debugflag, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** @spec_outfile, align 8
  br label %27

27:                                               ; preds = %25, %24, %23, %22, %21, %20, %19
  br label %17, !llvm.loop !6

28:                                               ; preds = %17
  %29 = load i32, i32* @optind, align 4
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @fatal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @optind, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** @infile, align 8
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i32, i32* @optind, align 4
  %39 = add nsw i32 %0, -1
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %42) #6
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @getopt(i32 noundef, i8** noundef, i8* noundef) #2

declare dso_local void @fatal(i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
