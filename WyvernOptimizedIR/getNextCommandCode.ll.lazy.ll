; ModuleID = './getNextCommandCode.ll'
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
define dso_local i64 @getNextCommandCode(%struct._IO_FILE* noundef %0, i32* noundef writeonly %1) #0 {
  %3 = alloca i64, align 8
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.getNextCommandCode, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %.not1 = icmp eq i32* %1, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.getNextCommandCode, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %10 = call i64 @getInt(%struct._IO_FILE* noundef nonnull %0, i64* noundef nonnull %3) #4
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %32

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %31

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @errorMessage(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %29

29:                                               ; preds = %28, %27
  %storemerge = phi i32 [ 5, %28 ], [ 3, %27 ]
  %.0 = phi i64 [ 2, %28 ], [ 0, %27 ]
  br label %30

30:                                               ; preds = %29, %23
  %storemerge2 = phi i32 [ %storemerge, %29 ], [ 2, %23 ]
  %.1 = phi i64 [ %.0, %29 ], [ 0, %23 ]
  br label %31

31:                                               ; preds = %30, %19
  %storemerge3 = phi i32 [ %storemerge2, %30 ], [ 1, %19 ]
  %.2 = phi i64 [ %.1, %30 ], [ 0, %19 ]
  br label %32

32:                                               ; preds = %31, %15
  %storemerge4 = phi i32 [ %storemerge3, %31 ], [ 0, %15 ]
  %.3 = phi i64 [ %.2, %31 ], [ 0, %15 ]
  store i32 %storemerge4, i32* %1, align 4
  br label %45

33:                                               ; preds = %9
  %34 = icmp eq i64 %10, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i32 4, i32* %1, align 4
  br label %44

36:                                               ; preds = %33
  %37 = icmp eq i64 %10, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  call void @errorMessage(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 noundef signext 1) #4
  store i32 5, i32* %1, align 4
  br label %43

39:                                               ; preds = %36
  %40 = icmp eq i64 %10, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  call void @errorMessage(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 noundef signext 1) #4
  store i32 5, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %39
  %.4 = phi i64 [ 2, %41 ], [ %10, %39 ]
  br label %43

43:                                               ; preds = %42, %38
  %.5 = phi i64 [ 2, %38 ], [ %.4, %42 ]
  br label %44

44:                                               ; preds = %43, %35
  %.6 = phi i64 [ 0, %35 ], [ %.5, %43 ]
  br label %45

45:                                               ; preds = %44, %32
  %.7 = phi i64 [ %.3, %32 ], [ %.6, %44 ]
  ret i64 %.7

UnifiedUnreachableBlock:                          ; preds = %8, %5
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
