; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/backprop/backpropKernel.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/backprop/backpropKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @bpnn_train_kernel(i32 noundef %0, i32 noundef %1, i32 noundef %2, float* noalias noundef nonnull align 4 %3, float* noalias noundef nonnull align 4 %4, float* noalias noundef nonnull align 4 %5, float* noalias noundef nonnull align 4 %6, float* noalias noundef nonnull align 4 %7, float* noalias noundef nonnull align 4 %8, float* noalias noundef nonnull align 4 %9, float* noalias noundef nonnull align 4 %10, float* noalias noundef nonnull align 4 %11, float* noalias noundef nonnull align 4 %12, i32 noundef %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store float* %3, float** %18, align 8
  store float* %4, float** %19, align 8
  store float* %5, float** %20, align 8
  store float* %6, float** %21, align 8
  store float* %7, float** %22, align 8
  store float* %8, float** %23, align 8
  store float* %9, float** %24, align 8
  store float* %10, float** %25, align 8
  store float* %11, float** %26, align 8
  store float* %12, float** %27, align 8
  store i32 %13, i32* %28, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 1, %58
  %60 = zext i32 %59 to i64
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  %78 = zext i32 %77 to i64
  store float 0.000000e+00, float* %29, align 4
  store i32 0, i32* %30, align 4
  br label %79

79:                                               ; preds = %358, %14
  %80 = load i32, i32* %30, align 4
  %81 = load i32, i32* %28, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %361

83:                                               ; preds = %79
  %84 = load float*, float** %18, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float 1.000000e+00, float* %85, align 4
  store i32 1, i32* %32, align 4
  br label %86

86:                                               ; preds = %128, %83
  %87 = load i32, i32* %32, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %86
  store double 0.000000e+00, double* %31, align 8
  store i32 0, i32* %33, align 4
  br label %91

91:                                               ; preds = %114, %90
  %92 = load i32, i32* %33, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load float*, float** %24, align 8
  %97 = load i32, i32* %33, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, %60
  %100 = getelementptr inbounds float, float* %96, i64 %99
  %101 = load i32, i32* %32, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = load float*, float** %18, align 8
  %106 = load i32, i32* %33, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fmul float %104, %109
  %111 = fpext float %110 to double
  %112 = load double, double* %31, align 8
  %113 = fadd double %112, %111
  store double %113, double* %31, align 8
  br label %114

114:                                              ; preds = %95
  %115 = load i32, i32* %33, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %33, align 4
  br label %91, !llvm.loop !4

117:                                              ; preds = %91
  %118 = load double, double* %31, align 8
  %119 = fmul double -1.000000e+00, %118
  %120 = call double @exp(double noundef %119) #3
  %121 = fadd double 1.000000e+00, %120
  %122 = fdiv double 1.000000e+00, %121
  %123 = fptrunc double %122 to float
  %124 = load float*, float** %19, align 8
  %125 = load i32, i32* %32, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  store float %123, float* %127, align 4
  br label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %32, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %32, align 4
  br label %86, !llvm.loop !6

131:                                              ; preds = %86
  %132 = load float*, float** %19, align 8
  %133 = getelementptr inbounds float, float* %132, i64 0
  store float 1.000000e+00, float* %133, align 4
  store i32 1, i32* %32, align 4
  br label %134

134:                                              ; preds = %176, %131
  %135 = load i32, i32* %32, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %179

138:                                              ; preds = %134
  store double 0.000000e+00, double* %31, align 8
  store i32 0, i32* %33, align 4
  br label %139

139:                                              ; preds = %162, %138
  %140 = load i32, i32* %33, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load float*, float** %25, align 8
  %145 = load i32, i32* %33, align 4
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %146, %66
  %148 = getelementptr inbounds float, float* %144, i64 %147
  %149 = load i32, i32* %32, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %19, align 8
  %154 = load i32, i32* %33, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fmul float %152, %157
  %159 = fpext float %158 to double
  %160 = load double, double* %31, align 8
  %161 = fadd double %160, %159
  store double %161, double* %31, align 8
  br label %162

162:                                              ; preds = %143
  %163 = load i32, i32* %33, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %33, align 4
  br label %139, !llvm.loop !7

165:                                              ; preds = %139
  %166 = load double, double* %31, align 8
  %167 = fneg double %166
  %168 = call double @exp(double noundef %167) #3
  %169 = fadd double 1.000000e+00, %168
  %170 = fdiv double 1.000000e+00, %169
  %171 = fptrunc double %170 to float
  %172 = load float*, float** %20, align 8
  %173 = load i32, i32* %32, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  store float %171, float* %175, align 4
  br label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %32, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %32, align 4
  br label %134, !llvm.loop !8

179:                                              ; preds = %134
  store float 0.000000e+00, float* %29, align 4
  store i32 1, i32* %32, align 4
  br label %180

180:                                              ; preds = %222, %179
  %181 = load i32, i32* %32, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %184, label %225

184:                                              ; preds = %180
  %185 = load float*, float** %20, align 8
  %186 = load i32, i32* %32, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  store float %189, float* %34, align 4
  %190 = load float*, float** %23, align 8
  %191 = load i32, i32* %32, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  %194 = load float, float* %193, align 4
  store float %194, float* %35, align 4
  %195 = load float, float* %34, align 4
  %196 = fpext float %195 to double
  %197 = load float, float* %34, align 4
  %198 = fpext float %197 to double
  %199 = fsub double 1.000000e+00, %198
  %200 = fmul double %196, %199
  %201 = load float, float* %35, align 4
  %202 = load float, float* %34, align 4
  %203 = fsub float %201, %202
  %204 = fpext float %203 to double
  %205 = fmul double %200, %204
  %206 = fptrunc double %205 to float
  %207 = load float*, float** %22, align 8
  %208 = load i32, i32* %32, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  store float %206, float* %210, align 4
  %211 = load float*, float** %22, align 8
  %212 = load i32, i32* %32, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  %216 = fpext float %215 to double
  %217 = call double @llvm.fabs.f64(double %216)
  %218 = load float, float* %29, align 4
  %219 = fpext float %218 to double
  %220 = fadd double %219, %217
  %221 = fptrunc double %220 to float
  store float %221, float* %29, align 4
  br label %222

222:                                              ; preds = %184
  %223 = load i32, i32* %32, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %32, align 4
  br label %180, !llvm.loop !9

225:                                              ; preds = %180
  %226 = load float*, float** %19, align 8
  %227 = getelementptr inbounds float, float* %226, i64 0
  store float 1.000000e+00, float* %227, align 4
  store i32 1, i32* %32, align 4
  br label %228

228:                                              ; preds = %288, %225
  %229 = load i32, i32* %32, align 4
  %230 = load i32, i32* %17, align 4
  %231 = icmp sle i32 %229, %230
  br i1 %231, label %232, label %291

232:                                              ; preds = %228
  store i32 0, i32* %33, align 4
  br label %233

233:                                              ; preds = %284, %232
  %234 = load i32, i32* %33, align 4
  %235 = load i32, i32* %16, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %287

237:                                              ; preds = %233
  %238 = load float*, float** %22, align 8
  %239 = load i32, i32* %32, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  %242 = load float, float* %241, align 4
  %243 = fpext float %242 to double
  %244 = fmul double 3.000000e-01, %243
  %245 = load float*, float** %19, align 8
  %246 = load i32, i32* %33, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fpext float %249 to double
  %251 = load float*, float** %27, align 8
  %252 = load i32, i32* %33, align 4
  %253 = sext i32 %252 to i64
  %254 = mul nsw i64 %253, %78
  %255 = getelementptr inbounds float, float* %251, i64 %254
  %256 = load i32, i32* %32, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  %259 = load float, float* %258, align 4
  %260 = fpext float %259 to double
  %261 = fmul double 3.000000e-01, %260
  %262 = call double @llvm.fmuladd.f64(double %244, double %250, double %261)
  %263 = fptrunc double %262 to float
  store float %263, float* %36, align 4
  %264 = load float, float* %36, align 4
  %265 = load float*, float** %25, align 8
  %266 = load i32, i32* %33, align 4
  %267 = sext i32 %266 to i64
  %268 = mul nsw i64 %267, %66
  %269 = getelementptr inbounds float, float* %265, i64 %268
  %270 = load i32, i32* %32, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %269, i64 %271
  %273 = load float, float* %272, align 4
  %274 = fadd float %273, %264
  store float %274, float* %272, align 4
  %275 = load float, float* %36, align 4
  %276 = load float*, float** %27, align 8
  %277 = load i32, i32* %33, align 4
  %278 = sext i32 %277 to i64
  %279 = mul nsw i64 %278, %78
  %280 = getelementptr inbounds float, float* %276, i64 %279
  %281 = load i32, i32* %32, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %280, i64 %282
  store float %275, float* %283, align 4
  br label %284

284:                                              ; preds = %237
  %285 = load i32, i32* %33, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %33, align 4
  br label %233, !llvm.loop !10

287:                                              ; preds = %233
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %32, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %32, align 4
  br label %228, !llvm.loop !11

291:                                              ; preds = %228
  %292 = load float*, float** %18, align 8
  %293 = getelementptr inbounds float, float* %292, i64 0
  store float 1.000000e+00, float* %293, align 4
  store i32 1, i32* %32, align 4
  br label %294

294:                                              ; preds = %354, %291
  %295 = load i32, i32* %32, align 4
  %296 = load i32, i32* %16, align 4
  %297 = icmp sle i32 %295, %296
  br i1 %297, label %298, label %357

298:                                              ; preds = %294
  store i32 0, i32* %33, align 4
  br label %299

299:                                              ; preds = %350, %298
  %300 = load i32, i32* %33, align 4
  %301 = load i32, i32* %15, align 4
  %302 = icmp sle i32 %300, %301
  br i1 %302, label %303, label %353

303:                                              ; preds = %299
  %304 = load float*, float** %21, align 8
  %305 = load i32, i32* %32, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %304, i64 %306
  %308 = load float, float* %307, align 4
  %309 = fpext float %308 to double
  %310 = fmul double 3.000000e-01, %309
  %311 = load float*, float** %18, align 8
  %312 = load i32, i32* %33, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %311, i64 %313
  %315 = load float, float* %314, align 4
  %316 = fpext float %315 to double
  %317 = load float*, float** %26, align 8
  %318 = load i32, i32* %33, align 4
  %319 = sext i32 %318 to i64
  %320 = mul nsw i64 %319, %72
  %321 = getelementptr inbounds float, float* %317, i64 %320
  %322 = load i32, i32* %32, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %321, i64 %323
  %325 = load float, float* %324, align 4
  %326 = fpext float %325 to double
  %327 = fmul double 3.000000e-01, %326
  %328 = call double @llvm.fmuladd.f64(double %310, double %316, double %327)
  %329 = fptrunc double %328 to float
  store float %329, float* %36, align 4
  %330 = load float, float* %36, align 4
  %331 = load float*, float** %24, align 8
  %332 = load i32, i32* %33, align 4
  %333 = sext i32 %332 to i64
  %334 = mul nsw i64 %333, %60
  %335 = getelementptr inbounds float, float* %331, i64 %334
  %336 = load i32, i32* %32, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, float* %335, i64 %337
  %339 = load float, float* %338, align 4
  %340 = fadd float %339, %330
  store float %340, float* %338, align 4
  %341 = load float, float* %36, align 4
  %342 = load float*, float** %26, align 8
  %343 = load i32, i32* %33, align 4
  %344 = sext i32 %343 to i64
  %345 = mul nsw i64 %344, %72
  %346 = getelementptr inbounds float, float* %342, i64 %345
  %347 = load i32, i32* %32, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %346, i64 %348
  store float %341, float* %349, align 4
  br label %350

350:                                              ; preds = %303
  %351 = load i32, i32* %33, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %33, align 4
  br label %299, !llvm.loop !12

353:                                              ; preds = %299
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %32, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %32, align 4
  br label %294, !llvm.loop !13

357:                                              ; preds = %294
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %30, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %30, align 4
  br label %79, !llvm.loop !14

361:                                              ; preds = %79
  %362 = load float, float* %29, align 4
  ret float %362
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
