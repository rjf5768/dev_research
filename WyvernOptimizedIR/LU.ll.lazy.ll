; ModuleID = './LU.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/LU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @LU_num_flops(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to double
  %3 = fmul double %2, 2.000000e+00
  %4 = fmul double %3, %2
  %5 = fmul double %4, %2
  %6 = fdiv double %5, 3.000000e+00
  ret double %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @LU_copy_matrix(i32 noundef %0, i32 noundef %1, double** nocapture noundef readonly %2, double** nocapture noundef readonly %3) #1 {
  br label %5

5:                                                ; preds = %25, %4
  %.01 = phi i32 [ 0, %4 ], [ %26, %25 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %22, %7
  %.0 = phi i32 [ 0, %7 ], [ %23, %22 ]
  %9 = icmp slt i32 %.0, %1
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds double*, double** %3, i64 %11
  %13 = load double*, double** %12, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds double, double* %13, i64 %14
  %16 = load double, double* %15, align 8
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds double*, double** %2, i64 %17
  %19 = load double*, double** %18, align 8
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds double, double* %19, i64 %20
  store double %16, double* %21, align 8
  br label %22

22:                                               ; preds = %10
  %23 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !4

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !6

27:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @LU_factor(i32 noundef %0, i32 noundef %1, double** nocapture noundef %2, i32* nocapture noundef writeonly %3) #2 {
  %5 = icmp slt i32 %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %6 ], [ %1, %7 ]
  br label %10

10:                                               ; preds = %112, %8
  %.06 = phi i32 [ 0, %8 ], [ %113, %112 ]
  %11 = icmp slt i32 %.06, %9
  br i1 %11, label %12, label %114

12:                                               ; preds = %10
  %13 = zext i32 %.06 to i64
  %14 = getelementptr inbounds double*, double** %2, i64 %13
  %15 = load double*, double** %14, align 8
  %16 = zext i32 %.06 to i64
  %17 = getelementptr inbounds double, double* %15, i64 %16
  %18 = load double, double* %17, align 8
  %19 = call double @llvm.fabs.f64(double %18)
  br label %20

20:                                               ; preds = %33, %12
  %.07 = phi i32 [ %.06, %12 ], [ %.18, %33 ]
  %.05.in = phi i32 [ %.06, %12 ], [ %.05, %33 ]
  %.04 = phi double [ %19, %12 ], [ %.1, %33 ]
  %.05 = add nuw nsw i32 %.05.in, 1
  %21 = icmp slt i32 %.05, %0
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = zext i32 %.05 to i64
  %24 = getelementptr inbounds double*, double** %2, i64 %23
  %25 = load double*, double** %24, align 8
  %26 = zext i32 %.06 to i64
  %27 = getelementptr inbounds double, double* %25, i64 %26
  %28 = load double, double* %27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  %30 = fcmp ogt double %29, %.04
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %22
  %.18 = phi i32 [ %.05, %31 ], [ %.07, %22 ]
  %.1 = phi double [ %29, %31 ], [ %.04, %22 ]
  br label %33

33:                                               ; preds = %32
  br label %20, !llvm.loop !7

34:                                               ; preds = %20
  %35 = zext i32 %.06 to i64
  %36 = getelementptr inbounds i32, i32* %3, i64 %35
  store i32 %.07, i32* %36, align 4
  %37 = sext i32 %.07 to i64
  %38 = getelementptr inbounds double*, double** %2, i64 %37
  %39 = load double*, double** %38, align 8
  %40 = zext i32 %.06 to i64
  %41 = getelementptr inbounds double, double* %39, i64 %40
  %42 = load double, double* %41, align 8
  %43 = fcmp oeq double %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %115

45:                                               ; preds = %34
  %.not = icmp eq i32 %.07, %.06
  br i1 %.not, label %57, label %46

46:                                               ; preds = %45
  %47 = zext i32 %.06 to i64
  %48 = getelementptr inbounds double*, double** %2, i64 %47
  %49 = load double*, double** %48, align 8
  %50 = sext i32 %.07 to i64
  %51 = getelementptr inbounds double*, double** %2, i64 %50
  %52 = load double*, double** %51, align 8
  %53 = zext i32 %.06 to i64
  %54 = getelementptr inbounds double*, double** %2, i64 %53
  store double* %52, double** %54, align 8
  %55 = sext i32 %.07 to i64
  %56 = getelementptr inbounds double*, double** %2, i64 %55
  store double* %49, double** %56, align 8
  br label %57

57:                                               ; preds = %46, %45
  %58 = add nsw i32 %0, -1
  %59 = icmp slt i32 %.06, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = zext i32 %.06 to i64
  %62 = getelementptr inbounds double*, double** %2, i64 %61
  %63 = load double*, double** %62, align 8
  %64 = zext i32 %.06 to i64
  %65 = getelementptr inbounds double, double* %63, i64 %64
  %66 = load double, double* %65, align 8
  %67 = fdiv double 1.000000e+00, %66
  br label %68

68:                                               ; preds = %78, %60
  %.03.in = phi i32 [ %.06, %60 ], [ %.03, %78 ]
  %.03 = add nuw nsw i32 %.03.in, 1
  %69 = icmp slt i32 %.03, %0
  br i1 %69, label %70, label %79

70:                                               ; preds = %68
  %71 = zext i32 %.03 to i64
  %72 = getelementptr inbounds double*, double** %2, i64 %71
  %73 = load double*, double** %72, align 8
  %74 = zext i32 %.06 to i64
  %75 = getelementptr inbounds double, double* %73, i64 %74
  %76 = load double, double* %75, align 8
  %77 = fmul double %76, %67
  store double %77, double* %75, align 8
  br label %78

78:                                               ; preds = %70
  br label %68, !llvm.loop !8

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %57
  %81 = add nsw i32 %9, -1
  %82 = icmp slt i32 %.06, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %109, %83
  %.02.in = phi i32 [ %.06, %83 ], [ %.02, %109 ]
  %.02 = add nuw nsw i32 %.02.in, 1
  %85 = icmp slt i32 %.02, %0
  br i1 %85, label %86, label %110

86:                                               ; preds = %84
  %87 = zext i32 %.02 to i64
  %88 = getelementptr inbounds double*, double** %2, i64 %87
  %89 = load double*, double** %88, align 8
  %90 = zext i32 %.06 to i64
  %91 = getelementptr inbounds double*, double** %2, i64 %90
  %92 = load double*, double** %91, align 8
  %93 = zext i32 %.06 to i64
  %94 = getelementptr inbounds double, double* %89, i64 %93
  %95 = load double, double* %94, align 8
  br label %96

96:                                               ; preds = %107, %86
  %.01.in = phi i32 [ %.06, %86 ], [ %.01, %107 ]
  %.01 = add nuw nsw i32 %.01.in, 1
  %97 = icmp slt i32 %.01, %1
  br i1 %97, label %98, label %108

98:                                               ; preds = %96
  %99 = zext i32 %.01 to i64
  %100 = getelementptr inbounds double, double* %92, i64 %99
  %101 = load double, double* %100, align 8
  %102 = zext i32 %.01 to i64
  %103 = getelementptr inbounds double, double* %89, i64 %102
  %104 = load double, double* %103, align 8
  %105 = fneg double %95
  %106 = call double @llvm.fmuladd.f64(double %105, double %101, double %104)
  store double %106, double* %103, align 8
  br label %107

107:                                              ; preds = %98
  br label %96, !llvm.loop !9

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  br label %84, !llvm.loop !10

110:                                              ; preds = %84
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111
  %113 = add nuw nsw i32 %.06, 1
  br label %10, !llvm.loop !11

114:                                              ; preds = %10
  br label %115

115:                                              ; preds = %114, %44
  %.0 = phi i32 [ 1, %44 ], [ 0, %114 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!11 = distinct !{!11, !5}
