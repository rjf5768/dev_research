; ModuleID = './strstr-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strstr-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @strstr(i8* noundef readonly %0, i8* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %25, %2
  %.01 = phi i8* [ %0, %2 ], [ %26, %25 ]
  %4 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %27, label %5

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %17, %5
  %.03 = phi i8* [ %.01, %5 ], [ %18, %17 ]
  %.02 = phi i8* [ %1, %5 ], [ %19, %17 ]
  %7 = load i8, i8* %.02, align 1
  %.not7 = icmp eq i8 %7, 0
  br i1 %.not7, label %11, label %8

8:                                                ; preds = %6
  %9 = load i8, i8* %.03, align 1
  %10 = icmp ne i8 %9, 0
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i1 [ false, %6 ], [ %10, %8 ]
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %11
  %14 = load i8, i8* %.02, align 1
  %15 = load i8, i8* %.03, align 1
  %.not8 = icmp eq i8 %14, %15
  br i1 %.not8, label %17, label %16

16:                                               ; preds = %13
  br label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, i8* %.03, i64 1
  %19 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %6, !llvm.loop !4

.loopexit:                                        ; preds = %11
  br label %20

20:                                               ; preds = %.loopexit, %16
  %21 = load i8, i8* %.02, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %28

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %3, !llvm.loop !6

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %23
  %.0 = phi i8* [ %.01, %23 ], [ null, %27 ]
  ret i8* %.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
