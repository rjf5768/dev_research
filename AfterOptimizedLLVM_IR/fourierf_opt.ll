; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/telecomm-FFT/fourierf.c'
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
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca [3 x double], align 16
  %30 = alloca [3 x double], align 16
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store double 0x401921FB54442D18, double* %20, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IsPowerOfTwo(i32 noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %38)
  call void @exit(i32 noundef 1) #5
  unreachable

40:                                               ; preds = %6
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load double, double* %20, align 8
  %45 = fneg double %44
  store double %45, double* %20, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load float*, float** %9, align 8
  %48 = bitcast float* %47 to i8*
  call void @CheckPointer(i8* noundef %48, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = load float*, float** %11, align 8
  %50 = bitcast float* %49 to i8*
  call void @CheckPointer(i8* noundef %50, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = load float*, float** %12, align 8
  %52 = bitcast float* %51 to i8*
  call void @CheckPointer(i8* noundef %52, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @NumberOfBitsNeeded(i32 noundef %53)
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %89, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ReverseBits(i32 noundef %60, i32 noundef %61)
  store i32 %62, i32* %15, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %11, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %67, float* %71, align 4
  %72 = load float*, float** %10, align 8
  %73 = icmp eq float* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %82

75:                                               ; preds = %59
  %76 = load float*, float** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  br label %82

82:                                               ; preds = %75, %74
  %83 = phi double [ 0.000000e+00, %74 ], [ %81, %75 ]
  %84 = fptrunc double %83 to float
  %85 = load float*, float** %12, align 8
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float %84, float* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %55, !llvm.loop !4

92:                                               ; preds = %55
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %93

93:                                               ; preds = %281, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ule i32 %94, %95
  br i1 %96, label %97, label %284

97:                                               ; preds = %93
  %98 = load double, double* %20, align 8
  %99 = load i32, i32* %18, align 4
  %100 = uitofp i32 %99 to double
  %101 = fdiv double %98, %100
  store double %101, double* %23, align 8
  %102 = load double, double* %23, align 8
  %103 = fmul double -2.000000e+00, %102
  %104 = call double @sin(double noundef %103) #6
  store double %104, double* %24, align 8
  %105 = load double, double* %23, align 8
  %106 = fneg double %105
  %107 = call double @sin(double noundef %106) #6
  store double %107, double* %25, align 8
  %108 = load double, double* %23, align 8
  %109 = fmul double -2.000000e+00, %108
  %110 = call double @cos(double noundef %109) #6
  store double %110, double* %26, align 8
  %111 = load double, double* %23, align 8
  %112 = fneg double %111
  %113 = call double @cos(double noundef %112) #6
  store double %113, double* %27, align 8
  %114 = load double, double* %23, align 8
  %115 = fmul double -2.000000e+00, %114
  %116 = fcmp oeq double %115, 0x3FE921FB54442D18
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  store double 0x3FE6A09E667F3BCC, double* %24, align 8
  store double 0x3FE6A09E667F3BCD, double* %26, align 8
  br label %124

118:                                              ; preds = %97
  %119 = load double, double* %23, align 8
  %120 = fmul double -2.000000e+00, %119
  %121 = fcmp oeq double %120, 0x3FC921FB54442D18
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store double 0x3FC8F8B83C69A60A, double* %24, align 8
  br label %123

123:                                              ; preds = %122, %118
  br label %124

124:                                              ; preds = %123, %117
  %125 = load double, double* %23, align 8
  %126 = fneg double %125
  %127 = fcmp oeq double %126, 0x3FE921FB54442D18
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store double 0x3FE6A09E667F3BCC, double* %25, align 8
  store double 0x3FE6A09E667F3BCD, double* %27, align 8
  br label %135

129:                                              ; preds = %124
  %130 = load double, double* %23, align 8
  %131 = fneg double %130
  %132 = fcmp oeq double %131, 0x3FC921FB54442D18
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store double 0x3FC8F8B83C69A60A, double* %25, align 8
  br label %134

134:                                              ; preds = %133, %129
  br label %135

135:                                              ; preds = %134, %128
  %136 = load double, double* %27, align 8
  %137 = fmul double 2.000000e+00, %136
  store double %137, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %275, %135
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %279

142:                                              ; preds = %138
  %143 = load double, double* %26, align 8
  %144 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %143, double* %144, align 16
  %145 = load double, double* %27, align 8
  %146 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %145, double* %146, align 8
  %147 = load double, double* %24, align 8
  %148 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %147, double* %148, align 16
  %149 = load double, double* %25, align 8
  %150 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %149, double* %150, align 8
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %269, %142
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %274

156:                                              ; preds = %152
  %157 = load double, double* %28, align 8
  %158 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %159 = load double, double* %158, align 8
  %160 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  %161 = load double, double* %160, align 16
  %162 = fneg double %161
  %163 = call double @llvm.fmuladd.f64(double %157, double %159, double %162)
  %164 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  store double %163, double* %164, align 16
  %165 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %166 = load double, double* %165, align 8
  %167 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %166, double* %167, align 16
  %168 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %169 = load double, double* %168, align 16
  %170 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %169, double* %170, align 8
  %171 = load double, double* %28, align 8
  %172 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %173 = load double, double* %172, align 8
  %174 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  %175 = load double, double* %174, align 16
  %176 = fneg double %175
  %177 = call double @llvm.fmuladd.f64(double %171, double %173, double %176)
  %178 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  store double %177, double* %178, align 16
  %179 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %180 = load double, double* %179, align 8
  %181 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %180, double* %181, align 16
  %182 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %183 = load double, double* %182, align 16
  %184 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %183, double* %184, align 8
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %19, align 4
  %187 = add i32 %185, %186
  store i32 %187, i32* %16, align 4
  %188 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %189 = load double, double* %188, align 16
  %190 = load float*, float** %11, align 8
  %191 = load i32, i32* %16, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  %194 = load float, float* %193, align 4
  %195 = fpext float %194 to double
  %196 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %197 = load double, double* %196, align 16
  %198 = load float*, float** %12, align 8
  %199 = load i32, i32* %16, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  %202 = load float, float* %201, align 4
  %203 = fpext float %202 to double
  %204 = fmul double %197, %203
  %205 = fneg double %204
  %206 = call double @llvm.fmuladd.f64(double %189, double %195, double %205)
  store double %206, double* %21, align 8
  %207 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %208 = load double, double* %207, align 16
  %209 = load float*, float** %12, align 8
  %210 = load i32, i32* %16, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = fpext float %213 to double
  %215 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %216 = load double, double* %215, align 16
  %217 = load float*, float** %11, align 8
  %218 = load i32, i32* %16, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  %221 = load float, float* %220, align 4
  %222 = fpext float %221 to double
  %223 = fmul double %216, %222
  %224 = call double @llvm.fmuladd.f64(double %208, double %214, double %223)
  store double %224, double* %22, align 8
  %225 = load float*, float** %11, align 8
  %226 = load i32, i32* %15, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  %229 = load float, float* %228, align 4
  %230 = fpext float %229 to double
  %231 = load double, double* %21, align 8
  %232 = fsub double %230, %231
  %233 = fptrunc double %232 to float
  %234 = load float*, float** %11, align 8
  %235 = load i32, i32* %16, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  store float %233, float* %237, align 4
  %238 = load float*, float** %12, align 8
  %239 = load i32, i32* %15, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  %242 = load float, float* %241, align 4
  %243 = fpext float %242 to double
  %244 = load double, double* %22, align 8
  %245 = fsub double %243, %244
  %246 = fptrunc double %245 to float
  %247 = load float*, float** %12, align 8
  %248 = load i32, i32* %16, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %247, i64 %249
  store float %246, float* %250, align 4
  %251 = load double, double* %21, align 8
  %252 = load float*, float** %11, align 8
  %253 = load i32, i32* %15, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  %256 = load float, float* %255, align 4
  %257 = fpext float %256 to double
  %258 = fadd double %257, %251
  %259 = fptrunc double %258 to float
  store float %259, float* %255, align 4
  %260 = load double, double* %22, align 8
  %261 = load float*, float** %12, align 8
  %262 = load i32, i32* %15, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %261, i64 %263
  %265 = load float, float* %264, align 4
  %266 = fpext float %265 to double
  %267 = fadd double %266, %260
  %268 = fptrunc double %267 to float
  store float %268, float* %264, align 4
  br label %269

269:                                              ; preds = %156
  %270 = load i32, i32* %15, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %15, align 4
  %272 = load i32, i32* %17, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %17, align 4
  br label %152, !llvm.loop !6

274:                                              ; preds = %152
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %18, align 4
  %277 = load i32, i32* %14, align 4
  %278 = add i32 %277, %276
  store i32 %278, i32* %14, align 4
  br label %138, !llvm.loop !7

279:                                              ; preds = %138
  %280 = load i32, i32* %18, align 4
  store i32 %280, i32* %19, align 4
  br label %281

281:                                              ; preds = %279
  %282 = load i32, i32* %18, align 4
  %283 = shl i32 %282, 1
  store i32 %283, i32* %18, align 4
  br label %93, !llvm.loop !8

284:                                              ; preds = %93
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %317

287:                                              ; preds = %284
  %288 = load i32, i32* %7, align 4
  %289 = uitofp i32 %288 to double
  store double %289, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %290

290:                                              ; preds = %313, %287
  %291 = load i32, i32* %14, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp ult i32 %291, %292
  br i1 %293, label %294, label %316

294:                                              ; preds = %290
  %295 = load double, double* %32, align 8
  %296 = load float*, float** %11, align 8
  %297 = load i32, i32* %14, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %296, i64 %298
  %300 = load float, float* %299, align 4
  %301 = fpext float %300 to double
  %302 = fdiv double %301, %295
  %303 = fptrunc double %302 to float
  store float %303, float* %299, align 4
  %304 = load double, double* %32, align 8
  %305 = load float*, float** %12, align 8
  %306 = load i32, i32* %14, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  %309 = load float, float* %308, align 4
  %310 = fpext float %309 to double
  %311 = fdiv double %310, %304
  %312 = fptrunc double %311 to float
  store float %312, float* %308, align 4
  br label %313

313:                                              ; preds = %294
  %314 = load i32, i32* %14, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %14, align 4
  br label %290, !llvm.loop !9

316:                                              ; preds = %290
  br label %317

317:                                              ; preds = %316, %284
  ret void
}

declare dso_local i32 @IsPowerOfTwo(i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @CheckPointer(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %9)
  call void @exit(i32 noundef 1) #5
  unreachable

11:                                               ; preds = %2
  ret void
}

declare dso_local i32 @NumberOfBitsNeeded(i32 noundef) #1

declare dso_local i32 @ReverseBits(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft_float_StrictFP(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca [3 x double], align 16
  %30 = alloca [3 x double], align 16
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store double 0x401921FB54442D18, double* %20, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IsPowerOfTwo(i32 noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %38)
  call void @exit(i32 noundef 1) #5
  unreachable

40:                                               ; preds = %6
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load double, double* %20, align 8
  %45 = fneg double %44
  store double %45, double* %20, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load float*, float** %9, align 8
  %48 = bitcast float* %47 to i8*
  call void @CheckPointer(i8* noundef %48, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = load float*, float** %11, align 8
  %50 = bitcast float* %49 to i8*
  call void @CheckPointer(i8* noundef %50, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = load float*, float** %12, align 8
  %52 = bitcast float* %51 to i8*
  call void @CheckPointer(i8* noundef %52, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @NumberOfBitsNeeded(i32 noundef %53)
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %89, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ReverseBits(i32 noundef %60, i32 noundef %61)
  store i32 %62, i32* %15, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %11, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %67, float* %71, align 4
  %72 = load float*, float** %10, align 8
  %73 = icmp eq float* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %82

75:                                               ; preds = %59
  %76 = load float*, float** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  br label %82

82:                                               ; preds = %75, %74
  %83 = phi double [ 0.000000e+00, %74 ], [ %81, %75 ]
  %84 = fptrunc double %83 to float
  %85 = load float*, float** %12, align 8
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float %84, float* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %55, !llvm.loop !10

92:                                               ; preds = %55
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %93

93:                                               ; preds = %282, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ule i32 %94, %95
  br i1 %96, label %97, label %285

97:                                               ; preds = %93
  %98 = load double, double* %20, align 8
  %99 = load i32, i32* %18, align 4
  %100 = uitofp i32 %99 to double
  %101 = fdiv double %98, %100
  store double %101, double* %23, align 8
  %102 = load double, double* %23, align 8
  %103 = fmul double -2.000000e+00, %102
  %104 = call double @sin(double noundef %103) #6
  store double %104, double* %24, align 8
  %105 = load double, double* %23, align 8
  %106 = fneg double %105
  %107 = call double @sin(double noundef %106) #6
  store double %107, double* %25, align 8
  %108 = load double, double* %23, align 8
  %109 = fmul double -2.000000e+00, %108
  %110 = call double @cos(double noundef %109) #6
  store double %110, double* %26, align 8
  %111 = load double, double* %23, align 8
  %112 = fneg double %111
  %113 = call double @cos(double noundef %112) #6
  store double %113, double* %27, align 8
  %114 = load double, double* %23, align 8
  %115 = fmul double -2.000000e+00, %114
  %116 = fcmp oeq double %115, 0x3FE921FB54442D18
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  store double 0x3FE6A09E667F3BCC, double* %24, align 8
  store double 0x3FE6A09E667F3BCD, double* %26, align 8
  br label %124

118:                                              ; preds = %97
  %119 = load double, double* %23, align 8
  %120 = fmul double -2.000000e+00, %119
  %121 = fcmp oeq double %120, 0x3FC921FB54442D18
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store double 0x3FC8F8B83C69A60A, double* %24, align 8
  br label %123

123:                                              ; preds = %122, %118
  br label %124

124:                                              ; preds = %123, %117
  %125 = load double, double* %23, align 8
  %126 = fneg double %125
  %127 = fcmp oeq double %126, 0x3FE921FB54442D18
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store double 0x3FE6A09E667F3BCC, double* %25, align 8
  store double 0x3FE6A09E667F3BCD, double* %27, align 8
  br label %135

129:                                              ; preds = %124
  %130 = load double, double* %23, align 8
  %131 = fneg double %130
  %132 = fcmp oeq double %131, 0x3FC921FB54442D18
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store double 0x3FC8F8B83C69A60A, double* %25, align 8
  br label %134

134:                                              ; preds = %133, %129
  br label %135

135:                                              ; preds = %134, %128
  %136 = load double, double* %27, align 8
  %137 = fmul double 2.000000e+00, %136
  store double %137, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %276, %135
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %280

142:                                              ; preds = %138
  %143 = load double, double* %26, align 8
  %144 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %143, double* %144, align 16
  %145 = load double, double* %27, align 8
  %146 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %145, double* %146, align 8
  %147 = load double, double* %24, align 8
  %148 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %147, double* %148, align 16
  %149 = load double, double* %25, align 8
  %150 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %149, double* %150, align 8
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %270, %142
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %275

156:                                              ; preds = %152
  %157 = load double, double* %28, align 8
  %158 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %159 = load double, double* %158, align 8
  %160 = fmul double %157, %159
  %161 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  %162 = load double, double* %161, align 16
  %163 = fsub double %160, %162
  %164 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  store double %163, double* %164, align 16
  %165 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %166 = load double, double* %165, align 8
  %167 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %166, double* %167, align 16
  %168 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %169 = load double, double* %168, align 16
  %170 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %169, double* %170, align 8
  %171 = load double, double* %28, align 8
  %172 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %173 = load double, double* %172, align 8
  %174 = fmul double %171, %173
  %175 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  %176 = load double, double* %175, align 16
  %177 = fsub double %174, %176
  %178 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  store double %177, double* %178, align 16
  %179 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %180 = load double, double* %179, align 8
  %181 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %180, double* %181, align 16
  %182 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %183 = load double, double* %182, align 16
  %184 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %183, double* %184, align 8
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %19, align 4
  %187 = add i32 %185, %186
  store i32 %187, i32* %16, align 4
  %188 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %189 = load double, double* %188, align 16
  %190 = load float*, float** %11, align 8
  %191 = load i32, i32* %16, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  %194 = load float, float* %193, align 4
  %195 = fpext float %194 to double
  %196 = fmul double %189, %195
  %197 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %198 = load double, double* %197, align 16
  %199 = load float*, float** %12, align 8
  %200 = load i32, i32* %16, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fpext float %203 to double
  %205 = fmul double %198, %204
  %206 = fsub double %196, %205
  store double %206, double* %21, align 8
  %207 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %208 = load double, double* %207, align 16
  %209 = load float*, float** %12, align 8
  %210 = load i32, i32* %16, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = fpext float %213 to double
  %215 = fmul double %208, %214
  %216 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %217 = load double, double* %216, align 16
  %218 = load float*, float** %11, align 8
  %219 = load i32, i32* %16, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  %222 = load float, float* %221, align 4
  %223 = fpext float %222 to double
  %224 = fmul double %217, %223
  %225 = fadd double %215, %224
  store double %225, double* %22, align 8
  %226 = load float*, float** %11, align 8
  %227 = load i32, i32* %15, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  %230 = load float, float* %229, align 4
  %231 = fpext float %230 to double
  %232 = load double, double* %21, align 8
  %233 = fsub double %231, %232
  %234 = fptrunc double %233 to float
  %235 = load float*, float** %11, align 8
  %236 = load i32, i32* %16, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %235, i64 %237
  store float %234, float* %238, align 4
  %239 = load float*, float** %12, align 8
  %240 = load i32, i32* %15, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  %243 = load float, float* %242, align 4
  %244 = fpext float %243 to double
  %245 = load double, double* %22, align 8
  %246 = fsub double %244, %245
  %247 = fptrunc double %246 to float
  %248 = load float*, float** %12, align 8
  %249 = load i32, i32* %16, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %248, i64 %250
  store float %247, float* %251, align 4
  %252 = load double, double* %21, align 8
  %253 = load float*, float** %11, align 8
  %254 = load i32, i32* %15, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  %257 = load float, float* %256, align 4
  %258 = fpext float %257 to double
  %259 = fadd double %258, %252
  %260 = fptrunc double %259 to float
  store float %260, float* %256, align 4
  %261 = load double, double* %22, align 8
  %262 = load float*, float** %12, align 8
  %263 = load i32, i32* %15, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = fpext float %266 to double
  %268 = fadd double %267, %261
  %269 = fptrunc double %268 to float
  store float %269, float* %265, align 4
  br label %270

270:                                              ; preds = %156
  %271 = load i32, i32* %15, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %17, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %17, align 4
  br label %152, !llvm.loop !11

275:                                              ; preds = %152
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %14, align 4
  %279 = add i32 %278, %277
  store i32 %279, i32* %14, align 4
  br label %138, !llvm.loop !12

280:                                              ; preds = %138
  %281 = load i32, i32* %18, align 4
  store i32 %281, i32* %19, align 4
  br label %282

282:                                              ; preds = %280
  %283 = load i32, i32* %18, align 4
  %284 = shl i32 %283, 1
  store i32 %284, i32* %18, align 4
  br label %93, !llvm.loop !13

285:                                              ; preds = %93
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %318

288:                                              ; preds = %285
  %289 = load i32, i32* %7, align 4
  %290 = uitofp i32 %289 to double
  store double %290, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %291

291:                                              ; preds = %314, %288
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp ult i32 %292, %293
  br i1 %294, label %295, label %317

295:                                              ; preds = %291
  %296 = load double, double* %32, align 8
  %297 = load float*, float** %11, align 8
  %298 = load i32, i32* %14, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %297, i64 %299
  %301 = load float, float* %300, align 4
  %302 = fpext float %301 to double
  %303 = fdiv double %302, %296
  %304 = fptrunc double %303 to float
  store float %304, float* %300, align 4
  %305 = load double, double* %32, align 8
  %306 = load float*, float** %12, align 8
  %307 = load i32, i32* %14, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %306, i64 %308
  %310 = load float, float* %309, align 4
  %311 = fpext float %310 to double
  %312 = fdiv double %311, %305
  %313 = fptrunc double %312 to float
  store float %313, float* %309, align 4
  br label %314

314:                                              ; preds = %295
  %315 = load i32, i32* %14, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %14, align 4
  br label %291, !llvm.loop !14

317:                                              ; preds = %291
  br label %318

318:                                              ; preds = %317, %285
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
