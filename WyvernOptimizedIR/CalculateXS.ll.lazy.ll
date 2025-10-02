; ModuleID = './CalculateXS.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/CalculateXS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GridPoint = type { double, i32* }
%struct.NuclideGridPoint = type { double, double, double, double, double, double }

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @calculate_micro_xs(double noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, %struct.GridPoint* noalias nocapture noundef readonly %4, %struct.NuclideGridPoint** noalias nocapture noundef readonly %5, i32 noundef %6, double* noalias nocapture noundef writeonly %7) #0 {
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %4, i64 %9, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %3, -1
  %17 = icmp eq i64 %16, %15
  br i1 %17, label %18, label %31

18:                                               ; preds = %8
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, i64 %19
  %21 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %20, align 8
  %22 = sext i32 %6 to i64
  %23 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %4, i64 %22, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %21, i64 %29
  br label %43

31:                                               ; preds = %8
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, i64 %32
  %34 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %33, align 8
  %35 = sext i32 %6 to i64
  %36 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %4, i64 %35, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %34, i64 %41
  br label %43

43:                                               ; preds = %31, %18
  %.0 = phi %struct.NuclideGridPoint* [ %30, %18 ], [ %42, %31 ]
  %44 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 1, i32 0
  %45 = load double, double* %44, align 8
  %46 = fsub double %45, %0
  %47 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fsub double %45, %48
  %50 = fdiv double %46, %49
  %51 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 1, i32 1
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fsub double %52, %54
  %56 = fneg double %50
  %57 = call double @llvm.fmuladd.f64(double %56, double %55, double %52)
  store double %57, double* %7, align 8
  %58 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 1, i32 2
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 0, i32 2
  %61 = load double, double* %60, align 8
  %62 = fsub double %59, %61
  %63 = fneg double %50
  %64 = call double @llvm.fmuladd.f64(double %63, double %62, double %59)
  %65 = getelementptr inbounds double, double* %7, i64 1
  store double %64, double* %65, align 8
  %66 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 1, i32 3
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 0, i32 3
  %69 = load double, double* %68, align 8
  %70 = fsub double %67, %69
  %71 = fneg double %50
  %72 = call double @llvm.fmuladd.f64(double %71, double %70, double %67)
  %73 = getelementptr inbounds double, double* %7, i64 2
  store double %72, double* %73, align 8
  %74 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 1, i32 4
  %75 = load double, double* %74, align 8
  %76 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 0, i32 4
  %77 = load double, double* %76, align 8
  %78 = fsub double %75, %77
  %79 = fneg double %50
  %80 = call double @llvm.fmuladd.f64(double %79, double %78, double %75)
  %81 = getelementptr inbounds double, double* %7, i64 3
  store double %80, double* %81, align 8
  %82 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 1, i32 5
  %83 = load double, double* %82, align 8
  %84 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %.0, i64 0, i32 5
  %85 = load double, double* %84, align 8
  %86 = fsub double %83, %85
  %87 = fneg double %50
  %88 = call double @llvm.fmuladd.f64(double %87, double %86, double %83)
  %89 = getelementptr inbounds double, double* %7, i64 4
  store double %88, double* %89, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @calculate_macro_xs(double noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32* noalias nocapture noundef readonly %4, double** noalias nocapture noundef readonly %5, %struct.GridPoint* noalias nocapture noundef readonly %6, %struct.NuclideGridPoint** noalias nocapture noundef readonly %7, i32** noalias nocapture noundef readonly %8, double* noalias nocapture noundef %9) #2 {
  %11 = alloca [5 x double], align 16
  br label %12

12:                                               ; preds = %17, %10
  %.02 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %13 = icmp ult i32 %.02, 5
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = zext i32 %.02 to i64
  %16 = getelementptr inbounds double, double* %9, i64 %15
  store double 0.000000e+00, double* %16, align 8
  br label %17

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %.02, 1
  br label %12, !llvm.loop !4

19:                                               ; preds = %12
  %20 = mul nsw i64 %2, %3
  %21 = call i64 @grid_search(i64 noundef %20, double noundef %0, %struct.GridPoint* noundef %6)
  br label %22

22:                                               ; preds = %55, %19
  %.01 = phi i32 [ 0, %19 ], [ %56, %55 ]
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds i32, i32* %4, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %.01, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds i32*, i32** %8, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %1 to i64
  %35 = getelementptr inbounds double*, double** %5, i64 %34
  %36 = load double*, double** %35, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds double, double* %36, i64 %37
  %39 = load double, double* %38, align 8
  %40 = trunc i64 %21 to i32
  %41 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 0
  call void @calculate_micro_xs(double noundef %0, i32 noundef %33, i64 noundef %2, i64 noundef %3, %struct.GridPoint* noundef %6, %struct.NuclideGridPoint** noundef %7, i32 noundef %40, double* noundef nonnull %41)
  br label %42

42:                                               ; preds = %52, %27
  %.0 = phi i32 [ 0, %27 ], [ %53, %52 ]
  %43 = icmp ult i32 %.0, 5
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  %48 = zext i32 %.0 to i64
  %49 = getelementptr inbounds double, double* %9, i64 %48
  %50 = load double, double* %49, align 8
  %51 = call double @llvm.fmuladd.f64(double %47, double %39, double %50)
  store double %51, double* %49, align 8
  br label %52

52:                                               ; preds = %44
  %53 = add nuw nsw i32 %.0, 1
  br label %42, !llvm.loop !6

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %.01, 1
  br label %22, !llvm.loop !7

57:                                               ; preds = %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @grid_search(i64 noundef %0, double noundef %1, %struct.GridPoint* nocapture noundef readonly %2) #3 {
  %4 = add nsw i64 %0, -1
  br label %5

5:                                                ; preds = %15, %3
  %.02 = phi i64 [ 0, %3 ], [ %.13, %15 ]
  %.01 = phi i64 [ %4, %3 ], [ %.1, %15 ]
  %.0 = phi i64 [ %4, %3 ], [ %16, %15 ]
  %6 = icmp sgt i64 %.0, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = sdiv i64 %.0, 2
  %9 = add nsw i64 %.02, %8
  %10 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %2, i64 %9, i32 0
  %11 = load double, double* %10, align 8
  %12 = fcmp ogt double %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %15

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14, %13
  %.13 = phi i64 [ %.02, %13 ], [ %9, %14 ]
  %.1 = phi i64 [ %9, %13 ], [ %.01, %14 ]
  %16 = sub nsw i64 %.1, %.13
  br label %5, !llvm.loop !8

17:                                               ; preds = %5
  ret i64 %.02
}

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
