; ModuleID = './flops-8.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-8.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.1, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @str.2, i64 0, i64 0))
  %1 = load double, double* @piref, align 8
  %2 = load double, double* @three, align 8
  %3 = fmul double %2, 1.562500e+08
  %4 = fdiv double %1, %3
  br label %5

5:                                                ; preds = %11, %0
  %.01 = phi double [ 0.000000e+00, %0 ], [ %40, %11 ]
  %.0 = phi i64 [ 1, %0 ], [ %41, %11 ]
  %6 = icmp ult i64 %.0, 156250000
  br i1 %6, label %7, label %42

7:                                                ; preds = %5
  %8 = sitofp i64 %.0 to double
  %9 = fmul double %4, %8
  %10 = fmul double %9, %9
  br label %11

11:                                               ; preds = %7
  %12 = load double, double* @B6, align 8
  %13 = load double, double* @B5, align 8
  %14 = call double @llvm.fmuladd.f64(double %12, double %10, double %13)
  %15 = load double, double* @B4, align 8
  %16 = call double @llvm.fmuladd.f64(double %10, double %14, double %15)
  %17 = load double, double* @B3, align 8
  %18 = call double @llvm.fmuladd.f64(double %10, double %16, double %17)
  %19 = load double, double* @B2, align 8
  %20 = call double @llvm.fmuladd.f64(double %10, double %18, double %19)
  %21 = load double, double* @B1, align 8
  %22 = call double @llvm.fmuladd.f64(double %10, double %20, double %21)
  %23 = load double, double* @one, align 8
  %24 = call double @llvm.fmuladd.f64(double %10, double %22, double %23)
  %25 = fmul double %24, %24
  %26 = fmul double %25, %9
  %27 = load double, double* @A6, align 8
  %28 = load double, double* @A5, align 8
  %29 = call double @llvm.fmuladd.f64(double %27, double %10, double %28)
  %30 = load double, double* @A4, align 8
  %31 = call double @llvm.fmuladd.f64(double %29, double %10, double %30)
  %32 = load double, double* @A3, align 8
  %33 = call double @llvm.fmuladd.f64(double %31, double %10, double %32)
  %34 = load double, double* @A2, align 8
  %35 = call double @llvm.fmuladd.f64(double %33, double %10, double %34)
  %36 = load double, double* @A1, align 8
  %37 = call double @llvm.fmuladd.f64(double %35, double %10, double %36)
  %38 = load double, double* @one, align 8
  %39 = call double @llvm.fmuladd.f64(double %37, double %10, double %38)
  %40 = call double @llvm.fmuladd.f64(double %26, double %39, double %.01)
  %41 = add nuw nsw i64 %.0, 1
  br label %5, !llvm.loop !4

42:                                               ; preds = %5
  %43 = load double, double* @piref, align 8
  %44 = load double, double* @three, align 8
  %45 = fdiv double %43, %44
  %46 = fmul double %45, %45
  %47 = load double, double* @A6, align 8
  %48 = load double, double* @A5, align 8
  %49 = call double @llvm.fmuladd.f64(double %47, double %46, double %48)
  %50 = load double, double* @A4, align 8
  %51 = call double @llvm.fmuladd.f64(double %49, double %46, double %50)
  %52 = load double, double* @A3, align 8
  %53 = call double @llvm.fmuladd.f64(double %51, double %46, double %52)
  %54 = load double, double* @A2, align 8
  %55 = call double @llvm.fmuladd.f64(double %53, double %46, double %54)
  %56 = load double, double* @A1, align 8
  %57 = call double @llvm.fmuladd.f64(double %55, double %46, double %56)
  %58 = load double, double* @one, align 8
  %59 = call double @llvm.fmuladd.f64(double %57, double %46, double %58)
  %60 = fmul double %45, %59
  store double %60, double* @sa, align 8
  %61 = load double, double* @B6, align 8
  %62 = load double, double* @B5, align 8
  %63 = call double @llvm.fmuladd.f64(double %61, double %46, double %62)
  %64 = load double, double* @B4, align 8
  %65 = call double @llvm.fmuladd.f64(double %46, double %63, double %64)
  %66 = load double, double* @B3, align 8
  %67 = call double @llvm.fmuladd.f64(double %46, double %65, double %66)
  %68 = load double, double* @B2, align 8
  %69 = call double @llvm.fmuladd.f64(double %46, double %67, double %68)
  %70 = load double, double* @B1, align 8
  %71 = call double @llvm.fmuladd.f64(double %46, double %69, double %70)
  %72 = load double, double* @one, align 8
  %73 = call double @llvm.fmuladd.f64(double %46, double %71, double %72)
  store double %73, double* @sb, align 8
  %74 = load double, double* @sa, align 8
  %75 = fmul double %74, %73
  %76 = fmul double %75, %73
  store double %76, double* @sa, align 8
  %77 = load double, double* @two, align 8
  %78 = call double @llvm.fmuladd.f64(double %77, double %.01, double %76)
  %79 = fmul double %4, %78
  %80 = fdiv double %79, %77
  store double %80, double* @sa, align 8
  store double 0x3FD2AAAAAAAAAAAB, double* @sb, align 8
  %81 = fadd double %80, 0xBFD2AAAAAAAAAAAB
  store double %81, double* @sc, align 8
  %82 = fmul double %81, 1.000000e-30
  %83 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double noundef %82, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
