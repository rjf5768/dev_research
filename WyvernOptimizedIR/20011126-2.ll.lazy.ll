; ModuleID = './20011126-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011126-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aab\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %3 = call i8* @test(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %2)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal nonnull i8* @test(i8* noundef readonly %0, i8* nocapture noundef writeonly %1) #0 {
  br label %3

3:                                                ; preds = %23, %2
  %.01 = phi i8* [ %1, %2 ], [ %.23, %23 ]
  %.0 = phi i8* [ %0, %2 ], [ %.2, %23 ]
  %4 = load i8, i8* %.0, align 1
  %5 = icmp eq i8 %4, 97
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %10, %6
  %.0.pn = phi i8* [ %.0, %6 ], [ %.04, %10 ]
  %.04 = getelementptr inbounds i8, i8* %.0.pn, i64 1
  %8 = load i8, i8* %.04, align 1
  %9 = icmp eq i8 %8, 120
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %7, !llvm.loop !4

11:                                               ; preds = %7
  %12 = load i8, i8* %.04, align 1
  %13 = icmp eq i8 %12, 98
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  ret i8* %.04

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %18, %15
  %.12 = phi i8* [ %.01, %15 ], [ %21, %18 ]
  %.1 = phi i8* [ %.0, %15 ], [ %19, %18 ]
  %17 = icmp ult i8* %.1, %.04
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %.1, i64 1
  %20 = load i8, i8* %.1, align 1
  %21 = getelementptr inbounds i8, i8* %.12, i64 1
  store i8 %20, i8* %.12, align 1
  br label %16, !llvm.loop !6

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %3
  %.23 = phi i8* [ %.12, %22 ], [ %.01, %3 ]
  %.2 = phi i8* [ %.1, %22 ], [ %.0, %3 ]
  br label %3
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
