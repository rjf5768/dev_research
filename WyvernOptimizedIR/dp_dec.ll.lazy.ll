; ModuleID = './dp_dec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/dp_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @unpc_block(i32* noundef readonly %0, i32* noundef %1, i32 noundef %2, i16* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = sub i32 32, %5
  %9 = add i32 %6, -1
  %10 = shl i32 1, %9
  %11 = load i32, i32* %0, align 4
  store i32 %11, i32* %1, align 4
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = icmp sgt i32 %2, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %.not76 = icmp eq i32* %0, %1
  br i1 %.not76, label %24, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds i32, i32* %1, i64 1
  %18 = bitcast i32* %17 to i8*
  %19 = getelementptr inbounds i32, i32* %0, i64 1
  %20 = bitcast i32* %19 to i8*
  %21 = add nsw i32 %2, -1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %18, i8* nonnull align 4 %20, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %16, %15, %13
  br label %616

25:                                               ; preds = %7
  %26 = icmp eq i32 %4, 31
  br i1 %26, label %27, label %43

27:                                               ; preds = %25
  %28 = load i32, i32* %1, align 4
  br label %29

29:                                               ; preds = %40, %27
  %.036 = phi i32 [ 1, %27 ], [ %41, %40 ]
  %.029 = phi i32 [ %28, %27 ], [ %37, %40 ]
  %30 = icmp slt i32 %.036, %2
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = zext i32 %.036 to i64
  %33 = getelementptr inbounds i32, i32* %0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %.029
  %36 = shl i32 %35, %8
  %37 = ashr i32 %36, %8
  %38 = zext i32 %.036 to i64
  %39 = getelementptr inbounds i32, i32* %1, i64 %38
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %31
  %41 = add nuw nsw i32 %.036, 1
  br label %29, !llvm.loop !4

42:                                               ; preds = %29
  br label %616

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %58, %43
  %.137 = phi i32 [ 1, %43 ], [ %59, %58 ]
  %.not = icmp sgt i32 %.137, %4
  br i1 %.not, label %60, label %45

45:                                               ; preds = %44
  %46 = zext i32 %.137 to i64
  %47 = getelementptr inbounds i32, i32* %0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %.137, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %1, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %48, %52
  %54 = shl i32 %53, %8
  %55 = ashr i32 %54, %8
  %56 = zext i32 %.137 to i64
  %57 = getelementptr inbounds i32, i32* %1, i64 %56
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %45
  %59 = add nuw nsw i32 %.137, 1
  br label %44, !llvm.loop !6

60:                                               ; preds = %44
  %61 = add nsw i32 %4, 1
  %62 = icmp eq i32 %4, 4
  br i1 %62, label %63, label %218

63:                                               ; preds = %60
  %64 = load i16, i16* %3, align 2
  %65 = getelementptr inbounds i16, i16* %3, i64 1
  %66 = load i16, i16* %65, align 2
  %67 = getelementptr inbounds i16, i16* %3, i64 2
  %68 = load i16, i16* %67, align 2
  %69 = getelementptr inbounds i16, i16* %3, i64 3
  %70 = load i16, i16* %69, align 2
  br label %71

71:                                               ; preds = %212, %63
  %.238 = phi i32 [ %61, %63 ], [ %213, %212 ]
  %.025 = phi i16 [ %64, %63 ], [ %.328, %212 ]
  %.021 = phi i16 [ %66, %63 ], [ %.324, %212 ]
  %.017 = phi i16 [ %68, %63 ], [ %.320, %212 ]
  %.013 = phi i16 [ %70, %63 ], [ %.316, %212 ]
  %72 = icmp slt i32 %.238, %2
  br i1 %72, label %73, label %214

73:                                               ; preds = %71
  %74 = sub nsw i32 %.238, %61
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %1, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %.238 to i64
  %79 = getelementptr inbounds i32, i32* %1, i64 -1
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %77, %81
  %83 = getelementptr inbounds i32, i32* %80, i64 -1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %77, %84
  %86 = getelementptr inbounds i32, i32* %80, i64 -2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %77, %87
  %89 = getelementptr inbounds i32, i32* %80, i64 -3
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %77, %90
  %92 = sext i16 %.025 to i32
  %93 = mul nsw i32 %82, %92
  %94 = sext i16 %.021 to i32
  %95 = mul nsw i32 %85, %94
  %96 = add i32 %93, %95
  %97 = sext i16 %.017 to i32
  %98 = mul nsw i32 %88, %97
  %99 = add i32 %96, %98
  %100 = sext i16 %.013 to i32
  %101 = mul nsw i32 %91, %100
  %102 = add i32 %99, %101
  %103 = sub i32 %10, %102
  %104 = ashr i32 %103, %6
  %105 = sext i32 %.238 to i64
  %106 = getelementptr inbounds i32, i32* %0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = ashr i32 %107, 31
  %111 = or i32 %110, %109
  %112 = add nsw i32 %77, %104
  %113 = add nsw i32 %107, %112
  %114 = shl i32 %113, %8
  %115 = ashr i32 %114, %8
  %116 = sext i32 %.238 to i64
  %117 = getelementptr inbounds i32, i32* %1, i64 %116
  store i32 %115, i32* %117, align 4
  %118 = icmp sgt i32 %111, 0
  br i1 %118, label %119, label %162

119:                                              ; preds = %73
  %120 = icmp sgt i32 %91, 0
  %121 = zext i1 %120 to i32
  %122 = ashr i32 %91, 31
  %123 = or i32 %122, %121
  %124 = trunc i32 %123 to i16
  %125 = sub i16 %.013, %124
  %126 = mul nsw i32 %123, %91
  %127 = ashr i32 %126, %6
  %128 = sub nsw i32 %107, %127
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  br label %212

131:                                              ; preds = %119
  %132 = icmp sgt i32 %88, 0
  %133 = zext i1 %132 to i32
  %134 = ashr i32 %88, 31
  %135 = or i32 %134, %133
  %136 = trunc i32 %135 to i16
  %137 = sub i16 %.017, %136
  %138 = mul nsw i32 %135, %88
  %139 = ashr i32 %138, %6
  %.neg74 = mul i32 %139, -2
  %140 = add i32 %.neg74, %128
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %212

143:                                              ; preds = %131
  %144 = icmp sgt i32 %85, 0
  %145 = zext i1 %144 to i32
  %146 = ashr i32 %85, 31
  %147 = or i32 %146, %145
  %148 = trunc i32 %147 to i16
  %149 = sub i16 %.021, %148
  %150 = mul nsw i32 %147, %85
  %151 = ashr i32 %150, %6
  %.neg75 = mul i32 %151, -3
  %152 = add i32 %.neg75, %140
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  br label %212

155:                                              ; preds = %143
  %156 = icmp sgt i32 %82, 0
  %157 = zext i1 %156 to i32
  %158 = ashr i32 %82, 31
  %159 = or i32 %158, %157
  %160 = trunc i32 %159 to i16
  %161 = sub i16 %.025, %160
  br label %211

162:                                              ; preds = %73
  %163 = icmp slt i32 %111, 0
  br i1 %163, label %164, label %210

164:                                              ; preds = %162
  %165 = icmp sgt i32 %91, 0
  %166 = zext i1 %165 to i32
  %167 = ashr i32 %91, 31
  %168 = or i32 %167, %166
  %169 = trunc i32 %168 to i16
  %170 = add i16 %.013, %169
  %171 = mul i32 %168, %91
  %172 = sub i32 0, %171
  %173 = ashr i32 %172, %6
  %174 = sub nsw i32 %107, %173
  %175 = icmp sgt i32 %174, -1
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  br label %212

177:                                              ; preds = %164
  %178 = icmp sgt i32 %88, 0
  %179 = zext i1 %178 to i32
  %180 = ashr i32 %88, 31
  %181 = or i32 %180, %179
  %182 = trunc i32 %181 to i16
  %183 = add i16 %.017, %182
  %184 = mul i32 %181, %88
  %185 = sub i32 0, %184
  %186 = ashr i32 %185, %6
  %.neg72 = mul i32 %186, -2
  %187 = add i32 %.neg72, %174
  %188 = icmp sgt i32 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %212

190:                                              ; preds = %177
  %191 = icmp sgt i32 %85, 0
  %192 = zext i1 %191 to i32
  %193 = ashr i32 %85, 31
  %194 = or i32 %193, %192
  %195 = trunc i32 %194 to i16
  %196 = add i16 %.021, %195
  %197 = mul i32 %194, %85
  %198 = sub i32 0, %197
  %199 = ashr i32 %198, %6
  %.neg73 = mul i32 %199, -3
  %200 = add i32 %.neg73, %187
  %201 = icmp sgt i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %212

203:                                              ; preds = %190
  %204 = icmp sgt i32 %82, 0
  %205 = zext i1 %204 to i32
  %206 = ashr i32 %82, 31
  %207 = or i32 %206, %205
  %208 = trunc i32 %207 to i16
  %209 = add i16 %.025, %208
  br label %210

210:                                              ; preds = %203, %162
  %.126 = phi i16 [ %209, %203 ], [ %.025, %162 ]
  %.122 = phi i16 [ %196, %203 ], [ %.021, %162 ]
  %.118 = phi i16 [ %183, %203 ], [ %.017, %162 ]
  %.114 = phi i16 [ %170, %203 ], [ %.013, %162 ]
  br label %211

211:                                              ; preds = %210, %155
  %.227 = phi i16 [ %161, %155 ], [ %.126, %210 ]
  %.223 = phi i16 [ %149, %155 ], [ %.122, %210 ]
  %.219 = phi i16 [ %137, %155 ], [ %.118, %210 ]
  %.215 = phi i16 [ %125, %155 ], [ %.114, %210 ]
  br label %212

212:                                              ; preds = %211, %202, %189, %176, %154, %142, %130
  %.328 = phi i16 [ %.025, %130 ], [ %.025, %142 ], [ %.025, %154 ], [ %.227, %211 ], [ %.025, %176 ], [ %.025, %189 ], [ %.025, %202 ]
  %.324 = phi i16 [ %.021, %130 ], [ %.021, %142 ], [ %149, %154 ], [ %.223, %211 ], [ %.021, %176 ], [ %.021, %189 ], [ %196, %202 ]
  %.320 = phi i16 [ %.017, %130 ], [ %137, %142 ], [ %137, %154 ], [ %.219, %211 ], [ %.017, %176 ], [ %183, %189 ], [ %183, %202 ]
  %.316 = phi i16 [ %125, %130 ], [ %125, %142 ], [ %125, %154 ], [ %.215, %211 ], [ %170, %176 ], [ %170, %189 ], [ %170, %202 ]
  %213 = add nsw i32 %.238, 1
  br label %71, !llvm.loop !7

214:                                              ; preds = %71
  store i16 %.025, i16* %3, align 2
  %215 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %.021, i16* %215, align 2
  %216 = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %.017, i16* %216, align 2
  %217 = getelementptr inbounds i16, i16* %3, i64 3
  store i16 %.013, i16* %217, align 2
  br label %616

218:                                              ; preds = %60
  %219 = icmp eq i32 %4, 8
  br i1 %219, label %220, label %511

220:                                              ; preds = %218
  %221 = load i16, i16* %3, align 2
  %222 = getelementptr inbounds i16, i16* %3, i64 1
  %223 = load i16, i16* %222, align 2
  %224 = getelementptr inbounds i16, i16* %3, i64 2
  %225 = load i16, i16* %224, align 2
  %226 = getelementptr inbounds i16, i16* %3, i64 3
  %227 = load i16, i16* %226, align 2
  %228 = getelementptr inbounds i16, i16* %3, i64 4
  %229 = load i16, i16* %228, align 2
  %230 = getelementptr inbounds i16, i16* %3, i64 5
  %231 = load i16, i16* %230, align 2
  %232 = getelementptr inbounds i16, i16* %3, i64 6
  %233 = load i16, i16* %232, align 2
  %234 = getelementptr inbounds i16, i16* %3, i64 7
  %235 = load i16, i16* %234, align 2
  br label %236

236:                                              ; preds = %501, %220
  %.052 = phi i16 [ %221, %220 ], [ %.355, %501 ]
  %.048 = phi i16 [ %223, %220 ], [ %.351, %501 ]
  %.044 = phi i16 [ %225, %220 ], [ %.347, %501 ]
  %.040 = phi i16 [ %227, %220 ], [ %.343, %501 ]
  %.339 = phi i32 [ %61, %220 ], [ %502, %501 ]
  %.09 = phi i16 [ %229, %220 ], [ %.312, %501 ]
  %.05 = phi i16 [ %231, %220 ], [ %.38, %501 ]
  %.01 = phi i16 [ %233, %220 ], [ %.34, %501 ]
  %.0 = phi i16 [ %235, %220 ], [ %.3, %501 ]
  %237 = icmp slt i32 %.339, %2
  br i1 %237, label %238, label %503

238:                                              ; preds = %236
  %239 = sub nsw i32 %.339, %61
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %1, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %.339 to i64
  %244 = getelementptr inbounds i32, i32* %1, i64 -1
  %245 = getelementptr inbounds i32, i32* %244, i64 %243
  %246 = getelementptr inbounds i32, i32* %245, i64 -1
  %247 = load i32, i32* %245, align 4
  %248 = sub nsw i32 %242, %247
  %249 = getelementptr inbounds i32, i32* %246, i64 -1
  %250 = load i32, i32* %246, align 4
  %251 = sub nsw i32 %242, %250
  %252 = getelementptr inbounds i32, i32* %249, i64 -1
  %253 = load i32, i32* %249, align 4
  %254 = sub nsw i32 %242, %253
  %255 = getelementptr inbounds i32, i32* %252, i64 -1
  %256 = load i32, i32* %252, align 4
  %257 = sub nsw i32 %242, %256
  %258 = getelementptr inbounds i32, i32* %255, i64 -1
  %259 = load i32, i32* %255, align 4
  %260 = sub nsw i32 %242, %259
  %261 = getelementptr inbounds i32, i32* %258, i64 -1
  %262 = load i32, i32* %258, align 4
  %263 = sub nsw i32 %242, %262
  %264 = getelementptr inbounds i32, i32* %261, i64 -1
  %265 = load i32, i32* %261, align 4
  %266 = sub nsw i32 %242, %265
  %267 = load i32, i32* %264, align 4
  %268 = sub nsw i32 %242, %267
  %269 = sext i16 %.052 to i32
  %270 = mul nsw i32 %248, %269
  %271 = sext i16 %.048 to i32
  %272 = mul nsw i32 %251, %271
  %273 = add i32 %270, %272
  %274 = sext i16 %.044 to i32
  %275 = mul nsw i32 %254, %274
  %276 = add i32 %273, %275
  %277 = sext i16 %.040 to i32
  %278 = mul nsw i32 %257, %277
  %279 = add i32 %276, %278
  %280 = sext i16 %.09 to i32
  %281 = mul nsw i32 %260, %280
  %282 = add i32 %279, %281
  %283 = sext i16 %.05 to i32
  %284 = mul nsw i32 %263, %283
  %285 = add i32 %282, %284
  %286 = sext i16 %.01 to i32
  %287 = mul nsw i32 %266, %286
  %288 = add i32 %285, %287
  %289 = sext i16 %.0 to i32
  %290 = mul nsw i32 %268, %289
  %291 = add i32 %288, %290
  %292 = sub i32 %10, %291
  %293 = ashr i32 %292, %6
  %294 = sext i32 %.339 to i64
  %295 = getelementptr inbounds i32, i32* %0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = icmp sgt i32 %296, 0
  %298 = zext i1 %297 to i32
  %299 = ashr i32 %296, 31
  %300 = or i32 %299, %298
  %301 = add nsw i32 %242, %293
  %302 = add nsw i32 %296, %301
  %303 = shl i32 %302, %8
  %304 = ashr i32 %303, %8
  %305 = sext i32 %.339 to i64
  %306 = getelementptr inbounds i32, i32* %1, i64 %305
  store i32 %304, i32* %306, align 4
  %307 = icmp sgt i32 %300, 0
  br i1 %307, label %308, label %399

308:                                              ; preds = %238
  %309 = icmp sgt i32 %268, 0
  %310 = zext i1 %309 to i32
  %311 = ashr i32 %268, 31
  %312 = or i32 %311, %310
  %313 = trunc i32 %312 to i16
  %314 = sub i16 %.0, %313
  %315 = mul nsw i32 %312, %268
  %316 = ashr i32 %315, %6
  %317 = sub nsw i32 %296, %316
  %318 = icmp slt i32 %317, 1
  br i1 %318, label %319, label %320

319:                                              ; preds = %308
  br label %501

320:                                              ; preds = %308
  %321 = icmp sgt i32 %266, 0
  %322 = zext i1 %321 to i32
  %323 = ashr i32 %266, 31
  %324 = or i32 %323, %322
  %325 = trunc i32 %324 to i16
  %326 = sub i16 %.01, %325
  %327 = mul nsw i32 %324, %266
  %328 = ashr i32 %327, %6
  %.neg66 = mul i32 %328, -2
  %329 = add i32 %.neg66, %317
  %330 = icmp slt i32 %329, 1
  br i1 %330, label %331, label %332

331:                                              ; preds = %320
  br label %501

332:                                              ; preds = %320
  %333 = icmp sgt i32 %263, 0
  %334 = zext i1 %333 to i32
  %335 = ashr i32 %263, 31
  %336 = or i32 %335, %334
  %337 = trunc i32 %336 to i16
  %338 = sub i16 %.05, %337
  %339 = mul nsw i32 %336, %263
  %340 = ashr i32 %339, %6
  %.neg67 = mul i32 %340, -3
  %341 = add i32 %.neg67, %329
  %342 = icmp slt i32 %341, 1
  br i1 %342, label %343, label %344

343:                                              ; preds = %332
  br label %501

344:                                              ; preds = %332
  %345 = icmp sgt i32 %260, 0
  %346 = zext i1 %345 to i32
  %347 = ashr i32 %260, 31
  %348 = or i32 %347, %346
  %349 = trunc i32 %348 to i16
  %350 = sub i16 %.09, %349
  %351 = mul nsw i32 %348, %260
  %352 = ashr i32 %351, %6
  %.neg68 = mul i32 %352, -4
  %353 = add i32 %.neg68, %341
  %354 = icmp slt i32 %353, 1
  br i1 %354, label %355, label %356

355:                                              ; preds = %344
  br label %501

356:                                              ; preds = %344
  %357 = icmp sgt i32 %257, 0
  %358 = zext i1 %357 to i32
  %359 = ashr i32 %257, 31
  %360 = or i32 %359, %358
  %361 = trunc i32 %360 to i16
  %362 = sub i16 %.040, %361
  %363 = mul nsw i32 %360, %257
  %364 = ashr i32 %363, %6
  %.neg69 = mul i32 %364, -5
  %365 = add i32 %.neg69, %353
  %366 = icmp slt i32 %365, 1
  br i1 %366, label %367, label %368

367:                                              ; preds = %356
  br label %501

368:                                              ; preds = %356
  %369 = icmp sgt i32 %254, 0
  %370 = zext i1 %369 to i32
  %371 = ashr i32 %254, 31
  %372 = or i32 %371, %370
  %373 = trunc i32 %372 to i16
  %374 = sub i16 %.044, %373
  %375 = mul nsw i32 %372, %254
  %376 = ashr i32 %375, %6
  %.neg70 = mul i32 %376, -6
  %377 = add i32 %.neg70, %365
  %378 = icmp slt i32 %377, 1
  br i1 %378, label %379, label %380

379:                                              ; preds = %368
  br label %501

380:                                              ; preds = %368
  %381 = icmp sgt i32 %251, 0
  %382 = zext i1 %381 to i32
  %383 = ashr i32 %251, 31
  %384 = or i32 %383, %382
  %385 = trunc i32 %384 to i16
  %386 = sub i16 %.048, %385
  %387 = mul nsw i32 %384, %251
  %388 = ashr i32 %387, %6
  %.neg71 = mul i32 %388, -7
  %389 = add i32 %.neg71, %377
  %390 = icmp slt i32 %389, 1
  br i1 %390, label %391, label %392

391:                                              ; preds = %380
  br label %501

392:                                              ; preds = %380
  %393 = icmp sgt i32 %248, 0
  %394 = zext i1 %393 to i32
  %395 = ashr i32 %248, 31
  %396 = or i32 %395, %394
  %397 = trunc i32 %396 to i16
  %398 = sub i16 %.052, %397
  br label %500

399:                                              ; preds = %238
  %400 = icmp slt i32 %300, 0
  br i1 %400, label %401, label %499

401:                                              ; preds = %399
  %402 = icmp sgt i32 %268, 0
  %403 = zext i1 %402 to i32
  %404 = ashr i32 %268, 31
  %405 = or i32 %404, %403
  %406 = trunc i32 %405 to i16
  %407 = add i16 %.0, %406
  %408 = mul i32 %405, %268
  %409 = sub i32 0, %408
  %410 = ashr i32 %409, %6
  %411 = sub nsw i32 %296, %410
  %412 = icmp sgt i32 %411, -1
  br i1 %412, label %413, label %414

413:                                              ; preds = %401
  br label %501

414:                                              ; preds = %401
  %415 = icmp sgt i32 %266, 0
  %416 = zext i1 %415 to i32
  %417 = ashr i32 %266, 31
  %418 = or i32 %417, %416
  %419 = trunc i32 %418 to i16
  %420 = add i16 %.01, %419
  %421 = mul i32 %418, %266
  %422 = sub i32 0, %421
  %423 = ashr i32 %422, %6
  %.neg60 = mul i32 %423, -2
  %424 = add i32 %.neg60, %411
  %425 = icmp sgt i32 %424, -1
  br i1 %425, label %426, label %427

426:                                              ; preds = %414
  br label %501

427:                                              ; preds = %414
  %428 = icmp sgt i32 %263, 0
  %429 = zext i1 %428 to i32
  %430 = ashr i32 %263, 31
  %431 = or i32 %430, %429
  %432 = trunc i32 %431 to i16
  %433 = add i16 %.05, %432
  %434 = mul i32 %431, %263
  %435 = sub i32 0, %434
  %436 = ashr i32 %435, %6
  %.neg61 = mul i32 %436, -3
  %437 = add i32 %.neg61, %424
  %438 = icmp sgt i32 %437, -1
  br i1 %438, label %439, label %440

439:                                              ; preds = %427
  br label %501

440:                                              ; preds = %427
  %441 = icmp sgt i32 %260, 0
  %442 = zext i1 %441 to i32
  %443 = ashr i32 %260, 31
  %444 = or i32 %443, %442
  %445 = trunc i32 %444 to i16
  %446 = add i16 %.09, %445
  %447 = mul i32 %444, %260
  %448 = sub i32 0, %447
  %449 = ashr i32 %448, %6
  %.neg62 = mul i32 %449, -4
  %450 = add i32 %.neg62, %437
  %451 = icmp sgt i32 %450, -1
  br i1 %451, label %452, label %453

452:                                              ; preds = %440
  br label %501

453:                                              ; preds = %440
  %454 = icmp sgt i32 %257, 0
  %455 = zext i1 %454 to i32
  %456 = ashr i32 %257, 31
  %457 = or i32 %456, %455
  %458 = trunc i32 %457 to i16
  %459 = add i16 %.040, %458
  %460 = mul i32 %457, %257
  %461 = sub i32 0, %460
  %462 = ashr i32 %461, %6
  %.neg63 = mul i32 %462, -5
  %463 = add i32 %.neg63, %450
  %464 = icmp sgt i32 %463, -1
  br i1 %464, label %465, label %466

465:                                              ; preds = %453
  br label %501

466:                                              ; preds = %453
  %467 = icmp sgt i32 %254, 0
  %468 = zext i1 %467 to i32
  %469 = ashr i32 %254, 31
  %470 = or i32 %469, %468
  %471 = trunc i32 %470 to i16
  %472 = add i16 %.044, %471
  %473 = mul i32 %470, %254
  %474 = sub i32 0, %473
  %475 = ashr i32 %474, %6
  %.neg64 = mul i32 %475, -6
  %476 = add i32 %.neg64, %463
  %477 = icmp sgt i32 %476, -1
  br i1 %477, label %478, label %479

478:                                              ; preds = %466
  br label %501

479:                                              ; preds = %466
  %480 = icmp sgt i32 %251, 0
  %481 = zext i1 %480 to i32
  %482 = ashr i32 %251, 31
  %483 = or i32 %482, %481
  %484 = trunc i32 %483 to i16
  %485 = add i16 %.048, %484
  %486 = mul i32 %483, %251
  %487 = sub i32 0, %486
  %488 = ashr i32 %487, %6
  %.neg65 = mul i32 %488, -7
  %489 = add i32 %.neg65, %476
  %490 = icmp sgt i32 %489, -1
  br i1 %490, label %491, label %492

491:                                              ; preds = %479
  br label %501

492:                                              ; preds = %479
  %493 = icmp sgt i32 %248, 0
  %494 = zext i1 %493 to i32
  %495 = ashr i32 %248, 31
  %496 = or i32 %495, %494
  %497 = trunc i32 %496 to i16
  %498 = add i16 %.052, %497
  br label %499

499:                                              ; preds = %492, %399
  %.153 = phi i16 [ %498, %492 ], [ %.052, %399 ]
  %.149 = phi i16 [ %485, %492 ], [ %.048, %399 ]
  %.145 = phi i16 [ %472, %492 ], [ %.044, %399 ]
  %.141 = phi i16 [ %459, %492 ], [ %.040, %399 ]
  %.110 = phi i16 [ %446, %492 ], [ %.09, %399 ]
  %.16 = phi i16 [ %433, %492 ], [ %.05, %399 ]
  %.12 = phi i16 [ %420, %492 ], [ %.01, %399 ]
  %.1 = phi i16 [ %407, %492 ], [ %.0, %399 ]
  br label %500

500:                                              ; preds = %499, %392
  %.254 = phi i16 [ %398, %392 ], [ %.153, %499 ]
  %.250 = phi i16 [ %386, %392 ], [ %.149, %499 ]
  %.246 = phi i16 [ %374, %392 ], [ %.145, %499 ]
  %.242 = phi i16 [ %362, %392 ], [ %.141, %499 ]
  %.211 = phi i16 [ %350, %392 ], [ %.110, %499 ]
  %.27 = phi i16 [ %338, %392 ], [ %.16, %499 ]
  %.23 = phi i16 [ %326, %392 ], [ %.12, %499 ]
  %.2 = phi i16 [ %314, %392 ], [ %.1, %499 ]
  br label %501

501:                                              ; preds = %500, %491, %478, %465, %452, %439, %426, %413, %391, %379, %367, %355, %343, %331, %319
  %.355 = phi i16 [ %.052, %319 ], [ %.052, %331 ], [ %.052, %343 ], [ %.052, %355 ], [ %.052, %367 ], [ %.052, %379 ], [ %.052, %391 ], [ %.254, %500 ], [ %.052, %413 ], [ %.052, %426 ], [ %.052, %439 ], [ %.052, %452 ], [ %.052, %465 ], [ %.052, %478 ], [ %.052, %491 ]
  %.351 = phi i16 [ %.048, %319 ], [ %.048, %331 ], [ %.048, %343 ], [ %.048, %355 ], [ %.048, %367 ], [ %.048, %379 ], [ %386, %391 ], [ %.250, %500 ], [ %.048, %413 ], [ %.048, %426 ], [ %.048, %439 ], [ %.048, %452 ], [ %.048, %465 ], [ %.048, %478 ], [ %485, %491 ]
  %.347 = phi i16 [ %.044, %319 ], [ %.044, %331 ], [ %.044, %343 ], [ %.044, %355 ], [ %.044, %367 ], [ %374, %379 ], [ %374, %391 ], [ %.246, %500 ], [ %.044, %413 ], [ %.044, %426 ], [ %.044, %439 ], [ %.044, %452 ], [ %.044, %465 ], [ %472, %478 ], [ %472, %491 ]
  %.343 = phi i16 [ %.040, %319 ], [ %.040, %331 ], [ %.040, %343 ], [ %.040, %355 ], [ %362, %367 ], [ %362, %379 ], [ %362, %391 ], [ %.242, %500 ], [ %.040, %413 ], [ %.040, %426 ], [ %.040, %439 ], [ %.040, %452 ], [ %459, %465 ], [ %459, %478 ], [ %459, %491 ]
  %.312 = phi i16 [ %.09, %319 ], [ %.09, %331 ], [ %.09, %343 ], [ %350, %355 ], [ %350, %367 ], [ %350, %379 ], [ %350, %391 ], [ %.211, %500 ], [ %.09, %413 ], [ %.09, %426 ], [ %.09, %439 ], [ %446, %452 ], [ %446, %465 ], [ %446, %478 ], [ %446, %491 ]
  %.38 = phi i16 [ %.05, %319 ], [ %.05, %331 ], [ %338, %343 ], [ %338, %355 ], [ %338, %367 ], [ %338, %379 ], [ %338, %391 ], [ %.27, %500 ], [ %.05, %413 ], [ %.05, %426 ], [ %433, %439 ], [ %433, %452 ], [ %433, %465 ], [ %433, %478 ], [ %433, %491 ]
  %.34 = phi i16 [ %.01, %319 ], [ %326, %331 ], [ %326, %343 ], [ %326, %355 ], [ %326, %367 ], [ %326, %379 ], [ %326, %391 ], [ %.23, %500 ], [ %.01, %413 ], [ %420, %426 ], [ %420, %439 ], [ %420, %452 ], [ %420, %465 ], [ %420, %478 ], [ %420, %491 ]
  %.3 = phi i16 [ %314, %319 ], [ %314, %331 ], [ %314, %343 ], [ %314, %355 ], [ %314, %367 ], [ %314, %379 ], [ %314, %391 ], [ %.2, %500 ], [ %407, %413 ], [ %407, %426 ], [ %407, %439 ], [ %407, %452 ], [ %407, %465 ], [ %407, %478 ], [ %407, %491 ]
  %502 = add nsw i32 %.339, 1
  br label %236, !llvm.loop !8

503:                                              ; preds = %236
  store i16 %.052, i16* %3, align 2
  %504 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %.048, i16* %504, align 2
  %505 = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %.044, i16* %505, align 2
  %506 = getelementptr inbounds i16, i16* %3, i64 3
  store i16 %.040, i16* %506, align 2
  %507 = getelementptr inbounds i16, i16* %3, i64 4
  store i16 %.09, i16* %507, align 2
  %508 = getelementptr inbounds i16, i16* %3, i64 5
  store i16 %.05, i16* %508, align 2
  %509 = getelementptr inbounds i16, i16* %3, i64 6
  store i16 %.01, i16* %509, align 2
  %510 = getelementptr inbounds i16, i16* %3, i64 7
  store i16 %.0, i16* %510, align 2
  br label %615

511:                                              ; preds = %218
  br label %512

512:                                              ; preds = %612, %511
  %.4 = phi i32 [ %61, %511 ], [ %613, %612 ]
  %513 = icmp slt i32 %.4, %2
  br i1 %513, label %514, label %614

514:                                              ; preds = %512
  %515 = sext i32 %.4 to i64
  %516 = getelementptr inbounds i32, i32* %1, i64 -1
  %517 = getelementptr inbounds i32, i32* %516, i64 %515
  %518 = sub nsw i32 %.4, %61
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %1, i64 %519
  %521 = load i32, i32* %520, align 4
  br label %522

522:                                              ; preds = %525, %514
  %.033 = phi i32 [ 0, %514 ], [ %537, %525 ]
  %.032 = phi i32 [ 0, %514 ], [ %536, %525 ]
  %523 = icmp slt i32 %.033, %4
  br i1 %523, label %524, label %538

524:                                              ; preds = %522
  br label %525

525:                                              ; preds = %524
  %526 = sub nsw i32 0, %.033
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %517, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = sub nsw i32 %529, %521
  %531 = zext i32 %.033 to i64
  %532 = getelementptr inbounds i16, i16* %3, i64 %531
  %533 = load i16, i16* %532, align 2
  %534 = sext i16 %533 to i32
  %535 = mul nsw i32 %530, %534
  %536 = add nsw i32 %.032, %535
  %537 = add nuw nsw i32 %.033, 1
  br label %522, !llvm.loop !9

538:                                              ; preds = %522
  %539 = sext i32 %.4 to i64
  %540 = getelementptr inbounds i32, i32* %0, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = icmp sgt i32 %541, 0
  %543 = zext i1 %542 to i32
  %544 = ashr i32 %541, 31
  %545 = or i32 %544, %543
  %546 = add nsw i32 %.032, %10
  %547 = ashr i32 %546, %6
  %548 = add nsw i32 %521, %547
  %549 = add nsw i32 %541, %548
  %550 = shl i32 %549, %8
  %551 = ashr i32 %550, %8
  %552 = sext i32 %.4 to i64
  %553 = getelementptr inbounds i32, i32* %1, i64 %552
  store i32 %551, i32* %553, align 4
  %554 = icmp sgt i32 %545, 0
  br i1 %554, label %555, label %581

555:                                              ; preds = %538
  br label %556

556:                                              ; preds = %579, %555
  %.134.in = phi i32 [ %4, %555 ], [ %.134, %579 ]
  %.030 = phi i32 [ %541, %555 ], [ %575, %579 ]
  %.134 = add nsw i32 %.134.in, -1
  %557 = icmp sgt i32 %.134.in, 0
  br i1 %557, label %558, label %.loopexit

558:                                              ; preds = %556
  %559 = sub i32 1, %.134.in
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %517, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = sub nsw i32 %521, %562
  %564 = icmp sgt i32 %563, 0
  %565 = zext i1 %564 to i32
  %566 = ashr i32 %563, 31
  %567 = or i32 %566, %565
  %568 = sext i32 %.134 to i64
  %569 = getelementptr inbounds i16, i16* %3, i64 %568
  %570 = load i16, i16* %569, align 2
  %571 = trunc i32 %567 to i16
  %572 = sub i16 %570, %571
  store i16 %572, i16* %569, align 2
  %.neg58 = sub i32 %.134, %4
  %573 = mul nsw i32 %567, %563
  %574 = ashr i32 %573, %6
  %.neg59 = mul i32 %.neg58, %574
  %575 = add i32 %.neg59, %.030
  %576 = icmp slt i32 %575, 1
  br i1 %576, label %577, label %578

577:                                              ; preds = %558
  br label %580

578:                                              ; preds = %558
  br label %579

579:                                              ; preds = %578
  br label %556, !llvm.loop !10

.loopexit:                                        ; preds = %556
  br label %580

580:                                              ; preds = %.loopexit, %577
  br label %611

581:                                              ; preds = %538
  %582 = icmp slt i32 %545, 0
  br i1 %582, label %583, label %610

583:                                              ; preds = %581
  br label %584

584:                                              ; preds = %608, %583
  %.235.in = phi i32 [ %4, %583 ], [ %.235, %608 ]
  %.131 = phi i32 [ %541, %583 ], [ %604, %608 ]
  %.235 = add nsw i32 %.235.in, -1
  %585 = icmp sgt i32 %.235.in, 0
  br i1 %585, label %586, label %.loopexit56

586:                                              ; preds = %584
  %587 = sub i32 1, %.235.in
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %517, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = sub nsw i32 %521, %590
  %592 = icmp sgt i32 %591, 0
  %593 = zext i1 %592 to i32
  %594 = ashr i32 %591, 31
  %595 = or i32 %594, %593
  %596 = sext i32 %.235 to i64
  %597 = getelementptr inbounds i16, i16* %3, i64 %596
  %598 = load i16, i16* %597, align 2
  %599 = trunc i32 %595 to i16
  %600 = add i16 %598, %599
  store i16 %600, i16* %597, align 2
  %.neg = sub i32 %.235, %4
  %601 = mul i32 %595, %591
  %602 = sub i32 0, %601
  %603 = ashr i32 %602, %6
  %.neg57 = mul i32 %.neg, %603
  %604 = add i32 %.neg57, %.131
  %605 = icmp sgt i32 %604, -1
  br i1 %605, label %606, label %607

606:                                              ; preds = %586
  br label %609

607:                                              ; preds = %586
  br label %608

608:                                              ; preds = %607
  br label %584, !llvm.loop !11

.loopexit56:                                      ; preds = %584
  br label %609

609:                                              ; preds = %.loopexit56, %606
  br label %610

610:                                              ; preds = %609, %581
  br label %611

611:                                              ; preds = %610, %580
  br label %612

612:                                              ; preds = %611
  %613 = add nsw i32 %.4, 1
  br label %512, !llvm.loop !12

614:                                              ; preds = %512
  br label %615

615:                                              ; preds = %614, %503
  br label %616

616:                                              ; preds = %615, %214, %42, %24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }

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
