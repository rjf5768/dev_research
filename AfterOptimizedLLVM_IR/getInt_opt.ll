; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getInt.c\00", align 1
@__PRETTY_FUNCTION__.getInt = private unnamed_addr constant [26 x i8] c"Int getInt(FILE *, Int *)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getInt(%struct._IO_FILE* noundef %0, i64* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.getInt, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  %13 = load i64*, i64** %4, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.getInt, i64 0, i64 0)) #6
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = call i8* @getString(%struct._IO_FILE* noundef %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strtol(i8* noundef %23, i8** noundef %6, i32 noundef 0) #7
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strlen(i8* noundef %30) #8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = call i32* @__errno_location() #9
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64*, i64** %4, align 8
  store i64 -2147483647, i64* %38, align 8
  store i64 3, i64* %7, align 8
  br label %54

39:                                               ; preds = %33, %29, %22
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, -2147483647
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64*, i64** %4, align 8
  store i64 -2147483647, i64* %44, align 8
  store i64 2, i64* %7, align 8
  br label %53

45:                                               ; preds = %39
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 2147483647
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64*, i64** %4, align 8
  store i64 2147483647, i64* %50, align 8
  store i64 2, i64* %7, align 8
  br label %52

51:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %51, %49
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %37
  br label %57

55:                                               ; preds = %17
  %56 = load i64*, i64** %4, align 8
  store i64 -2147483647, i64* %56, align 8
  store i64 1, i64* %7, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i64, i64* %7, align 8
  ret i64 %58
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i8* @getString(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
