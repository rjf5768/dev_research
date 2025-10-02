; ModuleID = './20031011-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031011-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br i1 true, label %1, label %2

1:                                                ; preds = %0
  br label %3

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %1
  br i1 false, label %4, label %5

4:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %6
  br i1 false, label %9, label %10

9:                                                ; preds = %8
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br i1 false, label %11, label %12

11:                                               ; preds = %10
  br label %13

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %11
  br i1 false, label %14, label %15

14:                                               ; preds = %13
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  br i1 true, label %16, label %17

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %16
  br i1 false, label %19, label %20

19:                                               ; preds = %18
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %18
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %19, %14, %9, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
