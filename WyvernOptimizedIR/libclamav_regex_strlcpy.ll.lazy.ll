; ModuleID = './libclamav_regex_strlcpy.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_regex_strlcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @cli_strlcpy(i8* nocapture noundef writeonly %0, i8* noundef %1, i64 noundef %2) #0 {
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %13, %4
  %.03 = phi i8* [ %0, %4 ], [ %10, %13 ]
  %.01 = phi i8* [ %1, %4 ], [ %8, %13 ]
  %.0 = phi i64 [ %2, %4 ], [ %6, %13 ]
  %6 = add i64 %.0, -1
  %.not14 = icmp eq i64 %6, 0
  br i1 %.not14, label %.loopexit, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %.01, i64 1
  %9 = load i8, i8* %.01, align 1
  %10 = getelementptr inbounds i8, i8* %.03, i64 1
  store i8 %9, i8* %.03, align 1
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %14

13:                                               ; preds = %7
  br label %5, !llvm.loop !4

.loopexit:                                        ; preds = %5
  br label %14

14:                                               ; preds = %.loopexit, %12
  %.14 = phi i8* [ %10, %12 ], [ %.03, %.loopexit ]
  %.12 = phi i8* [ %8, %12 ], [ %.01, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %3
  %.25 = phi i8* [ %.14, %14 ], [ %0, %3 ]
  %.2 = phi i8* [ %.12, %14 ], [ %1, %3 ]
  %.1 = phi i64 [ %6, %14 ], [ %2, %3 ]
  %16 = icmp eq i64 %.1, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %19, label %18

18:                                               ; preds = %17
  store i8 0, i8* %.25, align 1
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %23, %19
  %.3 = phi i8* [ %.2, %19 ], [ %21, %23 ]
  %21 = getelementptr inbounds i8, i8* %.3, i64 1
  %22 = load i8, i8* %.3, align 1
  %.not13 = icmp eq i8 %22, 0
  br i1 %.not13, label %24, label %23

23:                                               ; preds = %20
  br label %20, !llvm.loop !6

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %15
  %.4 = phi i8* [ %21, %24 ], [ %.2, %15 ]
  %26 = ptrtoint i8* %.4 to i64
  %27 = ptrtoint i8* %1 to i64
  %28 = xor i64 %27, -1
  %29 = add i64 %28, %26
  ret i64 %29
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
