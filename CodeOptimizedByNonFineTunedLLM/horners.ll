; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/horners.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/horners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DERIV_X = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local double @HORNERS(i32 noundef %0, double* noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double %2, double* %6, align 8
  %10 = load double*, double** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %10, i64 %12
  %14 = load double, double* %13, align 8
  store double %14, double* %8, align 8
  store double %14, double* %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %33, %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load double, double* %6, align 8
  %22 = load double, double* %7, align 8
  %23 = load double*, double** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  %28 = call double @llvm.fmuladd.f64(double %21, double %22, double %27)
  store double %28, double* %7, align 8
  %29 = load double, double* %6, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %7, align 8
  %32 = call double @llvm.fmuladd.f64(double %29, double %30, double %31)
  store double %32, double* %8, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  br label %17, !llvm.loop !4

36:                                               ; preds = %17
  %37 = load double, double* %6, align 8
  %38 = load double, double* %7, align 8
  %39 = load double*, double** %5, align 8
  %40 = getelementptr inbounds double, double* %39, i64 0
  %41 = load double, double* %40, align 8
  %42 = call double @llvm.fmuladd.f64(double %37, double %38, double %41)
  store double %42, double* %7, align 8
  %43 = load double, double* %8, align 8
  store double %43, double* @DERIV_X, align 8
  %44 = load double, double* %7, align 8
  ret double %44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @d_abs(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load double, double* %2, align 8
  %7 = fmul double -1.000000e+00, %6
  store double %7, double* %2, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load double, double* %2, align 8
  ret double %9
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
