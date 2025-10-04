; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_coms_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_coms_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double }
%struct.anon.0 = type { i32, i32 }

@com = dso_local global %struct.anon zeroinitializer, align 8
@single = dso_local global double 0.000000e+00, align 8
@mycom = dso_local global i64 0, align 8
@mycom2 = dso_local global i64 0, align 8
@f03_com2 = dso_local global %struct.anon.0 zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i32 0, i32 0), align 8
  store double 2.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i32 0, i32 1), align 8
  store double 1.000000e+00, double* @single, align 8
  store i64 1, i64* @mycom, align 8
  store i64 2, i64* @mycom2, align 8
  store i32 1, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i32 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i32 0, i32 1), align 4
  call void @test_coms()
  %6 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i32 0, i32 0), align 8
  %7 = fsub double %6, 1.100000e+00
  %8 = call double @llvm.fabs.f64(double %7)
  %9 = fcmp ogt double %8, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @abort() #4
  unreachable

11:                                               ; preds = %2
  %12 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i32 0, i32 1), align 8
  %13 = fsub double %12, 2.100000e+00
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = fcmp ogt double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void @abort() #4
  unreachable

17:                                               ; preds = %11
  %18 = load double, double* @single, align 8
  %19 = fsub double %18, 1.100000e+00
  %20 = call double @llvm.fabs.f64(double %19)
  %21 = fcmp ogt double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @abort() #4
  unreachable

23:                                               ; preds = %17
  %24 = load i64, i64* @mycom, align 8
  %25 = icmp ne i64 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @abort() #4
  unreachable

27:                                               ; preds = %23
  %28 = load i64, i64* @mycom2, align 8
  %29 = icmp ne i64 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #4
  unreachable

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @abort() #4
  unreachable

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i32 0, i32 1), align 4
  %37 = icmp ne i32 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @abort() #4
  unreachable

39:                                               ; preds = %35
  ret i32 0
}

declare dso_local void @test_coms() #1

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
