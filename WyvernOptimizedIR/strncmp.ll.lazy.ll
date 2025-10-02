; ModuleID = './strncmp.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ozz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rzz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  br i1 false, label %3, label %1

1:                                                ; preds = %0
  br i1 false, label %3, label %2

2:                                                ; preds = %1
  br i1 false, label %3, label %4

3:                                                ; preds = %2, %1, %0
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  br i1 false, label %6, label %5

5:                                                ; preds = %4
  br i1 false, label %6, label %7

6:                                                ; preds = %5, %4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br i1 false, label %9, label %8

8:                                                ; preds = %7
  br i1 false, label %9, label %10

9:                                                ; preds = %8, %7
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br i1 false, label %12, label %11

11:                                               ; preds = %10
  br i1 false, label %12, label %13

12:                                               ; preds = %11, %10
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br i1 false, label %15, label %14

14:                                               ; preds = %13
  br i1 false, label %15, label %16

15:                                               ; preds = %14, %13
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br i1 false, label %18, label %17

17:                                               ; preds = %16
  br i1 false, label %18, label %19

18:                                               ; preds = %17, %16
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  br i1 false, label %21, label %20

20:                                               ; preds = %19
  br i1 false, label %21, label %22

21:                                               ; preds = %20, %19
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %20
  br i1 false, label %24, label %23

23:                                               ; preds = %22
  br i1 false, label %24, label %25

24:                                               ; preds = %23, %22
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %23
  br i1 false, label %27, label %26

26:                                               ; preds = %25
  br i1 false, label %27, label %28

27:                                               ; preds = %26, %25
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br i1 false, label %31, label %29

29:                                               ; preds = %28
  br i1 false, label %31, label %30

30:                                               ; preds = %29
  br i1 false, label %31, label %32

31:                                               ; preds = %30, %29, %28
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %30
  ret void

UnifiedUnreachableBlock:                          ; preds = %31, %27, %24, %21, %18, %15, %12, %9, %6, %3
  unreachable
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
