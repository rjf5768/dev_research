; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jfdctfst.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jfdctfst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_fdct_ifast(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  store i32* %24, i32** %22, align 8
  store i32 7, i32* %23, align 4
  br label %25

25:                                               ; preds = %187, %1
  %26 = load i32, i32* %23, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %190

28:                                               ; preds = %25
  %29 = load i32*, i32** %22, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %22, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 7
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32*, i32** %22, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %22, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %22, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %22, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32*, i32** %22, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %22, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %22, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %22, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  store i32 %63, i32* %5, align 4
  %64 = load i32*, i32** %22, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %22, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32*, i32** %22, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %22, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** %22, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %22, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32*, i32** %22, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32*, i32** %22, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, 181
  %112 = ashr i64 %111, 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32*, i32** %22, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32*, i32** %22, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, 98
  %138 = ashr i64 %137, 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, 139
  %143 = ashr i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* %19, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, 334
  %150 = ashr i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %155, 181
  %157 = ashr i64 %156, 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %17, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32*, i32** %22, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %16, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load i32*, i32** %22, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32*, i32** %22, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %18, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32*, i32** %22, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 7
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %22, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 8
  store i32* %186, i32** %22, align 8
  br label %187

187:                                              ; preds = %28
  %188 = load i32, i32* %23, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %23, align 4
  br label %25, !llvm.loop !4

190:                                              ; preds = %25
  %191 = load i32*, i32** %2, align 8
  store i32* %191, i32** %22, align 8
  store i32 7, i32* %23, align 4
  br label %192

192:                                              ; preds = %354, %190
  %193 = load i32, i32* %23, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %357

195:                                              ; preds = %192
  %196 = load i32*, i32** %22, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %22, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 56
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %198, %201
  store i32 %202, i32* %3, align 4
  %203 = load i32*, i32** %22, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %22, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 56
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %205, %208
  store i32 %209, i32* %10, align 4
  %210 = load i32*, i32** %22, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %22, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 48
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %212, %215
  store i32 %216, i32* %4, align 4
  %217 = load i32*, i32** %22, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 8
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %22, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 48
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %219, %222
  store i32 %223, i32* %9, align 4
  %224 = load i32*, i32** %22, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 16
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %22, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 40
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %226, %229
  store i32 %230, i32* %5, align 4
  %231 = load i32*, i32** %22, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 16
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %22, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 40
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %233, %236
  store i32 %237, i32* %8, align 4
  %238 = load i32*, i32** %22, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 24
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %22, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 32
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %240, %243
  store i32 %244, i32* %6, align 4
  %245 = load i32*, i32** %22, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 24
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %22, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 32
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %247, %250
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %252, %253
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %3, align 4
  %256 = load i32, i32* %6, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %4, align 4
  %262 = load i32, i32* %5, align 4
  %263 = sub nsw i32 %261, %262
  store i32 %263, i32* %13, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32*, i32** %22, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %12, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load i32*, i32** %22, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 32
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %274, %275
  %277 = sext i32 %276 to i64
  %278 = mul nsw i64 %277, 181
  %279 = ashr i64 %278, 8
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %15, align 4
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* %15, align 4
  %283 = add nsw i32 %281, %282
  %284 = load i32*, i32** %22, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 16
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %15, align 4
  %288 = sub nsw i32 %286, %287
  %289 = load i32*, i32** %22, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 48
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %8, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %294, %295
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* %10, align 4
  %299 = add nsw i32 %297, %298
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %13, align 4
  %302 = sub nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = mul nsw i64 %303, 98
  %305 = ashr i64 %304, 8
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %19, align 4
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = mul nsw i64 %308, 139
  %310 = ashr i64 %309, 8
  %311 = trunc i64 %310 to i32
  %312 = load i32, i32* %19, align 4
  %313 = add nsw i32 %311, %312
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 %315, 334
  %317 = ashr i64 %316, 8
  %318 = trunc i64 %317 to i32
  %319 = load i32, i32* %19, align 4
  %320 = add nsw i32 %318, %319
  store i32 %320, i32* %18, align 4
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = mul nsw i64 %322, 181
  %324 = ashr i64 %323, 8
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %17, align 4
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %17, align 4
  %328 = add nsw i32 %326, %327
  store i32 %328, i32* %20, align 4
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %17, align 4
  %331 = sub nsw i32 %329, %330
  store i32 %331, i32* %21, align 4
  %332 = load i32, i32* %21, align 4
  %333 = load i32, i32* %16, align 4
  %334 = add nsw i32 %332, %333
  %335 = load i32*, i32** %22, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 40
  store i32 %334, i32* %336, align 4
  %337 = load i32, i32* %21, align 4
  %338 = load i32, i32* %16, align 4
  %339 = sub nsw i32 %337, %338
  %340 = load i32*, i32** %22, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 24
  store i32 %339, i32* %341, align 4
  %342 = load i32, i32* %20, align 4
  %343 = load i32, i32* %18, align 4
  %344 = add nsw i32 %342, %343
  %345 = load i32*, i32** %22, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 8
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* %18, align 4
  %349 = sub nsw i32 %347, %348
  %350 = load i32*, i32** %22, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 56
  store i32 %349, i32* %351, align 4
  %352 = load i32*, i32** %22, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %22, align 8
  br label %354

354:                                              ; preds = %195
  %355 = load i32, i32* %23, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %23, align 4
  br label %192, !llvm.loop !6

357:                                              ; preds = %192
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
