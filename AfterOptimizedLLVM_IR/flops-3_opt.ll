; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A0 = dso_local global double 1.000000e+00, align 8
@A1 = dso_local global double 0xBFC5555555559705, align 8
@A2 = dso_local global double 0x3F811111113AE9A3, align 8
@A3 = dso_local global double 0x3F2A01A03FB1CA71, align 8
@A4 = dso_local global double 0x3EC71DF284AA3566, align 8
@A5 = dso_local global double 0x3E5AEB5A8CF8A426, align 8
@A6 = dso_local global double 0x3DE68DF75229C1A6, align 8
@B0 = dso_local global double 1.000000e+00, align 8
@B1 = dso_local global double 0xBFDFFFFFFFFF8156, align 8
@B2 = dso_local global double 0x3FA5555555290224, align 8
@B3 = dso_local global double 0xBF56C16BFFE76516, align 8
@B4 = dso_local global double 0x3EFA019528242DB7, align 8
@B5 = dso_local global double 0xBE927BB3D47DDB8E, align 8
@B6 = dso_local global double 0x3E2157B275DF182A, align 8
@C0 = dso_local global double 1.000000e+00, align 8
@C1 = dso_local global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = dso_local global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = dso_local global double 0x3FC555587C476915, align 8
@C4 = dso_local global double 0x3FA5555B7E795548, align 8
@C5 = dso_local global double 0x3F810D9A4AD9120C, align 8
@C6 = dso_local global double 0x3F5713187EDB8C05, align 8
@C7 = dso_local global double 0x3F26C077C8173F3A, align 8
@C8 = dso_local global double 0x3F049D03FE04B1CF, align 8
@D1 = dso_local global double 0x3FA47AE143138374, align 8
@D2 = dso_local global double 9.600000e-04, align 8
@D3 = dso_local global double 0x3EB4B05A0FF4A728, align 8
@E2 = dso_local global double 4.800000e-04, align 8
@E3 = dso_local global double 4.110510e-07, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@TLimit = dso_local global double 0.000000e+00, align 8
@piref = dso_local global double 0.000000e+00, align 8
@one = dso_local global double 0.000000e+00, align 8
@two = dso_local global double 0.000000e+00, align 8
@three = dso_local global double 0.000000e+00, align 8
@four = dso_local global double 0.000000e+00, align 8
@five = dso_local global double 0.000000e+00, align 8
@scale = dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@sa = dso_local global double 0.000000e+00, align 8
@sb = dso_local global double 0.000000e+00, align 8
@sc = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@T = dso_local global [36 x double] zeroinitializer, align 16
@sd = dso_local global double 0.000000e+00, align 8
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i64 15625, i64* %7, align 8
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %8, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %14 = load double, double* @one, align 8
  store double %14, double* @scale, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i64, i64* %7, align 8
  %18 = mul nsw i64 %17, 20000
  store i64 %18, i64* %10, align 8
  %19 = load double, double* @piref, align 8
  %20 = load double, double* @three, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sitofp i64 %21 to double
  %23 = fmul double %20, %22
  %24 = fdiv double %19, %23
  store double %24, double* %6, align 8
  store double 0.000000e+00, double* %2, align 8
  store double 0.000000e+00, double* %4, align 8
  store i64 1, i64* %9, align 8
  br label %25

25:                                               ; preds = %64, %0
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %27, 1
  %29 = icmp sle i64 %26, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = load double, double* %4, align 8
  %32 = load double, double* @one, align 8
  %33 = fadd double %31, %32
  store double %33, double* %4, align 8
  %34 = load double, double* %4, align 8
  %35 = load double, double* %6, align 8
  %36 = fmul double %34, %35
  store double %36, double* %3, align 8
  %37 = load double, double* %3, align 8
  %38 = load double, double* %3, align 8
  %39 = fmul double %37, %38
  store double %39, double* %5, align 8
  %40 = load double, double* %2, align 8
  %41 = load double, double* %3, align 8
  %42 = load double, double* @A6, align 8
  %43 = load double, double* %5, align 8
  %44 = load double, double* @A5, align 8
  %45 = fneg double %44
  %46 = call double @llvm.fmuladd.f64(double %42, double %43, double %45)
  %47 = load double, double* %5, align 8
  %48 = load double, double* @A4, align 8
  %49 = call double @llvm.fmuladd.f64(double %46, double %47, double %48)
  %50 = load double, double* %5, align 8
  %51 = load double, double* @A3, align 8
  %52 = fneg double %51
  %53 = call double @llvm.fmuladd.f64(double %49, double %50, double %52)
  %54 = load double, double* %5, align 8
  %55 = load double, double* @A2, align 8
  %56 = call double @llvm.fmuladd.f64(double %53, double %54, double %55)
  %57 = load double, double* %5, align 8
  %58 = load double, double* @A1, align 8
  %59 = call double @llvm.fmuladd.f64(double %56, double %57, double %58)
  %60 = load double, double* %5, align 8
  %61 = load double, double* @one, align 8
  %62 = call double @llvm.fmuladd.f64(double %59, double %60, double %61)
  %63 = call double @llvm.fmuladd.f64(double %41, double %62, double %40)
  store double %63, double* %2, align 8
  br label %64

64:                                               ; preds = %30
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %25, !llvm.loop !4

67:                                               ; preds = %25
  %68 = load double, double* @piref, align 8
  %69 = load double, double* @three, align 8
  %70 = fdiv double %68, %69
  store double %70, double* %3, align 8
  %71 = load double, double* %3, align 8
  %72 = load double, double* %3, align 8
  %73 = fmul double %71, %72
  store double %73, double* %5, align 8
  %74 = load double, double* %3, align 8
  %75 = load double, double* @A6, align 8
  %76 = load double, double* %5, align 8
  %77 = load double, double* @A5, align 8
  %78 = fneg double %77
  %79 = call double @llvm.fmuladd.f64(double %75, double %76, double %78)
  %80 = load double, double* %5, align 8
  %81 = load double, double* @A4, align 8
  %82 = call double @llvm.fmuladd.f64(double %79, double %80, double %81)
  %83 = load double, double* %5, align 8
  %84 = load double, double* @A3, align 8
  %85 = fneg double %84
  %86 = call double @llvm.fmuladd.f64(double %82, double %83, double %85)
  %87 = load double, double* %5, align 8
  %88 = load double, double* @A2, align 8
  %89 = call double @llvm.fmuladd.f64(double %86, double %87, double %88)
  %90 = load double, double* %5, align 8
  %91 = load double, double* @A1, align 8
  %92 = call double @llvm.fmuladd.f64(double %89, double %90, double %91)
  %93 = load double, double* %5, align 8
  %94 = load double, double* @one, align 8
  %95 = call double @llvm.fmuladd.f64(double %92, double %93, double %94)
  %96 = fmul double %74, %95
  store double %96, double* @sa, align 8
  %97 = load double, double* %6, align 8
  %98 = load double, double* @sa, align 8
  %99 = load double, double* @two, align 8
  %100 = load double, double* %2, align 8
  %101 = call double @llvm.fmuladd.f64(double %99, double %100, double %98)
  %102 = fmul double %97, %101
  %103 = load double, double* @two, align 8
  %104 = fdiv double %102, %103
  store double %104, double* @sa, align 8
  store double 5.000000e-01, double* @sb, align 8
  %105 = load double, double* @sa, align 8
  %106 = load double, double* @sb, align 8
  %107 = fsub double %105, %106
  store double %107, double* @sc, align 8
  %108 = load double, double* @sc, align 8
  %109 = fmul double %108, 1.000000e-30
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double noundef %109, double noundef 0.000000e+00, double noundef 0.000000e+00)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
