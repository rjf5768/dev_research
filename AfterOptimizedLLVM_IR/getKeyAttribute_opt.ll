; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getKeyAttribute.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getKeyAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getKeyAttribute.name = internal global [16 x i8] c"getKeyAttribute\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getKeyAttribute.c\00", align 1
@__PRETTY_FUNCTION__.getKeyAttribute = private unnamed_addr constant [37 x i8] c"Int getKeyAttribute(FILE *, Float *)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getKeyAttribute(%struct._IO_FILE* noundef %0, float* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = icmp ne %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.getKeyAttribute, i64 0, i64 0)) #3
  unreachable

10:                                               ; preds = %8
  %11 = load float*, float** %4, align 8
  %12 = icmp ne float* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.getKeyAttribute, i64 0, i64 0)) #3
  unreachable

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = load float*, float** %4, align 8
  %18 = call i64 @getFloat(%struct._IO_FILE* noundef %16, float* noundef %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i64 0, i64* %5, align 8
  br label %35

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %5, align 8
  br label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %5, align 8
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getFloat(%struct._IO_FILE* noundef, float* noundef) #2

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
