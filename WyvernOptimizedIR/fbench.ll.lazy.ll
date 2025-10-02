; ModuleID = './fbench.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/fbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@niter = dso_local global i32 1000, align 4
@spectral_line = internal global [9 x double] zeroinitializer, align 16
@clear_aperture = internal global double 0.000000e+00, align 8
@current_surfaces = internal global i16 0, align 2
@testcase = internal global [4 x [4 x double]] [[4 x double] [double 2.705000e+01, double 1.513700e+00, double 6.360000e+01, double 5.200000e-01], [4 x double] [double -1.668000e+01, double 1.000000e+00, double 0.000000e+00, double 1.380000e-01], [4 x double] [double -1.668000e+01, double 1.616400e+00, double 3.670000e+01, double 3.800000e-01], [4 x double] [double -7.810000e+01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00]], align 16
@s = internal global [10 x [5 x double]] zeroinitializer, align 16
@.str = private unnamed_addr constant [54 x i8] c"Ready to begin John Walker's floating point accuracy\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"and performance benchmark.  %d iterations will be made.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\0AMeasured run time in seconds should be divided by %.f\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"to normalise for reporting results.  For archival results,\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"adjust iteration count so the benchmark runs about five minutes.\0A\0A\00", align 1
@itercount = dso_local global i32 0, align 4
@paraxial = internal global i16 0, align 2
@object_distance = internal global double 0.000000e+00, align 8
@od_sa = internal global [2 x [2 x double]] zeroinitializer, align 16
@axis_slope_angle = internal global double 0.000000e+00, align 8
@aberr_lspher = internal global double 0.000000e+00, align 8
@aberr_osc = internal global double 0.000000e+00, align 8
@aberr_lchrom = internal global double 0.000000e+00, align 8
@max_lspher = internal global double 0.000000e+00, align 8
@max_osc = internal global double 0.000000e+00, align 8
@max_lchrom = internal global double 0.000000e+00, align 8
@outarr = internal global [8 x [80 x i8]] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [24 x i8] c"%15s   %21.11f  %14.11f\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Marginal ray\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Paraxial ray\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Longitudinal spherical aberration:      %16.11f\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"    (Maximum permissible):              %16.11f\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Offense against sine condition (coma):  %16.11f\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Axial chromatic aberration:             %16.11f\00", align 1
@refarr = internal global [8 x i8*] [i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [33 x i8] c"\0AError in results on line %d...\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Expected:  \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Received:  \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"(Errors)    \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\0A%d error%s in results.  This is VERY SERIOUS.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"\0ANo errors in results.\0A\00", align 1
@ray_height = internal global double 0.000000e+00, align 8
@from_index = internal global double 0.000000e+00, align 8
@radius_of_curvature = internal global double 0.000000e+00, align 8
@to_index = internal global double 0.000000e+00, align 8
@.str.22 = private unnamed_addr constant [56 x i8] c"   Marginal ray          47.09479120920   0.04178472683\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"   Paraxial ray          47.08372160249   0.04177864821\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"Longitudinal spherical aberration:        -0.01106960671\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"    (Maximum permissible):                 0.05306749907\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"Offense against sine condition (coma):     0.00008954761\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"    (Maximum permissible):                 0.00250000000\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"Axial chromatic aberration:                0.00448229032\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Ready to begin John Walker's floating point accuracy\00", align 1
@str.1 = private unnamed_addr constant [59 x i8] c"to normalise for reporting results.  For archival results,\00", align 1
@str.2 = private unnamed_addr constant [66 x i8] c"adjust iteration count so the benchmark runs about five minutes.\0A\00", align 1
@str.3 = private unnamed_addr constant [23 x i8] c"\0ANo errors in results.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  store double 7.621000e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 1), align 8
  store double 0x40BAD5F47AE147AE, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 2), align 16
  store double 0x40B9A2D0E5604189, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 3), align 8
  store double 0x40B707F1A9FBE76D, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 4), align 16
  store double 0x40B4958E978D4FDF, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 5), align 8
  store double 0x40B2FD5810624DD3, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 6), align 16
  store double 0x40B0F47A1CAC0831, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 7), align 8
  store double 0x40AF00FCED916873, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 8), align 16
  store i32 1000000, i32* @niter, align 4
  store double 4.000000e+00, double* @clear_aperture, align 8
  store i16 4, i16* @current_surfaces, align 2
  br label %3

3:                                                ; preds = %23, %2
  %.03 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %4 = load i16, i16* @current_surfaces, align 2
  %5 = sext i16 %4 to i32
  %6 = icmp slt i32 %.03, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %20, %7
  %.01 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %9 = icmp ult i32 %.01, 4
  br i1 %9, label %10, label %22

10:                                               ; preds = %8
  %11 = zext i32 %.03 to i64
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @testcase, i64 0, i64 %11, i64 %12
  %14 = load double, double* %13, align 8
  %15 = add nuw nsw i32 %.03, 1
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i32 %.01, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %16, i64 %18
  store double %14, double* %19, align 8
  br label %20

20:                                               ; preds = %10
  %21 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !4

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.03, 1
  br label %3, !llvm.loop !6

25:                                               ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([53 x i8], [53 x i8]* @str, i64 0, i64 0))
  %26 = load i32, i32* @niter, align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 noundef %26) #6
  %28 = load i32, i32* @niter, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+03
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), double noundef %30) #6
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.1, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %77, %25
  %storemerge = phi i32 [ 0, %25 ], [ %79, %77 ]
  store i32 %storemerge, i32* @itercount, align 4
  %33 = load i32, i32* @niter, align 4
  %34 = icmp slt i32 %storemerge, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %49, %35
  %storemerge11 = phi i16 [ 0, %35 ], [ %51, %49 ]
  store i16 %storemerge11, i16* @paraxial, align 2
  %37 = icmp slt i16 %storemerge11, 2
  br i1 %37, label %38, label %52

38:                                               ; preds = %36
  %39 = load double, double* @clear_aperture, align 8
  %40 = fmul double %39, 5.000000e-01
  %41 = call i32 @trace_line(i32 noundef 4, double noundef %40)
  %42 = load double, double* @object_distance, align 8
  %43 = load i16, i16* @paraxial, align 2
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 %44, i64 0
  store double %42, double* %45, align 16
  %46 = load double, double* @axis_slope_angle, align 8
  %47 = sext i16 %43 to i64
  %48 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 %47, i64 1
  store double %46, double* %48, align 8
  br label %49

49:                                               ; preds = %38
  %50 = load i16, i16* @paraxial, align 2
  %51 = add i16 %50, 1
  br label %36, !llvm.loop !7

52:                                               ; preds = %36
  store i16 0, i16* @paraxial, align 2
  %53 = load double, double* @clear_aperture, align 8
  %54 = fmul double %53, 5.000000e-01
  %55 = call i32 @trace_line(i32 noundef 3, double noundef %54)
  %56 = load double, double* @object_distance, align 8
  %57 = load double, double* @clear_aperture, align 8
  %58 = fmul double %57, 5.000000e-01
  %59 = call i32 @trace_line(i32 noundef 6, double noundef %58)
  %60 = load double, double* @object_distance, align 8
  %61 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 0), align 16
  %62 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 0), align 16
  %63 = fsub double %61, %62
  store double %63, double* @aberr_lspher, align 8
  %64 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 1), align 8
  %65 = fmul double %61, %64
  %66 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 1), align 8
  %67 = call double @sin(double noundef %66) #6
  %68 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 0), align 16
  %69 = fmul double %67, %68
  %70 = fdiv double %65, %69
  %71 = fsub double 1.000000e+00, %70
  store double %71, double* @aberr_osc, align 8
  %72 = fsub double %60, %56
  store double %72, double* @aberr_lchrom, align 8
  %73 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 1), align 8
  %74 = call double @sin(double noundef %73) #6
  %75 = fmul double %74, %74
  %76 = fdiv double 9.260000e-05, %75
  store double %76, double* @max_lspher, align 8
  store double 2.500000e-03, double* @max_osc, align 8
  store double %76, double* @max_lchrom, align 8
  br label %77

77:                                               ; preds = %52
  %78 = load i32, i32* @itercount, align 4
  %79 = add nsw i32 %78, 1
  br label %32, !llvm.loop !8

80:                                               ; preds = %32
  %81 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 0), align 16
  %82 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 1), align 8
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), double noundef %81, double noundef %82) #6
  %84 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 0), align 16
  %85 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 1), align 8
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 1, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), double noundef %84, double noundef %85) #6
  %87 = load double, double* @aberr_lspher, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 2, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), double noundef %87) #6
  %89 = load double, double* @max_lspher, align 8
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 3, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), double noundef %89) #6
  %91 = load double, double* @aberr_osc, align 8
  %92 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 4, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), double noundef %91) #6
  %93 = load double, double* @max_osc, align 8
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 5, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), double noundef %93) #6
  %95 = load double, double* @aberr_lchrom, align 8
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 6, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), double noundef %95) #6
  %97 = load double, double* @max_lchrom, align 8
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 7, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), double noundef %97) #6
  br label %99

99:                                               ; preds = %156, %80
  %.14 = phi i32 [ 0, %80 ], [ %157, %156 ]
  %.0 = phi i32 [ 0, %80 ], [ %.3, %156 ]
  %100 = icmp ult i32 %.14, 8
  br i1 %100, label %101, label %158

101:                                              ; preds = %99
  %102 = zext i32 %.14 to i64
  %103 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %102, i64 0
  %104 = zext i32 %.14 to i64
  %105 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcmp(i8* noundef nonnull %103, i8* noundef nonnull dereferenceable(1) %106) #7
  %.not8 = icmp eq i32 %107, 0
  br i1 %.not8, label %155, label %108

108:                                              ; preds = %101
  %109 = add nuw nsw i32 %.14, 1
  %110 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 noundef %109) #6
  %111 = zext i32 %.14 to i64
  %112 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef %113) #6
  %115 = zext i32 %.14 to i64
  %116 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %115, i64 0
  %117 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %116) #6
  %118 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #6
  %119 = zext i32 %.14 to i64
  %120 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %121) #7
  %123 = trunc i64 %122 to i32
  br label %124

124:                                              ; preds = %152, %108
  %.12 = phi i32 [ 0, %108 ], [ %153, %152 ]
  %.1 = phi i32 [ %.0, %108 ], [ %.2, %152 ]
  %125 = icmp slt i32 %.12, %123
  br i1 %125, label %126, label %154

126:                                              ; preds = %124
  %127 = zext i32 %.14 to i64
  %128 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = zext i32 %.12 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i32 %.14 to i64
  %134 = zext i32 %.12 to i64
  %135 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = icmp eq i8 %132, %136
  %138 = select i1 %137, i32 32, i32 94
  %putchar9 = call i32 @putchar(i32 %138)
  %139 = zext i32 %.14 to i64
  %140 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = zext i32 %.12 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i32 %.14 to i64
  %146 = zext i32 %.12 to i64
  %147 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %145, i64 %146
  %148 = load i8, i8* %147, align 1
  %.not10 = icmp eq i8 %144, %148
  br i1 %.not10, label %151, label %149

149:                                              ; preds = %126
  %150 = add nsw i32 %.1, 1
  br label %151

151:                                              ; preds = %149, %126
  %.2 = phi i32 [ %150, %149 ], [ %.1, %126 ]
  br label %152

152:                                              ; preds = %151
  %153 = add nuw nsw i32 %.12, 1
  br label %124, !llvm.loop !9

154:                                              ; preds = %124
  %putchar = call i32 @putchar(i32 10)
  br label %155

155:                                              ; preds = %154, %101
  %.3 = phi i32 [ %.1, %154 ], [ %.0, %101 ]
  br label %156

156:                                              ; preds = %155
  %157 = add nuw nsw i32 %.14, 1
  br label %99, !llvm.loop !10

158:                                              ; preds = %99
  %159 = icmp sgt i32 %.0, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %.not = icmp eq i32 %.0, 1
  %161 = select i1 %.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %162 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 noundef %.0, i8* noundef %161) #6
  br label %164

163:                                              ; preds = %158
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.3, i64 0, i64 0))
  br label %164

164:                                              ; preds = %163, %160
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @trace_line(i32 noundef %0, double noundef %1) #0 {
  store double 0.000000e+00, double* @object_distance, align 8
  store double %1, double* @ray_height, align 8
  store double 1.000000e+00, double* @from_index, align 8
  br label %3

3:                                                ; preds = %46, %2
  %.0 = phi i32 [ 1, %2 ], [ %47, %46 ]
  %4 = load i16, i16* @current_surfaces, align 2
  %5 = sext i16 %4 to i32
  %.not = icmp sgt i32 %.0, %5
  br i1 %.not, label %48, label %6

6:                                                ; preds = %3
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %7, i64 1
  %9 = load double, double* %8, align 8
  store double %9, double* @radius_of_curvature, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %10, i64 2
  %12 = load double, double* %11, align 8
  store double %12, double* @to_index, align 8
  %13 = fcmp ogt double %12, 1.000000e+00
  br i1 %13, label %14, label %34

14:                                               ; preds = %6
  %15 = load double, double* @to_index, align 8
  %16 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 4), align 16
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds [9 x double], [9 x double]* @spectral_line, i64 0, i64 %17
  %19 = load double, double* %18, align 8
  %20 = fsub double %16, %19
  %21 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 3), align 8
  %22 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 6), align 16
  %23 = fsub double %21, %22
  %24 = fdiv double %20, %23
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %25, i64 2
  %27 = load double, double* %26, align 8
  %28 = fadd double %27, -1.000000e+00
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %29, i64 3
  %31 = load double, double* %30, align 8
  %32 = fdiv double %28, %31
  %33 = call double @llvm.fmuladd.f64(double %24, double %32, double %15)
  store double %33, double* @to_index, align 8
  br label %34

34:                                               ; preds = %14, %6
  call void @transit_surface()
  %35 = load double, double* @to_index, align 8
  store double %35, double* @from_index, align 8
  %36 = load i16, i16* @current_surfaces, align 2
  %37 = sext i16 %36 to i32
  %38 = icmp slt i32 %.0, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load double, double* @object_distance, align 8
  %41 = zext i32 %.0 to i64
  %42 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %41, i64 4
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  store double %44, double* @object_distance, align 8
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !11

48:                                               ; preds = %3
  ret i32 undef
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define internal void @transit_surface() #0 {
  %1 = load i16, i16* @paraxial, align 2
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %45, label %2

2:                                                ; preds = %0
  %3 = load double, double* @radius_of_curvature, align 8
  %4 = fcmp une double %3, 0.000000e+00
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  %6 = load double, double* @object_distance, align 8
  %7 = fcmp oeq double %6, 0.000000e+00
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store double 0.000000e+00, double* @axis_slope_angle, align 8
  %9 = load double, double* @ray_height, align 8
  %10 = load double, double* @radius_of_curvature, align 8
  %11 = fdiv double %9, %10
  br label %19

12:                                               ; preds = %5
  %13 = load double, double* @object_distance, align 8
  %14 = load double, double* @radius_of_curvature, align 8
  %15 = fsub double %13, %14
  %16 = fdiv double %15, %14
  %17 = load double, double* @axis_slope_angle, align 8
  %18 = fmul double %16, %17
  br label %19

19:                                               ; preds = %12, %8
  %.0 = phi double [ %11, %8 ], [ %18, %12 ]
  %20 = load double, double* @from_index, align 8
  %21 = load double, double* @to_index, align 8
  %22 = fdiv double %20, %21
  %23 = fmul double %22, %.0
  %24 = load double, double* @axis_slope_angle, align 8
  %25 = fadd double %24, %.0
  %26 = fsub double %25, %23
  store double %26, double* @axis_slope_angle, align 8
  %27 = load double, double* @object_distance, align 8
  %28 = fcmp une double %27, 0.000000e+00
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load double, double* @object_distance, align 8
  %31 = fmul double %30, %24
  store double %31, double* @ray_height, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load double, double* @ray_height, align 8
  %34 = load double, double* @axis_slope_angle, align 8
  %35 = fdiv double %33, %34
  store double %35, double* @object_distance, align 8
  br label %105

36:                                               ; preds = %2
  %37 = load double, double* @object_distance, align 8
  %38 = load double, double* @to_index, align 8
  %39 = load double, double* @from_index, align 8
  %40 = fdiv double %38, %39
  %41 = fmul double %37, %40
  store double %41, double* @object_distance, align 8
  %42 = load double, double* @axis_slope_angle, align 8
  %43 = fdiv double %39, %38
  %44 = fmul double %42, %43
  store double %44, double* @axis_slope_angle, align 8
  br label %105

45:                                               ; preds = %0
  %46 = load double, double* @radius_of_curvature, align 8
  %47 = fcmp une double %46, 0.000000e+00
  br i1 %47, label %48, label %87

48:                                               ; preds = %45
  %49 = load double, double* @object_distance, align 8
  %50 = fcmp oeq double %49, 0.000000e+00
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  store double 0.000000e+00, double* @axis_slope_angle, align 8
  %52 = load double, double* @ray_height, align 8
  %53 = load double, double* @radius_of_curvature, align 8
  %54 = fdiv double %52, %53
  br label %63

55:                                               ; preds = %48
  %56 = load double, double* @object_distance, align 8
  %57 = load double, double* @radius_of_curvature, align 8
  %58 = fsub double %56, %57
  %59 = fdiv double %58, %57
  %60 = load double, double* @axis_slope_angle, align 8
  %61 = call double @sin(double noundef %60) #6
  %62 = fmul double %59, %61
  br label %63

63:                                               ; preds = %55, %51
  %.1 = phi double [ %54, %51 ], [ %62, %55 ]
  %64 = call double @asin(double noundef %.1) #6
  %65 = load double, double* @from_index, align 8
  %66 = load double, double* @to_index, align 8
  %67 = fdiv double %65, %66
  %68 = fmul double %67, %.1
  %69 = load double, double* @axis_slope_angle, align 8
  %70 = fadd double %69, %64
  %71 = call double @asin(double noundef %68) #6
  %72 = fsub double %70, %71
  store double %72, double* @axis_slope_angle, align 8
  %73 = fadd double %69, %64
  %74 = fmul double %73, 5.000000e-01
  %75 = call double @sin(double noundef %74) #6
  %76 = load double, double* @radius_of_curvature, align 8
  %77 = fmul double %76, 2.000000e+00
  %78 = fmul double %77, %75
  %79 = fmul double %78, %75
  %80 = fadd double %69, %64
  %81 = call double @sin(double noundef %80) #6
  %82 = fmul double %76, %81
  %83 = load double, double* @axis_slope_angle, align 8
  %84 = call double @tan(double noundef %83) #6
  %85 = fdiv double 1.000000e+00, %84
  %86 = call double @llvm.fmuladd.f64(double %82, double %85, double %79)
  store double %86, double* @object_distance, align 8
  br label %105

87:                                               ; preds = %45
  %88 = load double, double* @from_index, align 8
  %89 = load double, double* @to_index, align 8
  %90 = fdiv double %88, %89
  %91 = load double, double* @axis_slope_angle, align 8
  %92 = call double @sin(double noundef %91) #6
  %93 = fmul double %90, %92
  %94 = call double @asin(double noundef %93) #6
  %95 = load double, double* @object_distance, align 8
  %96 = load double, double* @to_index, align 8
  %97 = call double @cos(double noundef %94) #6
  %98 = fmul double %96, %97
  %99 = load double, double* @from_index, align 8
  %100 = load double, double* @axis_slope_angle, align 8
  %101 = call double @cos(double noundef %100) #6
  %102 = fmul double %99, %101
  %103 = fdiv double %98, %102
  %104 = fmul double %95, %103
  store double %104, double* @object_distance, align 8
  store double %94, double* @axis_slope_angle, align 8
  br label %105

105:                                              ; preds = %87, %63, %36, %32
  ret void
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @tan(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
