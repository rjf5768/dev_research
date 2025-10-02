; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getNextCommandCode.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getNextCommandCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getNextCommandCode.name = internal global [19 x i8] c"getNextCommandCode\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getNextCommandCode.c\00", align 1
@__PRETTY_FUNCTION__.getNextCommandCode = private unnamed_addr constant [46 x i8] c"Int getNextCommandCode(FILE *, CommandType *)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"commandCode\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown command code\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"improper format - code must be an integer\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getNextCommandCode(%struct._IO_FILE* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.getNextCommandCode, i64 0, i64 0)) #3
  unreachable

11:                                               ; preds = %9
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.getNextCommandCode, i64 0, i64 0)) #3
  unreachable

16:                                               ; preds = %14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = call i64 @getInt(%struct._IO_FILE* noundef %17, i64* noundef %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  store i32 0, i32* %25, align 4
  store i64 0, i64* %5, align 8
  br label %46

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  store i32 1, i32* %30, align 4
  store i64 0, i64* %5, align 8
  br label %45

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  store i32 2, i32* %35, align 4
  store i64 0, i64* %5, align 8
  br label %44

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  store i32 3, i32* %40, align 4
  store i64 0, i64* %5, align 8
  br label %43

41:                                               ; preds = %36
  call void @errorMessage(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 noundef signext 1)
  %42 = load i32*, i32** %4, align 8
  store i32 5, i32* %42, align 4
  store i64 2, i64* %5, align 8
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %24
  br label %65

47:                                               ; preds = %16
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  store i32 4, i32* %51, align 4
  store i64 0, i64* %5, align 8
  br label %64

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %53, 2
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  call void @errorMessage(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 noundef signext 1)
  %56 = load i32*, i32** %4, align 8
  store i32 5, i32* %56, align 4
  store i64 2, i64* %5, align 8
  br label %63

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @errorMessage(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 noundef signext 1)
  %61 = load i32*, i32** %4, align 8
  store i32 5, i32* %61, align 4
  store i64 2, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i64, i64* %5, align 8
  ret i64 %66
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
