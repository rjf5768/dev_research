; ModuleID = './strncat-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncat-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @strncat(i8* noundef returned %0, i8* nocapture noundef readonly %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.01 = phi i8* [ %0, %3 ], [ %7, %6 ]
  %5 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %4, !llvm.loop !4

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %14, %8
  %.not8 = phi i1 [ false, %14 ], [ true, %8 ]
  %.03 = phi i64 [ %17, %14 ], [ %2, %8 ]
  %.02 = phi i8* [ %16, %14 ], [ %1, %8 ]
  %.1 = phi i8* [ %15, %14 ], [ %.01, %8 ]
  %.not7 = icmp eq i64 %.03, 0
  br i1 %.not7, label %18, label %10

10:                                               ; preds = %9
  %11 = load i8, i8* %.02, align 1
  store i8 %11, i8* %.1, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %.1, i64 1
  %16 = getelementptr inbounds i8, i8* %.02, i64 1
  %17 = add i64 %.03, -1
  br label %9, !llvm.loop !6

18:                                               ; preds = %9
  br i1 %.not8, label %20, label %19

19:                                               ; preds = %18
  store i8 0, i8* %.1, align 1
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %13
  ret i8* %0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
