; ModuleID = './space.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x_input_min = dso_local global double 0.000000e+00, align 8
@y_input_min = dso_local global double 0.000000e+00, align 8
@x_output_min = dso_local global double 6.000000e+01, align 8
@y_output_min = dso_local global double 6.600000e+02, align 8
@x_output_max = dso_local global double 5.400000e+02, align 8
@y_output_max = dso_local global double 1.800000e+02, align 8
@scaleup = dso_local global double 1.000000e+00, align 8
@x_scale = dso_local global double 1.000000e+00, align 8
@y_scale = dso_local global double 1.000000e+00, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @space(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sitofp i32 %0 to double
  store double %5, double* @x_input_min, align 8
  %6 = sitofp i32 %1 to double
  store double %6, double* @y_input_min, align 8
  %7 = sub nsw i32 %2, %0
  %8 = sitofp i32 %7 to double
  %9 = load double, double* @x_output_max, align 8
  %10 = load double, double* @x_output_min, align 8
  %11 = fsub double %9, %10
  %12 = fdiv double %8, %11
  store double %12, double* @x_scale, align 8
  %13 = sub nsw i32 %3, %1
  %14 = sitofp i32 %13 to double
  %15 = load double, double* @y_output_max, align 8
  %16 = load double, double* @y_output_min, align 8
  %17 = fsub double %15, %16
  %18 = fdiv double %14, %17
  store double %18, double* @y_scale, align 8
  %19 = load double, double* @x_scale, align 8
  %20 = call double @llvm.fabs.f64(double %19)
  %21 = call double @llvm.fabs.f64(double %18)
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load double, double* @x_scale, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  br label %29

26:                                               ; preds = %4
  %27 = load double, double* @y_scale, align 8
  %28 = call double @llvm.fabs.f64(double %27)
  br label %29

29:                                               ; preds = %26, %23
  %storemerge = phi double [ %28, %26 ], [ %25, %23 ]
  store double %storemerge, double* @scaleup, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
