; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_vars_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_vars_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myf90int = external dso_local global i32, align 4
@myF90Real = dso_local global float 0.000000e+00, align 4
@myVariable = dso_local global i32 0, align 4
@c3 = dso_local global i32 0, align 4
@c4 = dso_local global i32 0, align 4
@myF90Array3D = dso_local global [10 x [5 x [18 x i32]]] zeroinitializer, align 16
@myF90Array2D = dso_local global [2 x [3 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* @myf90int, align 4
  store float 1.000000e+00, float* @myF90Real, align 4
  store i32 2, i32* @myVariable, align 4
  store i32 3, i32* @c3, align 4
  store i32 4, i32* @c4, align 4
  store i32 1, i32* getelementptr inbounds ([10 x [5 x [18 x i32]]], [10 x [5 x [18 x i32]]]* @myF90Array3D, i64 0, i64 2, i64 3, i64 4), align 8
  store i32 2, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @myF90Array2D, i64 0, i64 1, i64 2), align 4
  call void @changeF90Globals()
  %6 = load i32, i32* @myf90int, align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @abort() #4
  unreachable

9:                                                ; preds = %2
  %10 = load float, float* @myF90Real, align 4
  %11 = fpext float %10 to double
  %12 = fsub double %11, 3.000000e+00
  %13 = call double @llvm.fabs.f64(double %12)
  %14 = fcmp ogt double %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  call void @abort() #4
  unreachable

16:                                               ; preds = %9
  %17 = load i32, i32* @myVariable, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #4
  unreachable

20:                                               ; preds = %16
  %21 = load i32, i32* @c3, align 4
  %22 = icmp ne i32 %21, 6
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #4
  unreachable

24:                                               ; preds = %20
  %25 = load i32, i32* @c4, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #4
  unreachable

28:                                               ; preds = %24
  %29 = load i32, i32* getelementptr inbounds ([10 x [5 x [18 x i32]]], [10 x [5 x [18 x i32]]]* @myF90Array3D, i64 0, i64 2, i64 3, i64 4), align 8
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #4
  unreachable

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @myF90Array2D, i64 0, i64 1, i64 2), align 4
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #4
  unreachable

36:                                               ; preds = %32
  ret i32 0
}

declare dso_local void @changeF90Globals() #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
