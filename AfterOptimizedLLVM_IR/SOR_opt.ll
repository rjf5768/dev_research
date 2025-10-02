; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/SOR.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/SOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @SOR_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sitofp i32 %10 to double
  store double %11, double* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to double
  store double %13, double* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to double
  store double %15, double* %9, align 8
  %16 = load double, double* %7, align 8
  %17 = fsub double %16, 1.000000e+00
  %18 = load double, double* %8, align 8
  %19 = fsub double %18, 1.000000e+00
  %20 = fmul double %17, %19
  %21 = load double, double* %9, align 8
  %22 = fmul double %20, %21
  %23 = fmul double %22, 6.000000e+00
  ret double %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SOR_execute(i32 noundef %0, i32 noundef %1, double noundef %2, double** noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double**, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store double** %3, double*** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load double, double* %8, align 8
  %22 = fmul double %21, 2.500000e-01
  store double %22, double* %11, align 8
  %23 = load double, double* %8, align 8
  %24 = fsub double 1.000000e+00, %23
  store double %24, double* %12, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %107, %5
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %110

33:                                               ; preds = %29
  store i32 1, i32* %16, align 4
  br label %34

34:                                               ; preds = %103, %33
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %106

38:                                               ; preds = %34
  %39 = load double**, double*** %9, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  store double* %43, double** %18, align 8
  %44 = load double**, double*** %9, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double*, double** %44, i64 %47
  %49 = load double*, double** %48, align 8
  store double* %49, double** %19, align 8
  %50 = load double**, double*** %9, align 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double*, double** %50, i64 %53
  %55 = load double*, double** %54, align 8
  store double* %55, double** %20, align 8
  store i32 1, i32* %17, align 4
  br label %56

56:                                               ; preds = %99, %38
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %56
  %61 = load double, double* %11, align 8
  %62 = load double*, double** %19, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %20, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fadd double %66, %71
  %73 = load double*, double** %18, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %73, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fadd double %72, %78
  %80 = load double*, double** %18, align 8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %80, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fadd double %79, %85
  %87 = load double, double* %12, align 8
  %88 = load double*, double** %18, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %88, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fmul double %87, %92
  %94 = call double @llvm.fmuladd.f64(double %61, double %86, double %93)
  %95 = load double*, double** %18, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  store double %94, double* %98, align 8
  br label %99

99:                                               ; preds = %60
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %56, !llvm.loop !4

102:                                              ; preds = %56
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %34, !llvm.loop !6

106:                                              ; preds = %34
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %29, !llvm.loop !7

110:                                              ; preds = %29
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
