; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_by_val.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_by_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f_to_f__(float* noundef %0, float noundef %1, float* noundef %2, float** noundef %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float**, align 8
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store float** %3, float*** %8, align 8
  %9 = load float, float* %6, align 4
  %10 = load float*, float** %7, align 8
  %11 = load float, float* %10, align 4
  %12 = fcmp une float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @abort() #3
  unreachable

14:                                               ; preds = %4
  %15 = load float, float* %6, align 4
  %16 = load float**, float*** %8, align 8
  %17 = load float*, float** %16, align 8
  %18 = load float, float* %17, align 4
  %19 = fcmp une float %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @abort() #3
  unreachable

21:                                               ; preds = %14
  store float 0.000000e+00, float* %6, align 4
  %22 = load float*, float** %7, align 8
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = fmul double %24, 2.000000e+00
  %26 = fptrunc double %25 to float
  %27 = load float*, float** %5, align 8
  store float %26, float* %27, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f_to_f8__(double* noundef %0, double noundef %1, double* noundef %2, double** noundef %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double**, align 8
  store double* %0, double** %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double** %3, double*** %8, align 8
  %9 = load double, double* %6, align 8
  %10 = load double*, double** %7, align 8
  %11 = load double, double* %10, align 8
  %12 = fcmp une double %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @abort() #3
  unreachable

14:                                               ; preds = %4
  %15 = load double, double* %6, align 8
  %16 = load double**, double*** %8, align 8
  %17 = load double*, double** %16, align 8
  %18 = load double, double* %17, align 8
  %19 = fcmp une double %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @abort() #3
  unreachable

21:                                               ; preds = %14
  store double 0.000000e+00, double* %6, align 8
  %22 = load double*, double** %7, align 8
  %23 = load double, double* %22, align 8
  %24 = fmul double %23, 2.000000e+00
  %25 = load double*, double** %5, align 8
  store double %24, double* %25, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @i_to_i__(i32* noundef %0, i32 noundef %1, i32* noundef %2, i32** noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @abort() #3
  unreachable

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32**, i32*** %8, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @abort() #3
  unreachable

21:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 3
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @i_to_i8__(i64* noundef %0, i64 noundef %1, i64* noundef %2, i64** noundef %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64**, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64** %3, i64*** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @abort() #3
  unreachable

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = load i64**, i64*** %8, align 8
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @abort() #3
  unreachable

21:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = mul nsw i64 %23, 3
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_to_c__({ float, float }* noundef %0, <2 x float> noundef %1, { float, float }* noundef %2, { float, float }** noundef %3) #2 {
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }*, align 8
  %7 = alloca { float, float }*, align 8
  %8 = alloca { float, float }**, align 8
  %9 = bitcast { float, float }* %5 to <2 x float>*
  store <2 x float> %1, <2 x float>* %9, align 4
  store { float, float }* %0, { float, float }** %6, align 8
  store { float, float }* %2, { float, float }** %7, align 8
  store { float, float }** %3, { float, float }*** %8, align 8
  %10 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = load { float, float }*, { float, float }** %7, align 8
  %15 = getelementptr inbounds { float, float }, { float, float }* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds { float, float }, { float, float }* %14, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fcmp une float %11, %16
  %20 = fcmp une float %13, %18
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  call void @abort() #3
  unreachable

23:                                               ; preds = %4
  %24 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = load { float, float }**, { float, float }*** %8, align 8
  %29 = load { float, float }*, { float, float }** %28, align 8
  %30 = getelementptr inbounds { float, float }, { float, float }* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = getelementptr inbounds { float, float }, { float, float }* %29, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = fcmp une float %25, %31
  %35 = fcmp une float %27, %33
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  call void @abort() #3
  unreachable

38:                                               ; preds = %23
  %39 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %40 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  store float 0.000000e+00, float* %39, align 4
  store float 0.000000e+00, float* %40, align 4
  %41 = load { float, float }*, { float, float }** %7, align 8
  %42 = getelementptr inbounds { float, float }, { float, float }* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  %44 = getelementptr inbounds { float, float }, { float, float }* %41, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fpext float %43 to double
  %47 = fpext float %45 to double
  %48 = fmul double %46, 4.000000e+00
  %49 = fmul double %47, 4.000000e+00
  %50 = fptrunc double %48 to float
  %51 = fptrunc double %49 to float
  %52 = load { float, float }*, { float, float }** %6, align 8
  %53 = getelementptr inbounds { float, float }, { float, float }* %52, i32 0, i32 0
  %54 = getelementptr inbounds { float, float }, { float, float }* %52, i32 0, i32 1
  store float %50, float* %53, align 4
  store float %51, float* %54, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_to_c8__({ double, double }* noundef %0, double noundef %1, double noundef %2, { double, double }* noundef %3, { double, double }** noundef %4) #0 {
  %6 = alloca { double, double }, align 8
  %7 = alloca { double, double }*, align 8
  %8 = alloca { double, double }*, align 8
  %9 = alloca { double, double }**, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  store double %1, double* %10, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double %2, double* %11, align 8
  store { double, double }* %0, { double, double }** %7, align 8
  store { double, double }* %3, { double, double }** %8, align 8
  store { double, double }** %4, { double, double }*** %9, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = load { double, double }*, { double, double }** %8, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = fcmp une double %13, %18
  %22 = fcmp une double %15, %20
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  call void @abort() #3
  unreachable

25:                                               ; preds = %5
  %26 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = load { double, double }**, { double, double }*** %9, align 8
  %31 = load { double, double }*, { double, double }** %30, align 8
  %32 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fcmp une double %27, %33
  %37 = fcmp une double %29, %35
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  call void @abort() #3
  unreachable

40:                                               ; preds = %25
  %41 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %42 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double 0.000000e+00, double* %41, align 8
  store double 0.000000e+00, double* %42, align 8
  %43 = load { double, double }*, { double, double }** %8, align 8
  %44 = getelementptr inbounds { double, double }, { double, double }* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds { double, double }, { double, double }* %43, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = fmul double %45, 4.000000e+00
  %49 = fmul double %47, 4.000000e+00
  %50 = load { double, double }*, { double, double }** %7, align 8
  %51 = getelementptr inbounds { double, double }, { double, double }* %50, i32 0, i32 0
  %52 = getelementptr inbounds { double, double }, { double, double }* %50, i32 0, i32 1
  store double %48, double* %51, align 8
  store double %49, double* %52, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
