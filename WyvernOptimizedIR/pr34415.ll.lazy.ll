; ModuleID = './pr34415.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34415.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Bbb:\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @foo(i8* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %26, %1
  %.03 = phi i32 [ 1, %1 ], [ %28, %26 ]
  %.01 = phi i8* [ undef, %1 ], [ %.0, %26 ]
  %.0 = phi i8* [ %0, %1 ], [ %27, %26 ]
  %3 = load i8, i8* %.0, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp sgt i8 %3, 96
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = icmp slt i8 %3, 123
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = add nsw i32 %4, -32
  br label %11

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ %4, %10 ]
  %13 = icmp eq i32 %12, 66
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %26

15:                                               ; preds = %11
  %16 = icmp eq i32 %12, 65
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %20, %17
  %.1 = phi i8* [ %.0, %17 ], [ %19, %20 ]
  %19 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %20

20:                                               ; preds = %18
  %21 = load i8, i8* %19, align 1
  %22 = icmp eq i8 %21, 43
  br i1 %22, label %18, label %23, !llvm.loop !4

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25, %14
  %.2 = phi i8* [ %.0, %14 ], [ %19, %25 ]
  %27 = getelementptr inbounds i8, i8* %.2, i64 1
  %28 = add nuw nsw i32 %.03, 1
  br label %2

29:                                               ; preds = %24
  %30 = icmp ugt i32 %.03, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = load i8, i8* %.0, align 1
  %33 = icmp eq i8 %32, 58
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %31, %29
  %.3 = phi i8* [ %.01, %34 ], [ %.0, %31 ], [ %.0, %29 ]
  ret i8* %.3
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @main() #0 {
  %1 = call i8* @foo(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %2 = icmp ne i8* %1, getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 2)
  %3 = zext i1 %2 to i32
  ret i32 %3
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
