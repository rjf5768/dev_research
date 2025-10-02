; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/em3d/em3d.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/em3d/em3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }

@nonlocals = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_nodes(%struct.node_t* noundef %0) #0 {
  %2 = alloca %struct.node_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.node_t*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.node_t* %0, %struct.node_t** %2, align 8
  br label %10

10:                                               ; preds = %115, %1
  %11 = load %struct.node_t*, %struct.node_t** %2, align 8
  %12 = icmp ne %struct.node_t* %11, null
  br i1 %12, label %13, label %123

13:                                               ; preds = %10
  %14 = load %struct.node_t*, %struct.node_t** %2, align 8
  store %struct.node_t* %14, %struct.node_t** %4, align 8
  %15 = load %struct.node_t*, %struct.node_t** %4, align 8
  %16 = getelementptr inbounds %struct.node_t, %struct.node_t* %15, i32 0, i32 0
  %17 = load double*, double** %16, align 8
  %18 = load double, double* %17, align 8
  store double %18, double* %5, align 8
  %19 = load %struct.node_t*, %struct.node_t** %4, align 8
  %20 = getelementptr inbounds %struct.node_t, %struct.node_t* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %81, %13
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %23
  %28 = load %struct.node_t*, %struct.node_t** %4, align 8
  %29 = getelementptr inbounds %struct.node_t, %struct.node_t* %28, i32 0, i32 3
  %30 = load double**, double*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  store double* %34, double** %7, align 8
  %35 = load %struct.node_t*, %struct.node_t** %4, align 8
  %36 = getelementptr inbounds %struct.node_t, %struct.node_t* %35, i32 0, i32 4
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  store double %41, double* %8, align 8
  %42 = load double*, double** %7, align 8
  %43 = icmp ne double* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = load double*, double** %7, align 8
  %46 = load double, double* %45, align 8
  store double %46, double* %9, align 8
  br label %48

47:                                               ; preds = %27
  store double 0.000000e+00, double* %9, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load double, double* %8, align 8
  %50 = load double, double* %9, align 8
  %51 = load double, double* %5, align 8
  %52 = fneg double %49
  %53 = call double @llvm.fmuladd.f64(double %52, double %50, double %51)
  store double %53, double* %5, align 8
  %54 = load %struct.node_t*, %struct.node_t** %4, align 8
  %55 = getelementptr inbounds %struct.node_t, %struct.node_t* %54, i32 0, i32 3
  %56 = load double**, double*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double*, double** %56, i64 %59
  %61 = load double*, double** %60, align 8
  store double* %61, double** %7, align 8
  %62 = load %struct.node_t*, %struct.node_t** %4, align 8
  %63 = getelementptr inbounds %struct.node_t, %struct.node_t* %62, i32 0, i32 4
  %64 = load double*, double** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  store double %68, double* %8, align 8
  %69 = load double*, double** %7, align 8
  %70 = icmp ne double* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %48
  %72 = load double*, double** %7, align 8
  %73 = load double, double* %72, align 8
  store double %73, double* %9, align 8
  br label %75

74:                                               ; preds = %48
  store double 0.000000e+00, double* %9, align 8
  br label %75

75:                                               ; preds = %74, %71
  %76 = load double, double* %8, align 8
  %77 = load double, double* %9, align 8
  %78 = load double, double* %5, align 8
  %79 = fneg double %76
  %80 = call double @llvm.fmuladd.f64(double %79, double %77, double %78)
  store double %80, double* %5, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %3, align 4
  br label %23, !llvm.loop !4

84:                                               ; preds = %23
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  %89 = load %struct.node_t*, %struct.node_t** %4, align 8
  %90 = getelementptr inbounds %struct.node_t, %struct.node_t* %89, i32 0, i32 3
  %91 = load double**, double*** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double*, double** %91, i64 %93
  %95 = load double*, double** %94, align 8
  store double* %95, double** %7, align 8
  %96 = load %struct.node_t*, %struct.node_t** %4, align 8
  %97 = getelementptr inbounds %struct.node_t, %struct.node_t* %96, i32 0, i32 4
  %98 = load double*, double** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  store double %102, double* %8, align 8
  %103 = load double*, double** %7, align 8
  %104 = icmp ne double* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = load double*, double** %7, align 8
  %107 = load double, double* %106, align 8
  store double %107, double* %9, align 8
  br label %109

108:                                              ; preds = %88
  store double 0.000000e+00, double* %9, align 8
  br label %109

109:                                              ; preds = %108, %105
  %110 = load double, double* %8, align 8
  %111 = load double, double* %9, align 8
  %112 = load double, double* %5, align 8
  %113 = fneg double %110
  %114 = call double @llvm.fmuladd.f64(double %113, double %111, double %112)
  store double %114, double* %5, align 8
  br label %115

115:                                              ; preds = %109, %84
  %116 = load double, double* %5, align 8
  %117 = load %struct.node_t*, %struct.node_t** %4, align 8
  %118 = getelementptr inbounds %struct.node_t, %struct.node_t* %117, i32 0, i32 0
  %119 = load double*, double** %118, align 8
  store double %116, double* %119, align 8
  %120 = load %struct.node_t*, %struct.node_t** %4, align 8
  %121 = getelementptr inbounds %struct.node_t, %struct.node_t* %120, i32 0, i32 1
  %122 = load %struct.node_t*, %struct.node_t** %121, align 8
  store %struct.node_t* %122, %struct.node_t** %2, align 8
  br label %10, !llvm.loop !6

123:                                              ; preds = %10
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
