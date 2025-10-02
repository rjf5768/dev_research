; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_tests_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_tests_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myCDerived = type { i32, double, float, i16, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.myCDerived, align 8
  %7 = alloca [10 x %struct.myCDerived], align 16
  %8 = alloca [2 x [3 x %struct.myCDerived]], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %6, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %6, i32 0, i32 1
  store double 2.000000e+00, double* %12, align 8
  %13 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %6, i32 0, i32 2
  store float 3.000000e+00, float* %13, align 8
  %14 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %6, i32 0, i32 3
  store i16 4, i16* %14, align 4
  %15 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %6, i32 0, i32 4
  store i8* null, i8** %15, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %56, %2
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %59

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, 1
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %7, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 16
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to double
  %30 = fmul double %29, 1.000000e+00
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %7, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %33, i32 0, i32 1
  store double %30, double* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = sitofp i32 %36 to double
  %38 = fmul double %37, 1.000000e+00
  %39 = fptrunc double %38 to float
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %7, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %42, i32 0, i32 2
  store float %39, float* %43, align 16
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %45, 1
  %47 = trunc i32 %46 to i16
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %7, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %50, i32 0, i32 3
  store i16 %47, i16* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %7, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %54, i32 0, i32 4
  store i8* null, i8** %55, align 8
  br label %56

56:                                               ; preds = %19
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %16, !llvm.loop !4

59:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %131, %59
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %134

63:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %127, %63
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %130

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 2
  %70 = mul nsw i32 %69, 1
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %8, i64 0, i64 %74
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x %struct.myCDerived], [3 x %struct.myCDerived]* %75, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 16
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 2
  %82 = sitofp i32 %81 to double
  %83 = load i32, i32* %10, align 4
  %84 = sitofp i32 %83 to double
  %85 = call double @llvm.fmuladd.f64(double %82, double 1.000000e+00, double %84)
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %8, i64 0, i64 %87
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x %struct.myCDerived], [3 x %struct.myCDerived]* %88, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %91, i32 0, i32 1
  store double %85, double* %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %93, 2
  %95 = sitofp i32 %94 to double
  %96 = load i32, i32* %10, align 4
  %97 = sitofp i32 %96 to double
  %98 = call double @llvm.fmuladd.f64(double %95, double 1.000000e+00, double %97)
  %99 = fptrunc double %98 to float
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %8, i64 0, i64 %101
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x %struct.myCDerived], [3 x %struct.myCDerived]* %102, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %105, i32 0, i32 2
  store float %99, float* %106, align 16
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %107, 2
  %109 = mul nsw i32 %108, 1
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = trunc i32 %111 to i16
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %8, i64 0, i64 %114
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x %struct.myCDerived], [3 x %struct.myCDerived]* %115, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %118, i32 0, i32 3
  store i16 %112, i16* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %8, i64 0, i64 %121
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x %struct.myCDerived], [3 x %struct.myCDerived]* %122, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %125, i32 0, i32 4
  store i8* null, i8** %126, align 8
  br label %127

127:                                              ; preds = %67
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %64, !llvm.loop !6

130:                                              ; preds = %64
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %60, !llvm.loop !7

134:                                              ; preds = %60
  %135 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %7, i64 0, i64 0
  %136 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %8, i64 0, i64 0
  %137 = getelementptr inbounds [3 x %struct.myCDerived], [3 x %struct.myCDerived]* %136, i64 0, i64 0
  call void @testDerivedPtrs(%struct.myCDerived* noundef %6, %struct.myCDerived* noundef %135, i32 noundef 10, %struct.myCDerived* noundef %137, i32 noundef 3, i32 noundef 2)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

declare dso_local void @testDerivedPtrs(%struct.myCDerived* noundef, %struct.myCDerived* noundef, i32 noundef, %struct.myCDerived* noundef, i32 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
