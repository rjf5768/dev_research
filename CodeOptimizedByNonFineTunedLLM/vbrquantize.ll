; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/vbrquantize.c'
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
define dso_local double @calc_sfb_ave_noise(double* noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double* %0, double** %7, align 8
  store double* %1, double** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  store double 0.000000e+00, double* %13, align 8
  %18 = load double, double* %11, align 8
  %19 = call double @pow(double noundef %18, double noundef 7.500000e-01) #6
  store double %19, double* %14, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %83, %5
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %87

26:                                               ; preds = %20
  %27 = load double*, double** %8, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = load double, double* %14, align 8
  %33 = fdiv double %31, %32
  %34 = call double @llvm.floor.f64(double %33)
  %35 = fptosi double %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp sgt i32 %36, 8206
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store double -1.000000e+00, double* %6, align 8
  br label %92

39:                                               ; preds = %26
  %40 = load double*, double** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = call double @llvm.fabs.f64(double %44)
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load double, double* %11, align 8
  %51 = fneg double %49
  %52 = call double @llvm.fmuladd.f64(double %51, double %50, double %45)
  store double %52, double* %16, align 8
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 8206
  br i1 %54, label %55, label %78

55:                                               ; preds = %39
  %56 = load double*, double** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i64 0, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double, double* %11, align 8
  %68 = fneg double %66
  %69 = call double @llvm.fmuladd.f64(double %68, double %67, double %61)
  store double %69, double* %17, align 8
  %70 = load double, double* %17, align 8
  %71 = call double @llvm.fabs.f64(double %70)
  %72 = load double, double* %16, align 8
  %73 = call double @llvm.fabs.f64(double %72)
  %74 = fcmp olt double %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load double, double* %17, align 8
  store double %76, double* %16, align 8
  br label %77

77:                                               ; preds = %75, %55
  br label %78

78:                                               ; preds = %77, %39
  %79 = load double, double* %16, align 8
  %80 = load double, double* %16, align 8
  %81 = load double, double* %13, align 8
  %82 = call double @llvm.fmuladd.f64(double %79, double %80, double %81)
  store double %82, double* %13, align 8
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %20, !llvm.loop !4

87:                                               ; preds = %20
  %88 = load double, double* %13, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sitofp i32 %89 to double
  %91 = fdiv double %88, %90
  store double %91, double* %6, align 8
  br label %92

92:                                               ; preds = %87, %38
  %93 = load double, double* %6, align 8
  ret double %93
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_scalefac(double* noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store double* %0, double** %8, align 8
  store double* %1, double** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store i32 %5, i32* %13, align 4
  store double -2.050000e+01, double* %16, align 8
  store i32 -82, i32* %19, align 4
  store double 3.200000e+01, double* %18, align 8
  store i32 128, i32* %21, align 4
  store double 1.000000e+04, double* %17, align 8
  store i32 10000, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %80, %6
  %24 = load i32, i32* %22, align 4
  %25 = icmp slt i32 %24, 7
  br i1 %25, label %26, label %83

26:                                               ; preds = %23
  %27 = load double, double* %18, align 8
  %28 = fdiv double %27, 2.000000e+00
  store double %28, double* %18, align 8
  %29 = load i32, i32* %21, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %21, align 4
  %31 = load double, double* %16, align 8
  %32 = call double @pow(double noundef 2.000000e+00, double noundef %31) #6
  store double %32, double* %15, align 8
  %33 = load double*, double** %8, align 8
  %34 = load double*, double** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load double, double* %15, align 8
  %38 = call double @calc_sfb_ave_noise(double* noundef %33, double* noundef %34, i32 noundef %35, i32 noundef %36, double noundef %37)
  store double %38, double* %14, align 8
  %39 = load double, double* %14, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load double, double* %18, align 8
  %43 = load double, double* %16, align 8
  %44 = fadd double %43, %42
  store double %44, double* %16, align 8
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %19, align 4
  br label %79

48:                                               ; preds = %26
  %49 = load double, double* %17, align 8
  %50 = fcmp oeq double %49, 1.000000e+04
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load double, double* %16, align 8
  store double %52, double* %17, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* %20, align 4
  %55 = icmp eq i32 %54, 10000
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %19, align 4
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = load double, double* %14, align 8
  %60 = load double, double* %12, align 8
  %61 = fcmp ogt double %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load double, double* %18, align 8
  %64 = load double, double* %16, align 8
  %65 = fsub double %64, %63
  store double %65, double* %16, align 8
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %19, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %19, align 4
  br label %78

69:                                               ; preds = %58
  %70 = load double, double* %16, align 8
  store double %70, double* %17, align 8
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %20, align 4
  %72 = load double, double* %18, align 8
  %73 = load double, double* %16, align 8
  %74 = fadd double %73, %72
  store double %74, double* %16, align 8
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %69, %62
  br label %79

79:                                               ; preds = %78, %41
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %22, align 4
  br label %23, !llvm.loop !6

83:                                               ; preds = %23
  %84 = load double, double* %17, align 8
  %85 = fcmp une double %84, 1.000000e+04
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %88

87:                                               ; preds = %83
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.find_scalefac, i64 0, i64 0)) #7
  unreachable

88:                                               ; preds = %86
  %89 = load double, double* %17, align 8
  %90 = fadd double %89, 7.500000e-01
  store double %90, double* %16, align 8
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 3
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %137, %88
  %94 = load double, double* %16, align 8
  %95 = load double, double* %17, align 8
  %96 = fadd double %95, 1.000000e-02
  %97 = fcmp ogt double %94, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %93
  %99 = load double, double* %16, align 8
  %100 = load double, double* %17, align 8
  %101 = load double, double* %18, align 8
  %102 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %101, double %100)
  %103 = fsub double %99, %102
  %104 = call double @llvm.fabs.f64(double %103)
  %105 = fcmp olt double %104, 1.000000e-02
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load double, double* %16, align 8
  %108 = fsub double %107, 2.500000e-01
  store double %108, double* %16, align 8
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = mul nsw i32 2, %112
  %114 = add nsw i32 %111, %113
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %19, align 4
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %116, %109
  %120 = load double, double* %16, align 8
  %121 = call double @pow(double noundef 2.000000e+00, double noundef %120) #6
  store double %121, double* %15, align 8
  %122 = load double*, double** %8, align 8
  %123 = load double*, double** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load double, double* %15, align 8
  %127 = call double @calc_sfb_ave_noise(double* noundef %122, double* noundef %123, i32 noundef %124, i32 noundef %125, double noundef %126)
  store double %127, double* %14, align 8
  %128 = load double, double* %14, align 8
  %129 = fcmp ogt double %128, 0.000000e+00
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = load double, double* %14, align 8
  %132 = load double, double* %12, align 8
  %133 = fcmp ole double %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load double, double* %16, align 8
  store double %135, double* %7, align 8
  br label %144

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %119
  %138 = load double, double* %16, align 8
  %139 = fsub double %138, 2.500000e-01
  store double %139, double* %16, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %19, align 4
  br label %93, !llvm.loop !7

142:                                              ; preds = %93
  %143 = load double, double* %17, align 8
  store double %143, double* %7, align 8
  br label %144

144:                                              ; preds = %142, %134
  %145 = load double, double* %7, align 8
  ret double %145
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @compute_scalefacs_short([3 x double]* noundef %0, %struct.gr_info* noundef %1, [3 x i32]* noundef %2) #0 {
  %4 = alloca [3 x double]*, align 8
  %5 = alloca %struct.gr_info*, align 8
  %6 = alloca [3 x i32]*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [12 x [3 x double]], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store [3 x double]* %0, [3 x double]** %4, align 8
  store %struct.gr_info* %1, %struct.gr_info** %5, align 8
  store [3 x i32]* %2, [3 x i32]** %6, align 8
  %13 = load %struct.gr_info*, %struct.gr_info** %5, align 8
  %14 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i64 0, i64 0
  %20 = bitcast [3 x double]* %19 to i8*
  %21 = load [3 x double]*, [3 x double]** %4, align 8
  %22 = bitcast [3 x double]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 8 %22, i64 288, i1 false)
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %89, %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %26, label %92

26:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %85, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %88

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i64 0, i64 %32
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fneg double %37
  %39 = load i32, i32* %12, align 4
  %40 = sitofp i32 %39 to double
  %41 = call double @llvm.fmuladd.f64(double %38, double %40, double 7.500000e-01)
  %42 = fadd double %41, 1.000000e-04
  %43 = call double @llvm.floor.f64(double %42)
  %44 = fptosi double %43 to i32
  %45 = load [3 x i32]*, [3 x i32]** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i64 %47
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 0, i64 %50
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 6
  br i1 %53, label %54, label %58

54:                                               ; preds = %30
  %55 = load i32, i32* %12, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double 1.500000e+01, %56
  store double %57, double* %7, align 8
  br label %62

58:                                               ; preds = %30
  %59 = load i32, i32* %12, align 4
  %60 = sitofp i32 %59 to double
  %61 = fdiv double 7.000000e+00, %60
  store double %61, double* %7, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load double, double* %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i64 0, i64 %65
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x double], [3 x double]* %66, i64 0, i64 %68
  %70 = load double, double* %69, align 8
  %71 = fadd double %63, %70
  %72 = load double, double* %8, align 8
  %73 = fcmp ogt double %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %62
  %75 = load double, double* %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %9, i64 0, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fadd double %75, %82
  store double %83, double* %8, align 8
  br label %84

84:                                               ; preds = %74, %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %27, !llvm.loop !8

88:                                               ; preds = %27
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %23, !llvm.loop !9

92:                                               ; preds = %23
  %93 = load double, double* %8, align 8
  ret double %93
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @compute_scalefacs_long(double* noundef %0, %struct.gr_info* noundef %1, i32* noundef %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca %struct.gr_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [21 x double], align 16
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store %struct.gr_info* %1, %struct.gr_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.gr_info*, %struct.gr_info** %5, align 8
  %13 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 1
  store i32 %17, i32* %11, align 4
  %18 = getelementptr inbounds [21 x double], [21 x double]* %8, i64 0, i64 0
  %19 = bitcast double* %18 to i8*
  %20 = load double*, double** %4, align 8
  %21 = bitcast double* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 8 %21, i64 168, i1 false)
  %22 = load %struct.gr_info*, %struct.gr_info** %5, align 8
  %23 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %22, i32 0, i32 12
  store i32 0, i32* %23, align 8
  store i32 11, i32* %7, align 4
  br label %24

24:                                               ; preds = %43, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 21
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [21 x double], [21 x double]* %8, i64 0, i64 %29
  %31 = load double, double* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sdiv i32 %35, %36
  %38 = sitofp i32 %37 to double
  %39 = fadd double %31, %38
  %40 = fcmp ogt double %39, 0.000000e+00
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %46

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24, !llvm.loop !10

46:                                               ; preds = %41, %24
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 21
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load %struct.gr_info*, %struct.gr_info** %5, align 8
  %51 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %50, i32 0, i32 12
  store i32 1, i32* %51, align 8
  store i32 11, i32* %7, align 4
  br label %52

52:                                               ; preds = %68, %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 21
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sdiv i32 %59, %60
  %62 = sitofp i32 %61 to double
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [21 x double], [21 x double]* %8, i64 0, i64 %64
  %66 = load double, double* %65, align 8
  %67 = fadd double %66, %62
  store double %67, double* %65, align 8
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %52, !llvm.loop !11

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %46
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %119, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 21
  br i1 %75, label %76, label %122

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [21 x double], [21 x double]* %8, i64 0, i64 %78
  %80 = load double, double* %79, align 8
  %81 = fneg double %80
  %82 = load i32, i32* %11, align 4
  %83 = sitofp i32 %82 to double
  %84 = call double @llvm.fmuladd.f64(double %81, double %83, double 7.500000e-01)
  %85 = fadd double %84, 1.000000e-04
  %86 = call double @llvm.floor.f64(double %85)
  %87 = fptosi double %86 to i32
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 11
  br i1 %93, label %94, label %98

94:                                               ; preds = %76
  %95 = load i32, i32* %11, align 4
  %96 = sitofp i32 %95 to double
  %97 = fdiv double 1.500000e+01, %96
  store double %97, double* %9, align 8
  br label %102

98:                                               ; preds = %76
  %99 = load i32, i32* %11, align 4
  %100 = sitofp i32 %99 to double
  %101 = fdiv double 7.000000e+00, %100
  store double %101, double* %9, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load double, double* %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [21 x double], [21 x double]* %8, i64 0, i64 %105
  %107 = load double, double* %106, align 8
  %108 = fadd double %103, %107
  %109 = load double, double* %10, align 8
  %110 = fcmp ogt double %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %102
  %112 = load double, double* %9, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [21 x double], [21 x double]* %8, i64 0, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fadd double %112, %116
  store double %117, double* %10, align 8
  br label %118

118:                                              ; preds = %111, %102
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %73, !llvm.loop !12

122:                                              ; preds = %73
  %123 = load double, double* %10, align 8
  ret double %123
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @VBR_iteration_loop_new(%struct.lame_global_flags* noundef %0, [2 x double]* noundef %1, double* noundef %2, [2 x [576 x double]]* noundef %3, [2 x %struct.III_psy_ratio]* noundef %4, %struct.III_side_info_t* noundef %5, [2 x [576 x i32]]* noundef %6, [2 x %struct.III_scalefac_t]* noundef %7) #0 {
  %9 = alloca %struct.lame_global_flags*, align 8
  %10 = alloca [2 x double]*, align 8
  %11 = alloca double*, align 8
  %12 = alloca [2 x [576 x double]]*, align 8
  %13 = alloca [2 x %struct.III_psy_ratio]*, align 8
  %14 = alloca %struct.III_side_info_t*, align 8
  %15 = alloca [2 x [576 x i32]]*, align 8
  %16 = alloca [2 x %struct.III_scalefac_t]*, align 8
  %17 = alloca [2 x [2 x %struct.III_psy_xmin]], align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.III_psy_xmin, align 8
  %29 = alloca double, align 8
  %30 = alloca [576 x double], align 16
  %31 = alloca %struct.gr_info*, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %9, align 8
  store [2 x double]* %1, [2 x double]** %10, align 8
  store double* %2, double** %11, align 8
  store [2 x [576 x double]]* %3, [2 x [576 x double]]** %12, align 8
  store [2 x %struct.III_psy_ratio]* %4, [2 x %struct.III_psy_ratio]** %13, align 8
  store %struct.III_side_info_t* %5, %struct.III_side_info_t** %14, align 8
  store [2 x [576 x i32]]* %6, [2 x [576 x i32]]** %15, align 8
  store [2 x %struct.III_scalefac_t]* %7, [2 x %struct.III_scalefac_t]** %16, align 8
  %34 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 8
  %35 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 8
  %36 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 8
  call void @iteration_init(%struct.lame_global_flags* noundef %34, %struct.III_side_info_t* noundef %35, [2 x [576 x i32]]* noundef %36)
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 8
  %38 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 22
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 -10, %40
  %42 = sitofp i32 %41 to double
  store double %42, double* %18, align 8
  %43 = load double, double* %18, align 8
  %44 = fdiv double %43, 1.000000e+01
  %45 = call double @pow(double noundef 1.000000e+01, double noundef %44) #6
  %46 = fptrunc double %45 to float
  store float %46, float* @masking_lower, align 4
  store float 1.000000e+00, float* @masking_lower, align 4
  store i32 0, i32* %26, align 4
  br label %47

47:                                               ; preds = %438, %8
  %48 = load i32, i32* %26, align 4
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 8
  %50 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 45
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %441

53:                                               ; preds = %47
  %54 = load i32, i32* @convert_mdct, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 8
  %58 = load i32, i32* %26, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %57, i64 %59
  %61 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %60, i64 0, i64 0
  %62 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 8
  %63 = load i32, i32* %26, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %62, i64 %64
  %66 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %65, i64 0, i64 0
  call void @ms_convert([576 x double]* noundef %61, [576 x double]* noundef %66)
  br label %67

67:                                               ; preds = %56, %53
  store i32 0, i32* %25, align 4
  br label %68

68:                                               ; preds = %434, %67
  %69 = load i32, i32* %25, align 4
  %70 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 8
  %71 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %70, i32 0, i32 46
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %437

74:                                               ; preds = %68
  %75 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 8
  %76 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %75, i32 0, i32 4
  %77 = load i32, i32* %26, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %76, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = load i32, i32* %25, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %80, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %83, i32 0, i32 0
  store %struct.gr_info* %84, %struct.gr_info** %31, align 8
  store i32 0, i32* %27, align 4
  %85 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %86 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %32, align 4
  store i32 0, i32* %24, align 4
  br label %90

90:                                               ; preds = %114, %74
  %91 = load i32, i32* %24, align 4
  %92 = icmp slt i32 %91, 576
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 8
  %95 = load i32, i32* %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %94, i64 %96
  %98 = load i32, i32* %25, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %97, i64 0, i64 %99
  %101 = load i32, i32* %24, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [576 x double], [576 x double]* %100, i64 0, i64 %102
  %104 = load double, double* %103, align 8
  %105 = call double @llvm.fabs.f64(double %104)
  store double %105, double* %33, align 8
  %106 = load double, double* %33, align 8
  %107 = call double @sqrt(double noundef %106) #6
  %108 = load double, double* %33, align 8
  %109 = fmul double %107, %108
  %110 = call double @sqrt(double noundef %109) #6
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [576 x double], [576 x double]* %30, i64 0, i64 %112
  store double %110, double* %113, align 8
  br label %114

114:                                              ; preds = %93
  %115 = load i32, i32* %24, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %24, align 4
  br label %90, !llvm.loop !13

117:                                              ; preds = %90
  %118 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 8
  %119 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 8
  %120 = load i32, i32* %26, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %119, i64 %121
  %123 = load i32, i32* %25, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %122, i64 0, i64 %124
  %126 = getelementptr inbounds [576 x double], [576 x double]* %125, i64 0, i64 0
  %127 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %13, align 8
  %128 = load i32, i32* %26, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %127, i64 %129
  %131 = load i32, i32* %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %130, i64 0, i64 %132
  %134 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %135 = load i32, i32* %26, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %17, i64 0, i64 %136
  %138 = load i32, i32* %25, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %137, i64 0, i64 %139
  %141 = call i32 @calc_xmin(%struct.lame_global_flags* noundef %118, double* noundef %126, %struct.III_psy_ratio* noundef %133, %struct.gr_info* noundef %134, %struct.III_psy_xmin* noundef %140)
  store double 0.000000e+00, double* %29, align 8
  %142 = load i32, i32* %32, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %239

144:                                              ; preds = %117
  store i32 0, i32* %23, align 4
  br label %145

145:                                              ; preds = %235, %144
  %146 = load i32, i32* %23, align 4
  %147 = icmp slt i32 %146, 12
  br i1 %147, label %148, label %238

148:                                              ; preds = %145
  store i32 0, i32* %24, align 4
  br label %149

149:                                              ; preds = %231, %148
  %150 = load i32, i32* %24, align 4
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %234

152:                                              ; preds = %149
  %153 = load i32, i32* %23, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* %23, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %20, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %22, align 4
  %165 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 8
  %166 = load i32, i32* %26, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %165, i64 %167
  %169 = load i32, i32* %25, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %168, i64 0, i64 %170
  %172 = load i32, i32* %20, align 4
  %173 = mul nsw i32 3, %172
  %174 = load i32, i32* %24, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [576 x double], [576 x double]* %171, i64 0, i64 %176
  %178 = load i32, i32* %20, align 4
  %179 = mul nsw i32 3, %178
  %180 = load i32, i32* %24, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [576 x double], [576 x double]* %30, i64 0, i64 %182
  %184 = load i32, i32* %23, align 4
  %185 = load float, float* @masking_lower, align 4
  %186 = fpext float %185 to double
  %187 = load i32, i32* %26, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %17, i64 0, i64 %188
  %190 = load i32, i32* %25, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %189, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %192, i32 0, i32 1
  %194 = load i32, i32* %23, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %193, i64 0, i64 %195
  %197 = load i32, i32* %24, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x double], [3 x double]* %196, i64 0, i64 %198
  %200 = load double, double* %199, align 8
  %201 = fmul double %186, %200
  %202 = load i32, i32* %22, align 4
  %203 = call double @find_scalefac(double* noundef %177, double* noundef %183, i32 noundef 3, i32 noundef %184, double noundef %201, i32 noundef %202)
  %204 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %205 = load i32, i32* %23, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %204, i64 0, i64 %206
  %208 = load i32, i32* %24, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [3 x double], [3 x double]* %207, i64 0, i64 %209
  store double %203, double* %210, align 8
  %211 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %212 = load i32, i32* %23, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %211, i64 0, i64 %213
  %215 = load i32, i32* %24, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [3 x double], [3 x double]* %214, i64 0, i64 %216
  %218 = load double, double* %217, align 8
  %219 = load double, double* %29, align 8
  %220 = fcmp ogt double %218, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %152
  %222 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %223 = load i32, i32* %23, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %222, i64 0, i64 %224
  %226 = load i32, i32* %24, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [3 x double], [3 x double]* %225, i64 0, i64 %227
  %229 = load double, double* %228, align 8
  store double %229, double* %29, align 8
  br label %230

230:                                              ; preds = %221, %152
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  br label %149, !llvm.loop !14

234:                                              ; preds = %149
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %23, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %23, align 4
  br label %145, !llvm.loop !15

238:                                              ; preds = %145
  br label %308

239:                                              ; preds = %117
  store i32 0, i32* %23, align 4
  br label %240

240:                                              ; preds = %304, %239
  %241 = load i32, i32* %23, align 4
  %242 = icmp slt i32 %241, 21
  br i1 %242, label %243, label %307

243:                                              ; preds = %240
  %244 = load i32, i32* %23, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %20, align 4
  %248 = load i32, i32* %23, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* %21, align 4
  %254 = load i32, i32* %20, align 4
  %255 = sub nsw i32 %253, %254
  store i32 %255, i32* %22, align 4
  %256 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 8
  %257 = load i32, i32* %26, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %256, i64 %258
  %260 = load i32, i32* %25, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %259, i64 0, i64 %261
  %263 = load i32, i32* %20, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [576 x double], [576 x double]* %262, i64 0, i64 %264
  %266 = load i32, i32* %20, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [576 x double], [576 x double]* %30, i64 0, i64 %267
  %269 = load i32, i32* %23, align 4
  %270 = load float, float* @masking_lower, align 4
  %271 = fpext float %270 to double
  %272 = load i32, i32* %26, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %17, i64 0, i64 %273
  %275 = load i32, i32* %25, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %274, i64 0, i64 %276
  %278 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %277, i32 0, i32 0
  %279 = load i32, i32* %23, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [22 x double], [22 x double]* %278, i64 0, i64 %280
  %282 = load double, double* %281, align 8
  %283 = fmul double %271, %282
  %284 = load i32, i32* %22, align 4
  %285 = call double @find_scalefac(double* noundef %265, double* noundef %268, i32 noundef 1, i32 noundef %269, double noundef %283, i32 noundef %284)
  %286 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %287 = load i32, i32* %23, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [22 x double], [22 x double]* %286, i64 0, i64 %288
  store double %285, double* %289, align 8
  %290 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %291 = load i32, i32* %23, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [22 x double], [22 x double]* %290, i64 0, i64 %292
  %294 = load double, double* %293, align 8
  %295 = load double, double* %29, align 8
  %296 = fcmp ogt double %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %243
  %298 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %299 = load i32, i32* %23, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [22 x double], [22 x double]* %298, i64 0, i64 %300
  %302 = load double, double* %301, align 8
  store double %302, double* %29, align 8
  br label %303

303:                                              ; preds = %297, %243
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %23, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %23, align 4
  br label %240, !llvm.loop !16

307:                                              ; preds = %240
  br label %308

308:                                              ; preds = %307, %238
  %309 = load double, double* %29, align 8
  %310 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %309, double 2.100000e+02)
  %311 = fadd double %310, 5.000000e-01
  %312 = call double @llvm.floor.f64(double %311)
  %313 = fptoui double %312 to i32
  %314 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %315 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %32, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %381

318:                                              ; preds = %308
  store i32 0, i32* %23, align 4
  br label %319

319:                                              ; preds = %341, %318
  %320 = load i32, i32* %23, align 4
  %321 = icmp slt i32 %320, 12
  br i1 %321, label %322, label %344

322:                                              ; preds = %319
  store i32 0, i32* %24, align 4
  br label %323

323:                                              ; preds = %337, %322
  %324 = load i32, i32* %24, align 4
  %325 = icmp slt i32 %324, 3
  br i1 %325, label %326, label %340

326:                                              ; preds = %323
  %327 = load double, double* %29, align 8
  %328 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %329 = load i32, i32* %23, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %328, i64 0, i64 %330
  %332 = load i32, i32* %24, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [3 x double], [3 x double]* %331, i64 0, i64 %333
  %335 = load double, double* %334, align 8
  %336 = fsub double %335, %327
  store double %336, double* %334, align 8
  br label %337

337:                                              ; preds = %326
  %338 = load i32, i32* %24, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %24, align 4
  br label %323, !llvm.loop !17

340:                                              ; preds = %323
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %23, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %23, align 4
  br label %319, !llvm.loop !18

344:                                              ; preds = %319
  %345 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %346 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %345, i32 0, i32 13
  store i32 0, i32* %346, align 4
  %347 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %348 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %347, i64 0, i64 0
  %349 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %350 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 8
  %351 = load i32, i32* %26, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %350, i64 %352
  %354 = load i32, i32* %25, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %353, i64 0, i64 %355
  %357 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %356, i32 0, i32 1
  %358 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %357, i64 0, i64 0
  %359 = call double @compute_scalefacs_short([3 x double]* noundef %348, %struct.gr_info* noundef %349, [3 x i32]* noundef %358)
  %360 = fcmp ogt double %359, 0.000000e+00
  br i1 %360, label %361, label %380

361:                                              ; preds = %344
  %362 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %363 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %362, i32 0, i32 13
  store i32 1, i32* %363, align 4
  %364 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 1
  %365 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %364, i64 0, i64 0
  %366 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %367 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 8
  %368 = load i32, i32* %26, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %367, i64 %369
  %371 = load i32, i32* %25, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %370, i64 0, i64 %372
  %374 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %373, i32 0, i32 1
  %375 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %374, i64 0, i64 0
  %376 = call double @compute_scalefacs_short([3 x double]* noundef %365, %struct.gr_info* noundef %366, [3 x i32]* noundef %375)
  %377 = fcmp ogt double %376, 0.000000e+00
  br i1 %377, label %378, label %379

378:                                              ; preds = %361
  call void @exit(i32 noundef 32) #7
  unreachable

379:                                              ; preds = %361
  br label %380

380:                                              ; preds = %379, %344
  br label %433

381:                                              ; preds = %308
  store i32 0, i32* %23, align 4
  br label %382

382:                                              ; preds = %393, %381
  %383 = load i32, i32* %23, align 4
  %384 = icmp slt i32 %383, 21
  br i1 %384, label %385, label %396

385:                                              ; preds = %382
  %386 = load double, double* %29, align 8
  %387 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %388 = load i32, i32* %23, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [22 x double], [22 x double]* %387, i64 0, i64 %389
  %391 = load double, double* %390, align 8
  %392 = fsub double %391, %386
  store double %392, double* %390, align 8
  br label %393

393:                                              ; preds = %385
  %394 = load i32, i32* %23, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %23, align 4
  br label %382, !llvm.loop !19

396:                                              ; preds = %382
  %397 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %398 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %397, i32 0, i32 13
  store i32 0, i32* %398, align 4
  %399 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %400 = getelementptr inbounds [22 x double], [22 x double]* %399, i64 0, i64 0
  %401 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %402 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 8
  %403 = load i32, i32* %26, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %402, i64 %404
  %406 = load i32, i32* %25, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %405, i64 0, i64 %407
  %409 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %408, i32 0, i32 0
  %410 = getelementptr inbounds [22 x i32], [22 x i32]* %409, i64 0, i64 0
  %411 = call double @compute_scalefacs_long(double* noundef %400, %struct.gr_info* noundef %401, i32* noundef %410)
  %412 = fcmp ogt double %411, 0.000000e+00
  br i1 %412, label %413, label %432

413:                                              ; preds = %396
  %414 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %415 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %414, i32 0, i32 13
  store i32 1, i32* %415, align 4
  %416 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %28, i32 0, i32 0
  %417 = getelementptr inbounds [22 x double], [22 x double]* %416, i64 0, i64 0
  %418 = load %struct.gr_info*, %struct.gr_info** %31, align 8
  %419 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 8
  %420 = load i32, i32* %26, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %419, i64 %421
  %423 = load i32, i32* %25, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %422, i64 0, i64 %424
  %426 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %425, i32 0, i32 0
  %427 = getelementptr inbounds [22 x i32], [22 x i32]* %426, i64 0, i64 0
  %428 = call double @compute_scalefacs_long(double* noundef %417, %struct.gr_info* noundef %418, i32* noundef %427)
  %429 = fcmp ogt double %428, 0.000000e+00
  br i1 %429, label %430, label %431

430:                                              ; preds = %413
  call void @exit(i32 noundef 32) #7
  unreachable

431:                                              ; preds = %413
  br label %432

432:                                              ; preds = %431, %396
  br label %433

433:                                              ; preds = %432, %380
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %25, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %25, align 4
  br label %68, !llvm.loop !20

437:                                              ; preds = %68
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %26, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %26, align 4
  br label %47, !llvm.loop !21

441:                                              ; preds = %47
  ret void
}

declare dso_local void @iteration_init(%struct.lame_global_flags* noundef, %struct.III_side_info_t* noundef, [2 x [576 x i32]]* noundef) #5

declare dso_local void @ms_convert([576 x double]* noundef, [576 x double]* noundef) #5

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

declare dso_local i32 @calc_xmin(%struct.lame_global_flags* noundef, double* noundef, %struct.III_psy_ratio* noundef, %struct.gr_info* noundef, %struct.III_psy_xmin* noundef) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
