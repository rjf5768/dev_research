; ModuleID = './getInitCommand.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInitCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getInitCommand.name = internal global [15 x i8] c"getInitCommand\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInitCommand.c\00", align 1
@__PRETTY_FUNCTION__.getInitCommand = private unnamed_addr constant [34 x i8] c"Int getInitCommand(FILE *, Int *)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid fan specified\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"improper format - fan must be an integer\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getInitCommand(%struct._IO_FILE* noundef %0, i64* noundef %1) #0 {
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.getInitCommand, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not1 = icmp eq i64* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.getInitCommand, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = call i64 @getInt(%struct._IO_FILE* noundef nonnull %0, i64* noundef nonnull %1) #4
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* %1, align 8
  %13 = icmp slt i64 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @errorMessage(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %14
  %.0 = phi i64 [ 3, %14 ], [ 0, %15 ]
  br label %29

17:                                               ; preds = %8
  %18 = icmp eq i64 %9, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %28

20:                                               ; preds = %17
  %21 = icmp eq i64 %9, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @errorMessage(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %27

23:                                               ; preds = %20
  %24 = icmp eq i64 %9, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  call void @errorMessage(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %26

26:                                               ; preds = %25, %23
  %.1 = phi i64 [ 1, %25 ], [ %9, %23 ]
  br label %27

27:                                               ; preds = %26, %22
  %.2 = phi i64 [ 3, %22 ], [ %.1, %26 ]
  br label %28

28:                                               ; preds = %27, %19
  %.3 = phi i64 [ 2, %19 ], [ %.2, %27 ]
  br label %29

29:                                               ; preds = %28, %16
  %.4 = phi i64 [ %.0, %16 ], [ %.3, %28 ]
  ret i64 %.4

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getInt(%struct._IO_FILE* noundef, i64* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
