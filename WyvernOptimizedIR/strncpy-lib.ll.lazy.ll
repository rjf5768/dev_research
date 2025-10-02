; ModuleID = './strncpy-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @strncpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %12, %3
  %.02 = phi i64 [ %2, %3 ], [ %15, %12 ]
  %.01 = phi i8* [ %1, %3 ], [ %14, %12 ]
  %.0 = phi i8* [ %0, %3 ], [ %13, %12 ]
  %5 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp ne i64 %.02, 0
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i1 [ false, %4 ], [ %7, %6 ]
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load i8, i8* %.01, align 1
  store i8 %11, i8* %.0, align 1
  br label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %.0, i64 1
  %14 = getelementptr inbounds i8, i8* %.01, i64 1
  %15 = add i64 %.02, -1
  br label %4, !llvm.loop !4

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %18, %16
  %.13 = phi i64 [ %.02, %16 ], [ %19, %18 ]
  %.1 = phi i8* [ %.0, %16 ], [ %20, %18 ]
  %.not4 = icmp eq i64 %.13, 0
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %17
  %19 = add i64 %.13, -1
  %20 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %.1, align 1
  br label %17, !llvm.loop !6

21:                                               ; preds = %17
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
