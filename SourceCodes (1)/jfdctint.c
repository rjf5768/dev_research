; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jfdctint.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jfdctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_fdct_islow(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  store i32* %22, i32** %20, align 8
  store i32 7, i32* %21, align 4
  br label %23

23:                                               ; preds = %219, %1
  %24 = load i32, i32* %21, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %222

26:                                               ; preds = %23
  %27 = load i32*, i32** %20, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %20, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 7
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %20, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %10, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %20, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %4, align 8
  %51 = load i32*, i32** %20, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %20, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %20, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %5, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %20, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %8, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %20, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %6, align 8
  %83 = load i32*, i32** %20, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %20, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %91, %92
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* %6, align 8
  %96 = sub nsw i64 %94, %95
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = add nsw i64 %97, %98
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = sub nsw i64 %100, %101
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %103, %104
  %106 = shl i64 %105, 2
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %20, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %107, i32* %109, align 4
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = sub nsw i64 %110, %111
  %113 = shl i64 %112, 2
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %20, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  store i32 %114, i32* %116, align 4
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = add nsw i64 %117, %118
  %120 = mul nsw i64 %119, 4433
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %14, align 8
  %123 = mul nsw i64 %122, 6270
  %124 = add nsw i64 %121, %123
  %125 = add nsw i64 %124, 1024
  %126 = ashr i64 %125, 11
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %20, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %13, align 8
  %132 = mul nsw i64 %131, -15137
  %133 = add nsw i64 %130, %132
  %134 = add nsw i64 %133, 1024
  %135 = ashr i64 %134, 11
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %20, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %136, i32* %138, align 4
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %10, align 8
  %141 = add nsw i64 %139, %140
  store i64 %141, i64* %15, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = add nsw i64 %142, %143
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %9, align 8
  %147 = add nsw i64 %145, %146
  store i64 %147, i64* %17, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %10, align 8
  %150 = add nsw i64 %148, %149
  store i64 %150, i64* %18, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %18, align 8
  %153 = add nsw i64 %151, %152
  %154 = mul nsw i64 %153, 9633
  store i64 %154, i64* %19, align 8
  %155 = load i64, i64* %7, align 8
  %156 = mul nsw i64 %155, 2446
  store i64 %156, i64* %7, align 8
  %157 = load i64, i64* %8, align 8
  %158 = mul nsw i64 %157, 16819
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* %9, align 8
  %160 = mul nsw i64 %159, 25172
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* %10, align 8
  %162 = mul nsw i64 %161, 12299
  store i64 %162, i64* %10, align 8
  %163 = load i64, i64* %15, align 8
  %164 = mul nsw i64 %163, -7373
  store i64 %164, i64* %15, align 8
  %165 = load i64, i64* %16, align 8
  %166 = mul nsw i64 %165, -20995
  store i64 %166, i64* %16, align 8
  %167 = load i64, i64* %17, align 8
  %168 = mul nsw i64 %167, -16069
  store i64 %168, i64* %17, align 8
  %169 = load i64, i64* %18, align 8
  %170 = mul nsw i64 %169, -3196
  store i64 %170, i64* %18, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* %17, align 8
  %173 = add nsw i64 %172, %171
  store i64 %173, i64* %17, align 8
  %174 = load i64, i64* %19, align 8
  %175 = load i64, i64* %18, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %18, align 8
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* %15, align 8
  %179 = add nsw i64 %177, %178
  %180 = load i64, i64* %17, align 8
  %181 = add nsw i64 %179, %180
  %182 = add nsw i64 %181, 1024
  %183 = ashr i64 %182, 11
  %184 = trunc i64 %183 to i32
  %185 = load i32*, i32** %20, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 7
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %8, align 8
  %188 = load i64, i64* %16, align 8
  %189 = add nsw i64 %187, %188
  %190 = load i64, i64* %18, align 8
  %191 = add nsw i64 %189, %190
  %192 = add nsw i64 %191, 1024
  %193 = ashr i64 %192, 11
  %194 = trunc i64 %193 to i32
  %195 = load i32*, i32** %20, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 5
  store i32 %194, i32* %196, align 4
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %16, align 8
  %199 = add nsw i64 %197, %198
  %200 = load i64, i64* %17, align 8
  %201 = add nsw i64 %199, %200
  %202 = add nsw i64 %201, 1024
  %203 = ashr i64 %202, 11
  %204 = trunc i64 %203 to i32
  %205 = load i32*, i32** %20, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  store i32 %204, i32* %206, align 4
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* %15, align 8
  %209 = add nsw i64 %207, %208
  %210 = load i64, i64* %18, align 8
  %211 = add nsw i64 %209, %210
  %212 = add nsw i64 %211, 1024
  %213 = ashr i64 %212, 11
  %214 = trunc i64 %213 to i32
  %215 = load i32*, i32** %20, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 %214, i32* %216, align 4
  %217 = load i32*, i32** %20, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 8
  store i32* %218, i32** %20, align 8
  br label %219

219:                                              ; preds = %26
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %21, align 4
  br label %23, !llvm.loop !4

222:                                              ; preds = %23
  %223 = load i32*, i32** %2, align 8
  store i32* %223, i32** %20, align 8
  store i32 7, i32* %21, align 4
  br label %224

224:                                              ; preds = %422, %222
  %225 = load i32, i32* %21, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %425

227:                                              ; preds = %224
  %228 = load i32*, i32** %20, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %20, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 56
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %230, %233
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %3, align 8
  %236 = load i32*, i32** %20, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %20, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 56
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %10, align 8
  %244 = load i32*, i32** %20, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %20, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 48
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %246, %249
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %4, align 8
  %252 = load i32*, i32** %20, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 8
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %20, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 48
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %254, %257
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %9, align 8
  %260 = load i32*, i32** %20, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 16
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %20, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 40
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %262, %265
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %5, align 8
  %268 = load i32*, i32** %20, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 16
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %20, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 40
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %270, %273
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %8, align 8
  %276 = load i32*, i32** %20, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 24
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %20, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 32
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %278, %281
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %6, align 8
  %284 = load i32*, i32** %20, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 24
  %286 = load i32, i32* %285, align 4
  %287 = load i32*, i32** %20, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 32
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %286, %289
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %7, align 8
  %292 = load i64, i64* %3, align 8
  %293 = load i64, i64* %6, align 8
  %294 = add nsw i64 %292, %293
  store i64 %294, i64* %11, align 8
  %295 = load i64, i64* %3, align 8
  %296 = load i64, i64* %6, align 8
  %297 = sub nsw i64 %295, %296
  store i64 %297, i64* %14, align 8
  %298 = load i64, i64* %4, align 8
  %299 = load i64, i64* %5, align 8
  %300 = add nsw i64 %298, %299
  store i64 %300, i64* %12, align 8
  %301 = load i64, i64* %4, align 8
  %302 = load i64, i64* %5, align 8
  %303 = sub nsw i64 %301, %302
  store i64 %303, i64* %13, align 8
  %304 = load i64, i64* %11, align 8
  %305 = load i64, i64* %12, align 8
  %306 = add nsw i64 %304, %305
  %307 = add nsw i64 %306, 2
  %308 = ashr i64 %307, 2
  %309 = trunc i64 %308 to i32
  %310 = load i32*, i32** %20, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  store i32 %309, i32* %311, align 4
  %312 = load i64, i64* %11, align 8
  %313 = load i64, i64* %12, align 8
  %314 = sub nsw i64 %312, %313
  %315 = add nsw i64 %314, 2
  %316 = ashr i64 %315, 2
  %317 = trunc i64 %316 to i32
  %318 = load i32*, i32** %20, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 32
  store i32 %317, i32* %319, align 4
  %320 = load i64, i64* %13, align 8
  %321 = load i64, i64* %14, align 8
  %322 = add nsw i64 %320, %321
  %323 = mul nsw i64 %322, 4433
  store i64 %323, i64* %15, align 8
  %324 = load i64, i64* %15, align 8
  %325 = load i64, i64* %14, align 8
  %326 = mul nsw i64 %325, 6270
  %327 = add nsw i64 %324, %326
  %328 = add nsw i64 %327, 16384
  %329 = ashr i64 %328, 15
  %330 = trunc i64 %329 to i32
  %331 = load i32*, i32** %20, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 16
  store i32 %330, i32* %332, align 4
  %333 = load i64, i64* %15, align 8
  %334 = load i64, i64* %13, align 8
  %335 = mul nsw i64 %334, -15137
  %336 = add nsw i64 %333, %335
  %337 = add nsw i64 %336, 16384
  %338 = ashr i64 %337, 15
  %339 = trunc i64 %338 to i32
  %340 = load i32*, i32** %20, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 48
  store i32 %339, i32* %341, align 4
  %342 = load i64, i64* %7, align 8
  %343 = load i64, i64* %10, align 8
  %344 = add nsw i64 %342, %343
  store i64 %344, i64* %15, align 8
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* %9, align 8
  %347 = add nsw i64 %345, %346
  store i64 %347, i64* %16, align 8
  %348 = load i64, i64* %7, align 8
  %349 = load i64, i64* %9, align 8
  %350 = add nsw i64 %348, %349
  store i64 %350, i64* %17, align 8
  %351 = load i64, i64* %8, align 8
  %352 = load i64, i64* %10, align 8
  %353 = add nsw i64 %351, %352
  store i64 %353, i64* %18, align 8
  %354 = load i64, i64* %17, align 8
  %355 = load i64, i64* %18, align 8
  %356 = add nsw i64 %354, %355
  %357 = mul nsw i64 %356, 9633
  store i64 %357, i64* %19, align 8
  %358 = load i64, i64* %7, align 8
  %359 = mul nsw i64 %358, 2446
  store i64 %359, i64* %7, align 8
  %360 = load i64, i64* %8, align 8
  %361 = mul nsw i64 %360, 16819
  store i64 %361, i64* %8, align 8
  %362 = load i64, i64* %9, align 8
  %363 = mul nsw i64 %362, 25172
  store i64 %363, i64* %9, align 8
  %364 = load i64, i64* %10, align 8
  %365 = mul nsw i64 %364, 12299
  store i64 %365, i64* %10, align 8
  %366 = load i64, i64* %15, align 8
  %367 = mul nsw i64 %366, -7373
  store i64 %367, i64* %15, align 8
  %368 = load i64, i64* %16, align 8
  %369 = mul nsw i64 %368, -20995
  store i64 %369, i64* %16, align 8
  %370 = load i64, i64* %17, align 8
  %371 = mul nsw i64 %370, -16069
  store i64 %371, i64* %17, align 8
  %372 = load i64, i64* %18, align 8
  %373 = mul nsw i64 %372, -3196
  store i64 %373, i64* %18, align 8
  %374 = load i64, i64* %19, align 8
  %375 = load i64, i64* %17, align 8
  %376 = add nsw i64 %375, %374
  store i64 %376, i64* %17, align 8
  %377 = load i64, i64* %19, align 8
  %378 = load i64, i64* %18, align 8
  %379 = add nsw i64 %378, %377
  store i64 %379, i64* %18, align 8
  %380 = load i64, i64* %7, align 8
  %381 = load i64, i64* %15, align 8
  %382 = add nsw i64 %380, %381
  %383 = load i64, i64* %17, align 8
  %384 = add nsw i64 %382, %383
  %385 = add nsw i64 %384, 16384
  %386 = ashr i64 %385, 15
  %387 = trunc i64 %386 to i32
  %388 = load i32*, i32** %20, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 56
  store i32 %387, i32* %389, align 4
  %390 = load i64, i64* %8, align 8
  %391 = load i64, i64* %16, align 8
  %392 = add nsw i64 %390, %391
  %393 = load i64, i64* %18, align 8
  %394 = add nsw i64 %392, %393
  %395 = add nsw i64 %394, 16384
  %396 = ashr i64 %395, 15
  %397 = trunc i64 %396 to i32
  %398 = load i32*, i32** %20, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 40
  store i32 %397, i32* %399, align 4
  %400 = load i64, i64* %9, align 8
  %401 = load i64, i64* %16, align 8
  %402 = add nsw i64 %400, %401
  %403 = load i64, i64* %17, align 8
  %404 = add nsw i64 %402, %403
  %405 = add nsw i64 %404, 16384
  %406 = ashr i64 %405, 15
  %407 = trunc i64 %406 to i32
  %408 = load i32*, i32** %20, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 24
  store i32 %407, i32* %409, align 4
  %410 = load i64, i64* %10, align 8
  %411 = load i64, i64* %15, align 8
  %412 = add nsw i64 %410, %411
  %413 = load i64, i64* %18, align 8
  %414 = add nsw i64 %412, %413
  %415 = add nsw i64 %414, 16384
  %416 = ashr i64 %415, 15
  %417 = trunc i64 %416 to i32
  %418 = load i32*, i32** %20, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 8
  store i32 %417, i32* %419, align 4
  %420 = load i32*, i32** %20, align 8
  %421 = getelementptr inbounds i32, i32* %420, i32 1
  store i32* %421, i32** %20, align 8
  br label %422

422:                                              ; preds = %227
  %423 = load i32, i32* %21, align 4
  %424 = add nsw i32 %423, -1
  store i32 %424, i32* %21, align 4
  br label %224, !llvm.loop !6

425:                                              ; preds = %224
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
