; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/SparseCompRow.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/SparseCompRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @SparseCompRow_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sitofp i32 %13 to double
  %15 = fmul double %14, 2.000000e+00
  %16 = load i32, i32* %6, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double %15, %17
  ret double %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SparseCompRow_matmult(i32 noundef %0, double* noundef %1, double* noundef %2, i32* noundef %3, i32* noundef %4, double* noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store double* %1, double** %9, align 8
  store double* %2, double** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store double* %5, double** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %77, %7
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %21
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %73, %25
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  store double 0.000000e+00, double* %18, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %19, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %64, %30
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load double*, double** %13, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %48, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %10, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = load double, double* %18, align 8
  %63 = call double @llvm.fmuladd.f64(double %56, double %61, double %62)
  store double %63, double* %18, align 8
  br label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  br label %43, !llvm.loop !4

67:                                               ; preds = %43
  %68 = load double, double* %18, align 8
  %69 = load double*, double** %9, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  store double %68, double* %72, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %26, !llvm.loop !6

76:                                               ; preds = %26
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %21, !llvm.loop !7

80:                                               ; preds = %21
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
