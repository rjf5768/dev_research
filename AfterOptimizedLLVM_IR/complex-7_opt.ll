; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-7.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f1 = dso_local global { float, float } { float 0x3FF19999A0000000, float 0x40019999A0000000 }, align 4
@f2 = dso_local global { float, float } { float 0x400A666660000000, float 0x40119999A0000000 }, align 4
@f3 = dso_local global { float, float } { float 5.500000e+00, float 0x401A666660000000 }, align 4
@f4 = dso_local global { float, float } { float 0x401ECCCCC0000000, float 0x40219999A0000000 }, align 4
@f5 = dso_local global { float, float } { float 0x4023CCCCC0000000, float 0x4024333340000000 }, align 4
@d1 = dso_local global { double, double } { double 1.100000e+00, double 2.200000e+00 }, align 8
@d2 = dso_local global { double, double } { double 3.300000e+00, double 4.400000e+00 }, align 8
@d3 = dso_local global { double, double } { double 5.500000e+00, double 6.600000e+00 }, align 8
@d4 = dso_local global { double, double } { double 7.700000e+00, double 8.800000e+00 }, align 8
@d5 = dso_local global { double, double } { double 9.900000e+00, double 1.010000e+01 }, align 8
@ld1 = dso_local global { x86_fp80, x86_fp80 } { x86_fp80 0xK3FFF8CCCCCCCCCCCCCCD, x86_fp80 0xK40008CCCCCCCCCCCCCCD }, align 16
@ld2 = dso_local global { x86_fp80, x86_fp80 } { x86_fp80 0xK4000D333333333333333, x86_fp80 0xK40018CCCCCCCCCCCCCCD }, align 16
@ld3 = dso_local global { x86_fp80, x86_fp80 } { x86_fp80 0xK4001B000000000000000, x86_fp80 0xK4001D333333333333333 }, align 16
@ld4 = dso_local global { x86_fp80, x86_fp80 } { x86_fp80 0xK4001F666666666666666, x86_fp80 0xK40028CCCCCCCCCCCCCCD }, align 16
@ld5 = dso_local global { x86_fp80, x86_fp80 } { x86_fp80 0xK40029E66666666666666, x86_fp80 0xK4002A19999999999999A }, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_float(i32 noundef %0, <2 x float> noundef %1, <2 x float> noundef %2, <2 x float> noundef %3, <2 x float> noundef %4, <2 x float> noundef %5) #0 {
  %7 = alloca { float, float }, align 4
  %8 = alloca { float, float }, align 4
  %9 = alloca { float, float }, align 4
  %10 = alloca { float, float }, align 4
  %11 = alloca { float, float }, align 4
  %12 = alloca i32, align 4
  %13 = bitcast { float, float }* %7 to <2 x float>*
  store <2 x float> %1, <2 x float>* %13, align 4
  %14 = bitcast { float, float }* %8 to <2 x float>*
  store <2 x float> %2, <2 x float>* %14, align 4
  %15 = bitcast { float, float }* %9 to <2 x float>*
  store <2 x float> %3, <2 x float>* %15, align 4
  %16 = bitcast { float, float }* %10 to <2 x float>*
  store <2 x float> %4, <2 x float>* %16, align 4
  %17 = bitcast { float, float }* %11 to <2 x float>*
  store <2 x float> %5, <2 x float>* %17, align 4
  store i32 %0, i32* %12, align 4
  %18 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i32 0, i32 0), align 4
  %23 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i32 0, i32 1), align 4
  %24 = fcmp une float %19, %22
  %25 = fcmp une float %21, %23
  %26 = or i1 %24, %25
  br i1 %26, label %67, label %27

27:                                               ; preds = %6
  %28 = getelementptr inbounds { float, float }, { float, float }* %8, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = getelementptr inbounds { float, float }, { float, float }* %8, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i32 0, i32 0), align 4
  %33 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i32 0, i32 1), align 4
  %34 = fcmp une float %29, %32
  %35 = fcmp une float %31, %33
  %36 = or i1 %34, %35
  br i1 %36, label %67, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds { float, float }, { float, float }* %9, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = getelementptr inbounds { float, float }, { float, float }* %9, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i32 0, i32 0), align 4
  %43 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i32 0, i32 1), align 4
  %44 = fcmp une float %39, %42
  %45 = fcmp une float %41, %43
  %46 = or i1 %44, %45
  br i1 %46, label %67, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds { float, float }, { float, float }* %10, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = getelementptr inbounds { float, float }, { float, float }* %10, i32 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i32 0, i32 0), align 4
  %53 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i32 0, i32 1), align 4
  %54 = fcmp une float %49, %52
  %55 = fcmp une float %51, %53
  %56 = or i1 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds { float, float }, { float, float }* %11, i32 0, i32 0
  %59 = load float, float* %58, align 4
  %60 = getelementptr inbounds { float, float }, { float, float }* %11, i32 0, i32 1
  %61 = load float, float* %60, align 4
  %62 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i32 0, i32 0), align 4
  %63 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i32 0, i32 1), align 4
  %64 = fcmp une float %59, %62
  %65 = fcmp une float %61, %63
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57, %47, %37, %27, %6
  call void @abort() #3
  unreachable

68:                                               ; preds = %57
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_double(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, { double, double }* noundef byval({ double, double }) align 8 %9) #2 {
  %11 = alloca { double, double }, align 8
  %12 = alloca { double, double }, align 8
  %13 = alloca { double, double }, align 8
  %14 = alloca { double, double }, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  store double %1, double* %16, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  store double %2, double* %17, align 8
  %18 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  store double %3, double* %18, align 8
  %19 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %4, double* %19, align 8
  %20 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 0
  store double %5, double* %20, align 8
  %21 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 1
  store double %6, double* %21, align 8
  %22 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 0
  store double %7, double* %22, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  store double %8, double* %23, align 8
  store i32 %0, i32* %15, align 4
  %24 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i32 0, i32 0), align 8
  %29 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i32 0, i32 1), align 8
  %30 = fcmp une double %25, %28
  %31 = fcmp une double %27, %29
  %32 = or i1 %30, %31
  br i1 %32, label %73, label %33

33:                                               ; preds = %10
  %34 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i32 0, i32 0), align 8
  %39 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i32 0, i32 1), align 8
  %40 = fcmp une double %35, %38
  %41 = fcmp une double %37, %39
  %42 = or i1 %40, %41
  br i1 %42, label %73, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i32 0, i32 0), align 8
  %49 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i32 0, i32 1), align 8
  %50 = fcmp une double %45, %48
  %51 = fcmp une double %47, %49
  %52 = or i1 %50, %51
  br i1 %52, label %73, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i32 0, i32 0), align 8
  %59 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i32 0, i32 1), align 8
  %60 = fcmp une double %55, %58
  %61 = fcmp une double %57, %59
  %62 = or i1 %60, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i32 0, i32 0), align 8
  %69 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i32 0, i32 1), align 8
  %70 = fcmp une double %65, %68
  %71 = fcmp une double %67, %69
  %72 = or i1 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63, %53, %43, %33, %10
  call void @abort() #3
  unreachable

74:                                               ; preds = %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_long_double(i32 noundef %0, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %1, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %2, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %3, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %4, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %5) #2 {
  %7 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  %8 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i32 0, i32 0
  %9 = load x86_fp80, x86_fp80* %8, align 16
  %10 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i32 0, i32 1
  %11 = load x86_fp80, x86_fp80* %10, align 16
  %12 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i32 0, i32 0), align 16
  %13 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i32 0, i32 1), align 16
  %14 = fcmp une x86_fp80 %9, %12
  %15 = fcmp une x86_fp80 %11, %13
  %16 = or i1 %14, %15
  br i1 %16, label %57, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 0
  %19 = load x86_fp80, x86_fp80* %18, align 16
  %20 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i32 0, i32 1
  %21 = load x86_fp80, x86_fp80* %20, align 16
  %22 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i32 0, i32 0), align 16
  %23 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i32 0, i32 1), align 16
  %24 = fcmp une x86_fp80 %19, %22
  %25 = fcmp une x86_fp80 %21, %23
  %26 = or i1 %24, %25
  br i1 %26, label %57, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 0
  %29 = load x86_fp80, x86_fp80* %28, align 16
  %30 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i32 0, i32 1
  %31 = load x86_fp80, x86_fp80* %30, align 16
  %32 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i32 0, i32 0), align 16
  %33 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i32 0, i32 1), align 16
  %34 = fcmp une x86_fp80 %29, %32
  %35 = fcmp une x86_fp80 %31, %33
  %36 = or i1 %34, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 0
  %39 = load x86_fp80, x86_fp80* %38, align 16
  %40 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i32 0, i32 1
  %41 = load x86_fp80, x86_fp80* %40, align 16
  %42 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i32 0, i32 0), align 16
  %43 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i32 0, i32 1), align 16
  %44 = fcmp une x86_fp80 %39, %42
  %45 = fcmp une x86_fp80 %41, %43
  %46 = or i1 %44, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %5, i32 0, i32 0
  %49 = load x86_fp80, x86_fp80* %48, align 16
  %50 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %5, i32 0, i32 1
  %51 = load x86_fp80, x86_fp80* %50, align 16
  %52 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i32 0, i32 0), align 16
  %53 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i32 0, i32 1), align 16
  %54 = fcmp une x86_fp80 %49, %52
  %55 = fcmp une x86_fp80 %51, %53
  %56 = or i1 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47, %37, %27, %17, %6
  call void @abort() #3
  unreachable

58:                                               ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca { double, double }, align 8
  %8 = alloca { double, double }, align 8
  %9 = alloca { double, double }, align 8
  %10 = alloca { double, double }, align 8
  %11 = alloca { double, double }, align 8
  %12 = alloca { x86_fp80, x86_fp80 }, align 16
  %13 = alloca { x86_fp80, x86_fp80 }, align 16
  %14 = alloca { x86_fp80, x86_fp80 }, align 16
  %15 = alloca { x86_fp80, x86_fp80 }, align 16
  %16 = alloca { x86_fp80, x86_fp80 }, align 16
  store i32 0, i32* %1, align 4
  %17 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i32 0, i32 0), align 4
  %18 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i32 0, i32 1), align 4
  %19 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i32 0, i32 0), align 4
  %20 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i32 0, i32 1), align 4
  %21 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i32 0, i32 0), align 4
  %22 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i32 0, i32 1), align 4
  %23 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i32 0, i32 0), align 4
  %24 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i32 0, i32 1), align 4
  %25 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i32 0, i32 0), align 4
  %26 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i32 0, i32 1), align 4
  %27 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %28 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float %17, float* %27, align 4
  store float %18, float* %28, align 4
  %29 = bitcast { float, float }* %2 to <2 x float>*
  %30 = load <2 x float>, <2 x float>* %29, align 4
  %31 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %32 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  store float %19, float* %31, align 4
  store float %20, float* %32, align 4
  %33 = bitcast { float, float }* %3 to <2 x float>*
  %34 = load <2 x float>, <2 x float>* %33, align 4
  %35 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %36 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  store float %21, float* %35, align 4
  store float %22, float* %36, align 4
  %37 = bitcast { float, float }* %4 to <2 x float>*
  %38 = load <2 x float>, <2 x float>* %37, align 4
  %39 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %40 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  store float %23, float* %39, align 4
  store float %24, float* %40, align 4
  %41 = bitcast { float, float }* %5 to <2 x float>*
  %42 = load <2 x float>, <2 x float>* %41, align 4
  %43 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 0
  %44 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 1
  store float %25, float* %43, align 4
  store float %26, float* %44, align 4
  %45 = bitcast { float, float }* %6 to <2 x float>*
  %46 = load <2 x float>, <2 x float>* %45, align 4
  call void @check_float(i32 noundef 0, <2 x float> noundef %30, <2 x float> noundef %34, <2 x float> noundef %38, <2 x float> noundef %42, <2 x float> noundef %46)
  %47 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i32 0, i32 0), align 8
  %48 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i32 0, i32 1), align 8
  %49 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i32 0, i32 0), align 8
  %50 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i32 0, i32 1), align 8
  %51 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i32 0, i32 0), align 8
  %52 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i32 0, i32 1), align 8
  %53 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i32 0, i32 0), align 8
  %54 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i32 0, i32 1), align 8
  %55 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i32 0, i32 0), align 8
  %56 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i32 0, i32 1), align 8
  %57 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %58 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %47, double* %57, align 8
  store double %48, double* %58, align 8
  %59 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  %64 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 1
  store double %49, double* %63, align 8
  store double %50, double* %64, align 8
  %65 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  %70 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  store double %51, double* %69, align 8
  store double %52, double* %70, align 8
  %71 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  %74 = load double, double* %73, align 8
  %75 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %76 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %53, double* %75, align 8
  store double %54, double* %76, align 8
  %77 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %78 = load double, double* %77, align 8
  %79 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  %82 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  store double %55, double* %81, align 8
  store double %56, double* %82, align 8
  call void @check_double(i32 noundef 0, double noundef %60, double noundef %62, double noundef %66, double noundef %68, double noundef %72, double noundef %74, double noundef %78, double noundef %80, { double, double }* noundef byval({ double, double }) align 8 %11)
  %83 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i32 0, i32 0), align 16
  %84 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i32 0, i32 1), align 16
  %85 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i32 0, i32 0), align 16
  %86 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i32 0, i32 1), align 16
  %87 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i32 0, i32 0), align 16
  %88 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i32 0, i32 1), align 16
  %89 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i32 0, i32 0), align 16
  %90 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i32 0, i32 1), align 16
  %91 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i32 0, i32 0), align 16
  %92 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i32 0, i32 1), align 16
  %93 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %12, i32 0, i32 0
  %94 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %12, i32 0, i32 1
  store x86_fp80 %83, x86_fp80* %93, align 16
  store x86_fp80 %84, x86_fp80* %94, align 16
  %95 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %13, i32 0, i32 0
  %96 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %13, i32 0, i32 1
  store x86_fp80 %85, x86_fp80* %95, align 16
  store x86_fp80 %86, x86_fp80* %96, align 16
  %97 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %14, i32 0, i32 0
  %98 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %14, i32 0, i32 1
  store x86_fp80 %87, x86_fp80* %97, align 16
  store x86_fp80 %88, x86_fp80* %98, align 16
  %99 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %15, i32 0, i32 0
  %100 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %15, i32 0, i32 1
  store x86_fp80 %89, x86_fp80* %99, align 16
  store x86_fp80 %90, x86_fp80* %100, align 16
  %101 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %16, i32 0, i32 0
  %102 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %16, i32 0, i32 1
  store x86_fp80 %91, x86_fp80* %101, align 16
  store x86_fp80 %92, x86_fp80* %102, align 16
  call void @check_long_double(i32 noundef 0, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %12, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %13, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %14, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %15, { x86_fp80, x86_fp80 }* noundef byval({ x86_fp80, x86_fp80 }) align 16 %16)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
