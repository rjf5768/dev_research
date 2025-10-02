; ModuleID = './strrchr-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strrchr-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @strrchr(i8* noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %.01 = phi i64 [ 0, %2 ], [ %7, %6 ]
  %4 = getelementptr inbounds i8, i8* %0, i64 %.01
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %3
  %7 = add i64 %.01, 1
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %17, %8
  %.1 = phi i64 [ %.01, %8 ], [ %18, %17 ]
  %10 = getelementptr inbounds i8, i8* %0, i64 %.1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %0, i64 %.1
  br label %20

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = add i64 %.1, -1
  %.not3 = icmp eq i64 %.1, 0
  br i1 %.not3, label %19, label %9, !llvm.loop !6

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %14
  %.0 = phi i8* [ %15, %14 ], [ null, %19 ]
  ret i8* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @rindex(i8* noundef readonly %0, i32 noundef %1) #0 {
  %3 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef %1)
  ret i8* %3
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
