; ModuleID = './sim_debug.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/sim_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c"usage:  run [-n] file\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Illegal command directive, '%s'. Ignoring.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"run: requires a file name.\0A\00", align 1
@SYM_TAB = external dso_local global %struct.SYMBOL_TABLE_ENTRY*, align 8
@MEMORY = external dso_local global i8*, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@TYPE_OUT_MODE = dso_local global [6 x i8] zeroinitializer, align 1
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1
@str = private unnamed_addr constant [27 x i8] c"run: requires a file name.\00", align 1
@str.1 = private unnamed_addr constant [22 x i8] c"usage:  run [-n] file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.1, i64 0, i64 0))
  br label %65

6:                                                ; preds = %2
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 45
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %8, %6
  %.0 = phi i32 [ %13, %8 ], [ undef, %6 ]
  br label %15

15:                                               ; preds = %45, %14
  %.03 = phi i32 [ 1, %14 ], [ %.14, %45 ]
  %.01 = phi i32 [ 1, %14 ], [ %.12, %45 ]
  %.1 = phi i32 [ %.0, %14 ], [ %.2, %45 ]
  %16 = icmp slt i32 %.01, %0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = icmp ne i32 %.1, 0
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i1 [ false, %15 ], [ %18, %17 ]
  br i1 %20, label %21, label %46

21:                                               ; preds = %19
  %22 = sext i32 %.01 to i64
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %24, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #4
  %.not6 = icmp eq i32 %25, 0
  br i1 %.not6, label %26, label %27

26:                                               ; preds = %21
  br label %32

27:                                               ; preds = %21
  %28 = sext i32 %.01 to i64
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef %30) #5
  br label %32

32:                                               ; preds = %27, %26
  %.14 = phi i32 [ %.03, %27 ], [ 0, %26 ]
  %33 = icmp slt i32 %.01, %0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = add nsw i32 %.01, 1
  br label %36

36:                                               ; preds = %34, %32
  %.12 = phi i32 [ %35, %34 ], [ %.01, %32 ]
  %37 = icmp slt i32 %.12, %0
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = sext i32 %.12 to i64
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 45
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %38, %36
  %.2 = phi i32 [ %44, %38 ], [ %.1, %36 ]
  br label %15, !llvm.loop !4

46:                                               ; preds = %19
  %.not = icmp slt i32 %.01, %0
  br i1 %.not, label %48, label %47

47:                                               ; preds = %46
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %46
  call void (%struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @INIT_SYM_TAB to void (%struct.SYMBOL_TABLE_ENTRY**, ...)*)(%struct.SYMBOL_TABLE_ENTRY** noundef nonnull @SYM_TAB) #5
  call void (i8**, ...) bitcast (void (...)* @CREATE_MEMORY to void (i8**, ...)*)(i8** noundef nonnull @MEMORY) #5
  %49 = sext i32 %.01 to i64
  %50 = getelementptr inbounds i8*, i8** %1, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call noalias %struct._IO_FILE* @fopen(i8* noundef %51, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #5
  %53 = icmp eq %struct._IO_FILE* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = sext i32 %.01 to i64
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* noundef %57) #5
  br label %64

59:                                               ; preds = %48
  call void (i32, i32*, %struct._IO_FILE*, ...) bitcast (void (...)* @LOAD to void (i32, i32*, %struct._IO_FILE*, ...)*)(i32 noundef %.03, i32* noundef nonnull %3, %struct._IO_FILE* noundef nonnull %52) #5
  %60 = load i32, i32* %3, align 4
  %.not5 = icmp eq i32 %60, 0
  br i1 %.not5, label %61, label %62

61:                                               ; preds = %59
  call void (i32, ...) bitcast (void (...)* @DEBUGGER to void (i32, ...)*)(i32 noundef %.03) #5
  br label %62

62:                                               ; preds = %61, %59
  %63 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %52) #5
  br label %64

64:                                               ; preds = %62, %54
  br label %65

65:                                               ; preds = %64, %5
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local void @INIT_SYM_TAB(...) #1

declare dso_local void @CREATE_MEMORY(...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local void @LOAD(...) #1

declare dso_local void @DEBUGGER(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
