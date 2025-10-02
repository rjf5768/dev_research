; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findopen.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = external dso_local global [19 x [19 x i8]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@mik = external dso_local global i32, align 4
@mjk = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findopen(i32 noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %17
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [19 x i8], [19 x i8]* %18, i64 0, i64 %20
  store i8 1, i8* %21, align 1
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %7
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %27
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x i8], [19 x i8]* %28, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @mik, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @mjk, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %374

66:                                               ; preds = %44
  br label %108

67:                                               ; preds = %40, %24
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %70
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [19 x i8], [19 x i8]* %71, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [19 x i8], [19 x i8]* %83, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @findopen(i32 noundef %91, i32 noundef %92, i32* noundef %93, i32* noundef %94, i32 noundef %95, i32 noundef %96, i32* noundef %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  br label %374

106:                                              ; preds = %100, %89
  br label %107

107:                                              ; preds = %106, %79, %67
  br label %108

108:                                              ; preds = %107, %66
  br label %109

109:                                              ; preds = %108, %7
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 18
  br i1 %111, label %112, label %197

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %115
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [19 x i8], [19 x i8]* %116, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* @mik, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @mjk, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %132
  store i32 1, i32* %8, align 4
  br label %374

154:                                              ; preds = %132
  br label %196

155:                                              ; preds = %128, %112
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %158
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [19 x i8], [19 x i8]* %159, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %195

167:                                              ; preds = %155
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %170
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [19 x i8], [19 x i8]* %171, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = icmp ne i8 %175, 0
  br i1 %176, label %195, label %177

177:                                              ; preds = %167
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %10, align 4
  %181 = load i32*, i32** %11, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32*, i32** %15, align 8
  %186 = call i32 @findopen(i32 noundef %179, i32 noundef %180, i32* noundef %181, i32* noundef %182, i32 noundef %183, i32 noundef %184, i32* noundef %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %177
  %189 = load i32*, i32** %15, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 1, i32* %8, align 4
  br label %374

194:                                              ; preds = %188, %177
  br label %195

195:                                              ; preds = %194, %167, %155
  br label %196

196:                                              ; preds = %195, %154
  br label %197

197:                                              ; preds = %196, %109
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %285

200:                                              ; preds = %197
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %202
  %204 = load i32, i32* %10, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [19 x i8], [19 x i8]* %203, i64 0, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %243

211:                                              ; preds = %200
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @mik, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %10, align 4
  %217 = sub nsw i32 %216, 1
  %218 = load i32, i32* @mjk, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %243

220:                                              ; preds = %215, %211
  %221 = load i32, i32* %9, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load i32, i32* %10, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load i32*, i32** %12, align 8
  %230 = load i32*, i32** %15, align 8
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %228, i32* %233, align 4
  %234 = load i32*, i32** %15, align 8
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load i32*, i32** %15, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %220
  store i32 1, i32* %8, align 4
  br label %374

242:                                              ; preds = %220
  br label %284

243:                                              ; preds = %215, %200
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %245
  %247 = load i32, i32* %10, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [19 x i8], [19 x i8]* %246, i64 0, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = load i32, i32* %13, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %283

255:                                              ; preds = %243
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %257
  %259 = load i32, i32* %10, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [19 x i8], [19 x i8]* %258, i64 0, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %283, label %265

265:                                              ; preds = %255
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %10, align 4
  %268 = sub nsw i32 %267, 1
  %269 = load i32*, i32** %11, align 8
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load i32*, i32** %15, align 8
  %274 = call i32 @findopen(i32 noundef %266, i32 noundef %268, i32* noundef %269, i32* noundef %270, i32 noundef %271, i32 noundef %272, i32* noundef %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %265
  %277 = load i32*, i32** %15, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %14, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  store i32 1, i32* %8, align 4
  br label %374

282:                                              ; preds = %276, %265
  br label %283

283:                                              ; preds = %282, %255, %243
  br label %284

284:                                              ; preds = %283, %242
  br label %285

285:                                              ; preds = %284, %197
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 18
  br i1 %287, label %288, label %373

288:                                              ; preds = %285
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %290
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [19 x i8], [19 x i8]* %291, i64 0, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %331

299:                                              ; preds = %288
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* @mik, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %308, label %303

303:                                              ; preds = %299
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  %306 = load i32, i32* @mjk, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %331

308:                                              ; preds = %303, %299
  %309 = load i32, i32* %9, align 4
  %310 = load i32*, i32** %11, align 8
  %311 = load i32*, i32** %15, align 8
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  store i32 %309, i32* %314, align 4
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  %317 = load i32*, i32** %12, align 8
  %318 = load i32*, i32** %15, align 8
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  store i32 %316, i32* %321, align 4
  %322 = load i32*, i32** %15, align 8
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 4
  %325 = load i32*, i32** %15, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %14, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %308
  store i32 1, i32* %8, align 4
  br label %374

330:                                              ; preds = %308
  br label %372

331:                                              ; preds = %303, %288
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %333
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [19 x i8], [19 x i8]* %334, i64 0, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = load i32, i32* %13, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %371

343:                                              ; preds = %331
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %345
  %347 = load i32, i32* %10, align 4
  %348 = add nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [19 x i8], [19 x i8]* %346, i64 0, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = icmp ne i8 %351, 0
  br i1 %352, label %371, label %353

353:                                              ; preds = %343
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %10, align 4
  %356 = add nsw i32 %355, 1
  %357 = load i32*, i32** %11, align 8
  %358 = load i32*, i32** %12, align 8
  %359 = load i32, i32* %13, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load i32*, i32** %15, align 8
  %362 = call i32 @findopen(i32 noundef %354, i32 noundef %356, i32* noundef %357, i32* noundef %358, i32 noundef %359, i32 noundef %360, i32* noundef %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %353
  %365 = load i32*, i32** %15, align 8
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %14, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  store i32 1, i32* %8, align 4
  br label %374

370:                                              ; preds = %364, %353
  br label %371

371:                                              ; preds = %370, %343, %331
  br label %372

372:                                              ; preds = %371, %330
  br label %373

373:                                              ; preds = %372, %285
  store i32 0, i32* %8, align 4
  br label %374

374:                                              ; preds = %373, %369, %329, %281, %241, %193, %153, %105, %65
  %375 = load i32, i32* %8, align 4
  ret i32 %375
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
