; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/f2c_4.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/f2c_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4a__() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double 1.023000e+03, double* %1, align 8
  %3 = call double @f2c_4b__(double* noundef %1)
  store double %3, double* %2, align 8
  %4 = load double, double* %1, align 8
  %5 = load double, double* %2, align 8
  %6 = fcmp une double %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #4
  unreachable

8:                                                ; preds = %0
  ret void
}

declare dso_local double @f2c_4b__(double* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4c__() #3 {
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  br i1 false, label %4, label %12, !prof !4

4:                                                ; preds = %0
  br i1 false, label %5, label %12, !prof !4

5:                                                ; preds = %4
  %6 = call <2 x float> @__mulsc3(float noundef 5.678000e+03, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #5
  %7 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %6, <2 x float>* %7, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %11 = load float, float* %10, align 4
  br label %12

12:                                               ; preds = %5, %4, %0
  %13 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %4 ], [ %9, %5 ]
  %14 = phi float [ 5.678000e+03, %0 ], [ 5.678000e+03, %4 ], [ %11, %5 ]
  %15 = fadd float 1.234000e+03, %13
  %16 = fadd float 0.000000e+00, %14
  %17 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 0
  %18 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 1
  store float %15, float* %17, align 4
  store float %16, float* %18, align 4
  call void @f2c_4d__({ float, float }* noundef %2, { float, float }* noundef %1)
  %19 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 1
  %22 = load float, float* %21, align 4
  %23 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fcmp une float %20, %24
  %28 = fcmp une float %22, %26
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  call void @abort() #4
  unreachable

31:                                               ; preds = %12
  ret void
}

declare dso_local <2 x float> @__mulsc3(float, float, float, float)

declare dso_local void @f2c_4d__({ float, float }* noundef, { float, float }* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4e__() #3 {
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca i32, align 4
  %4 = alloca { float, float }, align 4
  store i32 0, i32* %3, align 4
  br i1 false, label %5, label %13, !prof !4

5:                                                ; preds = %0
  br i1 false, label %6, label %13, !prof !4

6:                                                ; preds = %5
  %7 = call <2 x float> @__mulsc3(float noundef 5.678000e+03, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #5
  %8 = bitcast { float, float }* %4 to <2 x float>*
  store <2 x float> %7, <2 x float>* %8, align 4
  %9 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %12 = load float, float* %11, align 4
  br label %13

13:                                               ; preds = %6, %5, %0
  %14 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %5 ], [ %10, %6 ]
  %15 = phi float [ 5.678000e+03, %0 ], [ 5.678000e+03, %5 ], [ %12, %6 ]
  %16 = fadd float 1.234000e+03, %14
  %17 = fadd float 0.000000e+00, %15
  %18 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 0
  %19 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 1
  store float %16, float* %18, align 4
  store float %17, float* %19, align 4
  call void @f2c_4f__({ float, float }* noundef %2, i32* noundef %3, { float, float }* noundef %1)
  %20 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fcmp une float %21, %25
  %29 = fcmp une float %23, %27
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  call void @abort() #4
  unreachable

32:                                               ; preds = %13
  ret void
}

declare dso_local void @f2c_4f__({ float, float }* noundef, i32* noundef, { float, float }* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4g__() #0 {
  %1 = alloca { double, double }, align 8
  %2 = alloca { double, double }, align 8
  %3 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 0
  %4 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 1
  store double 1.234000e+03, double* %3, align 8
  store double 5.678000e+03, double* %4, align 8
  call void @f2c_4h__({ double, double }* noundef %2, { double, double }* noundef %1)
  %5 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fcmp une double %6, %10
  %14 = fcmp une double %8, %12
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void @abort() #4
  unreachable

17:                                               ; preds = %0
  ret void
}

declare dso_local void @f2c_4h__({ double, double }* noundef, { double, double }* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4i__() #0 {
  %1 = alloca { double, double }, align 8
  %2 = alloca { double, double }, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 1
  store double 1.234000e+03, double* %4, align 8
  store double 5.678000e+03, double* %5, align 8
  call void @f2c_4j__({ double, double }* noundef %2, i32* noundef %3, { double, double }* noundef %1)
  %6 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fcmp une double %7, %11
  %15 = fcmp une double %9, %13
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  call void @abort() #4
  unreachable

18:                                               ; preds = %0
  ret void
}

declare dso_local void @f2c_4j__({ double, double }* noundef, i32* noundef, { double, double }* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4k__({ float, float }* noundef %0, { float, float }* noundef %1) #0 {
  %3 = alloca { float, float }*, align 8
  %4 = alloca { float, float }*, align 8
  store { float, float }* %0, { float, float }** %3, align 8
  store { float, float }* %1, { float, float }** %4, align 8
  %5 = load { float, float }*, { float, float }** %4, align 8
  %6 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  %9 = load float, float* %8, align 4
  %10 = load { float, float }*, { float, float }** %3, align 8
  %11 = getelementptr inbounds { float, float }, { float, float }* %10, i32 0, i32 0
  %12 = getelementptr inbounds { float, float }, { float, float }* %10, i32 0, i32 1
  store float %7, float* %11, align 4
  store float %9, float* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4l__({ float, float }* noundef %0, i32* noundef %1, { float, float }* noundef %2) #0 {
  %4 = alloca { float, float }*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca { float, float }*, align 8
  store { float, float }* %0, { float, float }** %4, align 8
  store i32* %1, i32** %5, align 8
  store { float, float }* %2, { float, float }** %6, align 8
  %7 = load { float, float }*, { float, float }** %6, align 8
  %8 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = load { float, float }*, { float, float }** %4, align 8
  %13 = getelementptr inbounds { float, float }, { float, float }* %12, i32 0, i32 0
  %14 = getelementptr inbounds { float, float }, { float, float }* %12, i32 0, i32 1
  store float %9, float* %13, align 4
  store float %11, float* %14, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4m__({ double, double }* noundef %0, { double, double }* noundef %1) #0 {
  %3 = alloca { double, double }*, align 8
  %4 = alloca { double, double }*, align 8
  store { double, double }* %0, { double, double }** %3, align 8
  store { double, double }* %1, { double, double }** %4, align 8
  %5 = load { double, double }*, { double, double }** %4, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = load { double, double }*, { double, double }** %3, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %7, double* %11, align 8
  store double %9, double* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4n__({ double, double }* noundef %0, i32* noundef %1, { double, double }* noundef %2) #0 {
  %4 = alloca { double, double }*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca { double, double }*, align 8
  store { double, double }* %0, { double, double }** %4, align 8
  store i32* %1, i32** %5, align 8
  store { double, double }* %2, { double, double }** %6, align 8
  %7 = load { double, double }*, { double, double }** %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = load { double, double }*, { double, double }** %4, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %9, double* %13, align 8
  store double %11, double* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
