; ModuleID = './inf-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/inf-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
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
  br i1 false, label %13, label %14

13:                                               ; preds = %12
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  br i1 false, label %15, label %16

15:                                               ; preds = %14
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br i1 false, label %17, label %18

17:                                               ; preds = %16
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %17, %15, %13, %11, %9, %7, %5, %3, %1
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
