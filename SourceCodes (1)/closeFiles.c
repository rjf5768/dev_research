; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/closeFiles.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/closeFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@closeFiles.name = internal global [11 x i8] c"closeFiles\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"inputFile\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/closeFiles.c\00", align 1
@__PRETTY_FUNCTION__.closeFiles = private unnamed_addr constant [40 x i8] c"void closeFiles(FILE *, FILE *, FILE *)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"outputFile\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"metricFile\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"error closing input file\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"error closing output file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"error closing metric file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @closeFiles(%struct._IO_FILE* noundef %0, %struct._IO_FILE* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #3
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #3
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %19 = icmp ne %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #3
  unreachable

22:                                               ; preds = %20
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %24 = call i32 @fclose(%struct._IO_FILE* noundef %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 noundef signext 1)
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %31 = call i32 @fclose(%struct._IO_FILE* noundef %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 noundef signext 1)
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %38 = call i32 @fclose(%struct._IO_FILE* noundef %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 noundef signext 1)
  br label %43

43:                                               ; preds = %42, %36
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

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
