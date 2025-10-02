; ModuleID = './pr24716.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr24716.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Link = dso_local global [1 x i32] [i32 -1], align 4
@W = dso_local global [1 x i32] [i32 2], align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %52, %2
  %.06 = phi i32 [ 0, %2 ], [ 1, %52 ]
  %.03 = phi i32 [ 0, %2 ], [ %.9, %52 ]
  %.01 = phi i32 [ %1, %2 ], [ %.12, %52 ]
  %.0 = phi i32 [ %0, %2 ], [ %42, %52 ]
  %4 = icmp sgt i32 %.03, 2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %9, %5
  %.17 = phi i32 [ %.06, %5 ], [ %7, %9 ]
  %.14 = phi i32 [ %.03, %5 ], [ %8, %9 ]
  %7 = add nsw i32 %.17, -1
  %8 = add nsw i32 %.14, 1
  br label %9

9:                                                ; preds = %6
  %10 = icmp sgt i32 %.17, 3
  br i1 %10, label %6, label %11, !llvm.loop !4

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %3
  %.28 = phi i32 [ %7, %11 ], [ %.06, %3 ]
  %.25 = phi i32 [ %8, %11 ], [ %.03, %3 ]
  %13 = icmp eq i32 %.28, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %53

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %22, %15
  %.3 = phi i32 [ %.25, %15 ], [ %.4, %22 ]
  %17 = icmp sgt i32 %.3, %.01
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = icmp eq i32 %.28, %.01
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = add nsw i32 %.3, 1
  br label %22

22:                                               ; preds = %20, %18
  %.4 = phi i32 [ %21, %20 ], [ %.3, %18 ]
  br label %16, !llvm.loop !6

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %36, %23
  %.5 = phi i32 [ %.3, %23 ], [ %.7, %36 ]
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* @W, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %33, %24
  %.09 = phi i32 [ %27, %24 ], [ %.110, %33 ]
  %.6 = phi i32 [ %.5, %24 ], [ %.7, %33 ]
  %.not = icmp eq i32 %.09, 0
  br i1 %.not, label %32, label %29

29:                                               ; preds = %28
  %30 = sext i32 %.0 to i64
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* @W, i64 0, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %28
  %.110 = phi i32 [ 0, %29 ], [ %.09, %28 ]
  %.7 = phi i32 [ 1, %29 ], [ %.6, %28 ]
  br label %33

33:                                               ; preds = %32
  %34 = icmp slt i32 %.01, 1
  br i1 %34, label %28, label %35, !llvm.loop !7

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = icmp sgt i32 %.0, 0
  br i1 %37, label %24, label %38, !llvm.loop !8

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %51, %38
  %.8 = phi i32 [ %.7, %38 ], [ %.9, %51 ]
  %.1 = phi i32 [ %.0, %38 ], [ %42, %51 ]
  %40 = sext i32 %.1 to i64
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* @Link, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %49, %39
  %.9 = phi i32 [ %.8, %39 ], [ %.10, %49 ]
  %.12 = phi i32 [ 0, %39 ], [ %.2, %49 ]
  %44 = icmp slt i32 %.12, %.28
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %.not14 = icmp eq i32 %42, -1
  br i1 %.not14, label %49, label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %.9, 1
  %48 = add nsw i32 %.12, 1
  br label %49

49:                                               ; preds = %46, %45
  %.10 = phi i32 [ %47, %46 ], [ %.9, %45 ]
  %.2 = phi i32 [ %48, %46 ], [ %.12, %45 ]
  br label %43, !llvm.loop !9

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %.not13 = icmp eq i32 %42, -1
  br i1 %.not13, label %52, label %39, !llvm.loop !10

52:                                               ; preds = %51
  br label %3

53:                                               ; preds = %14
  ret i32 %.25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f(i32 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
