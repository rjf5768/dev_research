; ModuleID = './pr46909-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr46909-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  %.not1 = icmp eq i32 %0, 13
  br i1 %.not1, label %3, label %7

3:                                                ; preds = %2, %1
  %4 = icmp eq i32 %0, 5
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, 20
  br i1 %6, label %7, label %8

7:                                                ; preds = %5, %3, %2
  br label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %7
  %.0 = phi i32 [ 1, %7 ], [ -1, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %11, %0
  %.0 = phi i32 [ -10, %0 ], [ %12, %11 ]
  %2 = icmp slt i32 %.0, 30
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = call i32 @foo(i32 noundef %.0)
  %5 = icmp eq i32 %.0, 0
  %6 = select i1 %5, i32 -1, i32 1
  %7 = icmp eq i32 %.0, 13
  %.neg = select i1 %7, i32 -2, i32 0
  %8 = add nsw i32 %.neg, %6
  %.not = icmp eq i32 %4, %8
  br i1 %.not, label %10, label %9

9:                                                ; preds = %3
  call void @abort() #3
  unreachable

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10
  %12 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !4

13:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
