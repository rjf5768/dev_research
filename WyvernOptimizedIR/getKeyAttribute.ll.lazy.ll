; ModuleID = './getKeyAttribute.ll'
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
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.getKeyAttribute, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not1 = icmp eq float* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.getKeyAttribute, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = call i64 @getFloat(%struct._IO_FILE* noundef nonnull %0, float* noundef nonnull %1) #4
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %22

12:                                               ; preds = %8
  %13 = icmp eq i64 %9, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %21

15:                                               ; preds = %12
  %16 = icmp eq i64 %9, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = icmp eq i64 %9, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %17, %15
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %20

20:                                               ; preds = %19, %17
  %.0 = phi i64 [ 2, %19 ], [ %9, %17 ]
  br label %21

21:                                               ; preds = %20, %14
  %.1 = phi i64 [ 1, %14 ], [ %.0, %20 ]
  br label %22

22:                                               ; preds = %21, %11
  %.2 = phi i64 [ 0, %11 ], [ %.1, %21 ]
  ret i64 %.2

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getFloat(%struct._IO_FILE* noundef, float* noundef) #2

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
