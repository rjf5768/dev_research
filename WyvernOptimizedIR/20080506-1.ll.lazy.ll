; ModuleID = './20080506-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080506-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %3

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %1
  br i1 false, label %4, label %8

4:                                                ; preds = %3
  br i1 false, label %5, label %6

5:                                                ; preds = %4
  br label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %5
  br label %9

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %7
  br i1 true, label %11, label %10

10:                                               ; preds = %9
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  br i1 false, label %12, label %13

12:                                               ; preds = %11
  br label %14

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %12
  br i1 true, label %15, label %20

15:                                               ; preds = %14
  br i1 false, label %16, label %17

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i32 [ -1, %16 ], [ 0, %17 ]
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ -1, %20 ]
  %.not1 = icmp eq i32 %22, 0
  br i1 %.not1, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %23, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
