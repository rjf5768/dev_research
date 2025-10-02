; ModuleID = './SOR.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/SOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @SOR_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = sitofp i32 %0 to double
  %5 = sitofp i32 %1 to double
  %6 = sitofp i32 %2 to double
  %7 = fadd double %4, -1.000000e+00
  %8 = fadd double %5, -1.000000e+00
  %9 = fmul double %7, %8
  %10 = fmul double %9, %6
  %11 = fmul double %10, 6.000000e+00
  ret double %11
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @SOR_execute(i32 noundef %0, i32 noundef %1, double noundef %2, double** nocapture noundef readonly %3, i32 noundef %4) #1 {
  %6 = fmul double %2, 2.500000e-01
  %7 = fsub double 1.000000e+00, %2
  %8 = add nsw i32 %0, -1
  %9 = add nsw i32 %1, -1
  br label %10

10:                                               ; preds = %60, %5
  %.02 = phi i32 [ 0, %5 ], [ %61, %60 ]
  %11 = icmp slt i32 %.02, %4
  br i1 %11, label %12, label %62

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %57, %12
  %.01 = phi i32 [ 1, %12 ], [ %58, %57 ]
  %14 = icmp slt i32 %.01, %8
  br i1 %14, label %15, label %59

15:                                               ; preds = %13
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds double*, double** %3, i64 %16
  %18 = load double*, double** %17, align 8
  %19 = add nsw i32 %.01, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %3, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = add nuw nsw i32 %.01, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double*, double** %3, i64 %24
  %26 = load double*, double** %25, align 8
  br label %27

27:                                               ; preds = %54, %15
  %.0 = phi i32 [ 1, %15 ], [ %55, %54 ]
  %28 = icmp slt i32 %.0, %9
  br i1 %28, label %29, label %56

29:                                               ; preds = %27
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds double, double* %22, i64 %30
  %32 = load double, double* %31, align 8
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds double, double* %26, i64 %33
  %35 = load double, double* %34, align 8
  %36 = fadd double %32, %35
  %37 = add nsw i32 %.0, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %18, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fadd double %36, %40
  %42 = add nuw nsw i32 %.0, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %18, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fadd double %41, %45
  %47 = zext i32 %.0 to i64
  %48 = getelementptr inbounds double, double* %18, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fmul double %7, %49
  %51 = call double @llvm.fmuladd.f64(double %6, double %46, double %50)
  %52 = zext i32 %.0 to i64
  %53 = getelementptr inbounds double, double* %18, i64 %52
  store double %51, double* %53, align 8
  br label %54

54:                                               ; preds = %29
  %55 = add nuw nsw i32 %.0, 1
  br label %27, !llvm.loop !4

56:                                               ; preds = %27
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !6

59:                                               ; preds = %13
  br label %60

60:                                               ; preds = %59
  %61 = add nuw nsw i32 %.02, 1
  br label %10, !llvm.loop !7

62:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
