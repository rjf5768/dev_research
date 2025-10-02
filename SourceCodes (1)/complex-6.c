; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"test_float failed\0A\00", align 1
@err = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"test_double failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"test_long_double failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"test_int failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"test_long_int failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x float> @ctest_float(<2 x float> noundef %0) #0 {
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %0, <2 x float>* %5, align 4
  %6 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %9 = load float, float* %8, align 4
  %10 = fneg float %9
  %11 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %12 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  store float %7, float* %11, align 4
  store float %10, float* %12, align 4
  %13 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float %14, float* %17, align 4
  store float %16, float* %18, align 4
  %19 = bitcast { float, float }* %2 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 4
  ret <2 x float> %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_float() #0 {
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %6 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float 1.000000e+00, float* %5, align 4
  store float 2.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %12 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  store float %8, float* %11, align 4
  store float %10, float* %12, align 4
  %13 = bitcast { float, float }* %3 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %15 = call <2 x float> @ctest_float(<2 x float> noundef %14)
  %16 = bitcast { float, float }* %4 to <2 x float>*
  store <2 x float> %15, <2 x float>* %16, align 4
  %17 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 0
  %22 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 1
  store float %18, float* %21, align 4
  store float %20, float* %22, align 4
  %23 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = getelementptr inbounds { float, float }, { float, float }* %1, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fpext float %24 to double
  %28 = fpext float %26 to double
  %29 = fcmp une double %27, 1.000000e+00
  %30 = fcmp une double %28, -2.000000e+00
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %0
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @err, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @err, align 4
  br label %36

36:                                               ; preds = %32, %0
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @ctest_double(double noundef %0, double noundef %1) #2 {
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %0, double* %6, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %1, double* %7, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fneg double %11
  %13 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %14 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %9, double* %13, align 8
  store double %12, double* %14, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %20 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %16, double* %19, align 8
  store double %18, double* %20, align 8
  %21 = load { double, double }, { double, double }* %3, align 8
  ret { double, double } %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_double() #2 {
  %1 = alloca { double, double }, align 8
  %2 = alloca { double, double }, align 8
  %3 = alloca { double, double }, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double 1.000000e+00, double* %4, align 8
  store double 2.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %11 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %7, double* %10, align 8
  store double %9, double* %11, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = call { double, double } @ctest_double(double noundef %13, double noundef %15)
  %17 = extractvalue { double, double } %16, 0
  %18 = extractvalue { double, double } %16, 1
  %19 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 0
  %20 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 1
  store double %17, double* %19, align 8
  store double %18, double* %20, align 8
  %21 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %1, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fcmp une double %22, 1.000000e+00
  %26 = fcmp une double %24, -2.000000e+00
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %0
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @err, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @err, align 4
  br label %32

32:                                               ; preds = %28, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local { x86_fp80, x86_fp80 } @ctest_long_double({ x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %0) #2 {
  %2 = alloca { x86_fp80, x86_fp80 }, align 16
  %3 = alloca { x86_fp80, x86_fp80 }, align 16
  %4 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i32 0, i32 0
  %5 = load x86_fp80, x86_fp80* %4, align 16
  %6 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i32 0, i32 1
  %7 = load x86_fp80, x86_fp80* %6, align 16
  %8 = fneg x86_fp80 %7
  %9 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 0
  %10 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 1
  store x86_fp80 %5, x86_fp80* %9, align 16
  store x86_fp80 %8, x86_fp80* %10, align 16
  %11 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 0
  %12 = load x86_fp80, x86_fp80* %11, align 16
  %13 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 1
  %14 = load x86_fp80, x86_fp80* %13, align 16
  %15 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 0
  %16 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 1
  store x86_fp80 %12, x86_fp80* %15, align 16
  store x86_fp80 %14, x86_fp80* %16, align 16
  %17 = load { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, align 16
  ret { x86_fp80, x86_fp80 } %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_long_double() #2 {
  %1 = alloca { x86_fp80, x86_fp80 }, align 16
  %2 = alloca { x86_fp80, x86_fp80 }, align 16
  %3 = alloca { x86_fp80, x86_fp80 }, align 16
  %4 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 0
  %5 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 1
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %4, align 16
  store x86_fp80 0xK40008000000000000000, x86_fp80* %5, align 16
  %6 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 0
  %7 = load x86_fp80, x86_fp80* %6, align 16
  %8 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 1
  %9 = load x86_fp80, x86_fp80* %8, align 16
  %10 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 0
  %11 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 1
  store x86_fp80 %7, x86_fp80* %10, align 16
  store x86_fp80 %9, x86_fp80* %11, align 16
  %12 = call { x86_fp80, x86_fp80 } @ctest_long_double({ x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %3)
  %13 = extractvalue { x86_fp80, x86_fp80 } %12, 0
  %14 = extractvalue { x86_fp80, x86_fp80 } %12, 1
  %15 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i32 0, i32 0
  %16 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i32 0, i32 1
  store x86_fp80 %13, x86_fp80* %15, align 16
  store x86_fp80 %14, x86_fp80* %16, align 16
  %17 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i32 0, i32 0
  %18 = load x86_fp80, x86_fp80* %17, align 16
  %19 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i32 0, i32 1
  %20 = load x86_fp80, x86_fp80* %19, align 16
  %21 = fcmp une x86_fp80 %18, 0xK3FFF8000000000000000
  %22 = fcmp une x86_fp80 %20, 0xKC0008000000000000000
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @err, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @err, align 4
  br label %28

28:                                               ; preds = %24, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ctest_int(i64 noundef %0) #2 {
  %2 = alloca { i32, i32 }, align 4
  %3 = alloca { i32, i32 }, align 4
  %4 = alloca { i32, i32 }, align 4
  %5 = bitcast { i32, i32 }* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub i32 0, %9
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 0
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 1
  store i32 %7, i32* %11, align 4
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  store i32 %16, i32* %18, align 4
  %19 = bitcast { i32, i32 }* %2 to i64*
  %20 = load i64, i64* %19, align 4
  ret i64 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_int() #2 {
  %1 = alloca { i32, i32 }, align 4
  %2 = alloca { i32, i32 }, align 4
  %3 = alloca { i32, i32 }, align 4
  %4 = alloca { i32, i32 }, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 1, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  store i32 %10, i32* %12, align 4
  %13 = bitcast { i32, i32 }* %3 to i64*
  %14 = load i64, i64* %13, align 4
  %15 = call i64 @ctest_int(i64 noundef %14)
  %16 = bitcast { i32, i32 }* %4 to i64*
  store i64 %15, i64* %16, align 4
  %17 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %22 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sitofp i32 %24 to double
  %28 = sitofp i32 %26 to double
  %29 = fcmp une double %27, 1.000000e+00
  %30 = fcmp une double %28, -2.000000e+00
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %0
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @err, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @err, align 4
  br label %36

36:                                               ; preds = %32, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @ctest_long_int(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %9, i64* %13, align 8
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %16, i64* %19, align 8
  store i64 %18, i64* %20, align 8
  %21 = load { i64, i64 }, { i64, i64 }* %3, align 8
  ret { i64, i64 } %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_long_int() #2 {
  %1 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 1, i64* %4, align 8
  store i64 2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %7, i64* %10, align 8
  store i64 %9, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call { i64, i64 } @ctest_long_int(i64 noundef %13, i64 noundef %15)
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %22 to double
  %26 = sitofp i64 %24 to double
  %27 = fcmp une double %25, 1.000000e+00
  %28 = fcmp une double %26, -2.000000e+00
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %0
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32, i32* @err, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @err, align 4
  br label %34

34:                                               ; preds = %30, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* @err, align 4
  call void @test_float()
  call void @test_double()
  call void @test_long_double()
  call void @test_int()
  call void @test_long_int()
  %2 = load i32, i32* @err, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
