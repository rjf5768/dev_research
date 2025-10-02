; ModuleID = './20061101-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20061101-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tar(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 36863
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #2
  unreachable

3:                                                ; preds = %1
  ret i32 -1
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bug(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %9, %2
  %.01 = phi i32 [ 0, %2 ], [ %11, %9 ]
  %.0 = phi i32 [ 0, %2 ], [ %.1, %9 ]
  %.not = icmp eq i32 %.01, -1
  br i1 %.not, label %12, label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  %6 = add nsw i32 %0, -1
  %.not2 = icmp slt i32 %.0, %6
  br i1 %.not2, label %9, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %0, -1
  br label %9

9:                                                ; preds = %7, %4
  %.1 = phi i32 [ %8, %7 ], [ %5, %4 ]
  %10 = mul nsw i32 %.1, %1
  %11 = call i32 @tar(i32 noundef %10)
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @bug(i32 noundef 5, i32 noundef 36863)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
