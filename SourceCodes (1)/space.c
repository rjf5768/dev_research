; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/space.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @space(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sitofp i32 %9 to double
  store double %10, double* @x_input_min, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sitofp i32 %11 to double
  store double %12, double* @y_input_min, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sitofp i32 %15 to double
  %17 = load double, double* @x_output_max, align 8
  %18 = load double, double* @x_output_min, align 8
  %19 = fsub double %17, %18
  %20 = fdiv double %16, %19
  store double %20, double* @x_scale, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sitofp i32 %23 to double
  %25 = load double, double* @y_output_max, align 8
  %26 = load double, double* @y_output_min, align 8
  %27 = fsub double %25, %26
  %28 = fdiv double %24, %27
  store double %28, double* @y_scale, align 8
  %29 = load double, double* @x_scale, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = load double, double* @y_scale, align 8
  %32 = call double @llvm.fabs.f64(double %31)
  %33 = fcmp ogt double %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load double, double* @x_scale, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  store double %36, double* @scaleup, align 8
  br label %40

37:                                               ; preds = %4
  %38 = load double, double* @y_scale, align 8
  %39 = call double @llvm.fabs.f64(double %38)
  store double %39, double* @scaleup, align 8
  br label %40

40:                                               ; preds = %37, %34
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
