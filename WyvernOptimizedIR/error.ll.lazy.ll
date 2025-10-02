; ModuleID = './error.ll'
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
@str = private unnamed_addr constant [24 x i8] c"\0A continuing parsing...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* noundef %0) #0 {
  store i32 1, i32* @ErrorFlag, align 4
  %2 = load i32, i32* @lineno, align 4
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i8* noundef %0) #3
  %4 = load i32, i32* @lookahead, align 4
  %5 = icmp eq i32 %4, 260
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %9

9:                                                ; preds = %27, %7
  %10 = load i32, i32* @lookahead, align 4
  %.not = icmp eq i32 %10, 59
  br i1 %.not, label %14, label %11

11:                                               ; preds = %9
  %12 = load i32, i32* @lookahead, align 4
  %13 = icmp ne i32 %12, -1
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %18 = call i32 @getc(%struct._IO_FILE* noundef %17) #3
  store i32 %18, i32* @lookahead, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @lineno, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @lineno, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @lookahead, align 4
  %.not1 = icmp eq i32 %24, -1
  br i1 %.not1, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* @lookahead, align 4
  %putchar = call i32 @putchar(i32 %26)
  br label %27

27:                                               ; preds = %25, %23
  br label %9, !llvm.loop !4

28:                                               ; preds = %14
  %29 = load i32, i32* @lookahead, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 260, i32* @lookahead, align 4
  br label %34

32:                                               ; preds = %28
  call void @match(i32 noundef 59) #3
  br label %33

33:                                               ; preds = %32
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %31, %6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local void @match(i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
