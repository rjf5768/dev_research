; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_dts_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_dts_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { i32, i32, float }
%struct.particle = type { double, double, double, double, double, double, double }

@myDerived = external dso_local global %struct.myctype_t, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [100 x %struct.particle], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %8 = getelementptr inbounds %struct.particle, %struct.particle* %7, i32 0, i32 0
  store double 1.000000e+00, double* %8, align 8
  %9 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %10 = getelementptr inbounds %struct.particle, %struct.particle* %9, i32 0, i32 1
  store double 1.000000e+00, double* %10, align 8
  %11 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %12 = getelementptr inbounds %struct.particle, %struct.particle* %11, i32 0, i32 2
  store double 1.000000e+00, double* %12, align 8
  %13 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %14 = getelementptr inbounds %struct.particle, %struct.particle* %13, i32 0, i32 3
  store double 1.000000e+00, double* %14, align 8
  %15 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %16 = getelementptr inbounds %struct.particle, %struct.particle* %15, i32 0, i32 4
  store double 1.000000e+00, double* %16, align 8
  %17 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %18 = getelementptr inbounds %struct.particle, %struct.particle* %17, i32 0, i32 5
  store double 1.000000e+00, double* %18, align 8
  %19 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %20 = getelementptr inbounds %struct.particle, %struct.particle* %19, i32 0, i32 6
  store double 1.000000e+00, double* %20, align 8
  store i32 1, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i32 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i32 0, i32 1), align 4
  store float 3.000000e+00, float* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i32 0, i32 2), align 4
  %21 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 0
  call void @types_test(%struct.particle* noundef %21, i32 noundef 100)
  %22 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %23 = getelementptr inbounds %struct.particle, %struct.particle* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fsub double %24, 1.200000e+00
  %26 = call double @llvm.fabs.f64(double %25)
  %27 = fcmp ogt double %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  call void @abort() #4
  unreachable

29:                                               ; preds = %2
  %30 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %31 = getelementptr inbounds %struct.particle, %struct.particle* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fsub double %32, 1.200000e+00
  %34 = call double @llvm.fabs.f64(double %33)
  %35 = fcmp ogt double %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  call void @abort() #4
  unreachable

37:                                               ; preds = %29
  %38 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %39 = getelementptr inbounds %struct.particle, %struct.particle* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = fsub double %40, 1.200000e+00
  %42 = call double @llvm.fabs.f64(double %41)
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  call void @abort() #4
  unreachable

45:                                               ; preds = %37
  %46 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %47 = getelementptr inbounds %struct.particle, %struct.particle* %46, i32 0, i32 3
  %48 = load double, double* %47, align 8
  %49 = fsub double %48, 1.200000e+00
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fcmp ogt double %50, 0.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call void @abort() #4
  unreachable

53:                                               ; preds = %45
  %54 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %55 = getelementptr inbounds %struct.particle, %struct.particle* %54, i32 0, i32 4
  %56 = load double, double* %55, align 8
  %57 = fsub double %56, 1.200000e+00
  %58 = call double @llvm.fabs.f64(double %57)
  %59 = fcmp ogt double %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  call void @abort() #4
  unreachable

61:                                               ; preds = %53
  %62 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %63 = getelementptr inbounds %struct.particle, %struct.particle* %62, i32 0, i32 5
  %64 = load double, double* %63, align 8
  %65 = fsub double %64, 1.200000e+00
  %66 = call double @llvm.fabs.f64(double %65)
  %67 = fcmp ogt double %66, 0.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  call void @abort() #4
  unreachable

69:                                               ; preds = %61
  %70 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %6, i64 0, i64 49
  %71 = getelementptr inbounds %struct.particle, %struct.particle* %70, i32 0, i32 6
  %72 = load double, double* %71, align 8
  %73 = fsub double %72, 1.200000e+00
  %74 = call double @llvm.fabs.f64(double %73)
  %75 = fcmp ogt double %74, 0.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  call void @abort() #4
  unreachable

77:                                               ; preds = %69
  %78 = load i32, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i32 0, i32 0), align 4
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @abort() #4
  unreachable

81:                                               ; preds = %77
  %82 = load i32, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i32 0, i32 1), align 4
  %83 = icmp ne i32 %82, 3
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @abort() #4
  unreachable

85:                                               ; preds = %81
  %86 = load float, float* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i32 0, i32 2), align 4
  %87 = fpext float %86 to double
  %88 = fsub double %87, 4.000000e+00
  %89 = call double @llvm.fabs.f64(double %88)
  %90 = fcmp ogt double %89, 0.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  call void @abort() #4
  unreachable

92:                                               ; preds = %85
  ret i32 0
}

declare dso_local void @types_test(%struct.particle* noundef, i32 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
