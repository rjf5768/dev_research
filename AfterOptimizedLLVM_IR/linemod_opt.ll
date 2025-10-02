; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/linemod.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/linemod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@line_style = dso_local global i32 0, align 4
@dash_length = dso_local global float 1.000000e+01, align 4
@.str = private unnamed_addr constant [11 x i8] c"longdashed\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"long-dashed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dotdashed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dot-dashed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dotted\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"shortdashed\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"short-dashed\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"Unrecognized line mode `%s' ignored. Using solid.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @linemod(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store i32 1, i32* @line_style, align 4
  store float 2.000000e+01, float* @dash_length, align 4
  br label %53

11:                                               ; preds = %6
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 2, i32* @line_style, align 4
  store float 9.990000e+02, float* @dash_length, align 4
  br label %52

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 1, i32* @line_style, align 4
  store float 4.000000e+00, float* @dash_length, align 4
  br label %51

25:                                               ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 2, i32* @line_style, align 4
  store float 2.000000e+00, float* @dash_length, align 4
  br label %50

30:                                               ; preds = %25
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* @line_style, align 4
  store float 1.000000e+00, float* @dash_length, align 4
  br label %49

35:                                               ; preds = %30
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store i32 1, i32* @line_style, align 4
  store float 1.000000e+01, float* @dash_length, align 4
  br label %48

44:                                               ; preds = %39
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8* noundef %46)
  store i32 0, i32* @line_style, align 4
  store float 1.000000e+00, float* @dash_length, align 4
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %24
  br label %52

52:                                               ; preds = %51, %15
  br label %53

53:                                               ; preds = %52, %10
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

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
