; ModuleID = './20000605-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000605-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %7, %0
  %.01 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %.0 = phi i32 [ 0, %0 ], [ %2, %7 ]
  %2 = add nuw nsw i32 %.0, 1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %9

4:                                                ; preds = %1
  %5 = icmp ugt i32 %.01, 4
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.01, 1
  br label %1

9:                                                ; preds = %3
  ret i32 0

10:                                               ; preds = %6
  call void @abort() #2
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
