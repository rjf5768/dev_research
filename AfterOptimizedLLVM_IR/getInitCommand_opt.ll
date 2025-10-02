; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInitCommand.c'
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
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = icmp ne %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.getInitCommand, i64 0, i64 0)) #3
  unreachable

10:                                               ; preds = %8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.getInitCommand, i64 0, i64 0)) #3
  unreachable

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = call i64 @getInt(%struct._IO_FILE* noundef %16, i64* noundef %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @errorMessage(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 3, i64* %5, align 8
  br label %27

26:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %43

28:                                               ; preds = %15
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %5, align 8
  br label %42

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @errorMessage(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 3, i64* %5, align 8
  br label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @errorMessage(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %5, align 8
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getInt(%struct._IO_FILE* noundef, i64* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
