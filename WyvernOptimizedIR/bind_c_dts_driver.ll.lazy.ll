; ModuleID = './bind_c_dts_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_dts_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { i32, i32, float }
%struct.particle = type { double, double, double, double, double, double, double }

@myDerived = external dso_local global %struct.myctype_t, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca [100 x %struct.particle], align 16
  %4 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 0
  store double 1.000000e+00, double* %4, align 8
  %5 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 1
  store double 1.000000e+00, double* %5, align 16
  %6 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 2
  store double 1.000000e+00, double* %6, align 8
  %7 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 3
  store double 1.000000e+00, double* %7, align 16
  %8 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 4
  store double 1.000000e+00, double* %8, align 8
  %9 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 5
  store double 1.000000e+00, double* %9, align 16
  %10 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 6
  store double 1.000000e+00, double* %10, align 8
  store i32 1, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i64 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i64 0, i32 1), align 4
  store float 3.000000e+00, float* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i64 0, i32 2), align 4
  %11 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 0
  call void @types_test(%struct.particle* noundef nonnull %11, i32 noundef 100) #4
  %12 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 0
  %13 = load double, double* %12, align 8
  %14 = fadd double %13, -1.200000e+00
  %15 = fcmp ueq double %14, 0.000000e+00
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %2
  %18 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 1
  %19 = load double, double* %18, align 16
  %20 = fadd double %19, -1.200000e+00
  %21 = fcmp ueq double %20, 0.000000e+00
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %17
  %24 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 2
  %25 = load double, double* %24, align 8
  %26 = fadd double %25, -1.200000e+00
  %27 = fcmp ueq double %26, 0.000000e+00
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %23
  %30 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 3
  %31 = load double, double* %30, align 16
  %32 = fadd double %31, -1.200000e+00
  %33 = fcmp ueq double %32, 0.000000e+00
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %29
  %36 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 4
  %37 = load double, double* %36, align 8
  %38 = fadd double %37, -1.200000e+00
  %39 = fcmp ueq double %38, 0.000000e+00
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @abort() #5
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %35
  %42 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 5
  %43 = load double, double* %42, align 16
  %44 = fadd double %43, -1.200000e+00
  %45 = fcmp ueq double %44, 0.000000e+00
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  call void @abort() #5
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %41
  %48 = getelementptr inbounds [100 x %struct.particle], [100 x %struct.particle]* %3, i64 0, i64 49, i32 6
  %49 = load double, double* %48, align 8
  %50 = fadd double %49, -1.200000e+00
  %51 = fcmp ueq double %50, 0.000000e+00
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  call void @abort() #5
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %47
  %54 = load i32, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i64 0, i32 0), align 4
  %.not = icmp eq i32 %54, 2
  br i1 %.not, label %56, label %55

55:                                               ; preds = %53
  call void @abort() #5
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i64 0, i32 1), align 4
  %.not1 = icmp eq i32 %57, 3
  br i1 %.not1, label %59, label %58

58:                                               ; preds = %56
  call void @abort() #5
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %56
  %60 = load float, float* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myDerived, i64 0, i32 2), align 4
  %61 = fpext float %60 to double
  %62 = fadd double %61, -4.000000e+00
  %63 = fcmp ueq double %62, 0.000000e+00
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @abort() #5
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %59
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %64, %58, %55, %52, %46, %40, %34, %28, %22, %16
  unreachable
}

declare dso_local void @types_test(%struct.particle* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
