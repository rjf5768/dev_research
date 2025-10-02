; ModuleID = './findcolr.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findcolr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @findcolor(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ %0, %2 ], [ %4, %13 ]
  %4 = add nsw i32 %.01, -1
  br label %5

5:                                                ; preds = %3
  %6 = sext i32 %4 to i64
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = icmp sgt i32 %.01, 1
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i1 [ false, %5 ], [ %12, %11 ]
  br i1 %14, label %3, label %15, !llvm.loop !4

15:                                               ; preds = %13
  %16 = sext i32 %4 to i64
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %16, i64 %17
  %19 = load i8, i8* %18, align 1
  br label %20

20:                                               ; preds = %30, %15
  %.1 = phi i32 [ %0, %15 ], [ %21, %30 ]
  %21 = add nsw i32 %.1, 1
  br label %22

22:                                               ; preds = %20
  %23 = sext i32 %21 to i64
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = icmp slt i32 %.1, 17
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i1 [ false, %22 ], [ %29, %28 ]
  br i1 %31, label %20, label %32, !llvm.loop !6

32:                                               ; preds = %30
  %33 = sext i32 %21 to i64
  %34 = sext i32 %1 to i64
  %35 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %.not = icmp eq i8 %19, 0
  br i1 %.not, label %43, label %37

37:                                               ; preds = %32
  %38 = icmp eq i8 %19, %36
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = icmp eq i8 %36, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39, %37
  br label %89

42:                                               ; preds = %39
  br label %89

43:                                               ; preds = %32
  %.not5 = icmp eq i8 %36, 0
  br i1 %.not5, label %45, label %44

44:                                               ; preds = %43
  br label %89

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %56, %45
  %.2 = phi i32 [ %1, %45 ], [ %47, %56 ]
  %47 = add nsw i32 %.2, -1
  br label %48

48:                                               ; preds = %46
  %49 = sext i32 %0 to i64
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = icmp sgt i32 %.2, 1
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi i1 [ false, %48 ], [ %55, %54 ]
  br i1 %57, label %46, label %58, !llvm.loop !7

58:                                               ; preds = %56
  %59 = sext i32 %0 to i64
  %60 = sext i32 %47 to i64
  %61 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %59, i64 %60
  %62 = load i8, i8* %61, align 1
  br label %63

63:                                               ; preds = %73, %58
  %.3 = phi i32 [ %1, %58 ], [ %64, %73 ]
  %64 = add nsw i32 %.3, 1
  br label %65

65:                                               ; preds = %63
  %66 = sext i32 %0 to i64
  %67 = sext i32 %64 to i64
  %68 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = icmp slt i32 %.3, 17
  br label %73

73:                                               ; preds = %71, %65
  %74 = phi i1 [ false, %65 ], [ %72, %71 ]
  br i1 %74, label %63, label %75, !llvm.loop !8

75:                                               ; preds = %73
  %76 = sext i32 %0 to i64
  %77 = sext i32 %64 to i64
  %78 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %.not6 = icmp eq i8 %62, 0
  br i1 %.not6, label %86, label %80

80:                                               ; preds = %75
  %81 = icmp eq i8 %62, %79
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = icmp eq i8 %79, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %82, %80
  br label %89

85:                                               ; preds = %82
  br label %89

86:                                               ; preds = %75
  %.not7 = icmp eq i8 %79, 0
  br i1 %.not7, label %88, label %87

87:                                               ; preds = %86
  br label %89

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88, %87, %85, %84, %44, %42, %41
  %.0.shrunk = phi i8 [ %19, %41 ], [ 0, %42 ], [ %36, %44 ], [ %62, %84 ], [ 0, %85 ], [ %79, %87 ], [ 0, %88 ]
  %.0 = zext i8 %.0.shrunk to i32
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
