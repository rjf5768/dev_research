; ModuleID = './hotspotKernel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/hotspot/hotspotKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @hotspotKernel([512 x double]* nocapture noundef %0, [512 x double]* noundef %1, [512 x double]* nocapture noundef readonly %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) #0 {
  br label %10

10:                                               ; preds = %379, %9
  %.04 = phi i32 [ 0, %9 ], [ %380, %379 ]
  %.0 = phi i32 [ undef, %9 ], [ %.4, %379 ]
  %11 = icmp ult i32 %.04, 200
  br i1 %11, label %12, label %381

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %79, %12
  %.01 = phi i32 [ 1, %12 ], [ %80, %79 ]
  %.1 = phi i32 [ %.0, %12 ], [ %.2, %79 ]
  %14 = icmp ult i32 %.01, 511
  br i1 %14, label %15, label %81

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %76, %15
  %.2 = phi i32 [ 1, %15 ], [ %77, %76 ]
  %17 = icmp ult i32 %.2, 511
  br i1 %17, label %18, label %78

18:                                               ; preds = %16
  %19 = fdiv double %7, %3
  %20 = zext i32 %.01 to i64
  %21 = zext i32 %.2 to i64
  %22 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 %20, i64 %21
  %23 = load double, double* %22, align 8
  %24 = add nuw nsw i32 %.01, 1
  %25 = zext i32 %24 to i64
  %26 = zext i32 %.2 to i64
  %27 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %25, i64 %26
  %28 = load double, double* %27, align 8
  %29 = add nsw i32 %.01, -1
  %30 = sext i32 %29 to i64
  %31 = zext i32 %.2 to i64
  %32 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %30, i64 %31
  %33 = load double, double* %32, align 8
  %34 = fadd double %28, %33
  %35 = zext i32 %.01 to i64
  %36 = zext i32 %.2 to i64
  %37 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %35, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call double @llvm.fmuladd.f64(double %38, double -2.000000e+00, double %34)
  %40 = fdiv double %39, %5
  %41 = fadd double %23, %40
  %42 = zext i32 %.01 to i64
  %43 = add nuw nsw i32 %.2, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = zext i32 %.01 to i64
  %48 = add nsw i32 %.2, -1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fadd double %46, %51
  %53 = zext i32 %.01 to i64
  %54 = zext i32 %.2 to i64
  %55 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %53, i64 %54
  %56 = load double, double* %55, align 8
  %57 = call double @llvm.fmuladd.f64(double %56, double -2.000000e+00, double %52)
  %58 = fdiv double %57, %4
  %59 = fadd double %41, %58
  %60 = zext i32 %.01 to i64
  %61 = zext i32 %.2 to i64
  %62 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %60, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fsub double %8, %63
  %65 = fdiv double %64, %6
  %66 = fadd double %59, %65
  %67 = fmul double %19, %66
  %68 = zext i32 %.01 to i64
  %69 = zext i32 %.2 to i64
  %70 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %68, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fadd double %71, %67
  %73 = zext i32 %.01 to i64
  %74 = zext i32 %.2 to i64
  %75 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 %73, i64 %74
  store double %72, double* %75, align 8
  br label %76

76:                                               ; preds = %18
  %77 = add nuw nsw i32 %.2, 1
  br label %16, !llvm.loop !4

78:                                               ; preds = %16
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !6

81:                                               ; preds = %13
  %82 = fdiv double %7, %3
  %83 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 0, i64 0
  %84 = load double, double* %83, align 8
  %85 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 1
  %86 = load double, double* %85, align 8
  %87 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 0
  %88 = load double, double* %87, align 8
  %89 = fsub double %86, %88
  %90 = fdiv double %89, %4
  %91 = fadd double %84, %90
  %92 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 1, i64 0
  %93 = load double, double* %92, align 8
  %94 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 0
  %95 = load double, double* %94, align 8
  %96 = fsub double %93, %95
  %97 = fdiv double %96, %5
  %98 = fadd double %91, %97
  %99 = fsub double %8, %95
  %100 = fdiv double %99, %6
  %101 = fadd double %98, %100
  %102 = fmul double %82, %101
  %103 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 0
  %104 = load double, double* %103, align 8
  %105 = fadd double %104, %102
  %106 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 0, i64 0
  store double %105, double* %106, align 8
  %107 = fdiv double %7, %3
  %108 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 0, i64 511
  %109 = load double, double* %108, align 8
  %110 = add nsw i32 %.1, -1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 %111
  %113 = load double, double* %112, align 8
  %114 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 511
  %115 = load double, double* %114, align 8
  %116 = fsub double %113, %115
  %117 = fdiv double %116, %4
  %118 = fadd double %109, %117
  %119 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 1, i64 511
  %120 = load double, double* %119, align 8
  %121 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 511
  %122 = load double, double* %121, align 8
  %123 = fsub double %120, %122
  %124 = fdiv double %123, %5
  %125 = fadd double %118, %124
  %126 = fsub double %8, %122
  %127 = fdiv double %126, %6
  %128 = fadd double %125, %127
  %129 = fmul double %107, %128
  %130 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 511
  %131 = load double, double* %130, align 8
  %132 = fadd double %131, %129
  %133 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 0, i64 511
  store double %132, double* %133, align 8
  %134 = fdiv double %7, %3
  %135 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 511, i64 511
  %136 = load double, double* %135, align 8
  %137 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 510
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 511
  %140 = load double, double* %139, align 8
  %141 = fsub double %138, %140
  %142 = fdiv double %141, %4
  %143 = fadd double %136, %142
  %144 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 510, i64 511
  %145 = load double, double* %144, align 8
  %146 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 511
  %147 = load double, double* %146, align 8
  %148 = fsub double %145, %147
  %149 = fdiv double %148, %5
  %150 = fadd double %143, %149
  %151 = fsub double %8, %147
  %152 = fdiv double %151, %6
  %153 = fadd double %150, %152
  %154 = fmul double %134, %153
  %155 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 511
  %156 = load double, double* %155, align 8
  %157 = fadd double %156, %154
  %158 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 511, i64 511
  store double %157, double* %158, align 8
  %159 = fdiv double %7, %3
  %160 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 511, i64 0
  %161 = load double, double* %160, align 8
  %162 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 1
  %163 = load double, double* %162, align 8
  %164 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 0
  %165 = load double, double* %164, align 8
  %166 = fsub double %163, %165
  %167 = fdiv double %166, %4
  %168 = fadd double %161, %167
  %169 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 510, i64 0
  %170 = load double, double* %169, align 8
  %171 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 0
  %172 = load double, double* %171, align 8
  %173 = fsub double %170, %172
  %174 = fdiv double %173, %5
  %175 = fadd double %168, %174
  %176 = fsub double %8, %172
  %177 = fdiv double %176, %6
  %178 = fadd double %175, %177
  %179 = fmul double %159, %178
  %180 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 0
  %181 = load double, double* %180, align 8
  %182 = fadd double %181, %179
  %183 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 511, i64 0
  store double %182, double* %183, align 8
  br label %184

184:                                              ; preds = %269, %81
  %.3 = phi i32 [ 1, %81 ], [ %270, %269 ]
  %185 = icmp ult i32 %.3, 511
  br i1 %185, label %186, label %271

186:                                              ; preds = %184
  %187 = fdiv double %7, %3
  %188 = zext i32 %.3 to i64
  %189 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 0, i64 %188
  %190 = load double, double* %189, align 8
  %191 = add nuw nsw i32 %.3, 1
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 %192
  %194 = load double, double* %193, align 8
  %195 = add nsw i32 %.3, -1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fadd double %194, %198
  %200 = zext i32 %.3 to i64
  %201 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 %200
  %202 = load double, double* %201, align 8
  %203 = call double @llvm.fmuladd.f64(double %202, double -2.000000e+00, double %199)
  %204 = fdiv double %203, %4
  %205 = fadd double %190, %204
  %206 = zext i32 %.3 to i64
  %207 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 1, i64 %206
  %208 = load double, double* %207, align 8
  %209 = zext i32 %.3 to i64
  %210 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 %209
  %211 = load double, double* %210, align 8
  %212 = fsub double %208, %211
  %213 = fdiv double %212, %5
  %214 = fadd double %205, %213
  %215 = zext i32 %.3 to i64
  %216 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 %215
  %217 = load double, double* %216, align 8
  %218 = fsub double %8, %217
  %219 = fdiv double %218, %6
  %220 = fadd double %214, %219
  %221 = fmul double %187, %220
  %222 = zext i32 %.3 to i64
  %223 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 0, i64 %222
  %224 = load double, double* %223, align 8
  %225 = fadd double %224, %221
  %226 = zext i32 %.3 to i64
  %227 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 0, i64 %226
  store double %225, double* %227, align 8
  %228 = fdiv double %7, %3
  %229 = zext i32 %.3 to i64
  %230 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 511, i64 %229
  %231 = load double, double* %230, align 8
  %232 = add nuw nsw i32 %.3, 1
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 %233
  %235 = load double, double* %234, align 8
  %236 = add nsw i32 %.3, -1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 %237
  %239 = load double, double* %238, align 8
  %240 = fadd double %235, %239
  %241 = zext i32 %.3 to i64
  %242 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 %241
  %243 = load double, double* %242, align 8
  %244 = call double @llvm.fmuladd.f64(double %243, double -2.000000e+00, double %240)
  %245 = fdiv double %244, %4
  %246 = fadd double %231, %245
  %247 = zext i32 %.3 to i64
  %248 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 510, i64 %247
  %249 = load double, double* %248, align 8
  %250 = zext i32 %.3 to i64
  %251 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 %250
  %252 = load double, double* %251, align 8
  %253 = fsub double %249, %252
  %254 = fdiv double %253, %5
  %255 = fadd double %246, %254
  %256 = zext i32 %.3 to i64
  %257 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 %256
  %258 = load double, double* %257, align 8
  %259 = fsub double %8, %258
  %260 = fdiv double %259, %6
  %261 = fadd double %255, %260
  %262 = fmul double %228, %261
  %263 = zext i32 %.3 to i64
  %264 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 511, i64 %263
  %265 = load double, double* %264, align 8
  %266 = fadd double %265, %262
  %267 = zext i32 %.3 to i64
  %268 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 511, i64 %267
  store double %266, double* %268, align 8
  br label %269

269:                                              ; preds = %186
  %270 = add nuw nsw i32 %.3, 1
  br label %184, !llvm.loop !7

271:                                              ; preds = %184
  br label %272

272:                                              ; preds = %357, %271
  %.12 = phi i32 [ 1, %271 ], [ %358, %357 ]
  %273 = icmp ult i32 %.12, 511
  br i1 %273, label %274, label %359

274:                                              ; preds = %272
  %275 = fdiv double %7, %3
  %276 = zext i32 %.12 to i64
  %277 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 %276, i64 511
  %278 = load double, double* %277, align 8
  %279 = add nuw nsw i32 %.12, 1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %280, i64 511
  %282 = load double, double* %281, align 8
  %283 = add nsw i32 %.12, -1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %284, i64 511
  %286 = load double, double* %285, align 8
  %287 = fadd double %282, %286
  %288 = zext i32 %.12 to i64
  %289 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %288, i64 511
  %290 = load double, double* %289, align 8
  %291 = call double @llvm.fmuladd.f64(double %290, double -2.000000e+00, double %287)
  %292 = fdiv double %291, %5
  %293 = fadd double %278, %292
  %294 = zext i32 %.12 to i64
  %295 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %294, i64 510
  %296 = load double, double* %295, align 8
  %297 = zext i32 %.12 to i64
  %298 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %297, i64 511
  %299 = load double, double* %298, align 8
  %300 = fsub double %296, %299
  %301 = fdiv double %300, %4
  %302 = fadd double %293, %301
  %303 = zext i32 %.12 to i64
  %304 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %303, i64 511
  %305 = load double, double* %304, align 8
  %306 = fsub double %8, %305
  %307 = fdiv double %306, %6
  %308 = fadd double %302, %307
  %309 = fmul double %275, %308
  %310 = zext i32 %.12 to i64
  %311 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %310, i64 511
  %312 = load double, double* %311, align 8
  %313 = fadd double %312, %309
  %314 = zext i32 %.12 to i64
  %315 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 %314, i64 511
  store double %313, double* %315, align 8
  %316 = fdiv double %7, %3
  %317 = zext i32 %.12 to i64
  %318 = getelementptr inbounds [512 x double], [512 x double]* %2, i64 %317, i64 0
  %319 = load double, double* %318, align 8
  %320 = add nuw nsw i32 %.12, 1
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %321, i64 0
  %323 = load double, double* %322, align 8
  %324 = add nsw i32 %.12, -1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %325, i64 0
  %327 = load double, double* %326, align 8
  %328 = fadd double %323, %327
  %329 = zext i32 %.12 to i64
  %330 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %329, i64 0
  %331 = load double, double* %330, align 8
  %332 = call double @llvm.fmuladd.f64(double %331, double -2.000000e+00, double %328)
  %333 = fdiv double %332, %5
  %334 = fadd double %319, %333
  %335 = zext i32 %.12 to i64
  %336 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %335, i64 1
  %337 = load double, double* %336, align 8
  %338 = zext i32 %.12 to i64
  %339 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %338, i64 0
  %340 = load double, double* %339, align 8
  %341 = fsub double %337, %340
  %342 = fdiv double %341, %4
  %343 = fadd double %334, %342
  %344 = zext i32 %.12 to i64
  %345 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %344, i64 0
  %346 = load double, double* %345, align 8
  %347 = fsub double %8, %346
  %348 = fdiv double %347, %6
  %349 = fadd double %343, %348
  %350 = fmul double %316, %349
  %351 = zext i32 %.12 to i64
  %352 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %351, i64 0
  %353 = load double, double* %352, align 8
  %354 = fadd double %353, %350
  %355 = zext i32 %.12 to i64
  %356 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 %355, i64 0
  store double %354, double* %356, align 8
  br label %357

357:                                              ; preds = %274
  %358 = add nuw nsw i32 %.12, 1
  br label %272, !llvm.loop !8

359:                                              ; preds = %272
  br label %360

360:                                              ; preds = %376, %359
  %.23 = phi i32 [ 0, %359 ], [ %377, %376 ]
  %.4 = phi i32 [ %.3, %359 ], [ %.5, %376 ]
  %361 = icmp ult i32 %.23, 512
  br i1 %361, label %362, label %378

362:                                              ; preds = %360
  br label %363

363:                                              ; preds = %373, %362
  %.5 = phi i32 [ 0, %362 ], [ %374, %373 ]
  %364 = icmp ult i32 %.5, 512
  br i1 %364, label %365, label %375

365:                                              ; preds = %363
  %366 = zext i32 %.23 to i64
  %367 = zext i32 %.5 to i64
  %368 = getelementptr inbounds [512 x double], [512 x double]* %0, i64 %366, i64 %367
  %369 = load double, double* %368, align 8
  %370 = zext i32 %.23 to i64
  %371 = zext i32 %.5 to i64
  %372 = getelementptr inbounds [512 x double], [512 x double]* %1, i64 %370, i64 %371
  store double %369, double* %372, align 8
  br label %373

373:                                              ; preds = %365
  %374 = add nuw nsw i32 %.5, 1
  br label %363, !llvm.loop !9

375:                                              ; preds = %363
  br label %376

376:                                              ; preds = %375
  %377 = add nuw nsw i32 %.23, 1
  br label %360, !llvm.loop !10

378:                                              ; preds = %360
  br label %379

379:                                              ; preds = %378
  %380 = add nuw nsw i32 %.04, 1
  br label %10, !llvm.loop !11

381:                                              ; preds = %10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
