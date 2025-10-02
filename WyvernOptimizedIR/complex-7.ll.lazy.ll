; ModuleID = './complex-7.ll'
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
  %7 = alloca <2 x float>, align 8
  %8 = alloca <2 x float>, align 8
  %9 = alloca <2 x float>, align 8
  %10 = alloca <2 x float>, align 8
  %11 = alloca <2 x float>, align 8
  store <2 x float> %1, <2 x float>* %7, align 8
  store <2 x float> %2, <2 x float>* %8, align 8
  store <2 x float> %3, <2 x float>* %9, align 8
  store <2 x float> %4, <2 x float>* %10, align 8
  store <2 x float> %5, <2 x float>* %11, align 8
  %12 = getelementptr inbounds <2 x float>, <2 x float>* %7, i64 0, i64 0
  %13 = load float, float* %12, align 8
  %14 = getelementptr inbounds <2 x float>, <2 x float>* %7, i64 0, i64 1
  %15 = load float, float* %14, align 4
  %16 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i64 0, i32 0), align 4
  %17 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i64 0, i32 1), align 4
  %18 = fcmp une float %13, %16
  %19 = fcmp une float %15, %17
  %20 = or i1 %18, %19
  br i1 %20, label %61, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds <2 x float>, <2 x float>* %8, i64 0, i64 0
  %23 = load float, float* %22, align 8
  %24 = getelementptr inbounds <2 x float>, <2 x float>* %8, i64 0, i64 1
  %25 = load float, float* %24, align 4
  %26 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i64 0, i32 0), align 4
  %27 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i64 0, i32 1), align 4
  %28 = fcmp une float %23, %26
  %29 = fcmp une float %25, %27
  %30 = or i1 %28, %29
  br i1 %30, label %61, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds <2 x float>, <2 x float>* %9, i64 0, i64 0
  %33 = load float, float* %32, align 8
  %34 = getelementptr inbounds <2 x float>, <2 x float>* %9, i64 0, i64 1
  %35 = load float, float* %34, align 4
  %36 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i64 0, i32 0), align 4
  %37 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i64 0, i32 1), align 4
  %38 = fcmp une float %33, %36
  %39 = fcmp une float %35, %37
  %40 = or i1 %38, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 0, i64 0
  %43 = load float, float* %42, align 8
  %44 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 0, i64 1
  %45 = load float, float* %44, align 4
  %46 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i64 0, i32 0), align 4
  %47 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i64 0, i32 1), align 4
  %48 = fcmp une float %43, %46
  %49 = fcmp une float %45, %47
  %50 = or i1 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds <2 x float>, <2 x float>* %11, i64 0, i64 0
  %53 = load float, float* %52, align 8
  %54 = getelementptr inbounds <2 x float>, <2 x float>* %11, i64 0, i64 1
  %55 = load float, float* %54, align 4
  %56 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i64 0, i32 0), align 4
  %57 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i64 0, i32 1), align 4
  %58 = fcmp une float %53, %56
  %59 = fcmp une float %55, %57
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51, %41, %31, %21, %6
  call void @abort() #4
  unreachable

62:                                               ; preds = %51
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_double(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, { double, double }* nocapture noundef readonly byval({ double, double }) align 8 %9) #2 {
  %11 = alloca { double, double }, align 8
  %12 = alloca { double, double }, align 8
  %13 = alloca { double, double }, align 8
  %14 = alloca { double, double }, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 0
  store double %1, double* %15, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 1
  store double %2, double* %16, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 0
  store double %3, double* %17, align 8
  %18 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 1
  store double %4, double* %18, align 8
  %19 = getelementptr inbounds { double, double }, { double, double }* %13, i64 0, i32 0
  store double %5, double* %19, align 8
  %20 = getelementptr inbounds { double, double }, { double, double }* %13, i64 0, i32 1
  store double %6, double* %20, align 8
  %21 = getelementptr inbounds { double, double }, { double, double }* %14, i64 0, i32 0
  store double %7, double* %21, align 8
  %22 = getelementptr inbounds { double, double }, { double, double }* %14, i64 0, i32 1
  store double %8, double* %22, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i64 0, i32 0), align 8
  %28 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i64 0, i32 1), align 8
  %29 = fcmp une double %24, %27
  %30 = fcmp une double %26, %28
  %31 = or i1 %29, %30
  br i1 %31, label %72, label %32

32:                                               ; preds = %10
  %33 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i64 0, i32 0), align 8
  %38 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i64 0, i32 1), align 8
  %39 = fcmp une double %34, %37
  %40 = fcmp une double %36, %38
  %41 = or i1 %39, %40
  br i1 %41, label %72, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds { double, double }, { double, double }* %13, i64 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds { double, double }, { double, double }* %13, i64 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i64 0, i32 0), align 8
  %48 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i64 0, i32 1), align 8
  %49 = fcmp une double %44, %47
  %50 = fcmp une double %46, %48
  %51 = or i1 %49, %50
  br i1 %51, label %72, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds { double, double }, { double, double }* %14, i64 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = getelementptr inbounds { double, double }, { double, double }* %14, i64 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i64 0, i32 0), align 8
  %58 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i64 0, i32 1), align 8
  %59 = fcmp une double %54, %57
  %60 = fcmp une double %56, %58
  %61 = or i1 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds { double, double }, { double, double }* %9, i64 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = getelementptr inbounds { double, double }, { double, double }* %9, i64 0, i32 1
  %66 = load double, double* %65, align 8
  %67 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i64 0, i32 0), align 8
  %68 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i64 0, i32 1), align 8
  %69 = fcmp une double %64, %67
  %70 = fcmp une double %66, %68
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62, %52, %42, %32, %10
  call void @abort() #4
  unreachable

73:                                               ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_long_double(i32 noundef %0, { x86_fp80, x86_fp80 }* nocapture noundef readonly byval({ x86_fp80, x86_fp80 }) align 16 %1, { x86_fp80, x86_fp80 }* nocapture noundef readonly byval({ x86_fp80, x86_fp80 }) align 16 %2, { x86_fp80, x86_fp80 }* nocapture noundef readonly byval({ x86_fp80, x86_fp80 }) align 16 %3, { x86_fp80, x86_fp80 }* nocapture noundef readonly byval({ x86_fp80, x86_fp80 }) align 16 %4, { x86_fp80, x86_fp80 }* nocapture noundef readonly byval({ x86_fp80, x86_fp80 }) align 16 %5) #2 {
  %7 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i64 0, i32 0
  %8 = load x86_fp80, x86_fp80* %7, align 16
  %9 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i64 0, i32 1
  %10 = load x86_fp80, x86_fp80* %9, align 16
  %11 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i64 0, i32 0), align 16
  %12 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i64 0, i32 1), align 16
  %13 = fcmp une x86_fp80 %8, %11
  %14 = fcmp une x86_fp80 %10, %12
  %15 = or i1 %13, %14
  br i1 %15, label %56, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i64 0, i32 0
  %18 = load x86_fp80, x86_fp80* %17, align 16
  %19 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i64 0, i32 1
  %20 = load x86_fp80, x86_fp80* %19, align 16
  %21 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i64 0, i32 0), align 16
  %22 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i64 0, i32 1), align 16
  %23 = fcmp une x86_fp80 %18, %21
  %24 = fcmp une x86_fp80 %20, %22
  %25 = or i1 %23, %24
  br i1 %25, label %56, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i64 0, i32 0
  %28 = load x86_fp80, x86_fp80* %27, align 16
  %29 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %3, i64 0, i32 1
  %30 = load x86_fp80, x86_fp80* %29, align 16
  %31 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i64 0, i32 0), align 16
  %32 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i64 0, i32 1), align 16
  %33 = fcmp une x86_fp80 %28, %31
  %34 = fcmp une x86_fp80 %30, %32
  %35 = or i1 %33, %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i64 0, i32 0
  %38 = load x86_fp80, x86_fp80* %37, align 16
  %39 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %4, i64 0, i32 1
  %40 = load x86_fp80, x86_fp80* %39, align 16
  %41 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i64 0, i32 0), align 16
  %42 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i64 0, i32 1), align 16
  %43 = fcmp une x86_fp80 %38, %41
  %44 = fcmp une x86_fp80 %40, %42
  %45 = or i1 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %5, i64 0, i32 0
  %48 = load x86_fp80, x86_fp80* %47, align 16
  %49 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %5, i64 0, i32 1
  %50 = load x86_fp80, x86_fp80* %49, align 16
  %51 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i64 0, i32 0), align 16
  %52 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i64 0, i32 1), align 16
  %53 = fcmp une x86_fp80 %48, %51
  %54 = fcmp une x86_fp80 %50, %52
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %36, %26, %16, %6
  call void @abort() #4
  unreachable

57:                                               ; preds = %46
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca <2 x float>, align 8
  %2 = alloca <2 x float>, align 8
  %3 = alloca <2 x float>, align 8
  %4 = alloca <2 x float>, align 8
  %5 = alloca <2 x float>, align 8
  %6 = alloca { double, double }, align 8
  %7 = alloca { x86_fp80, x86_fp80 }, align 16
  %8 = alloca { x86_fp80, x86_fp80 }, align 16
  %9 = alloca { x86_fp80, x86_fp80 }, align 16
  %10 = alloca { x86_fp80, x86_fp80 }, align 16
  %11 = alloca { x86_fp80, x86_fp80 }, align 16
  %12 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i64 0, i32 0), align 4
  %13 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f1, i64 0, i32 1), align 4
  %14 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i64 0, i32 0), align 4
  %15 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f2, i64 0, i32 1), align 4
  %16 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i64 0, i32 0), align 4
  %17 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f3, i64 0, i32 1), align 4
  %18 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i64 0, i32 0), align 4
  %19 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f4, i64 0, i32 1), align 4
  %20 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i64 0, i32 0), align 4
  %21 = load volatile float, float* getelementptr inbounds ({ float, float }, { float, float }* @f5, i64 0, i32 1), align 4
  %22 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 0
  %23 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 1
  store float %12, float* %22, align 8
  store float %13, float* %23, align 4
  %24 = load <2 x float>, <2 x float>* %1, align 8
  %25 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %26 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  store float %14, float* %25, align 8
  store float %15, float* %26, align 4
  %27 = load <2 x float>, <2 x float>* %2, align 8
  %28 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  %29 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  store float %16, float* %28, align 8
  store float %17, float* %29, align 4
  %30 = load <2 x float>, <2 x float>* %3, align 8
  %31 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 0
  %32 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 1
  store float %18, float* %31, align 8
  store float %19, float* %32, align 4
  %33 = load <2 x float>, <2 x float>* %4, align 8
  %34 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 0
  %35 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 1
  store float %20, float* %34, align 8
  store float %21, float* %35, align 4
  %36 = load <2 x float>, <2 x float>* %5, align 8
  call void @check_float(i32 noundef 0, <2 x float> noundef %24, <2 x float> noundef %27, <2 x float> noundef %30, <2 x float> noundef %33, <2 x float> noundef %36)
  %37 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i64 0, i32 0), align 8
  %38 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d1, i64 0, i32 1), align 8
  %39 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i64 0, i32 0), align 8
  %40 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d2, i64 0, i32 1), align 8
  %41 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i64 0, i32 0), align 8
  %42 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d3, i64 0, i32 1), align 8
  %43 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i64 0, i32 0), align 8
  %44 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d4, i64 0, i32 1), align 8
  %45 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i64 0, i32 0), align 8
  %46 = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @d5, i64 0, i32 1), align 8
  %47 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 0
  %48 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 1
  store double %45, double* %47, align 8
  store double %46, double* %48, align 8
  call void @check_double(i32 noundef 0, double noundef %37, double noundef %38, double noundef %39, double noundef %40, double noundef %41, double noundef %42, double noundef %43, double noundef %44, { double, double }* noundef nonnull byval({ double, double }) align 8 %6)
  %49 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i64 0, i32 0), align 16
  %50 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld1, i64 0, i32 1), align 16
  %51 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i64 0, i32 0), align 16
  %52 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld2, i64 0, i32 1), align 16
  %53 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i64 0, i32 0), align 16
  %54 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld3, i64 0, i32 1), align 16
  %55 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i64 0, i32 0), align 16
  %56 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld4, i64 0, i32 1), align 16
  %57 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i64 0, i32 0), align 16
  %58 = load volatile x86_fp80, x86_fp80* getelementptr inbounds ({ x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* @ld5, i64 0, i32 1), align 16
  %59 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %7, i64 0, i32 0
  %60 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %7, i64 0, i32 1
  store x86_fp80 %49, x86_fp80* %59, align 16
  store x86_fp80 %50, x86_fp80* %60, align 16
  %61 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %8, i64 0, i32 0
  %62 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %8, i64 0, i32 1
  store x86_fp80 %51, x86_fp80* %61, align 16
  store x86_fp80 %52, x86_fp80* %62, align 16
  %63 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %9, i64 0, i32 0
  %64 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %9, i64 0, i32 1
  store x86_fp80 %53, x86_fp80* %63, align 16
  store x86_fp80 %54, x86_fp80* %64, align 16
  %65 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %10, i64 0, i32 0
  %66 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %10, i64 0, i32 1
  store x86_fp80 %55, x86_fp80* %65, align 16
  store x86_fp80 %56, x86_fp80* %66, align 16
  %67 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %11, i64 0, i32 0
  %68 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %11, i64 0, i32 1
  store x86_fp80 %57, x86_fp80* %67, align 16
  store x86_fp80 %58, x86_fp80* %68, align 16
  call void @check_long_double(i32 noundef 0, { x86_fp80, x86_fp80 }* noundef nonnull byval({ x86_fp80, x86_fp80 }) align 16 %7, { x86_fp80, x86_fp80 }* noundef nonnull byval({ x86_fp80, x86_fp80 }) align 16 %8, { x86_fp80, x86_fp80 }* noundef nonnull byval({ x86_fp80, x86_fp80 }) align 16 %9, { x86_fp80, x86_fp80 }* noundef nonnull byval({ x86_fp80, x86_fp80 }) align 16 %10, { x86_fp80, x86_fp80 }* noundef nonnull byval({ x86_fp80, x86_fp80 }) align 16 %11)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
