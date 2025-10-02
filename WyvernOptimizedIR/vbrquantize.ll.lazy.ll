; ModuleID = './vbrquantize.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/vbrquantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@pow43 = external dso_local global [8208 x double], align 16
@.str = private unnamed_addr constant [13 x i8] c"sf_ok!=10000\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/vbrquantize.c\00", align 1
@__PRETTY_FUNCTION__.find_scalefac = private unnamed_addr constant [64 x i8] c"FLOAT8 find_scalefac(FLOAT8 *, FLOAT8 *, int, int, FLOAT8, int)\00", align 1
@pretab = external dso_local global [21 x i32], align 16
@masking_lower = external dso_local global float, align 4
@convert_mdct = external dso_local global i32, align 4
@scalefac_band = external dso_local global %struct.scalefac_struct, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local double @calc_sfb_ave_noise(double* nocapture noundef readonly %0, double* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, double noundef %4) #0 {
  %6 = call double @pow(double noundef %4, double noundef 7.500000e-01) #7
  br label %7

7:                                                ; preds = %46, %5
  %.03 = phi i32 [ 0, %5 ], [ %48, %46 ]
  %.02 = phi double [ 0.000000e+00, %5 ], [ %47, %46 ]
  %8 = mul nsw i32 %2, %3
  %9 = icmp slt i32 %.03, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  %11 = sext i32 %.03 to i64
  %12 = getelementptr inbounds double, double* %1, i64 %11
  %13 = load double, double* %12, align 8
  %14 = fdiv double %13, %6
  %15 = call double @llvm.floor.f64(double %14)
  %16 = fptosi double %15 to i32
  %17 = icmp sgt i32 %16, 8206
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %52

19:                                               ; preds = %10
  %20 = sext i32 %.03 to i64
  %21 = getelementptr inbounds double, double* %0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = sext i32 %16 to i64
  %25 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i64 0, i64 %24
  %26 = load double, double* %25, align 8
  %27 = fneg double %26
  %28 = call double @llvm.fmuladd.f64(double %27, double %4, double %23)
  %.not = icmp eq i32 %16, 8206
  br i1 %.not, label %45, label %29

29:                                               ; preds = %19
  %30 = sext i32 %.03 to i64
  %31 = getelementptr inbounds double, double* %0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = add nsw i32 %16, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fneg double %37
  %39 = call double @llvm.fmuladd.f64(double %38, double %4, double %33)
  %40 = call double @llvm.fabs.f64(double %39)
  %41 = call double @llvm.fabs.f64(double %28)
  %42 = fcmp olt double %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %29
  %.01 = phi double [ %39, %43 ], [ %28, %29 ]
  br label %45

45:                                               ; preds = %44, %19
  %.1 = phi double [ %.01, %44 ], [ %28, %19 ]
  br label %46

46:                                               ; preds = %45
  %47 = call double @llvm.fmuladd.f64(double %.1, double %.1, double %.02)
  %48 = add nsw i32 %.03, %2
  br label %7, !llvm.loop !4

49:                                               ; preds = %7
  %50 = sitofp i32 %3 to double
  %51 = fdiv double %.02, %50
  br label %52

52:                                               ; preds = %49, %18
  %.0 = phi double [ -1.000000e+00, %18 ], [ %51, %49 ]
  ret double %.0
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_scalefac(double* nocapture noundef readonly %0, double* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5) #0 {
  br label %7

7:                                                ; preds = %33, %6
  %.013 = phi double [ -2.050000e+01, %6 ], [ %.215, %33 ]
  %.09 = phi double [ 1.000000e+04, %6 ], [ %.312, %33 ]
  %.08 = phi double [ 3.200000e+01, %6 ], [ %10, %33 ]
  %.04 = phi i32 [ -82, %6 ], [ %.26, %33 ]
  %.03 = phi i32 [ 10000, %6 ], [ %.3, %33 ]
  %.02 = phi i32 [ 128, %6 ], [ %11, %33 ]
  %.01 = phi i32 [ 0, %6 ], [ %34, %33 ]
  %8 = icmp ult i32 %.01, 7
  br i1 %8, label %9, label %35

9:                                                ; preds = %7
  %10 = fmul double %.08, 5.000000e-01
  %11 = sdiv i32 %.02, 2
  %exp218 = call double @exp2(double %.013) #7
  %12 = call double @calc_sfb_ave_noise(double* noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %5, double noundef %exp218)
  %13 = fcmp olt double %12, 0.000000e+00
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = fadd double %.013, %10
  %16 = add nsw i32 %.04, %11
  br label %32

17:                                               ; preds = %9
  %18 = fcmp oeq double %.09, 1.000000e+04
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %17
  %.110 = phi double [ %.013, %19 ], [ %.09, %17 ]
  %21 = icmp eq i32 %.03, 10000
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20
  %.1 = phi i32 [ %.04, %22 ], [ %.03, %20 ]
  %24 = fcmp ogt double %12, %4
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = fsub double %.013, %10
  %27 = sub nsw i32 %.04, %11
  br label %31

28:                                               ; preds = %23
  %29 = fadd double %.013, %10
  %30 = add nsw i32 %.04, %11
  br label %31

31:                                               ; preds = %28, %25
  %.114 = phi double [ %26, %25 ], [ %29, %28 ]
  %.211 = phi double [ %.110, %25 ], [ %.013, %28 ]
  %.15 = phi i32 [ %27, %25 ], [ %30, %28 ]
  %.2 = phi i32 [ %.1, %25 ], [ %.04, %28 ]
  br label %32

32:                                               ; preds = %31, %14
  %.215 = phi double [ %15, %14 ], [ %.114, %31 ]
  %.312 = phi double [ %.09, %14 ], [ %.211, %31 ]
  %.26 = phi i32 [ %16, %14 ], [ %.15, %31 ]
  %.3 = phi i32 [ %.03, %14 ], [ %.2, %31 ]
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !6

35:                                               ; preds = %7
  %36 = fcmp une double %.09, 1.000000e+04
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %39

38:                                               ; preds = %35
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.find_scalefac, i64 0, i64 0)) #8
  unreachable

39:                                               ; preds = %37
  %40 = fadd double %.09, 7.500000e-01
  %41 = add nsw i32 %.03, 3
  br label %42

42:                                               ; preds = %65, %39
  %.316 = phi double [ %40, %39 ], [ %66, %65 ]
  %.37 = phi i32 [ %41, %39 ], [ %67, %65 ]
  %43 = fadd double %.09, 1.000000e-02
  %44 = fcmp ogt double %.316, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = call double @llvm.fmuladd.f64(double %.08, double 2.000000e+00, double %.09)
  %47 = fsub double %.316, %46
  %48 = call double @llvm.fabs.f64(double %47)
  %49 = fcmp olt double %48, 1.000000e-02
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = fadd double %.316, -2.500000e-01
  br label %52

52:                                               ; preds = %50, %45
  %.417 = phi double [ %51, %50 ], [ %.316, %45 ]
  %53 = shl nsw i32 %.02, 1
  %54 = add nsw i32 %.03, %53
  %55 = icmp eq i32 %.37, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = add nsw i32 %.37, -1
  br label %58

58:                                               ; preds = %56, %52
  %.4 = phi i32 [ %57, %56 ], [ %.37, %52 ]
  %exp2 = call double @exp2(double %.417) #7
  %59 = call double @calc_sfb_ave_noise(double* noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %5, double noundef %exp2)
  %60 = fcmp ogt double %59, 0.000000e+00
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = fcmp ugt double %59, %4
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  br label %69

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %58
  %66 = fadd double %.417, -2.500000e-01
  %67 = add nsw i32 %.4, -1
  br label %42, !llvm.loop !7

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %63
  %.0 = phi double [ %.417, %63 ], [ %.09, %68 ]
  ret double %.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local double @compute_scalefacs_short([3 x double]* nocapture noundef readonly %0, %struct.gr_info* nocapture noundef readonly %1, [3 x i32]* nocapture noundef writeonly %2) #4 {
  %4 = alloca [12 x [3 x double]], align 16
  %5 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i64 0, i32 13
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 1
  %9 = bitcast [12 x [3 x double]]* %4 to i8*
  %10 = bitcast [3 x double]* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(288) %9, i8* noundef nonnull align 8 dereferenceable(288) %10, i64 288, i1 false)
  br label %11

11:                                               ; preds = %54, %3
  %.02 = phi double [ 0.000000e+00, %3 ], [ %.1, %54 ]
  %.01 = phi i32 [ 0, %3 ], [ %55, %54 ]
  %12 = icmp ult i32 %.01, 12
  br i1 %12, label %13, label %56

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %51, %13
  %.1 = phi double [ %.02, %13 ], [ %.2, %51 ]
  %.0 = phi i32 [ 0, %13 ], [ %52, %51 ]
  %15 = icmp ult i32 %.0, 3
  br i1 %15, label %16, label %53

16:                                               ; preds = %14
  %17 = zext i32 %.01 to i64
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %4, i64 0, i64 %17, i64 %18
  %20 = load double, double* %19, align 8
  %21 = fneg double %20
  %22 = sitofp i32 %8 to double
  %23 = call double @llvm.fmuladd.f64(double %21, double %22, double 7.500000e-01)
  %24 = fadd double %23, 1.000000e-04
  %25 = call double @llvm.floor.f64(double %24)
  %26 = fptosi double %25 to i32
  %27 = zext i32 %.01 to i64
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 %27, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = icmp ult i32 %.01, 6
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = sitofp i32 %8 to double
  %33 = fdiv double 1.500000e+01, %32
  br label %37

34:                                               ; preds = %16
  %35 = sitofp i32 %8 to double
  %36 = fdiv double 7.000000e+00, %35
  br label %37

37:                                               ; preds = %34, %31
  %.03 = phi double [ %33, %31 ], [ %36, %34 ]
  %38 = zext i32 %.01 to i64
  %39 = zext i32 %.0 to i64
  %40 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %4, i64 0, i64 %38, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fadd double %.03, %41
  %43 = fcmp ogt double %42, %.1
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = zext i32 %.01 to i64
  %46 = zext i32 %.0 to i64
  %47 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %4, i64 0, i64 %45, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fadd double %.03, %48
  br label %50

50:                                               ; preds = %44, %37
  %.2 = phi double [ %49, %44 ], [ %.1, %37 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !8

53:                                               ; preds = %14
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.01, 1
  br label %11, !llvm.loop !9

56:                                               ; preds = %11
  ret double %.02
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local double @compute_scalefacs_long(double* nocapture noundef readonly %0, %struct.gr_info* nocapture noundef %1, i32* nocapture noundef writeonly %2) #4 {
  %4 = alloca [21 x double], align 16
  %5 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i64 0, i32 13
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 1
  %9 = bitcast [21 x double]* %4 to i8*
  %10 = bitcast double* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(168) %9, i8* noundef nonnull align 8 dereferenceable(168) %10, i64 168, i1 false)
  %11 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i64 0, i32 12
  store i32 0, i32* %11, align 8
  br label %12

12:                                               ; preds = %27, %3
  %.02 = phi i32 [ 11, %3 ], [ %28, %27 ]
  %13 = icmp ult i32 %.02, 21
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %12
  %15 = zext i32 %.02 to i64
  %16 = getelementptr inbounds [21 x double], [21 x double]* %4, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, %8
  %22 = sitofp i32 %21 to double
  %23 = fadd double %17, %22
  %24 = fcmp ogt double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %29

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.02, 1
  br label %12, !llvm.loop !10

.loopexit:                                        ; preds = %12
  br label %29

29:                                               ; preds = %.loopexit, %25
  %30 = icmp eq i32 %.02, 21
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i64 0, i32 12
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %45, %31
  %.13 = phi i32 [ 11, %31 ], [ %46, %45 ]
  %34 = icmp ult i32 %.13, 21
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = zext i32 %.13 to i64
  %37 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, %8
  %40 = sitofp i32 %39 to double
  %41 = zext i32 %.13 to i64
  %42 = getelementptr inbounds [21 x double], [21 x double]* %4, i64 0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fadd double %43, %40
  store double %44, double* %42, align 8
  br label %45

45:                                               ; preds = %35
  %46 = add nuw nsw i32 %.13, 1
  br label %33, !llvm.loop !11

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %82, %48
  %.2 = phi i32 [ 0, %48 ], [ %83, %82 ]
  %.0 = phi double [ 0.000000e+00, %48 ], [ %.1, %82 ]
  %50 = icmp ult i32 %.2, 21
  br i1 %50, label %51, label %84

51:                                               ; preds = %49
  %52 = zext i32 %.2 to i64
  %53 = getelementptr inbounds [21 x double], [21 x double]* %4, i64 0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fneg double %54
  %56 = sitofp i32 %8 to double
  %57 = call double @llvm.fmuladd.f64(double %55, double %56, double 7.500000e-01)
  %58 = fadd double %57, 1.000000e-04
  %59 = call double @llvm.floor.f64(double %58)
  %60 = fptosi double %59 to i32
  %61 = zext i32 %.2 to i64
  %62 = getelementptr inbounds i32, i32* %2, i64 %61
  store i32 %60, i32* %62, align 4
  %63 = icmp ult i32 %.2, 11
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = sitofp i32 %8 to double
  %66 = fdiv double 1.500000e+01, %65
  br label %70

67:                                               ; preds = %51
  %68 = sitofp i32 %8 to double
  %69 = fdiv double 7.000000e+00, %68
  br label %70

70:                                               ; preds = %67, %64
  %.01 = phi double [ %66, %64 ], [ %69, %67 ]
  %71 = zext i32 %.2 to i64
  %72 = getelementptr inbounds [21 x double], [21 x double]* %4, i64 0, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fadd double %.01, %73
  %75 = fcmp ogt double %74, %.0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = zext i32 %.2 to i64
  %78 = getelementptr inbounds [21 x double], [21 x double]* %4, i64 0, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fadd double %.01, %79
  br label %81

81:                                               ; preds = %76, %70
  %.1 = phi double [ %80, %76 ], [ %.0, %70 ]
  br label %82

82:                                               ; preds = %81
  %83 = add nuw nsw i32 %.2, 1
  br label %49, !llvm.loop !12

84:                                               ; preds = %49
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @VBR_iteration_loop_new(%struct.lame_global_flags* noundef %0, [2 x double]* nocapture noundef readnone %1, double* nocapture noundef readnone %2, [2 x [576 x double]]* noundef %3, [2 x %struct.III_psy_ratio]* noundef %4, %struct.III_side_info_t* noundef %5, [2 x [576 x i32]]* noundef %6, [2 x %struct.III_scalefac_t]* nocapture noundef writeonly %7) #0 {
  %9 = alloca [2 x [2 x %struct.III_psy_xmin]], align 16
  %10 = alloca %struct.III_psy_xmin, align 8
  %11 = alloca [576 x double], align 16
  call void @iteration_init(%struct.lame_global_flags* noundef %0, %struct.III_side_info_t* noundef %5, [2 x [576 x i32]]* noundef %6) #7
  %12 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 22
  %13 = load i32, i32* %12, align 4
  %14 = shl nsw i32 %13, 1
  %15 = add nsw i32 %14, -10
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.000000e+01
  %18 = call double @pow(double noundef 1.000000e+01, double noundef %17) #7
  store float 1.000000e+00, float* @masking_lower, align 4
  br label %19

19:                                               ; preds = %240, %8
  %.01 = phi i32 [ 0, %8 ], [ %241, %240 ]
  %20 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 45
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %.01, %21
  br i1 %22, label %23, label %242

23:                                               ; preds = %19
  %24 = load i32, i32* @convert_mdct, align 4
  %.not = icmp eq i32 %24, 0
  br i1 %.not, label %30, label %25

25:                                               ; preds = %23
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %3, i64 %26, i64 0
  %28 = zext i32 %.01 to i64
  %29 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %3, i64 %28, i64 0
  call void @ms_convert([576 x double]* noundef %27, [576 x double]* noundef %29) #7
  br label %30

30:                                               ; preds = %25, %23
  br label %31

31:                                               ; preds = %237, %30
  %.02 = phi i32 [ 0, %30 ], [ %238, %237 ]
  %32 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 46
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %.02, %33
  br i1 %34, label %35, label %239

35:                                               ; preds = %31
  %36 = zext i32 %.01 to i64
  %37 = zext i32 %.02 to i64
  %38 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %5, i64 0, i32 4, i64 %36, i32 0, i64 %37, i32 0
  %39 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %5, i64 0, i32 4, i64 %36, i32 0, i64 %37, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br label %42

42:                                               ; preds = %56, %35
  %.03 = phi i32 [ 0, %35 ], [ %57, %56 ]
  %43 = icmp ult i32 %.03, 576
  br i1 %43, label %44, label %58

44:                                               ; preds = %42
  %45 = zext i32 %.01 to i64
  %46 = zext i32 %.02 to i64
  %47 = zext i32 %.03 to i64
  %48 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %3, i64 %45, i64 %46, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = call double @sqrt(double noundef %50) #7
  %52 = fmul double %51, %50
  %53 = call double @sqrt(double noundef %52) #7
  %54 = zext i32 %.03 to i64
  %55 = getelementptr inbounds [576 x double], [576 x double]* %11, i64 0, i64 %54
  store double %53, double* %55, align 8
  br label %56

56:                                               ; preds = %44
  %57 = add nuw nsw i32 %.03, 1
  br label %42, !llvm.loop !13

58:                                               ; preds = %42
  %59 = zext i32 %.01 to i64
  %60 = zext i32 %.02 to i64
  %61 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %3, i64 %59, i64 %60, i64 0
  %62 = zext i32 %.01 to i64
  %63 = zext i32 %.02 to i64
  %64 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %4, i64 %62, i64 %63
  %65 = zext i32 %.01 to i64
  %66 = zext i32 %.02 to i64
  %67 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %9, i64 0, i64 %65, i64 %66
  %68 = call i32 @calc_xmin(%struct.lame_global_flags* noundef %0, double* noundef %61, %struct.III_psy_ratio* noundef %64, %struct.gr_info* noundef nonnull %38, %struct.III_psy_xmin* noundef nonnull %67) #7
  br i1 %41, label %69, label %124

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %121, %69
  %.06 = phi i32 [ 0, %69 ], [ %122, %121 ]
  %.0 = phi double [ 0.000000e+00, %69 ], [ %.1, %121 ]
  %71 = icmp ult i32 %.06, 12
  br i1 %71, label %72, label %123

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %118, %72
  %.14 = phi i32 [ 0, %72 ], [ %119, %118 ]
  %.1 = phi double [ %.0, %72 ], [ %.2, %118 ]
  %74 = icmp ult i32 %.14, 3
  br i1 %74, label %75, label %120

75:                                               ; preds = %73
  %76 = zext i32 %.06 to i64
  %77 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i64 0, i32 1, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nuw nsw i32 %.06, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i64 0, i32 1, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, %78
  %84 = zext i32 %.01 to i64
  %85 = zext i32 %.02 to i64
  %86 = mul nsw i32 %78, 3
  %87 = add nsw i32 %86, %.14
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %3, i64 %84, i64 %85, i64 %88
  %90 = mul nsw i32 %78, 3
  %91 = add nsw i32 %90, %.14
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [576 x double], [576 x double]* %11, i64 0, i64 %92
  %94 = load float, float* @masking_lower, align 4
  %95 = fpext float %94 to double
  %96 = zext i32 %.01 to i64
  %97 = zext i32 %.02 to i64
  %98 = zext i32 %.06 to i64
  %99 = zext i32 %.14 to i64
  %100 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %9, i64 0, i64 %96, i64 %97, i32 1, i64 %98, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fmul double %101, %95
  %103 = call double @find_scalefac(double* noundef %89, double* noundef nonnull %93, i32 noundef 3, i32 noundef %.06, double noundef %102, i32 noundef %83)
  %104 = zext i32 %.06 to i64
  %105 = zext i32 %.14 to i64
  %106 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 1, i64 %104, i64 %105
  store double %103, double* %106, align 8
  %107 = zext i32 %.06 to i64
  %108 = zext i32 %.14 to i64
  %109 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 1, i64 %107, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fcmp ogt double %110, %.1
  br i1 %111, label %112, label %117

112:                                              ; preds = %75
  %113 = zext i32 %.06 to i64
  %114 = zext i32 %.14 to i64
  %115 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 1, i64 %113, i64 %114
  %116 = load double, double* %115, align 8
  br label %117

117:                                              ; preds = %112, %75
  %.2 = phi double [ %116, %112 ], [ %.1, %75 ]
  br label %118

118:                                              ; preds = %117
  %119 = add nuw nsw i32 %.14, 1
  br label %73, !llvm.loop !14

120:                                              ; preds = %73
  br label %121

121:                                              ; preds = %120
  %122 = add nuw nsw i32 %.06, 1
  br label %70, !llvm.loop !15

123:                                              ; preds = %70
  br label %165

124:                                              ; preds = %58
  br label %125

125:                                              ; preds = %162, %124
  %.17 = phi i32 [ 0, %124 ], [ %163, %162 ]
  %.3 = phi double [ 0.000000e+00, %124 ], [ %.4, %162 ]
  %126 = icmp ult i32 %.17, 21
  br i1 %126, label %127, label %164

127:                                              ; preds = %125
  %128 = zext i32 %.17 to i64
  %129 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i64 0, i32 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nuw nsw i32 %.17, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i64 0, i32 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, %130
  %136 = zext i32 %.01 to i64
  %137 = zext i32 %.02 to i64
  %138 = sext i32 %130 to i64
  %139 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %3, i64 %136, i64 %137, i64 %138
  %140 = sext i32 %130 to i64
  %141 = getelementptr inbounds [576 x double], [576 x double]* %11, i64 0, i64 %140
  %142 = load float, float* @masking_lower, align 4
  %143 = fpext float %142 to double
  %144 = zext i32 %.01 to i64
  %145 = zext i32 %.02 to i64
  %146 = zext i32 %.17 to i64
  %147 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %9, i64 0, i64 %144, i64 %145, i32 0, i64 %146
  %148 = load double, double* %147, align 8
  %149 = fmul double %148, %143
  %150 = call double @find_scalefac(double* noundef %139, double* noundef nonnull %141, i32 noundef 1, i32 noundef %.17, double noundef %149, i32 noundef %135)
  %151 = zext i32 %.17 to i64
  %152 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 0, i64 %151
  store double %150, double* %152, align 8
  %153 = zext i32 %.17 to i64
  %154 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fcmp ogt double %155, %.3
  br i1 %156, label %157, label %161

157:                                              ; preds = %127
  %158 = zext i32 %.17 to i64
  %159 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 0, i64 %158
  %160 = load double, double* %159, align 8
  br label %161

161:                                              ; preds = %157, %127
  %.4 = phi double [ %160, %157 ], [ %.3, %127 ]
  br label %162

162:                                              ; preds = %161
  %163 = add nuw nsw i32 %.17, 1
  br label %125, !llvm.loop !16

164:                                              ; preds = %125
  br label %165

165:                                              ; preds = %164, %123
  %.5 = phi double [ %.0, %123 ], [ %.3, %164 ]
  %166 = call double @llvm.fmuladd.f64(double %.5, double 4.000000e+00, double 2.100000e+02)
  %167 = fadd double %166, 5.000000e-01
  %168 = call double @llvm.floor.f64(double %167)
  %169 = fptoui double %168 to i32
  %170 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %5, i64 0, i32 4, i64 %36, i32 0, i64 %37, i32 0, i32 3
  store i32 %169, i32* %170, align 4
  br i1 %41, label %171, label %207

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %186, %171
  %.28 = phi i32 [ 0, %171 ], [ %187, %186 ]
  %173 = icmp ult i32 %.28, 12
  br i1 %173, label %174, label %188

174:                                              ; preds = %172
  br label %175

175:                                              ; preds = %183, %174
  %.25 = phi i32 [ 0, %174 ], [ %184, %183 ]
  %176 = icmp ult i32 %.25, 3
  br i1 %176, label %177, label %185

177:                                              ; preds = %175
  %178 = zext i32 %.28 to i64
  %179 = zext i32 %.25 to i64
  %180 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 1, i64 %178, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fsub double %181, %.5
  store double %182, double* %180, align 8
  br label %183

183:                                              ; preds = %177
  %184 = add nuw nsw i32 %.25, 1
  br label %175, !llvm.loop !17

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185
  %187 = add nuw nsw i32 %.28, 1
  br label %172, !llvm.loop !18

188:                                              ; preds = %172
  %189 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %5, i64 0, i32 4, i64 %36, i32 0, i64 %37, i32 0, i32 13
  store i32 0, i32* %189, align 4
  %190 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 1, i64 0
  %191 = zext i32 %.01 to i64
  %192 = zext i32 %.02 to i64
  %193 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %7, i64 %191, i64 %192, i32 1, i64 0
  %194 = call double @compute_scalefacs_short([3 x double]* noundef nonnull %190, %struct.gr_info* noundef nonnull %38, [3 x i32]* noundef nonnull %193)
  %195 = fcmp ogt double %194, 0.000000e+00
  br i1 %195, label %196, label %206

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %5, i64 0, i32 4, i64 %36, i32 0, i64 %37, i32 0, i32 13
  store i32 1, i32* %197, align 4
  %198 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 1, i64 0
  %199 = zext i32 %.01 to i64
  %200 = zext i32 %.02 to i64
  %201 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %7, i64 %199, i64 %200, i32 1, i64 0
  %202 = call double @compute_scalefacs_short([3 x double]* noundef nonnull %198, %struct.gr_info* noundef nonnull %38, [3 x i32]* noundef nonnull %201)
  %203 = fcmp ogt double %202, 0.000000e+00
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  call void @exit(i32 noundef 32) #8
  br label %UnifiedUnreachableBlock

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %205, %188
  br label %236

207:                                              ; preds = %165
  br label %208

208:                                              ; preds = %215, %207
  %.39 = phi i32 [ 0, %207 ], [ %216, %215 ]
  %209 = icmp ult i32 %.39, 21
  br i1 %209, label %210, label %217

210:                                              ; preds = %208
  %211 = zext i32 %.39 to i64
  %212 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 0, i64 %211
  %213 = load double, double* %212, align 8
  %214 = fsub double %213, %.5
  store double %214, double* %212, align 8
  br label %215

215:                                              ; preds = %210
  %216 = add nuw nsw i32 %.39, 1
  br label %208, !llvm.loop !19

217:                                              ; preds = %208
  %218 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %5, i64 0, i32 4, i64 %36, i32 0, i64 %37, i32 0, i32 13
  store i32 0, i32* %218, align 4
  %219 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 0, i64 0
  %220 = zext i32 %.01 to i64
  %221 = zext i32 %.02 to i64
  %222 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %7, i64 %220, i64 %221, i32 0, i64 0
  %223 = call double @compute_scalefacs_long(double* noundef nonnull %219, %struct.gr_info* noundef nonnull %38, i32* noundef %222)
  %224 = fcmp ogt double %223, 0.000000e+00
  br i1 %224, label %225, label %235

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %5, i64 0, i32 4, i64 %36, i32 0, i64 %37, i32 0, i32 13
  store i32 1, i32* %226, align 4
  %227 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %10, i64 0, i32 0, i64 0
  %228 = zext i32 %.01 to i64
  %229 = zext i32 %.02 to i64
  %230 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %7, i64 %228, i64 %229, i32 0, i64 0
  %231 = call double @compute_scalefacs_long(double* noundef nonnull %227, %struct.gr_info* noundef nonnull %38, i32* noundef %230)
  %232 = fcmp ogt double %231, 0.000000e+00
  br i1 %232, label %233, label %234

233:                                              ; preds = %225
  call void @exit(i32 noundef 32) #8
  br label %UnifiedUnreachableBlock

234:                                              ; preds = %225
  br label %235

235:                                              ; preds = %234, %217
  br label %236

236:                                              ; preds = %235, %206
  br label %237

237:                                              ; preds = %236
  %238 = add nuw nsw i32 %.02, 1
  br label %31, !llvm.loop !20

239:                                              ; preds = %31
  br label %240

240:                                              ; preds = %239
  %241 = add nuw nsw i32 %.01, 1
  br label %19, !llvm.loop !21

242:                                              ; preds = %19
  ret void

UnifiedUnreachableBlock:                          ; preds = %233, %204
  unreachable
}

declare dso_local void @iteration_init(%struct.lame_global_flags* noundef, %struct.III_side_info_t* noundef, [2 x [576 x i32]]* noundef) #6

declare dso_local void @ms_convert([576 x double]* noundef, [576 x double]* noundef) #6

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

declare dso_local i32 @calc_xmin(%struct.lame_global_flags* noundef, double* noundef, %struct.III_psy_ratio* noundef, %struct.gr_info* noundef, %struct.III_psy_xmin* noundef) #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare double @exp2(double)

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
