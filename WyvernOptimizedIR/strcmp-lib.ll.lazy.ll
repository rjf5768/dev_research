; ModuleID = './strcmp-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcmp-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @strcmp(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.02 = phi i8* [ %1, %2 ], [ %13, %11 ]
  %.01 = phi i8* [ %0, %2 ], [ %12, %11 ]
  %4 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  %6 = load i8, i8* %.01, align 1
  %7 = load i8, i8* %.02, align 1
  %8 = icmp eq i8 %6, %7
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i1 [ false, %3 ], [ %8, %5 ]
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  %13 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %3, !llvm.loop !4

14:                                               ; preds = %9
  %15 = load i8, i8* %.01, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8, i8* %.02, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %14
  %21 = load i8, i8* %.01, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %.02, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %22, %24
  br label %32

26:                                               ; preds = %17
  %27 = load i8, i8* %.01, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %.02, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %28, %30
  br label %32

32:                                               ; preds = %26, %20
  %.0 = phi i32 [ %25, %20 ], [ %31, %26 ]
  ret i32 %.0
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
