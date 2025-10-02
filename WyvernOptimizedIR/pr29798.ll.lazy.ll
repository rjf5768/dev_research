; ModuleID = './pr29798.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr29798.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %.03 = phi double [ 0.000000e+00, %0 ], [ %.1, %11 ]
  %.02 = phi double [ undef, %0 ], [ %4, %11 ]
  %.01 = phi i32 [ 1, %0 ], [ %13, %11 ]
  %.0 = phi double [ 1.000000e+00, %0 ], [ %12, %11 ]
  %2 = icmp ult i32 %.01, 3
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = fmul double %.0, %.0
  %.not = icmp eq i32 %.01, 1
  br i1 %.not, label %7, label %5

5:                                                ; preds = %3
  %6 = fdiv double %4, %.02
  br label %7

7:                                                ; preds = %5, %3
  %.1 = phi double [ %6, %5 ], [ %.03, %3 ]
  %8 = fcmp oeq double %.1, 1.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @abort() #2
  unreachable

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10
  %12 = fmul double %.0, 5.000000e-01
  %13 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !4

14:                                               ; preds = %1
  ret i32 0
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
