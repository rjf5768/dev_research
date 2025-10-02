; ModuleID = './getInt.ll'
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
  %3 = alloca i8*, align 8
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.getInt, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %.not1 = icmp eq i64* %1, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.getInt, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %10 = call i8* @getString(%struct._IO_FILE* noundef nonnull %0) #7
  %.not2 = icmp eq i8* %10, null
  br i1 %.not2, label %33, label %11

11:                                               ; preds = %9
  %12 = call i64 @strtol(i8* noundef nonnull %10, i8** noundef nonnull %3, i32 noundef 0) #7
  store i64 %12, i64* %1, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %strlenfirst = load i8, i8* %15, align 1
  %.not3 = icmp eq i8 %strlenfirst, 0
  br i1 %.not3, label %21, label %16

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 34
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 -2147483647, i64* %1, align 8
  br label %32

21:                                               ; preds = %16, %14, %11
  %22 = load i64, i64* %1, align 8
  %23 = icmp slt i64 %22, -2147483647
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 -2147483647, i64* %1, align 8
  br label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %1, align 8
  %27 = icmp sgt i64 %26, 2147483647
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64 2147483647, i64* %1, align 8
  br label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %28
  %.0 = phi i64 [ 2, %28 ], [ 0, %29 ]
  br label %31

31:                                               ; preds = %30, %24
  %.1 = phi i64 [ 2, %24 ], [ %.0, %30 ]
  br label %32

32:                                               ; preds = %31, %20
  %.2 = phi i64 [ 3, %20 ], [ %.1, %31 ]
  br label %34

33:                                               ; preds = %9
  store i64 -2147483647, i64* %1, align 8
  br label %34

34:                                               ; preds = %33, %32
  %.3 = phi i64 [ %.2, %32 ], [ 1, %33 ]
  ret i64 %.3

UnifiedUnreachableBlock:                          ; preds = %8, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i8* @getString(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
