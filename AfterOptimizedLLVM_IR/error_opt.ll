; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/error.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@ErrorFlag = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0AERROR: line %d: %s \0A\00", align 1
@lineno = dso_local global i32 0, align 4
@lookahead = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Skipping: \00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0A continuing parsing...\0A\00", align 1
@tokenval = dso_local global i32 0, align 4
@ftokenval = dso_local global float 0.000000e+00, align 4
@FloatFlag = dso_local global i32 0, align 4
@DecCount = dso_local global i32 0, align 4
@offset = dso_local global i32 0, align 4
@LabelCounter = dso_local global i32 0, align 4
@NumberC = dso_local global i32 0, align 4
@lexbuf = dso_local global [128 x i8] zeroinitializer, align 16
@LocalIndex = dso_local global i32 0, align 4
@GlobalIndex = dso_local global i32 0, align 4
@NextLookahead = dso_local global i32 0, align 4
@NextTokenval = dso_local global i32 0, align 4
@NextFtokenval = dso_local global float 0.000000e+00, align 4
@PreviousLookahead = dso_local global i32 0, align 4
@PreviousTokenval = dso_local global i32 0, align 4
@PreviousFtokenval = dso_local global float 0.000000e+00, align 4
@Scope = dso_local global i32 0, align 4
@ReturnLabel = dso_local global i32 0, align 4
@CallReturnAddr = dso_local global i32 0, align 4
@FuncNameIndex = dso_local global i32 0, align 4
@ArrayParsed = dso_local global i32 0, align 4
@GlobalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@LocalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* @ErrorFlag, align 4
  %3 = load i32, i32* @lineno, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %3, i8* noundef %4)
  %6 = load i32, i32* @lookahead, align 4
  %7 = icmp eq i32 %6, 260
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %33, %9
  %12 = load i32, i32* @lookahead, align 4
  %13 = icmp ne i32 %12, 59
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @lookahead, align 4
  %16 = icmp ne i32 %15, -1
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %34

19:                                               ; preds = %17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %21 = call i32 @getc(%struct._IO_FILE* noundef %20)
  store i32 %21, i32* @lookahead, align 4
  %22 = load i32, i32* @lookahead, align 4
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @lineno, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @lineno, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @lookahead, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @lookahead, align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %11, !llvm.loop !4

34:                                               ; preds = %17
  %35 = load i32, i32* @lookahead, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 260, i32* @lookahead, align 4
  br label %41

38:                                               ; preds = %34
  call void @match(i32 noundef 59)
  br label %39

39:                                               ; preds = %38
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %37, %8
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local void @match(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
