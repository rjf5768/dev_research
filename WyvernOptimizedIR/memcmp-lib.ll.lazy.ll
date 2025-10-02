; ModuleID = './memcmp-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memcmp-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @memcmp(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %11, %3
  %.03 = phi i64 [ %2, %3 ], [ %14, %11 ]
  %.02 = phi i8* [ %0, %3 ], [ %12, %11 ]
  %.01 = phi i8* [ %1, %3 ], [ %13, %11 ]
  %.not = icmp eq i64 %.03, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = load i8, i8* %.02, align 1
  %7 = load i8, i8* %.01, align 1
  %8 = icmp eq i8 %6, %7
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i1 [ false, %4 ], [ %8, %5 ]
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, i8* %.02, i64 1
  %13 = getelementptr inbounds i8, i8* %.01, i64 1
  %14 = add i64 %.03, -1
  br label %4, !llvm.loop !4

15:                                               ; preds = %9
  %16 = icmp eq i64 %.03, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %24

18:                                               ; preds = %15
  %19 = load i8, i8* %.02, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %.01, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %20, %22
  br label %24

24:                                               ; preds = %18, %17
  %.0 = phi i32 [ 0, %17 ], [ %23, %18 ]
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
