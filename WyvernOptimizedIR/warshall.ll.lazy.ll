; ModuleID = './warshall.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/warshall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @TC(i32* noundef %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, 31
  %4 = sdiv i32 %3, 32
  %5 = mul nsw i32 %4, %1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  br label %8

8:                                                ; preds = %39, %2
  %.03 = phi i32 [ 1, %2 ], [ %.14, %39 ]
  %.01 = phi i32* [ %0, %2 ], [ %.1, %39 ]
  %.0 = phi i32* [ %0, %2 ], [ %41, %39 ]
  %9 = icmp ult i32* %.0, %7
  br i1 %9, label %10, label %42

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %31, %10
  %.05 = phi i32* [ %0, %10 ], [ %.2, %31 ]
  %.02 = phi i32* [ %.01, %10 ], [ %33, %31 ]
  %12 = icmp ult i32* %.05, %7
  br i1 %12, label %13, label %34

13:                                               ; preds = %11
  %14 = load i32, i32* %.02, align 4
  %15 = and i32 %14, %.03
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %28, label %16

16:                                               ; preds = %13
  %17 = sext i32 %4 to i64
  %18 = getelementptr inbounds i32, i32* %.05, i64 %17
  br label %19

19:                                               ; preds = %21, %16
  %.07 = phi i32* [ %.0, %16 ], [ %22, %21 ]
  %.16 = phi i32* [ %.05, %16 ], [ %24, %21 ]
  %20 = icmp ult i32* %.16, %18
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = getelementptr inbounds i32, i32* %.07, i64 1
  %23 = load i32, i32* %.07, align 4
  %24 = getelementptr inbounds i32, i32* %.16, i64 1
  %25 = load i32, i32* %.16, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %.16, align 4
  br label %19, !llvm.loop !4

27:                                               ; preds = %19
  br label %31

28:                                               ; preds = %13
  %29 = sext i32 %4 to i64
  %30 = getelementptr inbounds i32, i32* %.05, i64 %29
  br label %31

31:                                               ; preds = %28, %27
  %.2 = phi i32* [ %.16, %27 ], [ %30, %28 ]
  %32 = sext i32 %4 to i64
  %33 = getelementptr inbounds i32, i32* %.02, i64 %32
  br label %11, !llvm.loop !6

34:                                               ; preds = %11
  %35 = shl i32 %.03, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds i32, i32* %.01, i64 1
  br label %39

39:                                               ; preds = %37, %34
  %.14 = phi i32 [ 1, %37 ], [ %35, %34 ]
  %.1 = phi i32* [ %38, %37 ], [ %.01, %34 ]
  %40 = sext i32 %4 to i64
  %41 = getelementptr inbounds i32, i32* %.0, i64 %40
  br label %8, !llvm.loop !7

42:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @RTC(i32* noundef %0, i32 noundef %1) #0 {
  call void @TC(i32* noundef %0, i32 noundef %1)
  %3 = add nsw i32 %1, 31
  %4 = sdiv i32 %3, 32
  %5 = mul nsw i32 %4, %1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  br label %8

8:                                                ; preds = %17, %2
  %.01 = phi i32 [ 1, %2 ], [ %.12, %17 ]
  %.0 = phi i32* [ %0, %2 ], [ %19, %17 ]
  %9 = icmp ult i32* %.0, %7
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = load i32, i32* %.0, align 4
  %12 = or i32 %11, %.01
  store i32 %12, i32* %.0, align 4
  %13 = shl i32 %.01, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds i32, i32* %.0, i64 1
  br label %17

17:                                               ; preds = %15, %10
  %.12 = phi i32 [ 1, %15 ], [ %13, %10 ]
  %.1 = phi i32* [ %16, %15 ], [ %.0, %10 ]
  %18 = sext i32 %4 to i64
  %19 = getelementptr inbounds i32, i32* %.1, i64 %18
  br label %8, !llvm.loop !8

20:                                               ; preds = %8
  ret void
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
