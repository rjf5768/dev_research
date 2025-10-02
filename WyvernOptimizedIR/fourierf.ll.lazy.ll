; ModuleID = './fourierf.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/telecomm-FFT/fourierf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@SinPi4Result = dso_local constant double 0x3FE6A09E667F3BCC, align 8
@SinPi16Result = dso_local constant double 0x3FC8F8B83C69A60A, align 8
@CosPi4Result = dso_local constant double 0x3FE6A09E667F3BCD, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef readonly %3, float* noundef %4, float* noundef %5) #0 {
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = call i32 @IsPowerOfTwo(i32 noundef %0) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #6
  call void @exit(i32 noundef 1) #7
  unreachable

13:                                               ; preds = %6
  %.not12 = icmp eq i32 %1, 0
  br i1 %.not12, label %15, label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %13
  %.05 = phi double [ 0xC01921FB54442D18, %14 ], [ 0x401921FB54442D18, %13 ]
  %16 = bitcast float* %2 to i8*
  call void @CheckPointer(i8* noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = bitcast float* %4 to i8*
  call void @CheckPointer(i8* noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = bitcast float* %5 to i8*
  call void @CheckPointer(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @NumberOfBitsNeeded(i32 noundef %0) #5
  br label %20

20:                                               ; preds = %41, %15
  %.08 = phi i32 [ 0, %15 ], [ %42, %41 ]
  %21 = icmp ult i32 %.08, %0
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = call i32 @ReverseBits(i32 noundef %.08, i32 noundef %19) #5
  %24 = zext i32 %.08 to i64
  %25 = getelementptr inbounds float, float* %2, i64 %24
  %26 = load float, float* %25, align 4
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds float, float* %4, i64 %27
  store float %26, float* %28, align 4
  %29 = icmp eq float* %3, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %36

31:                                               ; preds = %22
  %32 = zext i32 %.08 to i64
  %33 = getelementptr inbounds float, float* %3, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi double [ 0.000000e+00, %30 ], [ %35, %31 ]
  %38 = fptrunc double %37 to float
  %39 = zext i32 %23 to i64
  %40 = getelementptr inbounds float, float* %5, i64 %39
  store float %38, float* %40, align 4
  br label %41

41:                                               ; preds = %36
  %42 = add i32 %.08, 1
  br label %20, !llvm.loop !4

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %168, %43
  %.07 = phi i32 [ 2, %43 ], [ %169, %168 ]
  %.06 = phi i32 [ 1, %43 ], [ %.07, %168 ]
  %.not13 = icmp ugt i32 %.07, %0
  br i1 %.not13, label %170, label %45

45:                                               ; preds = %44
  %46 = uitofp i32 %.07 to double
  %47 = fdiv double %.05, %46
  %48 = fmul double %47, -2.000000e+00
  %49 = call double @sin(double noundef %48) #5
  %50 = call double @sin(double %47)
  %51 = fneg double %50
  %52 = fmul double %47, -2.000000e+00
  %53 = call double @cos(double noundef %52) #5
  %cos = call double @cos(double %47)
  %54 = fmul double %47, -2.000000e+00
  %55 = fcmp oeq double %54, 0x3FE921FB54442D18
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %62

57:                                               ; preds = %45
  %58 = fmul double %47, -2.000000e+00
  %59 = fcmp oeq double %58, 0x3FC921FB54442D18
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %57
  %.03 = phi double [ 0x3FC8F8B83C69A60A, %60 ], [ %49, %57 ]
  br label %62

62:                                               ; preds = %61, %56
  %.14 = phi double [ 0x3FE6A09E667F3BCC, %56 ], [ %.03, %61 ]
  %.01 = phi double [ 0x3FE6A09E667F3BCD, %56 ], [ %53, %61 ]
  %63 = fcmp oeq double %47, 0xBFE921FB54442D18
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  br label %69

65:                                               ; preds = %62
  %66 = fcmp oeq double %47, 0xBFC921FB54442D18
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %65
  %.02 = phi double [ 0x3FC8F8B83C69A60A, %67 ], [ %51, %65 ]
  br label %69

69:                                               ; preds = %68, %64
  %.1 = phi double [ 0x3FE6A09E667F3BCC, %64 ], [ %.02, %68 ]
  %.0 = phi double [ 0x3FE6A09E667F3BCD, %64 ], [ %cos, %68 ]
  %70 = fmul double %.0, 2.000000e+00
  br label %71

71:                                               ; preds = %165, %69
  %.19 = phi i32 [ 0, %69 ], [ %166, %165 ]
  %72 = icmp ult i32 %.19, %0
  br i1 %72, label %73, label %167

73:                                               ; preds = %71
  %74 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  store double %.01, double* %74, align 16
  %75 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  store double %.0, double* %75, align 8
  %76 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %.14, double* %76, align 16
  %77 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %.1, double* %77, align 8
  br label %78

78:                                               ; preds = %161, %73
  %.011 = phi i32 [ 0, %73 ], [ %163, %161 ]
  %.010 = phi i32 [ %.19, %73 ], [ %162, %161 ]
  %79 = icmp ult i32 %.011, %.06
  br i1 %79, label %80, label %164

80:                                               ; preds = %78
  %81 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %82 = load double, double* %81, align 8
  %83 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %84 = load double, double* %83, align 16
  %85 = fneg double %84
  %86 = call double @llvm.fmuladd.f64(double %70, double %82, double %85)
  %87 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  store double %86, double* %87, align 16
  %88 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %89 = load double, double* %88, align 8
  %90 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  store double %89, double* %90, align 16
  %91 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  store double %86, double* %91, align 8
  %92 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %93 = load double, double* %92, align 8
  %94 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %95 = load double, double* %94, align 16
  %96 = fneg double %95
  %97 = call double @llvm.fmuladd.f64(double %70, double %93, double %96)
  %98 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %97, double* %98, align 16
  %99 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %100 = load double, double* %99, align 8
  %101 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %100, double* %101, align 16
  %102 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %97, double* %102, align 8
  %103 = add i32 %.010, %.06
  %104 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %105 = load double, double* %104, align 16
  %106 = zext i32 %103 to i64
  %107 = getelementptr inbounds float, float* %4, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fpext float %108 to double
  %110 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %111 = load double, double* %110, align 16
  %112 = zext i32 %103 to i64
  %113 = getelementptr inbounds float, float* %5, i64 %112
  %114 = load float, float* %113, align 4
  %115 = fpext float %114 to double
  %116 = fneg double %111
  %117 = fmul double %116, %115
  %118 = call double @llvm.fmuladd.f64(double %105, double %109, double %117)
  %119 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %120 = load double, double* %119, align 16
  %121 = zext i32 %103 to i64
  %122 = getelementptr inbounds float, float* %5, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fpext float %123 to double
  %125 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %126 = load double, double* %125, align 16
  %127 = zext i32 %103 to i64
  %128 = getelementptr inbounds float, float* %4, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fpext float %129 to double
  %131 = fmul double %126, %130
  %132 = call double @llvm.fmuladd.f64(double %120, double %124, double %131)
  %133 = zext i32 %.010 to i64
  %134 = getelementptr inbounds float, float* %4, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = fsub double %136, %118
  %138 = fptrunc double %137 to float
  %139 = zext i32 %103 to i64
  %140 = getelementptr inbounds float, float* %4, i64 %139
  store float %138, float* %140, align 4
  %141 = zext i32 %.010 to i64
  %142 = getelementptr inbounds float, float* %5, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fpext float %143 to double
  %145 = fsub double %144, %132
  %146 = fptrunc double %145 to float
  %147 = zext i32 %103 to i64
  %148 = getelementptr inbounds float, float* %5, i64 %147
  store float %146, float* %148, align 4
  %149 = zext i32 %.010 to i64
  %150 = getelementptr inbounds float, float* %4, i64 %149
  %151 = load float, float* %150, align 4
  %152 = fpext float %151 to double
  %153 = fadd double %118, %152
  %154 = fptrunc double %153 to float
  store float %154, float* %150, align 4
  %155 = zext i32 %.010 to i64
  %156 = getelementptr inbounds float, float* %5, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fpext float %157 to double
  %159 = fadd double %132, %158
  %160 = fptrunc double %159 to float
  store float %160, float* %156, align 4
  br label %161

161:                                              ; preds = %80
  %162 = add i32 %.010, 1
  %163 = add i32 %.011, 1
  br label %78, !llvm.loop !6

164:                                              ; preds = %78
  br label %165

165:                                              ; preds = %164
  %166 = add i32 %.19, %.07
  br label %71, !llvm.loop !7

167:                                              ; preds = %71
  br label %168

168:                                              ; preds = %167
  %169 = shl i32 %.07, 1
  br label %44, !llvm.loop !8

170:                                              ; preds = %44
  %.not14 = icmp eq i32 %1, 0
  br i1 %.not14, label %191, label %171

171:                                              ; preds = %170
  %172 = uitofp i32 %0 to double
  br label %173

173:                                              ; preds = %188, %171
  %.2 = phi i32 [ 0, %171 ], [ %189, %188 ]
  %174 = icmp ult i32 %.2, %0
  br i1 %174, label %175, label %190

175:                                              ; preds = %173
  %176 = zext i32 %.2 to i64
  %177 = getelementptr inbounds float, float* %4, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fpext float %178 to double
  %180 = fdiv double %179, %172
  %181 = fptrunc double %180 to float
  store float %181, float* %177, align 4
  %182 = zext i32 %.2 to i64
  %183 = getelementptr inbounds float, float* %5, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fpext float %184 to double
  %186 = fdiv double %185, %172
  %187 = fptrunc double %186 to float
  store float %187, float* %183, align 4
  br label %188

188:                                              ; preds = %175
  %189 = add i32 %.2, 1
  br label %173, !llvm.loop !9

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190, %170
  ret void
}

declare dso_local i32 @IsPowerOfTwo(i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @CheckPointer(i8* noundef readnone %0, i8* noundef %1) #0 {
  %3 = icmp eq i8* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %1) #6
  call void @exit(i32 noundef 1) #7
  unreachable

7:                                                ; preds = %2
  ret void
}

declare dso_local i32 @NumberOfBitsNeeded(i32 noundef) #1

declare dso_local i32 @ReverseBits(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft_float_StrictFP(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef readonly %3, float* noundef %4, float* noundef %5) #0 {
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = call i32 @IsPowerOfTwo(i32 noundef %0) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #6
  call void @exit(i32 noundef 1) #7
  unreachable

13:                                               ; preds = %6
  %.not12 = icmp eq i32 %1, 0
  br i1 %.not12, label %15, label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %13
  %.05 = phi double [ 0xC01921FB54442D18, %14 ], [ 0x401921FB54442D18, %13 ]
  %16 = bitcast float* %2 to i8*
  call void @CheckPointer(i8* noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = bitcast float* %4 to i8*
  call void @CheckPointer(i8* noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = bitcast float* %5 to i8*
  call void @CheckPointer(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @NumberOfBitsNeeded(i32 noundef %0) #5
  br label %20

20:                                               ; preds = %41, %15
  %.08 = phi i32 [ 0, %15 ], [ %42, %41 ]
  %21 = icmp ult i32 %.08, %0
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = call i32 @ReverseBits(i32 noundef %.08, i32 noundef %19) #5
  %24 = zext i32 %.08 to i64
  %25 = getelementptr inbounds float, float* %2, i64 %24
  %26 = load float, float* %25, align 4
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds float, float* %4, i64 %27
  store float %26, float* %28, align 4
  %29 = icmp eq float* %3, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %36

31:                                               ; preds = %22
  %32 = zext i32 %.08 to i64
  %33 = getelementptr inbounds float, float* %3, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi double [ 0.000000e+00, %30 ], [ %35, %31 ]
  %38 = fptrunc double %37 to float
  %39 = zext i32 %23 to i64
  %40 = getelementptr inbounds float, float* %5, i64 %39
  store float %38, float* %40, align 4
  br label %41

41:                                               ; preds = %36
  %42 = add i32 %.08, 1
  br label %20, !llvm.loop !10

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %169, %43
  %.07 = phi i32 [ 2, %43 ], [ %170, %169 ]
  %.06 = phi i32 [ 1, %43 ], [ %.07, %169 ]
  %.not13 = icmp ugt i32 %.07, %0
  br i1 %.not13, label %171, label %45

45:                                               ; preds = %44
  %46 = uitofp i32 %.07 to double
  %47 = fdiv double %.05, %46
  %48 = fmul double %47, -2.000000e+00
  %49 = call double @sin(double noundef %48) #5
  %50 = call double @sin(double %47)
  %51 = fneg double %50
  %52 = fmul double %47, -2.000000e+00
  %53 = call double @cos(double noundef %52) #5
  %cos = call double @cos(double %47)
  %54 = fmul double %47, -2.000000e+00
  %55 = fcmp oeq double %54, 0x3FE921FB54442D18
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %62

57:                                               ; preds = %45
  %58 = fmul double %47, -2.000000e+00
  %59 = fcmp oeq double %58, 0x3FC921FB54442D18
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %57
  %.03 = phi double [ 0x3FC8F8B83C69A60A, %60 ], [ %49, %57 ]
  br label %62

62:                                               ; preds = %61, %56
  %.14 = phi double [ 0x3FE6A09E667F3BCC, %56 ], [ %.03, %61 ]
  %.01 = phi double [ 0x3FE6A09E667F3BCD, %56 ], [ %53, %61 ]
  %63 = fcmp oeq double %47, 0xBFE921FB54442D18
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  br label %69

65:                                               ; preds = %62
  %66 = fcmp oeq double %47, 0xBFC921FB54442D18
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %65
  %.02 = phi double [ 0x3FC8F8B83C69A60A, %67 ], [ %51, %65 ]
  br label %69

69:                                               ; preds = %68, %64
  %.1 = phi double [ 0x3FE6A09E667F3BCC, %64 ], [ %.02, %68 ]
  %.0 = phi double [ 0x3FE6A09E667F3BCD, %64 ], [ %cos, %68 ]
  %70 = fmul double %.0, 2.000000e+00
  br label %71

71:                                               ; preds = %166, %69
  %.19 = phi i32 [ 0, %69 ], [ %167, %166 ]
  %72 = icmp ult i32 %.19, %0
  br i1 %72, label %73, label %168

73:                                               ; preds = %71
  %74 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  store double %.01, double* %74, align 16
  %75 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  store double %.0, double* %75, align 8
  %76 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %.14, double* %76, align 16
  %77 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %.1, double* %77, align 8
  br label %78

78:                                               ; preds = %162, %73
  %.011 = phi i32 [ 0, %73 ], [ %164, %162 ]
  %.010 = phi i32 [ %.19, %73 ], [ %163, %162 ]
  %79 = icmp ult i32 %.011, %.06
  br i1 %79, label %80, label %165

80:                                               ; preds = %78
  %81 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %82 = load double, double* %81, align 8
  %83 = fmul double %70, %82
  %84 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %85 = load double, double* %84, align 16
  %86 = fsub double %83, %85
  %87 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  store double %86, double* %87, align 16
  %88 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %89 = load double, double* %88, align 8
  %90 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  store double %89, double* %90, align 16
  %91 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  store double %86, double* %91, align 8
  %92 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %93 = load double, double* %92, align 8
  %94 = fmul double %70, %93
  %95 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %96 = load double, double* %95, align 16
  %97 = fsub double %94, %96
  %98 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %97, double* %98, align 16
  %99 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %100 = load double, double* %99, align 8
  %101 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %100, double* %101, align 16
  %102 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %97, double* %102, align 8
  %103 = add i32 %.010, %.06
  %104 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %105 = load double, double* %104, align 16
  %106 = zext i32 %103 to i64
  %107 = getelementptr inbounds float, float* %4, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fpext float %108 to double
  %110 = fmul double %105, %109
  %111 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %112 = load double, double* %111, align 16
  %113 = zext i32 %103 to i64
  %114 = getelementptr inbounds float, float* %5, i64 %113
  %115 = load float, float* %114, align 4
  %116 = fpext float %115 to double
  %117 = fmul double %112, %116
  %118 = fsub double %110, %117
  %119 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %120 = load double, double* %119, align 16
  %121 = zext i32 %103 to i64
  %122 = getelementptr inbounds float, float* %5, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fpext float %123 to double
  %125 = fmul double %120, %124
  %126 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %127 = load double, double* %126, align 16
  %128 = zext i32 %103 to i64
  %129 = getelementptr inbounds float, float* %4, i64 %128
  %130 = load float, float* %129, align 4
  %131 = fpext float %130 to double
  %132 = fmul double %127, %131
  %133 = fadd double %125, %132
  %134 = zext i32 %.010 to i64
  %135 = getelementptr inbounds float, float* %4, i64 %134
  %136 = load float, float* %135, align 4
  %137 = fpext float %136 to double
  %138 = fsub double %137, %118
  %139 = fptrunc double %138 to float
  %140 = zext i32 %103 to i64
  %141 = getelementptr inbounds float, float* %4, i64 %140
  store float %139, float* %141, align 4
  %142 = zext i32 %.010 to i64
  %143 = getelementptr inbounds float, float* %5, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fpext float %144 to double
  %146 = fsub double %145, %133
  %147 = fptrunc double %146 to float
  %148 = zext i32 %103 to i64
  %149 = getelementptr inbounds float, float* %5, i64 %148
  store float %147, float* %149, align 4
  %150 = zext i32 %.010 to i64
  %151 = getelementptr inbounds float, float* %4, i64 %150
  %152 = load float, float* %151, align 4
  %153 = fpext float %152 to double
  %154 = fadd double %118, %153
  %155 = fptrunc double %154 to float
  store float %155, float* %151, align 4
  %156 = zext i32 %.010 to i64
  %157 = getelementptr inbounds float, float* %5, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fpext float %158 to double
  %160 = fadd double %133, %159
  %161 = fptrunc double %160 to float
  store float %161, float* %157, align 4
  br label %162

162:                                              ; preds = %80
  %163 = add i32 %.010, 1
  %164 = add i32 %.011, 1
  br label %78, !llvm.loop !11

165:                                              ; preds = %78
  br label %166

166:                                              ; preds = %165
  %167 = add i32 %.19, %.07
  br label %71, !llvm.loop !12

168:                                              ; preds = %71
  br label %169

169:                                              ; preds = %168
  %170 = shl i32 %.07, 1
  br label %44, !llvm.loop !13

171:                                              ; preds = %44
  %.not14 = icmp eq i32 %1, 0
  br i1 %.not14, label %192, label %172

172:                                              ; preds = %171
  %173 = uitofp i32 %0 to double
  br label %174

174:                                              ; preds = %189, %172
  %.2 = phi i32 [ 0, %172 ], [ %190, %189 ]
  %175 = icmp ult i32 %.2, %0
  br i1 %175, label %176, label %191

176:                                              ; preds = %174
  %177 = zext i32 %.2 to i64
  %178 = getelementptr inbounds float, float* %4, i64 %177
  %179 = load float, float* %178, align 4
  %180 = fpext float %179 to double
  %181 = fdiv double %180, %173
  %182 = fptrunc double %181 to float
  store float %182, float* %178, align 4
  %183 = zext i32 %.2 to i64
  %184 = getelementptr inbounds float, float* %5, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fpext float %185 to double
  %187 = fdiv double %186, %173
  %188 = fptrunc double %187 to float
  store float %188, float* %184, align 4
  br label %189

189:                                              ; preds = %176
  %190 = add i32 %.2, 1
  br label %174, !llvm.loop !14

191:                                              ; preds = %174
  br label %192

192:                                              ; preds = %191, %171
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
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
