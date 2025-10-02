; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/newton.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/newton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"     NEWTON Called on interval [%g,%g]\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"     X[%d] = %g\0A\00", align 1
@DERIV_X = external dso_local global double, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"ROOT: %g (approx.)\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @newton(i32 noundef %0, double* noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load double, double* %8, align 8
  %14 = load double, double* %7, align 8
  %15 = fcmp olt double %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load double, double* %7, align 8
  store double %17, double* %9, align 8
  %18 = load double, double* %8, align 8
  store double %18, double* %7, align 8
  %19 = load double, double* %9, align 8
  store double %19, double* %8, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = load double, double* %7, align 8
  %22 = load double, double* %8, align 8
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), double noundef %21, double noundef %22)
  %24 = load double, double* %7, align 8
  store double %24, double* %10, align 8
  %25 = load double, double* %7, align 8
  %26 = load double, double* %8, align 8
  %27 = fadd double %25, %26
  %28 = fdiv double %27, 2.000000e+00
  store double %28, double* %11, align 8
  br label %29

29:                                               ; preds = %43, %20
  %30 = load double, double* %11, align 8
  %31 = load double, double* %10, align 8
  %32 = fsub double %30, %31
  %33 = call double @d_abs(double noundef %32)
  %34 = load double, double* %11, align 8
  %35 = call double @d_abs(double noundef %34)
  %36 = fdiv double %33, %35
  %37 = fcmp ogt double %36, 5.000000e-06
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = icmp sle i32 %39, 40
  br label %41

41:                                               ; preds = %38, %29
  %42 = phi i1 [ false, %29 ], [ %40, %38 ]
  br i1 %42, label %43, label %59

43:                                               ; preds = %41
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = load double, double* %11, align 8
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %45, double noundef %46)
  %48 = load double, double* %11, align 8
  store double %48, double* %10, align 8
  %49 = load double, double* %11, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load double*, double** %6, align 8
  %52 = load double, double* %11, align 8
  %53 = call double @HORNERS(i32 noundef %50, double* noundef %51, double noundef %52)
  %54 = load double, double* @DERIV_X, align 8
  %55 = fdiv double %53, %54
  %56 = fsub double %49, %55
  store double %56, double* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %29, !llvm.loop !4

59:                                               ; preds = %41
  %60 = load double, double* %11, align 8
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), double noundef %60)
  %62 = load double, double* %11, align 8
  ret double %62
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local double @d_abs(double noundef) #1

declare dso_local double @HORNERS(i32 noundef, double* noundef, double noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
