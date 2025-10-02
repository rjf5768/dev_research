; ModuleID = './partialsums.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/partialsums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%.9f\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(2/3)^k\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"k^-0.5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1/k(k+1)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Flint Hills\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cookson Hills\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Harmonic\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Riemann Zeta\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Alternating Harmonic\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Gregory\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x double> @make_vec(double noundef %0, double noundef %1) #0 {
  %3 = alloca <2 x double>, align 16
  %4 = getelementptr inbounds <2 x double>, <2 x double>* %3, i64 0, i64 0
  store double %0, double* %4, align 16
  %5 = getelementptr inbounds <2 x double>, <2 x double>* %3, i64 0, i64 1
  store double %1, double* %5, align 8
  %6 = load <2 x double>, <2 x double>* %3, align 16
  ret <2 x double> %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  store <2 x double> %0, <2 x double>* %2, align 16
  %3 = getelementptr inbounds <2 x double>, <2 x double>* %2, i64 0, i64 0
  %4 = load double, double* %3, align 16
  %5 = getelementptr inbounds <2 x double>, <2 x double>* %2, i64 0, i64 1
  %6 = load double, double* %5, align 8
  %7 = fadd double %4, %6
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = alloca <2 x double>, align 16
  %4 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %5 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %6 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  %7 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %8 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  br label %9

9:                                                ; preds = %19, %2
  %.06 = phi double [ 0.000000e+00, %2 ], [ %23, %19 ]
  %.05 = phi double [ 0.000000e+00, %2 ], [ %27, %19 ]
  %.04 = phi double [ 0.000000e+00, %2 ], [ %29, %19 ]
  %.03 = phi double [ 0.000000e+00, %2 ], [ %30, %19 ]
  %.0 = phi double [ 1.000000e+00, %2 ], [ %31, %19 ]
  %10 = fcmp ugt double %.0, 2.500000e+06
  br i1 %10, label %32, label %11

11:                                               ; preds = %9
  %12 = fadd double %.0, -1.000000e+00
  %13 = call double @pow(double noundef 0x3FE5555555555555, double noundef %12) #5
  %14 = call double @sqrt(double noundef %.0) #5
  %15 = fmul double %.0, %.0
  %16 = fmul double %15, %.0
  %17 = call double @sin(double noundef %.0) #5
  %18 = call double @cos(double noundef %.0) #5
  br label %19

19:                                               ; preds = %11
  %20 = fmul double %16, %18
  %21 = fmul double %20, %18
  %22 = fdiv double 1.000000e+00, %21
  %23 = fadd double %.06, %22
  %24 = fmul double %16, %17
  %25 = fmul double %24, %17
  %26 = fdiv double 1.000000e+00, %25
  %27 = fadd double %.05, %26
  %28 = fdiv double 1.000000e+00, %14
  %29 = fadd double %.04, %28
  %30 = fadd double %.03, %13
  %31 = fadd double %.0, 1.000000e+00
  br label %9, !llvm.loop !4

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %39, %32
  %storemerge = phi <2 x double> [ %7, %32 ], [ %56, %39 ]
  %.09 = phi <2 x double> [ %4, %32 ], [ %54, %39 ]
  %.08 = phi <2 x double> [ %4, %32 ], [ %48, %39 ]
  %.07 = phi <2 x double> [ %4, %32 ], [ %50, %39 ]
  %.02 = phi <2 x double> [ %4, %32 ], [ %45, %39 ]
  %.01 = phi <2 x double> [ %4, %32 ], [ %43, %39 ]
  store <2 x double> %storemerge, <2 x double>* %3, align 16
  %34 = getelementptr inbounds <2 x double>, <2 x double>* %3, i64 0, i64 0
  %35 = load double, double* %34, align 16
  %36 = fcmp ugt double %35, 2.500000e+06
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = load <2 x double>, <2 x double>* %3, align 16
  br label %39

39:                                               ; preds = %37
  %40 = fneg <2 x double> %5
  %41 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %38, <2 x double> %40)
  %42 = fdiv <2 x double> %8, %41
  %43 = fadd <2 x double> %.01, %42
  %44 = fdiv <2 x double> %8, %38
  %45 = fadd <2 x double> %.02, %44
  %46 = fmul <2 x double> %38, %38
  %47 = fdiv <2 x double> %5, %46
  %48 = fadd <2 x double> %.08, %47
  %49 = fdiv <2 x double> %5, %38
  %50 = fadd <2 x double> %.07, %49
  %51 = fadd <2 x double> %38, %5
  %52 = fmul <2 x double> %38, %51
  %53 = fdiv <2 x double> %5, %52
  %54 = fadd <2 x double> %.09, %53
  %55 = load <2 x double>, <2 x double>* %3, align 16
  %56 = fadd <2 x double> %55, %6
  br label %33, !llvm.loop !6

57:                                               ; preds = %33
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %.03, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #5
  %59 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %.04, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5
  %60 = call double @sum_vec(<2 x double> noundef %.09)
  %61 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %60, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #5
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %.05, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #5
  %63 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %.06, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #5
  %64 = call double @sum_vec(<2 x double> noundef %.07)
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %64, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #5
  %66 = call double @sum_vec(<2 x double> noundef %.08)
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %66, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #5
  %68 = call double @sum_vec(<2 x double> noundef %.02)
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %68, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #5
  %70 = call double @sum_vec(<2 x double> noundef %.01)
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double noundef %70, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

declare dso_local i32 @printf(i8* noundef, ...) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
