; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_Cholesky.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_Cholesky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Crystal_Cholesky(i32 noundef %0, double* noundef %1, double* noundef %2, double* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %27, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load double*, double** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  store double %22, double* %26, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %13, !llvm.loop !4

30:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load double*, double** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul nsw i64 %38, 12
  %40 = getelementptr inbounds double, double* %36, i64 %39
  %41 = getelementptr inbounds double, double* %40, i64 0
  %42 = load double, double* %41, align 8
  %43 = load double*, double** %6, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  %45 = getelementptr inbounds double, double* %44, i64 0
  %46 = load double, double* %45, align 8
  %47 = fdiv double %42, %46
  %48 = load double*, double** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, 12
  %52 = getelementptr inbounds double, double* %48, i64 %51
  %53 = getelementptr inbounds double, double* %52, i64 0
  store double %47, double* %53, align 8
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %31, !llvm.loop !6

57:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %228, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %231

62:                                               ; preds = %58
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %88, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load double*, double** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, 12
  %72 = getelementptr inbounds double, double* %68, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %72, i64 %74
  %76 = load double, double* %75, align 8
  %77 = load double*, double** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, 12
  %81 = getelementptr inbounds double, double* %77, i64 %80
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load double, double* %12, align 8
  %87 = call double @llvm.fmuladd.f64(double %76, double %85, double %86)
  store double %87, double* %12, align 8
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %63, !llvm.loop !7

91:                                               ; preds = %63
  %92 = load double*, double** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, 12
  %96 = getelementptr inbounds double, double* %92, i64 %95
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = load double, double* %12, align 8
  %102 = fsub double %100, %101
  %103 = load double*, double** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, 12
  %107 = getelementptr inbounds double, double* %103, i64 %106
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  store double %102, double* %110, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %224, %91
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %227

117:                                              ; preds = %113
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load double*, double** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, 12
  %127 = getelementptr inbounds double, double* %123, i64 %126
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %127, i64 %129
  %131 = load double, double* %130, align 8
  %132 = load double*, double** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %134, 12
  %136 = getelementptr inbounds double, double* %132, i64 %135
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %136, i64 %138
  %140 = load double, double* %139, align 8
  %141 = load double, double* %12, align 8
  %142 = call double @llvm.fmuladd.f64(double %131, double %140, double %141)
  store double %142, double* %12, align 8
  br label %143

143:                                              ; preds = %122
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %118, !llvm.loop !8

146:                                              ; preds = %118
  %147 = load double*, double** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = mul nsw i64 %149, 12
  %151 = getelementptr inbounds double, double* %147, i64 %150
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load double, double* %12, align 8
  %157 = fsub double %155, %156
  %158 = load double*, double** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %160, 12
  %162 = getelementptr inbounds double, double* %158, i64 %161
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %162, i64 %164
  store double %157, double* %165, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %191, %146
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %194

170:                                              ; preds = %166
  %171 = load double*, double** %6, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, 12
  %175 = getelementptr inbounds double, double* %171, i64 %174
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, double* %175, i64 %177
  %179 = load double, double* %178, align 8
  %180 = load double*, double** %6, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = mul nsw i64 %182, 12
  %184 = getelementptr inbounds double, double* %180, i64 %183
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  %188 = load double, double* %187, align 8
  %189 = load double, double* %12, align 8
  %190 = call double @llvm.fmuladd.f64(double %179, double %188, double %189)
  store double %190, double* %12, align 8
  br label %191

191:                                              ; preds = %170
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %166, !llvm.loop !9

194:                                              ; preds = %166
  %195 = load double*, double** %6, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = mul nsw i64 %197, 12
  %199 = getelementptr inbounds double, double* %195, i64 %198
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %199, i64 %201
  %203 = load double, double* %202, align 8
  %204 = load double, double* %12, align 8
  %205 = fsub double %203, %204
  %206 = load double*, double** %6, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = mul nsw i64 %208, 12
  %210 = getelementptr inbounds double, double* %206, i64 %209
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %210, i64 %212
  %214 = load double, double* %213, align 8
  %215 = fdiv double %205, %214
  %216 = load double*, double** %6, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = mul nsw i64 %218, 12
  %220 = getelementptr inbounds double, double* %216, i64 %219
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %220, i64 %222
  store double %215, double* %223, align 8
  br label %224

224:                                              ; preds = %194
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %113, !llvm.loop !10

227:                                              ; preds = %113
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %58, !llvm.loop !11

231:                                              ; preds = %58
  store i32 1, i32* %9, align 4
  br label %232

232:                                              ; preds = %271, %231
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %274

236:                                              ; preds = %232
  store i32 0, i32* %11, align 4
  br label %237

237:                                              ; preds = %267, %236
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %270

241:                                              ; preds = %237
  %242 = load double*, double** %8, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds double, double* %242, i64 %244
  %246 = load double, double* %245, align 8
  %247 = load double*, double** %6, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, 12
  %251 = getelementptr inbounds double, double* %247, i64 %250
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %251, i64 %253
  %255 = load double, double* %254, align 8
  %256 = load double*, double** %8, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double, double* %256, i64 %258
  %260 = load double, double* %259, align 8
  %261 = fneg double %255
  %262 = call double @llvm.fmuladd.f64(double %261, double %260, double %246)
  %263 = load double*, double** %8, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, double* %263, i64 %265
  store double %262, double* %266, align 8
  br label %267

267:                                              ; preds = %241
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %237, !llvm.loop !12

270:                                              ; preds = %237
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %232, !llvm.loop !13

274:                                              ; preds = %232
  %275 = load double*, double** %8, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %275, i64 %278
  %280 = load double, double* %279, align 8
  %281 = load double*, double** %6, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = mul nsw i64 %284, 12
  %286 = getelementptr inbounds double, double* %281, i64 %285
  %287 = load i32, i32* %5, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds double, double* %286, i64 %289
  %291 = load double, double* %290, align 8
  %292 = fdiv double %280, %291
  %293 = load double*, double** %8, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds double, double* %293, i64 %296
  store double %292, double* %297, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sub nsw i32 %298, 2
  store i32 %299, i32* %9, align 4
  br label %300

300:                                              ; preds = %359, %274
  %301 = load i32, i32* %9, align 4
  %302 = icmp sge i32 %301, 0
  br i1 %302, label %303, label %362

303:                                              ; preds = %300
  %304 = load i32, i32* %9, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %11, align 4
  br label %306

306:                                              ; preds = %336, %303
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %5, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %339

310:                                              ; preds = %306
  %311 = load double*, double** %8, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %311, i64 %313
  %315 = load double, double* %314, align 8
  %316 = load double*, double** %6, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = mul nsw i64 %318, 12
  %320 = getelementptr inbounds double, double* %316, i64 %319
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds double, double* %320, i64 %322
  %324 = load double, double* %323, align 8
  %325 = load double*, double** %8, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double, double* %325, i64 %327
  %329 = load double, double* %328, align 8
  %330 = fneg double %324
  %331 = call double @llvm.fmuladd.f64(double %330, double %329, double %315)
  %332 = load double*, double** %8, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %332, i64 %334
  store double %331, double* %335, align 8
  br label %336

336:                                              ; preds = %310
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %11, align 4
  br label %306, !llvm.loop !14

339:                                              ; preds = %306
  %340 = load double*, double** %8, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, double* %340, i64 %342
  %344 = load double, double* %343, align 8
  %345 = load double*, double** %6, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = mul nsw i64 %347, 12
  %349 = getelementptr inbounds double, double* %345, i64 %348
  %350 = load i32, i32* %9, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds double, double* %349, i64 %351
  %353 = load double, double* %352, align 8
  %354 = fdiv double %344, %353
  %355 = load double*, double** %8, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %355, i64 %357
  store double %354, double* %358, align 8
  br label %359

359:                                              ; preds = %339
  %360 = load i32, i32* %9, align 4
  %361 = sub nsw i32 %360, 1
  store i32 %361, i32* %9, align 4
  br label %300, !llvm.loop !15

362:                                              ; preds = %300
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
