; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/AnisotropicDiffusion/anisotropicDiffusionKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/AnisotropicDiffusion/anisotropicDiffusionKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @anisotropicDiffusionKernel(i32 noundef %0, i32 noundef %1, [512 x i32]* noundef %2, i32* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i32]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [512 x i32]* %2, [512 x i32]** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %362, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %365

30:                                               ; preds = %26
  store i32 2, i32* %11, align 4
  br label %31

31:                                               ; preds = %358, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 2
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %361

36:                                               ; preds = %31
  store i32 2, i32* %12, align 4
  br label %37

37:                                               ; preds = %354, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 2
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %357

42:                                               ; preds = %37
  %43 = load [512 x i32]*, [512 x i32]** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [512 x i32], [512 x i32]* %43, i64 %45
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x i32], [512 x i32]* %46, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load [512 x i32]*, [512 x i32]** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [512 x i32], [512 x i32]* %52, i64 %54
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [512 x i32], [512 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %51, %59
  store i32 %60, i32* %14, align 4
  %61 = load [512 x i32]*, [512 x i32]** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [512 x i32], [512 x i32]* %61, i64 %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [512 x i32], [512 x i32]* %65, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load [512 x i32]*, [512 x i32]** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [512 x i32], [512 x i32]* %71, i64 %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [512 x i32], [512 x i32]* %75, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %70, %80
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sub nsw i32 0, %87
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %89, 5.000000e-01
  %91 = fmul double %90, 5.000000e-01
  %92 = call double @exp(double noundef %91) #3
  %93 = load [512 x i32]*, [512 x i32]** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [512 x i32], [512 x i32]* %93, i64 %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [512 x i32], [512 x i32]* %96, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load [512 x i32]*, [512 x i32]** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [512 x i32], [512 x i32]* %102, i64 %104
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [512 x i32], [512 x i32]* %105, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %101, %109
  %111 = sitofp i32 %110 to double
  %112 = fmul double %92, %111
  %113 = fptrunc double %112 to float
  store float %113, float* %18, align 4
  %114 = load [512 x i32]*, [512 x i32]** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [512 x i32], [512 x i32]* %114, i64 %116
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [512 x i32], [512 x i32]* %117, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load [512 x i32]*, [512 x i32]** %8, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [512 x i32], [512 x i32]* %122, i64 %124
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [512 x i32], [512 x i32]* %125, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %121, %130
  store i32 %131, i32* %14, align 4
  %132 = load [512 x i32]*, [512 x i32]** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [512 x i32], [512 x i32]* %132, i64 %135
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [512 x i32], [512 x i32]* %136, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load [512 x i32]*, [512 x i32]** %8, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [512 x i32], [512 x i32]* %142, i64 %145
  %147 = load i32, i32* %12, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [512 x i32], [512 x i32]* %146, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %141, %151
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %153, %154
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sub nsw i32 0, %158
  %160 = sitofp i32 %159 to double
  %161 = fdiv double %160, 5.000000e-01
  %162 = fmul double %161, 5.000000e-01
  %163 = call double @exp(double noundef %162) #3
  %164 = load [512 x i32]*, [512 x i32]** %8, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [512 x i32], [512 x i32]* %164, i64 %166
  %168 = load i32, i32* %12, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [512 x i32], [512 x i32]* %167, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load [512 x i32]*, [512 x i32]** %8, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [512 x i32], [512 x i32]* %173, i64 %175
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [512 x i32], [512 x i32]* %176, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %172, %180
  %182 = sitofp i32 %181 to double
  %183 = fmul double %163, %182
  %184 = fptrunc double %183 to float
  store float %184, float* %19, align 4
  %185 = load [512 x i32]*, [512 x i32]** %8, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [512 x i32], [512 x i32]* %185, i64 %188
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x i32], [512 x i32]* %189, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load [512 x i32]*, [512 x i32]** %8, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [512 x i32], [512 x i32]* %195, i64 %198
  %200 = load i32, i32* %12, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [512 x i32], [512 x i32]* %199, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %194, %204
  store i32 %205, i32* %14, align 4
  %206 = load [512 x i32]*, [512 x i32]** %8, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [512 x i32], [512 x i32]* %206, i64 %208
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [512 x i32], [512 x i32]* %209, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load [512 x i32]*, [512 x i32]** %8, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sub nsw i32 %215, 2
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [512 x i32], [512 x i32]* %214, i64 %217
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [512 x i32], [512 x i32]* %218, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %213, %222
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %224, %225
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %16, align 4
  %229 = mul nsw i32 %227, %228
  %230 = sub nsw i32 0, %229
  %231 = sitofp i32 %230 to double
  %232 = fdiv double %231, 5.000000e-01
  %233 = fmul double %232, 5.000000e-01
  %234 = call double @exp(double noundef %233) #3
  %235 = load [512 x i32]*, [512 x i32]** %8, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [512 x i32], [512 x i32]* %235, i64 %238
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [512 x i32], [512 x i32]* %239, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load [512 x i32]*, [512 x i32]** %8, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [512 x i32], [512 x i32]* %244, i64 %246
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [512 x i32], [512 x i32]* %247, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %243, %251
  %253 = sitofp i32 %252 to double
  %254 = fmul double %234, %253
  %255 = fptrunc double %254 to float
  store float %255, float* %20, align 4
  %256 = load [512 x i32]*, [512 x i32]** %8, align 8
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [512 x i32], [512 x i32]* %256, i64 %259
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [512 x i32], [512 x i32]* %260, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load [512 x i32]*, [512 x i32]** %8, align 8
  %267 = load i32, i32* %11, align 4
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [512 x i32], [512 x i32]* %266, i64 %269
  %271 = load i32, i32* %12, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [512 x i32], [512 x i32]* %270, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %265, %275
  store i32 %276, i32* %14, align 4
  %277 = load [512 x i32]*, [512 x i32]** %8, align 8
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 2
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [512 x i32], [512 x i32]* %277, i64 %280
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [512 x i32], [512 x i32]* %281, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load [512 x i32]*, [512 x i32]** %8, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [512 x i32], [512 x i32]* %286, i64 %288
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [512 x i32], [512 x i32]* %289, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %285, %293
  store i32 %294, i32* %15, align 4
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %295, %296
  store i32 %297, i32* %16, align 4
  %298 = load i32, i32* %16, align 4
  %299 = load i32, i32* %16, align 4
  %300 = mul nsw i32 %298, %299
  %301 = sub nsw i32 0, %300
  %302 = sitofp i32 %301 to double
  %303 = fdiv double %302, 5.000000e-01
  %304 = fmul double %303, 5.000000e-01
  %305 = call double @exp(double noundef %304) #3
  %306 = load [512 x i32]*, [512 x i32]** %8, align 8
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [512 x i32], [512 x i32]* %306, i64 %309
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [512 x i32], [512 x i32]* %310, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load [512 x i32]*, [512 x i32]** %8, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [512 x i32], [512 x i32]* %315, i64 %317
  %319 = load i32, i32* %12, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [512 x i32], [512 x i32]* %318, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %314, %322
  %324 = sitofp i32 %323 to double
  %325 = fmul double %305, %324
  %326 = fptrunc double %325 to float
  store float %326, float* %21, align 4
  %327 = load [512 x i32]*, [512 x i32]** %8, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [512 x i32], [512 x i32]* %327, i64 %329
  %331 = load i32, i32* %12, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [512 x i32], [512 x i32]* %330, i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = sitofp i32 %334 to double
  %336 = load float, float* %18, align 4
  %337 = load float, float* %19, align 4
  %338 = fadd float %336, %337
  %339 = load float, float* %20, align 4
  %340 = fadd float %338, %339
  %341 = load float, float* %21, align 4
  %342 = fadd float %340, %341
  %343 = fpext float %342 to double
  %344 = call double @llvm.fmuladd.f64(double 1.250000e-01, double %343, double %335)
  %345 = fptosi double %344 to i32
  %346 = load i32*, i32** %9, align 8
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = mul nsw i64 %348, %25
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  %351 = load i32, i32* %12, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 %345, i32* %353, align 4
  br label %354

354:                                              ; preds = %42
  %355 = load i32, i32* %12, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %12, align 4
  br label %37, !llvm.loop !4

357:                                              ; preds = %37
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %11, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %11, align 4
  br label %31, !llvm.loop !6

361:                                              ; preds = %31
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %13, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %13, align 4
  br label %26, !llvm.loop !7

365:                                              ; preds = %26
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

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
