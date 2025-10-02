; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/CalculateXS.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/CalculateXS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GridPoint = type { double, i32* }
%struct.NuclideGridPoint = type { double, double, double, double, double, double }

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs(double noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, %struct.GridPoint* noalias noundef %4, %struct.NuclideGridPoint** noalias noundef %5, i32 noundef %6, double* noalias noundef %7) #0 {
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.GridPoint*, align 8
  %14 = alloca %struct.NuclideGridPoint**, align 8
  %15 = alloca i32, align 4
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.NuclideGridPoint*, align 8
  %19 = alloca %struct.NuclideGridPoint*, align 8
  store double %0, double* %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.GridPoint* %4, %struct.GridPoint** %13, align 8
  store %struct.NuclideGridPoint** %5, %struct.NuclideGridPoint*** %14, align 8
  store i32 %6, i32* %15, align 4
  store double* %7, double** %16, align 8
  %20 = load %struct.GridPoint*, %struct.GridPoint** %13, align 8
  %21 = load i32, i32* %15, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %20, i64 %22
  %24 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %12, align 8
  %32 = sub nsw i64 %31, 1
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %8
  %35 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %35, i64 %37
  %39 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %38, align 8
  %40 = load %struct.GridPoint*, %struct.GridPoint** %13, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %40, i64 %42
  %44 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %39, i64 %51
  store %struct.NuclideGridPoint* %52, %struct.NuclideGridPoint** %18, align 8
  br label %71

53:                                               ; preds = %8
  %54 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %14, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %54, i64 %56
  %58 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %57, align 8
  %59 = load %struct.GridPoint*, %struct.GridPoint** %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %59, i64 %61
  %63 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %58, i64 %69
  store %struct.NuclideGridPoint* %70, %struct.NuclideGridPoint** %18, align 8
  br label %71

71:                                               ; preds = %53, %34
  %72 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %73 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %72, i64 1
  store %struct.NuclideGridPoint* %73, %struct.NuclideGridPoint** %19, align 8
  %74 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %75 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = load double, double* %9, align 8
  %78 = fsub double %76, %77
  %79 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %80 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %83 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %82, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fsub double %81, %84
  %86 = fdiv double %78, %85
  store double %86, double* %17, align 8
  %87 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %88 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %87, i32 0, i32 1
  %89 = load double, double* %88, align 8
  %90 = load double, double* %17, align 8
  %91 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %92 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %91, i32 0, i32 1
  %93 = load double, double* %92, align 8
  %94 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %95 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = fsub double %93, %96
  %98 = fneg double %90
  %99 = call double @llvm.fmuladd.f64(double %98, double %97, double %89)
  %100 = load double*, double** %16, align 8
  %101 = getelementptr inbounds double, double* %100, i64 0
  store double %99, double* %101, align 8
  %102 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %103 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %102, i32 0, i32 2
  %104 = load double, double* %103, align 8
  %105 = load double, double* %17, align 8
  %106 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %107 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %106, i32 0, i32 2
  %108 = load double, double* %107, align 8
  %109 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %110 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %109, i32 0, i32 2
  %111 = load double, double* %110, align 8
  %112 = fsub double %108, %111
  %113 = fneg double %105
  %114 = call double @llvm.fmuladd.f64(double %113, double %112, double %104)
  %115 = load double*, double** %16, align 8
  %116 = getelementptr inbounds double, double* %115, i64 1
  store double %114, double* %116, align 8
  %117 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %118 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %117, i32 0, i32 3
  %119 = load double, double* %118, align 8
  %120 = load double, double* %17, align 8
  %121 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %122 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %121, i32 0, i32 3
  %123 = load double, double* %122, align 8
  %124 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %125 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %124, i32 0, i32 3
  %126 = load double, double* %125, align 8
  %127 = fsub double %123, %126
  %128 = fneg double %120
  %129 = call double @llvm.fmuladd.f64(double %128, double %127, double %119)
  %130 = load double*, double** %16, align 8
  %131 = getelementptr inbounds double, double* %130, i64 2
  store double %129, double* %131, align 8
  %132 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %133 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %132, i32 0, i32 4
  %134 = load double, double* %133, align 8
  %135 = load double, double* %17, align 8
  %136 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %137 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %136, i32 0, i32 4
  %138 = load double, double* %137, align 8
  %139 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %140 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %139, i32 0, i32 4
  %141 = load double, double* %140, align 8
  %142 = fsub double %138, %141
  %143 = fneg double %135
  %144 = call double @llvm.fmuladd.f64(double %143, double %142, double %134)
  %145 = load double*, double** %16, align 8
  %146 = getelementptr inbounds double, double* %145, i64 3
  store double %144, double* %146, align 8
  %147 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %148 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %147, i32 0, i32 5
  %149 = load double, double* %148, align 8
  %150 = load double, double* %17, align 8
  %151 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %152 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %151, i32 0, i32 5
  %153 = load double, double* %152, align 8
  %154 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %155 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %154, i32 0, i32 5
  %156 = load double, double* %155, align 8
  %157 = fsub double %153, %156
  %158 = fneg double %150
  %159 = call double @llvm.fmuladd.f64(double %158, double %157, double %149)
  %160 = load double*, double** %16, align 8
  %161 = getelementptr inbounds double, double* %160, i64 4
  store double %159, double* %161, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_macro_xs(double noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32* noalias noundef %4, double** noalias noundef %5, %struct.GridPoint* noalias noundef %6, %struct.NuclideGridPoint** noalias noundef %7, i32** noalias noundef %8, double* noalias noundef %9) #0 {
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double**, align 8
  %17 = alloca %struct.GridPoint*, align 8
  %18 = alloca %struct.NuclideGridPoint**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca double*, align 8
  %21 = alloca [5 x double], align 16
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store double %0, double* %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store double** %5, double*** %16, align 8
  store %struct.GridPoint* %6, %struct.GridPoint** %17, align 8
  store %struct.NuclideGridPoint** %7, %struct.NuclideGridPoint*** %18, align 8
  store i32** %8, i32*** %19, align 8
  store double* %9, double** %20, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %25, align 4
  br label %28

28:                                               ; preds = %36, %10
  %29 = load i32, i32* %25, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load double*, double** %20, align 8
  %33 = load i32, i32* %25, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  store double 0.000000e+00, double* %35, align 8
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %25, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %25, align 4
  br label %28, !llvm.loop !4

39:                                               ; preds = %28
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = mul nsw i64 %40, %41
  %43 = load double, double* %11, align 8
  %44 = load %struct.GridPoint*, %struct.GridPoint** %17, align 8
  %45 = call i64 @grid_search(i64 noundef %42, double noundef %43, %struct.GridPoint* noundef %44)
  store i64 %45, i64* %23, align 8
  store i32 0, i32* %26, align 4
  br label %46

46:                                               ; preds = %101, %39
  %47 = load i32, i32* %26, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %104

54:                                               ; preds = %46
  %55 = load i32**, i32*** %19, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %26, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %22, align 4
  %64 = load double**, double*** %16, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double*, double** %64, i64 %66
  %68 = load double*, double** %67, align 8
  %69 = load i32, i32* %26, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  store double %72, double* %24, align 8
  %73 = load double, double* %11, align 8
  %74 = load i32, i32* %22, align 4
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.GridPoint*, %struct.GridPoint** %17, align 8
  %78 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %18, align 8
  %79 = load i64, i64* %23, align 8
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds [5 x double], [5 x double]* %21, i64 0, i64 0
  call void @calculate_micro_xs(double noundef %73, i32 noundef %74, i64 noundef %75, i64 noundef %76, %struct.GridPoint* noundef %77, %struct.NuclideGridPoint** noundef %78, i32 noundef %80, double* noundef %81)
  store i32 0, i32* %27, align 4
  br label %82

82:                                               ; preds = %97, %54
  %83 = load i32, i32* %27, align 4
  %84 = icmp slt i32 %83, 5
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i32, i32* %27, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x double], [5 x double]* %21, i64 0, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load double, double* %24, align 8
  %91 = load double*, double** %20, align 8
  %92 = load i32, i32* %27, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = call double @llvm.fmuladd.f64(double %89, double %90, double %95)
  store double %96, double* %94, align 8
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %27, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %27, align 4
  br label %82, !llvm.loop !6

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %26, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %26, align 4
  br label %46, !llvm.loop !7

104:                                              ; preds = %46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @grid_search(i64 noundef %0, double noundef %1, %struct.GridPoint* noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.GridPoint*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  store %struct.GridPoint* %2, %struct.GridPoint** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = sub nsw i64 %11, 1
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i64, i64* %10, align 8
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sdiv i64 %21, 2
  %23 = add nsw i64 %20, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.GridPoint*, %struct.GridPoint** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %24, i64 %25
  %27 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load double, double* %5, align 8
  %30 = fcmp ogt double %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %8, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %10, align 8
  br label %16, !llvm.loop !8

39:                                               ; preds = %16
  %40 = load i64, i64* %7, align 8
  ret i64 %40
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
