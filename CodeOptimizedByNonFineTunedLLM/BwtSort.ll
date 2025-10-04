; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/BwtSort.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/BwtSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SortGroup(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %18, align 8
  %49 = load i32, i32* %13, align 4
  %50 = icmp ule i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %477

52:                                               ; preds = %8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 65536
  store i32* %57, i32** %19, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = shl i32 1, %59
  %61 = icmp ule i32 %58, %60
  br i1 %61, label %62, label %243

62:                                               ; preds = %52
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ule i32 %63, %64
  br i1 %65, label %66, label %243

66:                                               ; preds = %62
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %20, align 8
  store i32 0, i32* %27, align 4
  %71 = load i32*, i32** %18, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %73, %74
  store i32 %75, i32* %28, align 4
  %76 = load i32, i32* %28, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %28, align 4
  %82 = sub i32 %81, %80
  store i32 %82, i32* %28, align 4
  br label %83

83:                                               ; preds = %79, %66
  %84 = load i32*, i32** %19, align 8
  %85 = load i32, i32* %28, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %26, align 4
  %89 = load i32, i32* %26, align 4
  %90 = load i32, i32* %14, align 4
  %91 = shl i32 %89, %90
  %92 = load i32*, i32** %20, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  store i32 1, i32* %21, align 4
  br label %94

94:                                               ; preds = %133, %83
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %136

98:                                               ; preds = %94
  %99 = load i32*, i32** %18, align 8
  %100 = load i32, i32* %21, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add i32 %103, %104
  store i32 %105, i32* %29, align 4
  %106 = load i32, i32* %29, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp uge i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %29, align 4
  %112 = sub i32 %111, %110
  store i32 %112, i32* %29, align 4
  br label %113

113:                                              ; preds = %109, %98
  %114 = load i32*, i32** %19, align 8
  %115 = load i32, i32* %29, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %30, align 4
  %119 = load i32, i32* %30, align 4
  %120 = load i32, i32* %14, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %21, align 4
  %123 = or i32 %121, %122
  %124 = load i32*, i32** %20, align 8
  %125 = load i32, i32* %21, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %30, align 4
  %130 = xor i32 %128, %129
  %131 = load i32, i32* %27, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %27, align 4
  br label %133

133:                                              ; preds = %113
  %134 = load i32, i32* %21, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %21, align 4
  br label %94, !llvm.loop !4

136:                                              ; preds = %94
  %137 = load i32, i32* %27, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %13, align 4
  call void @SetGroupSize(i32* noundef %140, i32 noundef %141)
  store i32 1, i32* %9, align 4
  br label %477

142:                                              ; preds = %136
  %143 = load i32*, i32** %20, align 8
  %144 = load i32, i32* %13, align 4
  call void @HeapSort(i32* noundef %143, i32 noundef %144)
  %145 = load i32, i32* %14, align 4
  %146 = shl i32 1, %145
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %24, align 4
  %149 = load i32*, i32** %20, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %14, align 4
  %153 = lshr i32 %151, %152
  store i32 %153, i32* %25, align 4
  %154 = load i32*, i32** %18, align 8
  %155 = load i32*, i32** %20, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %22, align 4
  %159 = and i32 %157, %158
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %20, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  store i32 0, i32* %31, align 4
  store i32 1, i32* %21, align 4
  br label %165

165:                                              ; preds = %213, %142
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %216

169:                                              ; preds = %165
  %170 = load i32*, i32** %20, align 8
  %171 = load i32, i32* %21, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %32, align 4
  %175 = load i32, i32* %32, align 4
  %176 = load i32, i32* %14, align 4
  %177 = lshr i32 %175, %176
  store i32 %177, i32* %33, align 4
  %178 = load i32, i32* %33, align 4
  %179 = load i32, i32* %25, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %169
  %182 = load i32, i32* %33, align 4
  store i32 %182, i32* %25, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %21, align 4
  %185 = add i32 %183, %184
  store i32 %185, i32* %24, align 4
  %186 = load i32*, i32** %20, align 8
  %187 = load i32, i32* %31, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %31, align 4
  %192 = sub i32 %190, %191
  call void @SetGroupSize(i32* noundef %189, i32 noundef %192)
  %193 = load i32, i32* %21, align 4
  store i32 %193, i32* %31, align 4
  br label %195

194:                                              ; preds = %169
  store i32 1, i32* %23, align 4
  br label %195

195:                                              ; preds = %194, %181
  %196 = load i32*, i32** %18, align 8
  %197 = load i32, i32* %32, align 4
  %198 = load i32, i32* %22, align 4
  %199 = and i32 %197, %198
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %34, align 4
  %203 = load i32, i32* %34, align 4
  %204 = load i32*, i32** %20, align 8
  %205 = load i32, i32* %21, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %203, i32* %207, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32*, i32** %19, align 8
  %210 = load i32, i32* %34, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  br label %213

213:                                              ; preds = %195
  %214 = load i32, i32* %21, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %21, align 4
  br label %165, !llvm.loop !6

216:                                              ; preds = %165
  %217 = load i32*, i32** %20, align 8
  %218 = load i32, i32* %31, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* %31, align 4
  %223 = sub i32 %221, %222
  call void @SetGroupSize(i32* noundef %220, i32 noundef %223)
  store i32 0, i32* %21, align 4
  br label %224

224:                                              ; preds = %238, %216
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %224
  %229 = load i32*, i32** %20, align 8
  %230 = load i32, i32* %21, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %18, align 8
  %235 = load i32, i32* %21, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %233, i32* %237, align 4
  br label %238

238:                                              ; preds = %228
  %239 = load i32, i32* %21, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %21, align 4
  br label %224, !llvm.loop !7

241:                                              ; preds = %224
  %242 = load i32, i32* %23, align 4
  store i32 %242, i32* %9, align 4
  br label %477

243:                                              ; preds = %62, %52
  %244 = load i32*, i32** %18, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %11, align 4
  %248 = add i32 %246, %247
  store i32 %248, i32* %37, align 4
  %249 = load i32, i32* %37, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp uge i32 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %243
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %37, align 4
  %255 = sub i32 %254, %253
  store i32 %255, i32* %37, align 4
  br label %256

256:                                              ; preds = %252, %243
  %257 = load i32*, i32** %19, align 8
  %258 = load i32, i32* %37, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %35, align 4
  store i32 1, i32* %36, align 4
  br label %262

262:                                              ; preds = %291, %256
  %263 = load i32, i32* %36, align 4
  %264 = load i32, i32* %13, align 4
  %265 = icmp ult i32 %263, %264
  br i1 %265, label %266, label %294

266:                                              ; preds = %262
  %267 = load i32*, i32** %18, align 8
  %268 = load i32, i32* %36, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %11, align 4
  %273 = add i32 %271, %272
  store i32 %273, i32* %37, align 4
  %274 = load i32, i32* %37, align 4
  %275 = load i32, i32* %10, align 4
  %276 = icmp uge i32 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %266
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %37, align 4
  %280 = sub i32 %279, %278
  store i32 %280, i32* %37, align 4
  br label %281

281:                                              ; preds = %277, %266
  %282 = load i32*, i32** %19, align 8
  %283 = load i32, i32* %37, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %35, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  br label %294

290:                                              ; preds = %281
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %36, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %36, align 4
  br label %262, !llvm.loop !8

294:                                              ; preds = %289, %262
  %295 = load i32, i32* %36, align 4
  %296 = load i32, i32* %13, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %294
  %299 = load i32*, i32** %18, align 8
  %300 = load i32, i32* %13, align 4
  call void @SetGroupSize(i32* noundef %299, i32 noundef %300)
  store i32 1, i32* %9, align 4
  br label %477

301:                                              ; preds = %294
  br label %302

302:                                              ; preds = %424, %301
  %303 = load i32, i32* %17, align 4
  %304 = icmp ule i32 %303, 1
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i32*, i32** %18, align 8
  %307 = load i32, i32* %13, align 4
  call void @SetGroupSize(i32* noundef %306, i32 noundef %307)
  store i32 1, i32* %9, align 4
  br label %477

308:                                              ; preds = %302
  %309 = load i32, i32* %16, align 4
  %310 = load i32, i32* %17, align 4
  %311 = add i32 %310, 1
  %312 = lshr i32 %311, 1
  %313 = add i32 %309, %312
  store i32 %313, i32* %39, align 4
  %314 = load i32, i32* %13, align 4
  store i32 %314, i32* %40, align 4
  store i32 0, i32* %38, align 4
  br label %315

315:                                              ; preds = %399, %308
  %316 = load i32*, i32** %18, align 8
  %317 = load i32, i32* %38, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %11, align 4
  %322 = add i32 %320, %321
  store i32 %322, i32* %41, align 4
  %323 = load i32, i32* %41, align 4
  %324 = load i32, i32* %10, align 4
  %325 = icmp uge i32 %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %315
  %327 = load i32, i32* %10, align 4
  %328 = load i32, i32* %41, align 4
  %329 = sub i32 %328, %327
  store i32 %329, i32* %41, align 4
  br label %330

330:                                              ; preds = %326, %315
  %331 = load i32*, i32** %19, align 8
  %332 = load i32, i32* %41, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %39, align 4
  %337 = icmp uge i32 %335, %336
  br i1 %337, label %338, label %398

338:                                              ; preds = %330
  %339 = load i32, i32* %40, align 4
  %340 = add i32 %339, -1
  store i32 %340, i32* %40, align 4
  br label %341

341:                                              ; preds = %389, %338
  %342 = load i32, i32* %40, align 4
  %343 = load i32, i32* %38, align 4
  %344 = icmp ugt i32 %342, %343
  br i1 %344, label %345, label %392

345:                                              ; preds = %341
  %346 = load i32*, i32** %18, align 8
  %347 = load i32, i32* %40, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %11, align 4
  %352 = add i32 %350, %351
  store i32 %352, i32* %41, align 4
  %353 = load i32, i32* %41, align 4
  %354 = load i32, i32* %10, align 4
  %355 = icmp uge i32 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %345
  %357 = load i32, i32* %10, align 4
  %358 = load i32, i32* %41, align 4
  %359 = sub i32 %358, %357
  store i32 %359, i32* %41, align 4
  br label %360

360:                                              ; preds = %356, %345
  %361 = load i32*, i32** %19, align 8
  %362 = load i32, i32* %41, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %39, align 4
  %367 = icmp ult i32 %365, %366
  br i1 %367, label %368, label %388

368:                                              ; preds = %360
  %369 = load i32*, i32** %18, align 8
  %370 = load i32, i32* %38, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %42, align 4
  %374 = load i32*, i32** %18, align 8
  %375 = load i32, i32* %40, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32*, i32** %18, align 8
  %380 = load i32, i32* %38, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 %378, i32* %382, align 4
  %383 = load i32, i32* %42, align 4
  %384 = load i32*, i32** %18, align 8
  %385 = load i32, i32* %40, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 %383, i32* %387, align 4
  br label %392

388:                                              ; preds = %360
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %40, align 4
  %391 = add i32 %390, -1
  store i32 %391, i32* %40, align 4
  br label %341, !llvm.loop !9

392:                                              ; preds = %368, %341
  %393 = load i32, i32* %38, align 4
  %394 = load i32, i32* %40, align 4
  %395 = icmp uge i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  br label %404

397:                                              ; preds = %392
  br label %398

398:                                              ; preds = %397, %330
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %38, align 4
  %401 = add i32 %400, 1
  store i32 %401, i32* %38, align 4
  %402 = load i32, i32* %40, align 4
  %403 = icmp ult i32 %401, %402
  br i1 %403, label %315, label %404, !llvm.loop !10

404:                                              ; preds = %399, %396
  %405 = load i32, i32* %38, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %404
  %408 = load i32, i32* %17, align 4
  %409 = load i32, i32* %39, align 4
  %410 = load i32, i32* %16, align 4
  %411 = sub i32 %409, %410
  %412 = sub i32 %408, %411
  store i32 %412, i32* %17, align 4
  %413 = load i32, i32* %39, align 4
  store i32 %413, i32* %16, align 4
  br label %424

414:                                              ; preds = %404
  %415 = load i32, i32* %38, align 4
  %416 = load i32, i32* %13, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %414
  %419 = load i32, i32* %39, align 4
  %420 = load i32, i32* %16, align 4
  %421 = sub i32 %419, %420
  store i32 %421, i32* %17, align 4
  br label %423

422:                                              ; preds = %414
  br label %425

423:                                              ; preds = %418
  br label %424

424:                                              ; preds = %423, %407
  br label %302

425:                                              ; preds = %422
  %426 = load i32, i32* %38, align 4
  store i32 %426, i32* %43, align 4
  br label %427

427:                                              ; preds = %443, %425
  %428 = load i32, i32* %43, align 4
  %429 = load i32, i32* %13, align 4
  %430 = icmp ult i32 %428, %429
  br i1 %430, label %431, label %446

431:                                              ; preds = %427
  %432 = load i32, i32* %12, align 4
  %433 = load i32, i32* %38, align 4
  %434 = add i32 %432, %433
  %435 = load i32*, i32** %19, align 8
  %436 = load i32*, i32** %18, align 8
  %437 = load i32, i32* %43, align 4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %435, i64 %441
  store i32 %434, i32* %442, align 4
  br label %443

443:                                              ; preds = %431
  %444 = load i32, i32* %43, align 4
  %445 = add i32 %444, 1
  store i32 %445, i32* %43, align 4
  br label %427, !llvm.loop !11

446:                                              ; preds = %427
  %447 = load i32, i32* %10, align 4
  %448 = load i32, i32* %11, align 4
  %449 = load i32, i32* %12, align 4
  %450 = load i32, i32* %38, align 4
  %451 = load i32, i32* %14, align 4
  %452 = load i32*, i32** %15, align 8
  %453 = load i32, i32* %16, align 4
  %454 = load i32, i32* %39, align 4
  %455 = load i32, i32* %16, align 4
  %456 = sub i32 %454, %455
  %457 = call i32 @SortGroup(i32 noundef %447, i32 noundef %448, i32 noundef %449, i32 noundef %450, i32 noundef %451, i32* noundef %452, i32 noundef %453, i32 noundef %456)
  store i32 %457, i32* %44, align 4
  %458 = load i32, i32* %44, align 4
  %459 = load i32, i32* %10, align 4
  %460 = load i32, i32* %11, align 4
  %461 = load i32, i32* %12, align 4
  %462 = load i32, i32* %38, align 4
  %463 = add i32 %461, %462
  %464 = load i32, i32* %13, align 4
  %465 = load i32, i32* %38, align 4
  %466 = sub i32 %464, %465
  %467 = load i32, i32* %14, align 4
  %468 = load i32*, i32** %15, align 8
  %469 = load i32, i32* %39, align 4
  %470 = load i32, i32* %17, align 4
  %471 = load i32, i32* %39, align 4
  %472 = load i32, i32* %16, align 4
  %473 = sub i32 %471, %472
  %474 = sub i32 %470, %473
  %475 = call i32 @SortGroup(i32 noundef %459, i32 noundef %460, i32 noundef %463, i32 noundef %466, i32 noundef %467, i32* noundef %468, i32 noundef %469, i32 noundef %474)
  %476 = or i32 %458, %475
  store i32 %476, i32* %9, align 4
  br label %477

477:                                              ; preds = %446, %305, %298, %241, %139, %51
  %478 = load i32, i32* %9, align 4
  ret i32 %478
}

; Function Attrs: noinline nounwind uwtable
define internal void @SetGroupSize(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %30

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 1023
  %12 = shl i32 %11, 20
  %13 = or i32 -2147483648, %12
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp uge i32 %17, 1024
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 1073741824
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %4, align 4
  %24 = lshr i32 %23, 10
  %25 = shl i32 %24, 20
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %8, %19, %9
  ret void
}

declare dso_local void @HeapSort(i32* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BlockSort(i32* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %36, %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %29, 65536
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %28, !llvm.loop !12

39:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, 1
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %53, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %46, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %45
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %40, !llvm.loop !13

69:                                               ; preds = %40
  %70 = load i32*, i32** %7, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %77, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %70, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 65536
  store i32* %88, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %112, %69
  %90 = load i32, i32* %8, align 4
  %91 = icmp ult i32 %90, 65536
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sub i32 %105, %106
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %89, !llvm.loop !14

115:                                              ; preds = %89
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %145, %115
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sub i32 %118, 1
  %120 = icmp ult i32 %117, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %116
  %122 = load i32*, i32** %7, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = shl i32 %128, 8
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %129, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %122, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %8, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %121
  %146 = load i32, i32* %8, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %116, !llvm.loop !15

148:                                              ; preds = %116
  %149 = load i32*, i32** %7, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 8
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %156, %160
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %149, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %8, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %199, %148
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %6, align 4
  %172 = sub i32 %171, 1
  %173 = icmp ult i32 %170, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = load i8*, i8** %5, align 8
  %179 = load i32, i32* %8, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl i32 %183, 8
  %185 = load i8*, i8** %5, align 8
  %186 = load i32, i32* %8, align 4
  %187 = add i32 %186, 1
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = or i32 %184, %191
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %177, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = zext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %176, i64 %197
  store i32 %175, i32* %198, align 4
  br label %199

199:                                              ; preds = %174
  %200 = load i32, i32* %8, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %169, !llvm.loop !16

202:                                              ; preds = %169
  %203 = load i32, i32* %8, align 4
  %204 = load i32*, i32** %4, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* %8, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = shl i32 %211, 8
  %213 = load i8*, i8** %5, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %212, %216
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %205, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = zext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %204, i64 %222
  store i32 %203, i32* %223, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %224

224:                                              ; preds = %249, %202
  %225 = load i32, i32* %8, align 4
  %226 = icmp ult i32 %225, 65536
  br i1 %226, label %227, label %252

227:                                              ; preds = %224
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* %8, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %12, align 4
  %234 = sub i32 %232, %233
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  br label %249

238:                                              ; preds = %227
  %239 = load i32*, i32** %4, align 8
  %240 = load i32, i32* %12, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %13, align 4
  call void @SetGroupSize(i32* noundef %242, i32 noundef %243)
  %244 = load i32*, i32** %7, align 8
  %245 = load i32, i32* %8, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %12, align 4
  br label %249

249:                                              ; preds = %238, %237
  %250 = load i32, i32* %8, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %8, align 4
  br label %224, !llvm.loop !17

252:                                              ; preds = %224
  store i32 0, i32* %14, align 4
  br label %253

253:                                              ; preds = %260, %252
  %254 = load i32, i32* %6, align 4
  %255 = sub i32 %254, 1
  %256 = load i32, i32* %14, align 4
  %257 = lshr i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %253, !llvm.loop !18

263:                                              ; preds = %253
  %264 = load i32, i32* %14, align 4
  %265 = sub nsw i32 32, %264
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp sgt i32 %266, 12
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  store i32 12, i32* %14, align 4
  br label %269

269:                                              ; preds = %268, %263
  store i32 2, i32* %15, align 4
  br label %270

270:                                              ; preds = %452, %269
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %271

271:                                              ; preds = %443, %397, %270
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ult i32 %272, %273
  br i1 %274, label %275, label %447

275:                                              ; preds = %271
  %276 = load i32*, i32** %4, align 8
  %277 = load i32, i32* %8, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 1073741823
  %282 = lshr i32 %281, 20
  store i32 %282, i32* %18, align 4
  %283 = load i32*, i32** %4, align 8
  %284 = load i32, i32* %8, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, -2147483648
  %289 = icmp eq i32 %288, 0
  %290 = zext i1 %289 to i32
  store i32 %290, i32* %19, align 4
  %291 = load i32*, i32** %4, align 8
  %292 = load i32, i32* %8, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 1073741824
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %275
  %299 = load i32*, i32** %4, align 8
  %300 = load i32, i32* %8, align 4
  %301 = add i32 %300, 1
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = lshr i32 %304, 20
  %306 = shl i32 %305, 10
  %307 = load i32, i32* %18, align 4
  %308 = add i32 %307, %306
  store i32 %308, i32* %18, align 4
  %309 = load i32*, i32** %4, align 8
  %310 = load i32, i32* %8, align 4
  %311 = add i32 %310, 1
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, 1048575
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %298, %275
  %317 = load i32*, i32** %4, align 8
  %318 = load i32, i32* %8, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, 1048575
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* %18, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %18, align 4
  %325 = load i32, i32* %19, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %316
  %328 = load i32, i32* %18, align 4
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %402

330:                                              ; preds = %327, %316
  %331 = load i32*, i32** %4, align 8
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* %16, align 4
  %334 = sub i32 %332, %333
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %331, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, 1048575
  store i32 %338, i32* %336, align 4
  %339 = load i32, i32* %16, align 4
  %340 = icmp ugt i32 %339, 1
  br i1 %340, label %341, label %351

341:                                              ; preds = %330
  %342 = load i32*, i32** %4, align 8
  %343 = load i32, i32* %8, align 4
  %344 = load i32, i32* %16, align 4
  %345 = sub i32 %343, %344
  %346 = add i32 %345, 1
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %342, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %349, 1048575
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %341, %330
  %352 = load i32, i32* %18, align 4
  %353 = load i32, i32* %16, align 4
  %354 = add i32 %352, %353
  store i32 %354, i32* %20, align 4
  %355 = load i32, i32* %20, align 4
  %356 = sub i32 %355, 1
  %357 = and i32 %356, 1023
  %358 = shl i32 %357, 20
  %359 = load i32*, i32** %4, align 8
  %360 = load i32, i32* %8, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %16, align 4
  %364 = zext i32 %363 to i64
  %365 = sub i64 0, %364
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %367, %358
  store i32 %368, i32* %366, align 4
  %369 = load i32, i32* %20, align 4
  %370 = icmp ugt i32 %369, 1024
  br i1 %370, label %371, label %397

371:                                              ; preds = %351
  %372 = load i32*, i32** %4, align 8
  %373 = load i32, i32* %8, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %16, align 4
  %377 = zext i32 %376 to i64
  %378 = sub i64 0, %377
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, 1073741824
  store i32 %381, i32* %379, align 4
  %382 = load i32, i32* %20, align 4
  %383 = sub i32 %382, 1
  %384 = lshr i32 %383, 10
  %385 = shl i32 %384, 20
  %386 = load i32*, i32** %4, align 8
  %387 = load i32, i32* %8, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %16, align 4
  %391 = zext i32 %390 to i64
  %392 = sub i64 0, %391
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = getelementptr inbounds i32, i32* %393, i64 1
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %395, %385
  store i32 %396, i32* %394, align 4
  br label %397

397:                                              ; preds = %371, %351
  %398 = load i32, i32* %20, align 4
  store i32 %398, i32* %16, align 4
  %399 = load i32, i32* %18, align 4
  %400 = load i32, i32* %8, align 4
  %401 = add i32 %400, %399
  store i32 %401, i32* %8, align 4
  br label %271, !llvm.loop !19

402:                                              ; preds = %327
  store i32 0, i32* %16, align 4
  %403 = load i32, i32* %15, align 4
  %404 = load i32, i32* %6, align 4
  %405 = icmp uge i32 %403, %404
  br i1 %405, label %406, label %428

406:                                              ; preds = %402
  store i32 0, i32* %21, align 4
  br label %407

407:                                              ; preds = %424, %406
  %408 = load i32, i32* %21, align 4
  %409 = load i32, i32* %18, align 4
  %410 = icmp ult i32 %408, %409
  br i1 %410, label %411, label %427

411:                                              ; preds = %407
  %412 = load i32, i32* %8, align 4
  %413 = load i32, i32* %21, align 4
  %414 = add i32 %412, %413
  store i32 %414, i32* %22, align 4
  %415 = load i32, i32* %22, align 4
  %416 = load i32*, i32** %9, align 8
  %417 = load i32*, i32** %4, align 8
  %418 = load i32, i32* %22, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %416, i64 %422
  store i32 %415, i32* %423, align 4
  br label %424

424:                                              ; preds = %411
  %425 = load i32, i32* %21, align 4
  %426 = add i32 %425, 1
  store i32 %426, i32* %21, align 4
  br label %407, !llvm.loop !20

427:                                              ; preds = %407
  br label %443

428:                                              ; preds = %402
  %429 = load i32, i32* %6, align 4
  %430 = load i32, i32* %15, align 4
  %431 = load i32, i32* %8, align 4
  %432 = load i32, i32* %18, align 4
  %433 = load i32, i32* %14, align 4
  %434 = load i32*, i32** %4, align 8
  %435 = load i32, i32* %6, align 4
  %436 = call i32 @SortGroup(i32 noundef %429, i32 noundef %430, i32 noundef %431, i32 noundef %432, i32 noundef %433, i32* noundef %434, i32 noundef 0, i32 noundef %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %442

438:                                              ; preds = %428
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* %18, align 4
  %441 = add i32 %439, %440
  store i32 %441, i32* %17, align 4
  br label %442

442:                                              ; preds = %438, %428
  br label %443

443:                                              ; preds = %442, %427
  %444 = load i32, i32* %18, align 4
  %445 = load i32, i32* %8, align 4
  %446 = add i32 %445, %444
  store i32 %446, i32* %8, align 4
  br label %271, !llvm.loop !19

447:                                              ; preds = %271
  %448 = load i32, i32* %17, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  br label %455

451:                                              ; preds = %447
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %15, align 4
  %454 = shl i32 %453, 1
  store i32 %454, i32* %15, align 4
  br label %270

455:                                              ; preds = %450
  store i32 0, i32* %8, align 4
  br label %456

456:                                              ; preds = %493, %455
  %457 = load i32, i32* %8, align 4
  %458 = load i32, i32* %6, align 4
  %459 = icmp ult i32 %457, %458
  br i1 %459, label %460, label %505

460:                                              ; preds = %456
  %461 = load i32*, i32** %4, align 8
  %462 = load i32, i32* %8, align 4
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = and i32 %465, 1073741823
  %467 = lshr i32 %466, 20
  store i32 %467, i32* %23, align 4
  %468 = load i32*, i32** %4, align 8
  %469 = load i32, i32* %8, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = and i32 %472, 1073741824
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %493

475:                                              ; preds = %460
  %476 = load i32*, i32** %4, align 8
  %477 = load i32, i32* %8, align 4
  %478 = add i32 %477, 1
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %476, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = lshr i32 %481, 20
  %483 = shl i32 %482, 10
  %484 = load i32, i32* %23, align 4
  %485 = add i32 %484, %483
  store i32 %485, i32* %23, align 4
  %486 = load i32*, i32** %4, align 8
  %487 = load i32, i32* %8, align 4
  %488 = add i32 %487, 1
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %486, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = and i32 %491, 1048575
  store i32 %492, i32* %490, align 4
  br label %493

493:                                              ; preds = %475, %460
  %494 = load i32*, i32** %4, align 8
  %495 = load i32, i32* %8, align 4
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = and i32 %498, 1048575
  store i32 %499, i32* %497, align 4
  %500 = load i32, i32* %23, align 4
  %501 = add i32 %500, 1
  store i32 %501, i32* %23, align 4
  %502 = load i32, i32* %23, align 4
  %503 = load i32, i32* %8, align 4
  %504 = add i32 %503, %502
  store i32 %504, i32* %8, align 4
  br label %456, !llvm.loop !21

505:                                              ; preds = %456
  %506 = load i32*, i32** %9, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 0
  %508 = load i32, i32* %507, align 4
  ret i32 %508
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
