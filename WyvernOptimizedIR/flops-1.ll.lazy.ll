; ModuleID = './flops-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-1.c"
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
@T = dso_local global [36 x double] zeroinitializer, align 16
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
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
  store double 6.400000e+01, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
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
  store double 0.000000e+00, double* @sa, align 8
  %1 = load double, double* @one, align 8
  %2 = fdiv double %1, 3.125000e+08
  br label %3

3:                                                ; preds = %9, %0
  %.02 = phi double [ 0.000000e+00, %0 ], [ %6, %9 ]
  %.01 = phi i64 [ 1, %0 ], [ %21, %9 ]
  %.0 = phi double [ 0.000000e+00, %0 ], [ %20, %9 ]
  %4 = icmp ult i64 %.01, 312500000
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = fadd double %.02, %1
  %7 = fmul double %6, %2
  %8 = load double, double* @D1, align 8
  br label %9

9:                                                ; preds = %5
  %10 = load double, double* @D3, align 8
  %11 = load double, double* @D2, align 8
  %12 = call double @llvm.fmuladd.f64(double %7, double %10, double %11)
  %13 = call double @llvm.fmuladd.f64(double %7, double %12, double %8)
  %14 = load double, double* @E3, align 8
  %15 = load double, double* @E2, align 8
  %16 = call double @llvm.fmuladd.f64(double %7, double %14, double %15)
  %17 = call double @llvm.fmuladd.f64(double %7, double %16, double %8)
  %18 = call double @llvm.fmuladd.f64(double %7, double %17, double %1)
  %19 = fdiv double %13, %18
  %20 = fadd double %.0, %19
  %21 = add nuw nsw i64 %.01, 1
  br label %3, !llvm.loop !4

22:                                               ; preds = %3
  %23 = load double, double* @D1, align 8
  %24 = load double, double* @D2, align 8
  %25 = fadd double %23, %24
  %26 = load double, double* @D3, align 8
  %27 = fadd double %25, %26
  %28 = load double, double* @one, align 8
  %29 = fadd double %28, %23
  %30 = load double, double* @E2, align 8
  %31 = fadd double %29, %30
  %32 = load double, double* @E3, align 8
  %33 = fadd double %31, %32
  %34 = fdiv double %27, %33
  store double %34, double* @sa, align 8
  %35 = load double, double* @D1, align 8
  store double %35, double* @sb, align 8
  %36 = fadd double %34, %35
  %37 = load double, double* @two, align 8
  %38 = call double @llvm.fmuladd.f64(double %37, double %.0, double %36)
  %39 = fmul double %2, %38
  %40 = fdiv double %39, %37
  store double %40, double* @sa, align 8
  %41 = load double, double* @one, align 8
  %42 = fdiv double %41, %40
  store double %42, double* @sb, align 8
  %43 = fadd double %42, -2.520000e+01
  store double %43, double* @sc, align 8
  %44 = fmul double %43, 1.000000e-30
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double noundef %44, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
