; ModuleID = './20041213-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041213-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %13, %1
  %.02 = phi i32 [ 0, %1 ], [ %.13, %13 ]
  %.01 = phi i32 [ 1, %1 ], [ %.1, %13 ]
  %.0 = phi i32 [ %0, %1 ], [ %14, %13 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %15, label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %7, %3
  %.13 = phi i32 [ %.02, %3 ], [ %9, %7 ]
  %.1 = phi i32 [ %.01, %3 ], [ %8, %7 ]
  %5 = icmp slt i32 %.13, %.01
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %.1, 1
  %9 = add nsw i32 %.13, 1
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  %.not4 = icmp eq i32 %.13, %.01
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %10
  call void @abort() #3
  unreachable

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !6

15:                                               ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @foo(i32 noundef 2)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
