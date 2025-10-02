; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t1.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@tabin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".TS\00", align 1
@sargc = dso_local global i32 0, align 4
@sargv = dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-ms\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-mm\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-TX\00", align 1
@pr1403 = external dso_local global i32, align 4
@ifile = external dso_local global i8*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@iline = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c".ds f. %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef bitcast (void ()* @badsig to void (i32)*)) #4
  %7 = call i32 (...) @init_options()
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @tbl(i32 noundef %8, i8** noundef %9)
  call void @exit(i32 noundef %10) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @badsig() #0 {
  %1 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #4
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare dso_local i32 @init_options(...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tbl(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [8192 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** @tabin, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** @tabout, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  call void @setinp(i32 noundef %8, i8** noundef %9)
  br label %10

10:                                               ; preds = %22, %2
  %11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %12 = call i8* @gets1(i8* noundef %11)
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %16 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %16)
  %18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %19 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  call void @tableput()
  br label %22

22:                                               ; preds = %21, %14
  br label %10, !llvm.loop !4

23:                                               ; preds = %10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %25 = call i32 @fclose(%struct._IO_FILE* noundef %24)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setinp(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* @sargc, align 4
  %6 = load i8**, i8*** %4, align 8
  store i8** %6, i8*** @sargv, align 8
  %7 = load i32, i32* @sargc, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @sargc, align 4
  %9 = load i8**, i8*** @sargv, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %10, i8*** @sargv, align 8
  %11 = load i32, i32* @sargc, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @swapin()
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

declare dso_local i8* @gets1(i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #2

declare dso_local void @tableput() #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @swapin() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %37, %0
  %3 = load i32, i32* @sargc, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i8**, i8*** @sargv, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 45
  br label %11

11:                                               ; preds = %5, %2
  %12 = phi i1 [ false, %2 ], [ %10, %5 ]
  br i1 %12, label %13, label %42

13:                                               ; preds = %11
  %14 = load i32, i32* @sargc, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %68

17:                                               ; preds = %13
  %18 = load i8**, i8*** @sargv, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @match(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8**, i8*** @sargv, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  br label %42

24:                                               ; preds = %17
  %25 = load i8**, i8*** @sargv, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @match(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8**, i8*** @sargv, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %30, align 8
  br label %42

31:                                               ; preds = %24
  %32 = load i8**, i8*** @sargv, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @match(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* @pr1403, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* @sargc, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @sargc, align 4
  %40 = load i8**, i8*** @sargv, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** @sargv, align 8
  br label %2, !llvm.loop !6

42:                                               ; preds = %29, %22, %11
  %43 = load i32, i32* @sargc, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %68

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %49 = icmp ne %struct._IO_FILE* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %52 = call i32 @fclose(%struct._IO_FILE* noundef %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i8**, i8*** @sargv, align 8
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** @ifile, align 8
  %56 = call noalias %struct._IO_FILE* @fopen(i8* noundef %55, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %56, %struct._IO_FILE** @tabin, align 8
  store i32 1, i32* @iline, align 4
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %58 = load i8*, i8** @ifile, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef %58)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %61 = icmp eq %struct._IO_FILE* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  call void @error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* @sargc, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @sargc, align 4
  %66 = load i8**, i8*** @sargv, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** @sargv, align 8
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %63, %45, %16
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @match(i8* noundef, i8* noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local void @error(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
