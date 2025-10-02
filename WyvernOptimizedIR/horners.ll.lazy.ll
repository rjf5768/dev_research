; ModuleID = './horners.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/horners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DERIV_X = dso_local global double 0.000000e+00, align 8

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local double @HORNERS(i32 noundef %0, double* nocapture noundef readonly %1, double noundef %2) #0 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds double, double* %1, i64 %4
  %6 = load double, double* %5, align 8
  br label %7

7:                                                ; preds = %14, %3
  %.02 = phi double [ %6, %3 ], [ %13, %14 ]
  %.01 = phi double [ %6, %3 ], [ %15, %14 ]
  %.0.in = phi i32 [ %0, %3 ], [ %.0, %14 ]
  %.0 = add nsw i32 %.0.in, -1
  %8 = icmp sgt i32 %.0.in, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds double, double* %1, i64 %10
  %12 = load double, double* %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %2, double %.02, double %12)
  br label %14

14:                                               ; preds = %9
  %15 = call double @llvm.fmuladd.f64(double %2, double %.01, double %13)
  br label %7, !llvm.loop !4

16:                                               ; preds = %7
  %17 = load double, double* %1, align 8
  %18 = call double @llvm.fmuladd.f64(double %2, double %.02, double %17)
  store double %.01, double* @DERIV_X, align 8
  ret double %18
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @d_abs(double noundef %0) #2 {
  %2 = fcmp olt double %0, 0.000000e+00
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = fneg double %0
  br label %5

5:                                                ; preds = %3, %1
  %.0 = phi double [ %4, %3 ], [ %0, %1 ]
  ret double %.0
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
