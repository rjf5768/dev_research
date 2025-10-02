; ModuleID = './strspn.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %UnifiedUnreachableBlock

2:                                                ; preds = %0
  br i1 false, label %3, label %4

3:                                                ; preds = %2
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  br i1 false, label %5, label %6

5:                                                ; preds = %4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br i1 false, label %7, label %8

7:                                                ; preds = %6
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  br i1 false, label %9, label %10

9:                                                ; preds = %8
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br i1 false, label %11, label %12

11:                                               ; preds = %10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  br i1 false, label %14, label %13

13:                                               ; preds = %12
  br i1 false, label %14, label %15

14:                                               ; preds = %13, %12
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  br i1 false, label %17, label %16

16:                                               ; preds = %15
  br i1 false, label %17, label %18

17:                                               ; preds = %16, %15
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  br i1 false, label %19, label %20

19:                                               ; preds = %18
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %18
  br i1 false, label %21, label %22

21:                                               ; preds = %20
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
  br i1 false, label %29, label %30

29:                                               ; preds = %28
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %29, %27, %24, %21, %19, %17, %14, %11, %9, %7, %5, %3, %1
  unreachable
}

declare dso_local i64 @strspn(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
