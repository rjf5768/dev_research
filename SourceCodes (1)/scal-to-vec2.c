; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @vlng() #0 {
  ret i64 42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vint() #0 {
  ret i32 43
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @vsrt() #0 {
  ret i16 42
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @vchr() #0 {
  ret i8 42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca <16 x i8>, align 16
  %7 = alloca <16 x i8>, align 16
  %8 = alloca <8 x i16>, align 16
  %9 = alloca <8 x i16>, align 16
  %10 = alloca <4 x i32>, align 16
  %11 = alloca <4 x i32>, align 16
  %12 = alloca <2 x i64>, align 16
  %13 = alloca <2 x i64>, align 16
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = trunc i32 %24 to i8
  %26 = insertelement <16 x i8> undef, i8 %25, i32 0
  %27 = insertelement <16 x i8> %26, i8 1, i32 1
  %28 = insertelement <16 x i8> %27, i8 2, i32 2
  %29 = insertelement <16 x i8> %28, i8 3, i32 3
  %30 = insertelement <16 x i8> %29, i8 4, i32 4
  %31 = insertelement <16 x i8> %30, i8 5, i32 5
  %32 = insertelement <16 x i8> %31, i8 6, i32 6
  %33 = insertelement <16 x i8> %32, i8 7, i32 7
  %34 = load i32, i32* %4, align 4
  %35 = trunc i32 %34 to i8
  %36 = insertelement <16 x i8> %33, i8 %35, i32 8
  %37 = insertelement <16 x i8> %36, i8 1, i32 9
  %38 = insertelement <16 x i8> %37, i8 2, i32 10
  %39 = insertelement <16 x i8> %38, i8 3, i32 11
  %40 = insertelement <16 x i8> %39, i8 4, i32 12
  %41 = insertelement <16 x i8> %40, i8 5, i32 13
  %42 = insertelement <16 x i8> %41, i8 6, i32 14
  %43 = insertelement <16 x i8> %42, i8 7, i32 15
  store <16 x i8> %43, <16 x i8>* %6, align 16
  %44 = load i32, i32* %4, align 4
  %45 = trunc i32 %44 to i16
  %46 = insertelement <8 x i16> undef, i16 %45, i32 0
  %47 = insertelement <8 x i16> %46, i16 1, i32 1
  %48 = insertelement <8 x i16> %47, i16 2, i32 2
  %49 = insertelement <8 x i16> %48, i16 3, i32 3
  %50 = insertelement <8 x i16> %49, i16 4, i32 4
  %51 = insertelement <8 x i16> %50, i16 5, i32 5
  %52 = insertelement <8 x i16> %51, i16 6, i32 6
  %53 = insertelement <8 x i16> %52, i16 7, i32 7
  store <8 x i16> %53, <8 x i16>* %8, align 16
  %54 = load i32, i32* %4, align 4
  %55 = insertelement <4 x i32> undef, i32 %54, i32 0
  %56 = insertelement <4 x i32> %55, i32 1, i32 1
  %57 = insertelement <4 x i32> %56, i32 2, i32 2
  %58 = insertelement <4 x i32> %57, i32 3, i32 3
  store <4 x i32> %58, <4 x i32>* %10, align 16
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = insertelement <2 x i64> undef, i64 %60, i32 0
  %62 = insertelement <2 x i64> %61, i64 1, i32 1
  store <2 x i64> %62, <2 x i64>* %12, align 16
  %63 = call signext i8 @vchr()
  %64 = insertelement <16 x i8> poison, i8 %63, i32 0
  %65 = shufflevector <16 x i8> %64, <16 x i8> poison, <16 x i32> zeroinitializer
  %66 = load <16 x i8>, <16 x i8>* %6, align 16
  %67 = add <16 x i8> %65, %66
  store <16 x i8> %67, <16 x i8>* %7, align 16
  br label %68

68:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 16
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = bitcast <16 x i8>* %7 to i8*
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call signext i8 @vchr()
  %80 = sext i8 %79 to i32
  %81 = bitcast <16 x i8>* %6 to i8*
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = add nsw i32 %80, %86
  %88 = icmp ne i32 %78, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  call void @abort() #2
  unreachable

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %69, !llvm.loop !4

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94
  %96 = call signext i16 @vsrt()
  %97 = insertelement <8 x i16> poison, i16 %96, i32 0
  %98 = shufflevector <8 x i16> %97, <8 x i16> poison, <8 x i32> zeroinitializer
  %99 = load <8 x i16>, <8 x i16>* %8, align 16
  %100 = add <8 x i16> %98, %99
  store <8 x i16> %100, <8 x i16>* %9, align 16
  br label %101

101:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  br label %102

102:                                              ; preds = %124, %101
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = bitcast <8 x i16>* %9 to i16*
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %106, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i32
  %112 = call signext i16 @vsrt()
  %113 = sext i16 %112 to i32
  %114 = bitcast <8 x i16>* %8 to i16*
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i16, i16* %114, i64 %116
  %118 = load i16, i16* %117, align 2
  %119 = sext i16 %118 to i32
  %120 = add nsw i32 %113, %119
  %121 = icmp ne i32 %111, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  call void @abort() #2
  unreachable

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %102, !llvm.loop !6

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127
  %129 = call signext i8 @vchr()
  %130 = sext i8 %129 to i16
  %131 = insertelement <8 x i16> poison, i16 %130, i32 0
  %132 = shufflevector <8 x i16> %131, <8 x i16> poison, <8 x i32> zeroinitializer
  %133 = load <8 x i16>, <8 x i16>* %8, align 16
  %134 = add <8 x i16> %132, %133
  store <8 x i16> %134, <8 x i16>* %9, align 16
  br label %135

135:                                              ; preds = %128
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %158, %135
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %161

139:                                              ; preds = %136
  %140 = bitcast <8 x i16>* %9 to i16*
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i16, i16* %140, i64 %142
  %144 = load i16, i16* %143, align 2
  %145 = sext i16 %144 to i32
  %146 = call signext i8 @vchr()
  %147 = sext i8 %146 to i32
  %148 = bitcast <8 x i16>* %8 to i16*
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i16, i16* %148, i64 %150
  %152 = load i16, i16* %151, align 2
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %147, %153
  %155 = icmp ne i32 %145, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %139
  call void @abort() #2
  unreachable

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %136, !llvm.loop !7

161:                                              ; preds = %136
  br label %162

162:                                              ; preds = %161
  %163 = call i32 @vint()
  %164 = insertelement <4 x i32> poison, i32 %163, i32 0
  %165 = shufflevector <4 x i32> %164, <4 x i32> poison, <4 x i32> zeroinitializer
  %166 = load <4 x i32>, <4 x i32>* %10, align 16
  %167 = mul <4 x i32> %165, %166
  store <4 x i32> %167, <4 x i32>* %11, align 16
  br label %168

168:                                              ; preds = %162
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %188, %168
  %170 = load i32, i32* %17, align 4
  %171 = icmp slt i32 %170, 4
  br i1 %171, label %172, label %191

172:                                              ; preds = %169
  %173 = bitcast <4 x i32>* %11 to i32*
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @vint()
  %179 = bitcast <4 x i32>* %10 to i32*
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %178, %183
  %185 = icmp ne i32 %177, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %172
  call void @abort() #2
  unreachable

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %169, !llvm.loop !8

191:                                              ; preds = %169
  br label %192

192:                                              ; preds = %191
  %193 = call signext i16 @vsrt()
  %194 = sext i16 %193 to i32
  %195 = insertelement <4 x i32> poison, i32 %194, i32 0
  %196 = shufflevector <4 x i32> %195, <4 x i32> poison, <4 x i32> zeroinitializer
  %197 = load <4 x i32>, <4 x i32>* %10, align 16
  %198 = mul <4 x i32> %196, %197
  store <4 x i32> %198, <4 x i32>* %11, align 16
  br label %199

199:                                              ; preds = %192
  store i32 0, i32* %18, align 4
  br label %200

200:                                              ; preds = %220, %199
  %201 = load i32, i32* %18, align 4
  %202 = icmp slt i32 %201, 4
  br i1 %202, label %203, label %223

203:                                              ; preds = %200
  %204 = bitcast <4 x i32>* %11 to i32*
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call signext i16 @vsrt()
  %210 = sext i16 %209 to i32
  %211 = bitcast <4 x i32>* %10 to i32*
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %210, %215
  %217 = icmp ne i32 %208, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %203
  call void @abort() #2
  unreachable

219:                                              ; preds = %203
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %18, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %18, align 4
  br label %200, !llvm.loop !9

223:                                              ; preds = %200
  br label %224

224:                                              ; preds = %223
  %225 = call signext i8 @vchr()
  %226 = sext i8 %225 to i32
  %227 = insertelement <4 x i32> poison, i32 %226, i32 0
  %228 = shufflevector <4 x i32> %227, <4 x i32> poison, <4 x i32> zeroinitializer
  %229 = load <4 x i32>, <4 x i32>* %10, align 16
  %230 = mul <4 x i32> %228, %229
  store <4 x i32> %230, <4 x i32>* %11, align 16
  br label %231

231:                                              ; preds = %224
  store i32 0, i32* %19, align 4
  br label %232

232:                                              ; preds = %252, %231
  %233 = load i32, i32* %19, align 4
  %234 = icmp slt i32 %233, 4
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  %236 = bitcast <4 x i32>* %11 to i32*
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call signext i8 @vchr()
  %242 = sext i8 %241 to i32
  %243 = bitcast <4 x i32>* %10 to i32*
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %242, %247
  %249 = icmp ne i32 %240, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %235
  call void @abort() #2
  unreachable

251:                                              ; preds = %235
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %19, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %19, align 4
  br label %232, !llvm.loop !10

255:                                              ; preds = %232
  br label %256

256:                                              ; preds = %255
  %257 = call i64 @vlng()
  %258 = insertelement <2 x i64> poison, i64 %257, i32 0
  %259 = shufflevector <2 x i64> %258, <2 x i64> poison, <2 x i32> zeroinitializer
  %260 = load <2 x i64>, <2 x i64>* %12, align 16
  %261 = mul <2 x i64> %259, %260
  store <2 x i64> %261, <2 x i64>* %13, align 16
  br label %262

262:                                              ; preds = %256
  store i32 0, i32* %20, align 4
  br label %263

263:                                              ; preds = %282, %262
  %264 = load i32, i32* %20, align 4
  %265 = icmp slt i32 %264, 2
  br i1 %265, label %266, label %285

266:                                              ; preds = %263
  %267 = bitcast <2 x i64>* %13 to i64*
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %267, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @vlng()
  %273 = bitcast <2 x i64>* %12 to i64*
  %274 = load i32, i32* %20, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = mul nsw i64 %272, %277
  %279 = icmp ne i64 %271, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %266
  call void @abort() #2
  unreachable

281:                                              ; preds = %266
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %20, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %20, align 4
  br label %263, !llvm.loop !11

285:                                              ; preds = %263
  br label %286

286:                                              ; preds = %285
  %287 = call i32 @vint()
  %288 = sext i32 %287 to i64
  %289 = insertelement <2 x i64> poison, i64 %288, i32 0
  %290 = shufflevector <2 x i64> %289, <2 x i64> poison, <2 x i32> zeroinitializer
  %291 = load <2 x i64>, <2 x i64>* %12, align 16
  %292 = mul <2 x i64> %290, %291
  store <2 x i64> %292, <2 x i64>* %13, align 16
  br label %293

293:                                              ; preds = %286
  store i32 0, i32* %21, align 4
  br label %294

294:                                              ; preds = %314, %293
  %295 = load i32, i32* %21, align 4
  %296 = icmp slt i32 %295, 2
  br i1 %296, label %297, label %317

297:                                              ; preds = %294
  %298 = bitcast <2 x i64>* %13 to i64*
  %299 = load i32, i32* %21, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @vint()
  %304 = sext i32 %303 to i64
  %305 = bitcast <2 x i64>* %12 to i64*
  %306 = load i32, i32* %21, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %305, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = mul nsw i64 %304, %309
  %311 = icmp ne i64 %302, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %297
  call void @abort() #2
  unreachable

313:                                              ; preds = %297
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %21, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %21, align 4
  br label %294, !llvm.loop !12

317:                                              ; preds = %294
  br label %318

318:                                              ; preds = %317
  %319 = call signext i16 @vsrt()
  %320 = sext i16 %319 to i64
  %321 = insertelement <2 x i64> poison, i64 %320, i32 0
  %322 = shufflevector <2 x i64> %321, <2 x i64> poison, <2 x i32> zeroinitializer
  %323 = load <2 x i64>, <2 x i64>* %12, align 16
  %324 = mul <2 x i64> %322, %323
  store <2 x i64> %324, <2 x i64>* %13, align 16
  br label %325

325:                                              ; preds = %318
  store i32 0, i32* %22, align 4
  br label %326

326:                                              ; preds = %346, %325
  %327 = load i32, i32* %22, align 4
  %328 = icmp slt i32 %327, 2
  br i1 %328, label %329, label %349

329:                                              ; preds = %326
  %330 = bitcast <2 x i64>* %13 to i64*
  %331 = load i32, i32* %22, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = call signext i16 @vsrt()
  %336 = sext i16 %335 to i64
  %337 = bitcast <2 x i64>* %12 to i64*
  %338 = load i32, i32* %22, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = mul nsw i64 %336, %341
  %343 = icmp ne i64 %334, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %329
  call void @abort() #2
  unreachable

345:                                              ; preds = %329
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %22, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %22, align 4
  br label %326, !llvm.loop !13

349:                                              ; preds = %326
  br label %350

350:                                              ; preds = %349
  %351 = call signext i8 @vchr()
  %352 = sext i8 %351 to i64
  %353 = insertelement <2 x i64> poison, i64 %352, i32 0
  %354 = shufflevector <2 x i64> %353, <2 x i64> poison, <2 x i32> zeroinitializer
  %355 = load <2 x i64>, <2 x i64>* %12, align 16
  %356 = mul <2 x i64> %354, %355
  store <2 x i64> %356, <2 x i64>* %13, align 16
  br label %357

357:                                              ; preds = %350
  store i32 0, i32* %23, align 4
  br label %358

358:                                              ; preds = %378, %357
  %359 = load i32, i32* %23, align 4
  %360 = icmp slt i32 %359, 2
  br i1 %360, label %361, label %381

361:                                              ; preds = %358
  %362 = bitcast <2 x i64>* %13 to i64*
  %363 = load i32, i32* %23, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i64, i64* %362, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = call signext i8 @vchr()
  %368 = sext i8 %367 to i64
  %369 = bitcast <2 x i64>* %12 to i64*
  %370 = load i32, i32* %23, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %369, i64 %371
  %373 = load i64, i64* %372, align 8
  %374 = mul nsw i64 %368, %373
  %375 = icmp ne i64 %366, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %361
  call void @abort() #2
  unreachable

377:                                              ; preds = %361
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %23, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %23, align 4
  br label %358, !llvm.loop !14

381:                                              ; preds = %358
  br label %382

382:                                              ; preds = %381
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
