; ModuleID = './flops-3.ll'
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
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.1 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.2 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str, i64 0, i64 0))
  store double 1.000000e+00, double* @TLimit, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  store double 1.000000e+00, double* @scale, align 8
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.1, i64 0, i64 0))
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @str.2, i64 0, i64 0))
  %1 = load double, double* @piref, align 8
  %2 = load double, double* @three, align 8
  %3 = fmul double %2, 3.125000e+08
  %4 = fdiv double %1, %3
  br label %5

5:                                                ; preds = %12, %0
  %.02 = phi double [ 0.000000e+00, %0 ], [ %9, %12 ]
  %.01 = phi double [ 0.000000e+00, %0 ], [ %28, %12 ]
  %.0 = phi i64 [ 1, %0 ], [ %29, %12 ]
  %6 = icmp ult i64 %.0, 312500000
  br i1 %6, label %7, label %30

7:                                                ; preds = %5
  %8 = load double, double* @one, align 8
  %9 = fadd double %.02, %8
  %10 = fmul double %9, %4
  %11 = fmul double %10, %10
  br label %12

12:                                               ; preds = %7
  %13 = load double, double* @A6, align 8
  %14 = load double, double* @A5, align 8
  %15 = fneg double %14
  %16 = call double @llvm.fmuladd.f64(double %13, double %11, double %15)
  %17 = load double, double* @A4, align 8
  %18 = call double @llvm.fmuladd.f64(double %16, double %11, double %17)
  %19 = load double, double* @A3, align 8
  %20 = fneg double %19
  %21 = call double @llvm.fmuladd.f64(double %18, double %11, double %20)
  %22 = load double, double* @A2, align 8
  %23 = call double @llvm.fmuladd.f64(double %21, double %11, double %22)
  %24 = load double, double* @A1, align 8
  %25 = call double @llvm.fmuladd.f64(double %23, double %11, double %24)
  %26 = load double, double* @one, align 8
  %27 = call double @llvm.fmuladd.f64(double %25, double %11, double %26)
  %28 = call double @llvm.fmuladd.f64(double %10, double %27, double %.01)
  %29 = add nuw nsw i64 %.0, 1
  br label %5, !llvm.loop !4

30:                                               ; preds = %5
  %31 = load double, double* @piref, align 8
  %32 = load double, double* @three, align 8
  %33 = fdiv double %31, %32
  %34 = fmul double %33, %33
  %35 = load double, double* @A6, align 8
  %36 = load double, double* @A5, align 8
  %37 = fneg double %36
  %38 = call double @llvm.fmuladd.f64(double %35, double %34, double %37)
  %39 = load double, double* @A4, align 8
  %40 = call double @llvm.fmuladd.f64(double %38, double %34, double %39)
  %41 = load double, double* @A3, align 8
  %42 = fneg double %41
  %43 = call double @llvm.fmuladd.f64(double %40, double %34, double %42)
  %44 = load double, double* @A2, align 8
  %45 = call double @llvm.fmuladd.f64(double %43, double %34, double %44)
  %46 = load double, double* @A1, align 8
  %47 = call double @llvm.fmuladd.f64(double %45, double %34, double %46)
  %48 = load double, double* @one, align 8
  %49 = call double @llvm.fmuladd.f64(double %47, double %34, double %48)
  %50 = fmul double %33, %49
  store double %50, double* @sa, align 8
  %51 = load double, double* @two, align 8
  %52 = call double @llvm.fmuladd.f64(double %51, double %.01, double %50)
  %53 = fmul double %4, %52
  %54 = fdiv double %53, %51
  store double %54, double* @sa, align 8
  store double 5.000000e-01, double* @sb, align 8
  %55 = fadd double %54, -5.000000e-01
  store double %55, double* @sc, align 8
  %56 = fmul double %55, 1.000000e-30
  %57 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double noundef %56, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
