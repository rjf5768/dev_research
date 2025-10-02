; ModuleID = './dilateKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Dilate/dilateKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dilateKernel(i32 noundef %0, i32 noundef %1, [1024 x i32]* nocapture noundef readonly %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef %4) #0 {
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %50, %5
  %.05 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %9 = icmp slt i32 %.05, %0
  br i1 %9, label %10, label %52

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %47, %10
  %.06 = phi i32 [ 0, %10 ], [ %48, %47 ]
  %12 = icmp slt i32 %.06, %1
  br i1 %12, label %13, label %49

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %39, %13
  %.07 = phi i32 [ 0, %13 ], [ %.18, %39 ]
  %.04 = phi i32 [ -1, %13 ], [ %40, %39 ]
  %15 = icmp slt i32 %.04, 2
  br i1 %15, label %16, label %41

16:                                               ; preds = %14
  %17 = add nsw i32 %.06, %.04
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = add nsw i32 %.06, %.04
  %21 = icmp slt i32 %20, %1
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = zext i32 %.05 to i64
  %24 = add nsw i32 %.06, %.04
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, %.07
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = zext i32 %.05 to i64
  %31 = add nsw i32 %.06, %.04
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %30, i64 %32
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %34, %29 ], [ %.07, %35 ]
  br label %38

38:                                               ; preds = %36, %19, %16
  %.18 = phi i32 [ %37, %36 ], [ %.07, %19 ], [ %.07, %16 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %.04, 1
  br label %14, !llvm.loop !4

41:                                               ; preds = %14
  %42 = zext i32 %.05 to i64
  %43 = mul nuw nsw i64 %42, %7
  %44 = getelementptr inbounds i32, i32* %4, i64 %43
  %45 = zext i32 %.06 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %.07, i32* %46, align 4
  br label %47

47:                                               ; preds = %41
  %48 = add nuw nsw i32 %.06, 1
  br label %11, !llvm.loop !6

49:                                               ; preds = %11
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %.05, 1
  br label %8, !llvm.loop !7

52:                                               ; preds = %8
  br label %53

53:                                               ; preds = %99, %52
  %.03 = phi i32 [ 0, %52 ], [ %100, %99 ]
  %54 = icmp slt i32 %.03, %0
  br i1 %54, label %55, label %101

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %96, %55
  %.02 = phi i32 [ 0, %55 ], [ %97, %96 ]
  %57 = icmp slt i32 %.02, %1
  br i1 %57, label %58, label %98

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %88, %58
  %.01 = phi i32 [ 0, %58 ], [ %.1, %88 ]
  %.0 = phi i32 [ -1, %58 ], [ %89, %88 ]
  %60 = icmp slt i32 %.0, 2
  br i1 %60, label %61, label %90

61:                                               ; preds = %59
  %62 = add nsw i32 %.03, %.0
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = add nsw i32 %.03, %.0
  %66 = icmp slt i32 %65, %0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = add nsw i32 %.03, %.0
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, %7
  %71 = getelementptr inbounds i32, i32* %4, i64 %70
  %72 = zext i32 %.02 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, %.01
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = add nsw i32 %.03, %.0
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, %7
  %80 = getelementptr inbounds i32, i32* %4, i64 %79
  %81 = zext i32 %.02 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %76
  %86 = phi i32 [ %83, %76 ], [ %.01, %84 ]
  br label %87

87:                                               ; preds = %85, %64, %61
  %.1 = phi i32 [ %86, %85 ], [ %.01, %64 ], [ %.01, %61 ]
  br label %88

88:                                               ; preds = %87
  %89 = add nsw i32 %.0, 1
  br label %59, !llvm.loop !8

90:                                               ; preds = %59
  %91 = zext i32 %.03 to i64
  %92 = mul nuw nsw i64 %91, %6
  %93 = getelementptr inbounds i32, i32* %3, i64 %92
  %94 = zext i32 %.02 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %.01, i32* %95, align 4
  br label %96

96:                                               ; preds = %90
  %97 = add nuw nsw i32 %.02, 1
  br label %56, !llvm.loop !9

98:                                               ; preds = %56
  br label %99

99:                                               ; preds = %98
  %100 = add nuw nsw i32 %.03, 1
  br label %53, !llvm.loop !10

101:                                              ; preds = %53
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
