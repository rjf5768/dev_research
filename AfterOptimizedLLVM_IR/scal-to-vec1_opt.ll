; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = dso_local global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca <8 x i16>, align 16
  %7 = alloca <8 x i16>, align 16
  %8 = alloca <4 x float>, align 16
  %9 = alloca <4 x float>, align 16
  %10 = alloca <4 x float>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca <4 x float>, align 16
  %33 = alloca i32, align 4
  %34 = alloca <4 x float>, align 16
  %35 = alloca i32, align 4
  %36 = alloca <4 x float>, align 16
  %37 = alloca i32, align 4
  %38 = alloca <4 x float>, align 16
  %39 = alloca i32, align 4
  %40 = alloca <4 x float>, align 16
  %41 = alloca i32, align 4
  %42 = alloca <4 x float>, align 16
  %43 = alloca i32, align 4
  %44 = alloca <4 x float>, align 16
  %45 = alloca i32, align 4
  %46 = alloca <4 x float>, align 16
  %47 = alloca i32, align 4
  %48 = alloca <2 x double>, align 16
  %49 = alloca i32, align 4
  %50 = alloca <2 x double>, align 16
  %51 = alloca i32, align 4
  %52 = alloca <2 x double>, align 16
  %53 = alloca i32, align 4
  %54 = alloca <2 x double>, align 16
  %55 = alloca i32, align 4
  %56 = alloca <2 x double>, align 16
  %57 = alloca i32, align 4
  %58 = alloca <2 x double>, align 16
  %59 = alloca i32, align 4
  %60 = alloca <2 x double>, align 16
  %61 = alloca i32, align 4
  %62 = alloca <2 x double>, align 16
  %63 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %64 = load volatile i32, i32* @one, align 4
  %65 = trunc i32 %64 to i16
  %66 = insertelement <8 x i16> undef, i16 %65, i32 0
  %67 = insertelement <8 x i16> %66, i16 1, i32 1
  %68 = insertelement <8 x i16> %67, i16 2, i32 2
  %69 = insertelement <8 x i16> %68, i16 3, i32 3
  %70 = insertelement <8 x i16> %69, i16 4, i32 4
  %71 = insertelement <8 x i16> %70, i16 5, i32 5
  %72 = insertelement <8 x i16> %71, i16 6, i32 6
  %73 = insertelement <8 x i16> %72, i16 7, i32 7
  store <8 x i16> %73, <8 x i16>* %6, align 16
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float>* %8, align 16
  store <2 x double> <double 1.000000e+00, double 2.000000e+00>, <2 x double>* %11, align 16
  %74 = load <8 x i16>, <8 x i16>* %6, align 16
  %75 = add <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %74
  store <8 x i16> %75, <8 x i16>* %7, align 16
  br label %76

76:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = bitcast <8 x i16>* %7 to i16*
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %81, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = bitcast <8 x i16>* %6 to i16*
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %87, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = add nsw i32 2, %92
  %94 = icmp ne i32 %86, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  call void @abort() #2
  unreachable

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %77, !llvm.loop !4

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100
  %102 = load <8 x i16>, <8 x i16>* %6, align 16
  %103 = sub <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %102
  store <8 x i16> %103, <8 x i16>* %7, align 16
  br label %104

104:                                              ; preds = %101
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %125, %104
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 8
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = bitcast <8 x i16>* %7 to i16*
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %109, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = sext i16 %113 to i32
  %115 = bitcast <8 x i16>* %6 to i16*
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i16, i16* %115, i64 %117
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  %121 = sub nsw i32 2, %120
  %122 = icmp ne i32 %114, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  call void @abort() #2
  unreachable

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %105, !llvm.loop !6

128:                                              ; preds = %105
  br label %129

129:                                              ; preds = %128
  %130 = load <8 x i16>, <8 x i16>* %6, align 16
  %131 = mul <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %130
  store <8 x i16> %131, <8 x i16>* %7, align 16
  br label %132

132:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %153, %132
  %134 = load i32, i32* %16, align 4
  %135 = icmp slt i32 %134, 8
  br i1 %135, label %136, label %156

136:                                              ; preds = %133
  %137 = bitcast <8 x i16>* %7 to i16*
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %137, i64 %139
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i32
  %143 = bitcast <8 x i16>* %6 to i16*
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16, i16* %143, i64 %145
  %147 = load i16, i16* %146, align 2
  %148 = sext i16 %147 to i32
  %149 = mul nsw i32 2, %148
  %150 = icmp ne i32 %142, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %136
  call void @abort() #2
  unreachable

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  br label %133, !llvm.loop !7

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156
  %158 = load <8 x i16>, <8 x i16>* %6, align 16
  %159 = sdiv <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %158
  store <8 x i16> %159, <8 x i16>* %7, align 16
  br label %160

160:                                              ; preds = %157
  store i32 0, i32* %17, align 4
  br label %161

161:                                              ; preds = %181, %160
  %162 = load i32, i32* %17, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = bitcast <8 x i16>* %7 to i16*
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i16, i16* %165, i64 %167
  %169 = load i16, i16* %168, align 2
  %170 = sext i16 %169 to i32
  %171 = bitcast <8 x i16>* %6 to i16*
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i16, i16* %171, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = sext i16 %175 to i32
  %177 = sdiv i32 2, %176
  %178 = icmp ne i32 %170, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %164
  call void @abort() #2
  unreachable

180:                                              ; preds = %164
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %17, align 4
  br label %161, !llvm.loop !8

184:                                              ; preds = %161
  br label %185

185:                                              ; preds = %184
  %186 = load <8 x i16>, <8 x i16>* %6, align 16
  %187 = srem <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %186
  store <8 x i16> %187, <8 x i16>* %7, align 16
  br label %188

188:                                              ; preds = %185
  store i32 0, i32* %18, align 4
  br label %189

189:                                              ; preds = %209, %188
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %190, 8
  br i1 %191, label %192, label %212

192:                                              ; preds = %189
  %193 = bitcast <8 x i16>* %7 to i16*
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %193, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = sext i16 %197 to i32
  %199 = bitcast <8 x i16>* %6 to i16*
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i16, i16* %199, i64 %201
  %203 = load i16, i16* %202, align 2
  %204 = sext i16 %203 to i32
  %205 = srem i32 2, %204
  %206 = icmp ne i32 %198, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %192
  call void @abort() #2
  unreachable

208:                                              ; preds = %192
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %189, !llvm.loop !9

212:                                              ; preds = %189
  br label %213

213:                                              ; preds = %212
  %214 = load <8 x i16>, <8 x i16>* %6, align 16
  %215 = xor <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %214
  store <8 x i16> %215, <8 x i16>* %7, align 16
  br label %216

216:                                              ; preds = %213
  store i32 0, i32* %19, align 4
  br label %217

217:                                              ; preds = %237, %216
  %218 = load i32, i32* %19, align 4
  %219 = icmp slt i32 %218, 8
  br i1 %219, label %220, label %240

220:                                              ; preds = %217
  %221 = bitcast <8 x i16>* %7 to i16*
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i16, i16* %221, i64 %223
  %225 = load i16, i16* %224, align 2
  %226 = sext i16 %225 to i32
  %227 = bitcast <8 x i16>* %6 to i16*
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i16, i16* %227, i64 %229
  %231 = load i16, i16* %230, align 2
  %232 = sext i16 %231 to i32
  %233 = xor i32 2, %232
  %234 = icmp ne i32 %226, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %220
  call void @abort() #2
  unreachable

236:                                              ; preds = %220
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %19, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %19, align 4
  br label %217, !llvm.loop !10

240:                                              ; preds = %217
  br label %241

241:                                              ; preds = %240
  %242 = load <8 x i16>, <8 x i16>* %6, align 16
  %243 = and <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %242
  store <8 x i16> %243, <8 x i16>* %7, align 16
  br label %244

244:                                              ; preds = %241
  store i32 0, i32* %20, align 4
  br label %245

245:                                              ; preds = %265, %244
  %246 = load i32, i32* %20, align 4
  %247 = icmp slt i32 %246, 8
  br i1 %247, label %248, label %268

248:                                              ; preds = %245
  %249 = bitcast <8 x i16>* %7 to i16*
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i16, i16* %249, i64 %251
  %253 = load i16, i16* %252, align 2
  %254 = sext i16 %253 to i32
  %255 = bitcast <8 x i16>* %6 to i16*
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i16, i16* %255, i64 %257
  %259 = load i16, i16* %258, align 2
  %260 = sext i16 %259 to i32
  %261 = and i32 2, %260
  %262 = icmp ne i32 %254, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %248
  call void @abort() #2
  unreachable

264:                                              ; preds = %248
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %20, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %20, align 4
  br label %245, !llvm.loop !11

268:                                              ; preds = %245
  br label %269

269:                                              ; preds = %268
  %270 = load <8 x i16>, <8 x i16>* %6, align 16
  %271 = or <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %270
  store <8 x i16> %271, <8 x i16>* %7, align 16
  br label %272

272:                                              ; preds = %269
  store i32 0, i32* %21, align 4
  br label %273

273:                                              ; preds = %293, %272
  %274 = load i32, i32* %21, align 4
  %275 = icmp slt i32 %274, 8
  br i1 %275, label %276, label %296

276:                                              ; preds = %273
  %277 = bitcast <8 x i16>* %7 to i16*
  %278 = load i32, i32* %21, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i16, i16* %277, i64 %279
  %281 = load i16, i16* %280, align 2
  %282 = sext i16 %281 to i32
  %283 = bitcast <8 x i16>* %6 to i16*
  %284 = load i32, i32* %21, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i16, i16* %283, i64 %285
  %287 = load i16, i16* %286, align 2
  %288 = sext i16 %287 to i32
  %289 = or i32 2, %288
  %290 = icmp ne i32 %282, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %276
  call void @abort() #2
  unreachable

292:                                              ; preds = %276
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %21, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %21, align 4
  br label %273, !llvm.loop !12

296:                                              ; preds = %273
  br label %297

297:                                              ; preds = %296
  %298 = load <8 x i16>, <8 x i16>* %6, align 16
  %299 = shl <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %298
  store <8 x i16> %299, <8 x i16>* %7, align 16
  br label %300

300:                                              ; preds = %297
  store i32 0, i32* %22, align 4
  br label %301

301:                                              ; preds = %321, %300
  %302 = load i32, i32* %22, align 4
  %303 = icmp slt i32 %302, 8
  br i1 %303, label %304, label %324

304:                                              ; preds = %301
  %305 = bitcast <8 x i16>* %7 to i16*
  %306 = load i32, i32* %22, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i16, i16* %305, i64 %307
  %309 = load i16, i16* %308, align 2
  %310 = sext i16 %309 to i32
  %311 = bitcast <8 x i16>* %6 to i16*
  %312 = load i32, i32* %22, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i16, i16* %311, i64 %313
  %315 = load i16, i16* %314, align 2
  %316 = sext i16 %315 to i32
  %317 = shl i32 2, %316
  %318 = icmp ne i32 %310, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %304
  call void @abort() #2
  unreachable

320:                                              ; preds = %304
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %22, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %22, align 4
  br label %301, !llvm.loop !13

324:                                              ; preds = %301
  br label %325

325:                                              ; preds = %324
  %326 = load <8 x i16>, <8 x i16>* %6, align 16
  %327 = ashr <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %326
  store <8 x i16> %327, <8 x i16>* %7, align 16
  br label %328

328:                                              ; preds = %325
  store i32 0, i32* %23, align 4
  br label %329

329:                                              ; preds = %349, %328
  %330 = load i32, i32* %23, align 4
  %331 = icmp slt i32 %330, 8
  br i1 %331, label %332, label %352

332:                                              ; preds = %329
  %333 = bitcast <8 x i16>* %7 to i16*
  %334 = load i32, i32* %23, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i16, i16* %333, i64 %335
  %337 = load i16, i16* %336, align 2
  %338 = sext i16 %337 to i32
  %339 = bitcast <8 x i16>* %6 to i16*
  %340 = load i32, i32* %23, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i16, i16* %339, i64 %341
  %343 = load i16, i16* %342, align 2
  %344 = sext i16 %343 to i32
  %345 = ashr i32 2, %344
  %346 = icmp ne i32 %338, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %332
  call void @abort() #2
  unreachable

348:                                              ; preds = %332
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %23, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %23, align 4
  br label %329, !llvm.loop !14

352:                                              ; preds = %329
  br label %353

353:                                              ; preds = %352
  %354 = load <8 x i16>, <8 x i16>* %6, align 16
  %355 = add <8 x i16> %354, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %355, <8 x i16>* %7, align 16
  br label %356

356:                                              ; preds = %353
  store i32 0, i32* %24, align 4
  br label %357

357:                                              ; preds = %377, %356
  %358 = load i32, i32* %24, align 4
  %359 = icmp slt i32 %358, 8
  br i1 %359, label %360, label %380

360:                                              ; preds = %357
  %361 = bitcast <8 x i16>* %7 to i16*
  %362 = load i32, i32* %24, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i16, i16* %361, i64 %363
  %365 = load i16, i16* %364, align 2
  %366 = sext i16 %365 to i32
  %367 = bitcast <8 x i16>* %6 to i16*
  %368 = load i32, i32* %24, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i16, i16* %367, i64 %369
  %371 = load i16, i16* %370, align 2
  %372 = sext i16 %371 to i32
  %373 = add nsw i32 %372, 2
  %374 = icmp ne i32 %366, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %360
  call void @abort() #2
  unreachable

376:                                              ; preds = %360
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %24, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %24, align 4
  br label %357, !llvm.loop !15

380:                                              ; preds = %357
  br label %381

381:                                              ; preds = %380
  %382 = load <8 x i16>, <8 x i16>* %6, align 16
  %383 = sub <8 x i16> %382, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %383, <8 x i16>* %7, align 16
  br label %384

384:                                              ; preds = %381
  store i32 0, i32* %25, align 4
  br label %385

385:                                              ; preds = %405, %384
  %386 = load i32, i32* %25, align 4
  %387 = icmp slt i32 %386, 8
  br i1 %387, label %388, label %408

388:                                              ; preds = %385
  %389 = bitcast <8 x i16>* %7 to i16*
  %390 = load i32, i32* %25, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i16, i16* %389, i64 %391
  %393 = load i16, i16* %392, align 2
  %394 = sext i16 %393 to i32
  %395 = bitcast <8 x i16>* %6 to i16*
  %396 = load i32, i32* %25, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i16, i16* %395, i64 %397
  %399 = load i16, i16* %398, align 2
  %400 = sext i16 %399 to i32
  %401 = sub nsw i32 %400, 2
  %402 = icmp ne i32 %394, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %388
  call void @abort() #2
  unreachable

404:                                              ; preds = %388
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %25, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %25, align 4
  br label %385, !llvm.loop !16

408:                                              ; preds = %385
  br label %409

409:                                              ; preds = %408
  %410 = load <8 x i16>, <8 x i16>* %6, align 16
  %411 = mul <8 x i16> %410, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %411, <8 x i16>* %7, align 16
  br label %412

412:                                              ; preds = %409
  store i32 0, i32* %26, align 4
  br label %413

413:                                              ; preds = %433, %412
  %414 = load i32, i32* %26, align 4
  %415 = icmp slt i32 %414, 8
  br i1 %415, label %416, label %436

416:                                              ; preds = %413
  %417 = bitcast <8 x i16>* %7 to i16*
  %418 = load i32, i32* %26, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i16, i16* %417, i64 %419
  %421 = load i16, i16* %420, align 2
  %422 = sext i16 %421 to i32
  %423 = bitcast <8 x i16>* %6 to i16*
  %424 = load i32, i32* %26, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i16, i16* %423, i64 %425
  %427 = load i16, i16* %426, align 2
  %428 = sext i16 %427 to i32
  %429 = mul nsw i32 %428, 2
  %430 = icmp ne i32 %422, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %416
  call void @abort() #2
  unreachable

432:                                              ; preds = %416
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %26, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %26, align 4
  br label %413, !llvm.loop !17

436:                                              ; preds = %413
  br label %437

437:                                              ; preds = %436
  %438 = load <8 x i16>, <8 x i16>* %6, align 16
  %439 = sdiv <8 x i16> %438, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %439, <8 x i16>* %7, align 16
  br label %440

440:                                              ; preds = %437
  store i32 0, i32* %27, align 4
  br label %441

441:                                              ; preds = %461, %440
  %442 = load i32, i32* %27, align 4
  %443 = icmp slt i32 %442, 8
  br i1 %443, label %444, label %464

444:                                              ; preds = %441
  %445 = bitcast <8 x i16>* %7 to i16*
  %446 = load i32, i32* %27, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i16, i16* %445, i64 %447
  %449 = load i16, i16* %448, align 2
  %450 = sext i16 %449 to i32
  %451 = bitcast <8 x i16>* %6 to i16*
  %452 = load i32, i32* %27, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i16, i16* %451, i64 %453
  %455 = load i16, i16* %454, align 2
  %456 = sext i16 %455 to i32
  %457 = sdiv i32 %456, 2
  %458 = icmp ne i32 %450, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %444
  call void @abort() #2
  unreachable

460:                                              ; preds = %444
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %27, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %27, align 4
  br label %441, !llvm.loop !18

464:                                              ; preds = %441
  br label %465

465:                                              ; preds = %464
  %466 = load <8 x i16>, <8 x i16>* %6, align 16
  %467 = srem <8 x i16> %466, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %467, <8 x i16>* %7, align 16
  br label %468

468:                                              ; preds = %465
  store i32 0, i32* %28, align 4
  br label %469

469:                                              ; preds = %489, %468
  %470 = load i32, i32* %28, align 4
  %471 = icmp slt i32 %470, 8
  br i1 %471, label %472, label %492

472:                                              ; preds = %469
  %473 = bitcast <8 x i16>* %7 to i16*
  %474 = load i32, i32* %28, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i16, i16* %473, i64 %475
  %477 = load i16, i16* %476, align 2
  %478 = sext i16 %477 to i32
  %479 = bitcast <8 x i16>* %6 to i16*
  %480 = load i32, i32* %28, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i16, i16* %479, i64 %481
  %483 = load i16, i16* %482, align 2
  %484 = sext i16 %483 to i32
  %485 = srem i32 %484, 2
  %486 = icmp ne i32 %478, %485
  br i1 %486, label %487, label %488

487:                                              ; preds = %472
  call void @abort() #2
  unreachable

488:                                              ; preds = %472
  br label %489

489:                                              ; preds = %488
  %490 = load i32, i32* %28, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %28, align 4
  br label %469, !llvm.loop !19

492:                                              ; preds = %469
  br label %493

493:                                              ; preds = %492
  %494 = load <8 x i16>, <8 x i16>* %6, align 16
  %495 = xor <8 x i16> %494, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %495, <8 x i16>* %7, align 16
  br label %496

496:                                              ; preds = %493
  store i32 0, i32* %29, align 4
  br label %497

497:                                              ; preds = %517, %496
  %498 = load i32, i32* %29, align 4
  %499 = icmp slt i32 %498, 8
  br i1 %499, label %500, label %520

500:                                              ; preds = %497
  %501 = bitcast <8 x i16>* %7 to i16*
  %502 = load i32, i32* %29, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i16, i16* %501, i64 %503
  %505 = load i16, i16* %504, align 2
  %506 = sext i16 %505 to i32
  %507 = bitcast <8 x i16>* %6 to i16*
  %508 = load i32, i32* %29, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i16, i16* %507, i64 %509
  %511 = load i16, i16* %510, align 2
  %512 = sext i16 %511 to i32
  %513 = xor i32 %512, 2
  %514 = icmp ne i32 %506, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %500
  call void @abort() #2
  unreachable

516:                                              ; preds = %500
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* %29, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %29, align 4
  br label %497, !llvm.loop !20

520:                                              ; preds = %497
  br label %521

521:                                              ; preds = %520
  %522 = load <8 x i16>, <8 x i16>* %6, align 16
  %523 = and <8 x i16> %522, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %523, <8 x i16>* %7, align 16
  br label %524

524:                                              ; preds = %521
  store i32 0, i32* %30, align 4
  br label %525

525:                                              ; preds = %545, %524
  %526 = load i32, i32* %30, align 4
  %527 = icmp slt i32 %526, 8
  br i1 %527, label %528, label %548

528:                                              ; preds = %525
  %529 = bitcast <8 x i16>* %7 to i16*
  %530 = load i32, i32* %30, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i16, i16* %529, i64 %531
  %533 = load i16, i16* %532, align 2
  %534 = sext i16 %533 to i32
  %535 = bitcast <8 x i16>* %6 to i16*
  %536 = load i32, i32* %30, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i16, i16* %535, i64 %537
  %539 = load i16, i16* %538, align 2
  %540 = sext i16 %539 to i32
  %541 = and i32 %540, 2
  %542 = icmp ne i32 %534, %541
  br i1 %542, label %543, label %544

543:                                              ; preds = %528
  call void @abort() #2
  unreachable

544:                                              ; preds = %528
  br label %545

545:                                              ; preds = %544
  %546 = load i32, i32* %30, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %30, align 4
  br label %525, !llvm.loop !21

548:                                              ; preds = %525
  br label %549

549:                                              ; preds = %548
  %550 = load <8 x i16>, <8 x i16>* %6, align 16
  %551 = or <8 x i16> %550, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %551, <8 x i16>* %7, align 16
  br label %552

552:                                              ; preds = %549
  store i32 0, i32* %31, align 4
  br label %553

553:                                              ; preds = %573, %552
  %554 = load i32, i32* %31, align 4
  %555 = icmp slt i32 %554, 8
  br i1 %555, label %556, label %576

556:                                              ; preds = %553
  %557 = bitcast <8 x i16>* %7 to i16*
  %558 = load i32, i32* %31, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i16, i16* %557, i64 %559
  %561 = load i16, i16* %560, align 2
  %562 = sext i16 %561 to i32
  %563 = bitcast <8 x i16>* %6 to i16*
  %564 = load i32, i32* %31, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i16, i16* %563, i64 %565
  %567 = load i16, i16* %566, align 2
  %568 = sext i16 %567 to i32
  %569 = or i32 %568, 2
  %570 = icmp ne i32 %562, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %556
  call void @abort() #2
  unreachable

572:                                              ; preds = %556
  br label %573

573:                                              ; preds = %572
  %574 = load i32, i32* %31, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %31, align 4
  br label %553, !llvm.loop !22

576:                                              ; preds = %553
  br label %577

577:                                              ; preds = %576
  %578 = load <4 x float>, <4 x float>* %8, align 16
  %579 = fadd <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %578
  store <4 x float> %579, <4 x float>* %9, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %32, align 16
  %580 = load <4 x float>, <4 x float>* %32, align 16
  %581 = load <4 x float>, <4 x float>* %8, align 16
  %582 = fadd <4 x float> %580, %581
  store <4 x float> %582, <4 x float>* %10, align 16
  br label %583

583:                                              ; preds = %577
  store i32 0, i32* %33, align 4
  br label %584

584:                                              ; preds = %601, %583
  %585 = load i32, i32* %33, align 4
  %586 = icmp slt i32 %585, 4
  br i1 %586, label %587, label %604

587:                                              ; preds = %584
  %588 = bitcast <4 x float>* %9 to float*
  %589 = load i32, i32* %33, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds float, float* %588, i64 %590
  %592 = load float, float* %591, align 4
  %593 = bitcast <4 x float>* %10 to float*
  %594 = load i32, i32* %33, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds float, float* %593, i64 %595
  %597 = load float, float* %596, align 4
  %598 = fcmp une float %592, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %587
  call void @abort() #2
  unreachable

600:                                              ; preds = %587
  br label %601

601:                                              ; preds = %600
  %602 = load i32, i32* %33, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %33, align 4
  br label %584, !llvm.loop !23

604:                                              ; preds = %584
  br label %605

605:                                              ; preds = %604
  %606 = load <4 x float>, <4 x float>* %8, align 16
  %607 = fsub <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %606
  store <4 x float> %607, <4 x float>* %9, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %34, align 16
  %608 = load <4 x float>, <4 x float>* %34, align 16
  %609 = load <4 x float>, <4 x float>* %8, align 16
  %610 = fsub <4 x float> %608, %609
  store <4 x float> %610, <4 x float>* %10, align 16
  br label %611

611:                                              ; preds = %605
  store i32 0, i32* %35, align 4
  br label %612

612:                                              ; preds = %629, %611
  %613 = load i32, i32* %35, align 4
  %614 = icmp slt i32 %613, 4
  br i1 %614, label %615, label %632

615:                                              ; preds = %612
  %616 = bitcast <4 x float>* %9 to float*
  %617 = load i32, i32* %35, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds float, float* %616, i64 %618
  %620 = load float, float* %619, align 4
  %621 = bitcast <4 x float>* %10 to float*
  %622 = load i32, i32* %35, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds float, float* %621, i64 %623
  %625 = load float, float* %624, align 4
  %626 = fcmp une float %620, %625
  br i1 %626, label %627, label %628

627:                                              ; preds = %615
  call void @abort() #2
  unreachable

628:                                              ; preds = %615
  br label %629

629:                                              ; preds = %628
  %630 = load i32, i32* %35, align 4
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %35, align 4
  br label %612, !llvm.loop !24

632:                                              ; preds = %612
  br label %633

633:                                              ; preds = %632
  %634 = load <4 x float>, <4 x float>* %8, align 16
  %635 = fmul <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %634
  store <4 x float> %635, <4 x float>* %9, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %36, align 16
  %636 = load <4 x float>, <4 x float>* %36, align 16
  %637 = load <4 x float>, <4 x float>* %8, align 16
  %638 = fmul <4 x float> %636, %637
  store <4 x float> %638, <4 x float>* %10, align 16
  br label %639

639:                                              ; preds = %633
  store i32 0, i32* %37, align 4
  br label %640

640:                                              ; preds = %657, %639
  %641 = load i32, i32* %37, align 4
  %642 = icmp slt i32 %641, 4
  br i1 %642, label %643, label %660

643:                                              ; preds = %640
  %644 = bitcast <4 x float>* %9 to float*
  %645 = load i32, i32* %37, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds float, float* %644, i64 %646
  %648 = load float, float* %647, align 4
  %649 = bitcast <4 x float>* %10 to float*
  %650 = load i32, i32* %37, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds float, float* %649, i64 %651
  %653 = load float, float* %652, align 4
  %654 = fcmp une float %648, %653
  br i1 %654, label %655, label %656

655:                                              ; preds = %643
  call void @abort() #2
  unreachable

656:                                              ; preds = %643
  br label %657

657:                                              ; preds = %656
  %658 = load i32, i32* %37, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %37, align 4
  br label %640, !llvm.loop !25

660:                                              ; preds = %640
  br label %661

661:                                              ; preds = %660
  %662 = load <4 x float>, <4 x float>* %8, align 16
  %663 = fdiv <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %662
  store <4 x float> %663, <4 x float>* %9, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %38, align 16
  %664 = load <4 x float>, <4 x float>* %38, align 16
  %665 = load <4 x float>, <4 x float>* %8, align 16
  %666 = fdiv <4 x float> %664, %665
  store <4 x float> %666, <4 x float>* %10, align 16
  br label %667

667:                                              ; preds = %661
  store i32 0, i32* %39, align 4
  br label %668

668:                                              ; preds = %685, %667
  %669 = load i32, i32* %39, align 4
  %670 = icmp slt i32 %669, 4
  br i1 %670, label %671, label %688

671:                                              ; preds = %668
  %672 = bitcast <4 x float>* %9 to float*
  %673 = load i32, i32* %39, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds float, float* %672, i64 %674
  %676 = load float, float* %675, align 4
  %677 = bitcast <4 x float>* %10 to float*
  %678 = load i32, i32* %39, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds float, float* %677, i64 %679
  %681 = load float, float* %680, align 4
  %682 = fcmp une float %676, %681
  br i1 %682, label %683, label %684

683:                                              ; preds = %671
  call void @abort() #2
  unreachable

684:                                              ; preds = %671
  br label %685

685:                                              ; preds = %684
  %686 = load i32, i32* %39, align 4
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %39, align 4
  br label %668, !llvm.loop !26

688:                                              ; preds = %668
  br label %689

689:                                              ; preds = %688
  %690 = load <4 x float>, <4 x float>* %8, align 16
  %691 = fadd <4 x float> %690, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %691, <4 x float>* %9, align 16
  %692 = load <4 x float>, <4 x float>* %8, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %40, align 16
  %693 = load <4 x float>, <4 x float>* %40, align 16
  %694 = fadd <4 x float> %692, %693
  store <4 x float> %694, <4 x float>* %10, align 16
  br label %695

695:                                              ; preds = %689
  store i32 0, i32* %41, align 4
  br label %696

696:                                              ; preds = %713, %695
  %697 = load i32, i32* %41, align 4
  %698 = icmp slt i32 %697, 4
  br i1 %698, label %699, label %716

699:                                              ; preds = %696
  %700 = bitcast <4 x float>* %9 to float*
  %701 = load i32, i32* %41, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds float, float* %700, i64 %702
  %704 = load float, float* %703, align 4
  %705 = bitcast <4 x float>* %10 to float*
  %706 = load i32, i32* %41, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds float, float* %705, i64 %707
  %709 = load float, float* %708, align 4
  %710 = fcmp une float %704, %709
  br i1 %710, label %711, label %712

711:                                              ; preds = %699
  call void @abort() #2
  unreachable

712:                                              ; preds = %699
  br label %713

713:                                              ; preds = %712
  %714 = load i32, i32* %41, align 4
  %715 = add nsw i32 %714, 1
  store i32 %715, i32* %41, align 4
  br label %696, !llvm.loop !27

716:                                              ; preds = %696
  br label %717

717:                                              ; preds = %716
  %718 = load <4 x float>, <4 x float>* %8, align 16
  %719 = fsub <4 x float> %718, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %719, <4 x float>* %9, align 16
  %720 = load <4 x float>, <4 x float>* %8, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %42, align 16
  %721 = load <4 x float>, <4 x float>* %42, align 16
  %722 = fsub <4 x float> %720, %721
  store <4 x float> %722, <4 x float>* %10, align 16
  br label %723

723:                                              ; preds = %717
  store i32 0, i32* %43, align 4
  br label %724

724:                                              ; preds = %741, %723
  %725 = load i32, i32* %43, align 4
  %726 = icmp slt i32 %725, 4
  br i1 %726, label %727, label %744

727:                                              ; preds = %724
  %728 = bitcast <4 x float>* %9 to float*
  %729 = load i32, i32* %43, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds float, float* %728, i64 %730
  %732 = load float, float* %731, align 4
  %733 = bitcast <4 x float>* %10 to float*
  %734 = load i32, i32* %43, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds float, float* %733, i64 %735
  %737 = load float, float* %736, align 4
  %738 = fcmp une float %732, %737
  br i1 %738, label %739, label %740

739:                                              ; preds = %727
  call void @abort() #2
  unreachable

740:                                              ; preds = %727
  br label %741

741:                                              ; preds = %740
  %742 = load i32, i32* %43, align 4
  %743 = add nsw i32 %742, 1
  store i32 %743, i32* %43, align 4
  br label %724, !llvm.loop !28

744:                                              ; preds = %724
  br label %745

745:                                              ; preds = %744
  %746 = load <4 x float>, <4 x float>* %8, align 16
  %747 = fmul <4 x float> %746, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %747, <4 x float>* %9, align 16
  %748 = load <4 x float>, <4 x float>* %8, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %44, align 16
  %749 = load <4 x float>, <4 x float>* %44, align 16
  %750 = fmul <4 x float> %748, %749
  store <4 x float> %750, <4 x float>* %10, align 16
  br label %751

751:                                              ; preds = %745
  store i32 0, i32* %45, align 4
  br label %752

752:                                              ; preds = %769, %751
  %753 = load i32, i32* %45, align 4
  %754 = icmp slt i32 %753, 4
  br i1 %754, label %755, label %772

755:                                              ; preds = %752
  %756 = bitcast <4 x float>* %9 to float*
  %757 = load i32, i32* %45, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds float, float* %756, i64 %758
  %760 = load float, float* %759, align 4
  %761 = bitcast <4 x float>* %10 to float*
  %762 = load i32, i32* %45, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds float, float* %761, i64 %763
  %765 = load float, float* %764, align 4
  %766 = fcmp une float %760, %765
  br i1 %766, label %767, label %768

767:                                              ; preds = %755
  call void @abort() #2
  unreachable

768:                                              ; preds = %755
  br label %769

769:                                              ; preds = %768
  %770 = load i32, i32* %45, align 4
  %771 = add nsw i32 %770, 1
  store i32 %771, i32* %45, align 4
  br label %752, !llvm.loop !29

772:                                              ; preds = %752
  br label %773

773:                                              ; preds = %772
  %774 = load <4 x float>, <4 x float>* %8, align 16
  %775 = fdiv <4 x float> %774, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %775, <4 x float>* %9, align 16
  %776 = load <4 x float>, <4 x float>* %8, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %46, align 16
  %777 = load <4 x float>, <4 x float>* %46, align 16
  %778 = fdiv <4 x float> %776, %777
  store <4 x float> %778, <4 x float>* %10, align 16
  br label %779

779:                                              ; preds = %773
  store i32 0, i32* %47, align 4
  br label %780

780:                                              ; preds = %797, %779
  %781 = load i32, i32* %47, align 4
  %782 = icmp slt i32 %781, 4
  br i1 %782, label %783, label %800

783:                                              ; preds = %780
  %784 = bitcast <4 x float>* %9 to float*
  %785 = load i32, i32* %47, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds float, float* %784, i64 %786
  %788 = load float, float* %787, align 4
  %789 = bitcast <4 x float>* %10 to float*
  %790 = load i32, i32* %47, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds float, float* %789, i64 %791
  %793 = load float, float* %792, align 4
  %794 = fcmp une float %788, %793
  br i1 %794, label %795, label %796

795:                                              ; preds = %783
  call void @abort() #2
  unreachable

796:                                              ; preds = %783
  br label %797

797:                                              ; preds = %796
  %798 = load i32, i32* %47, align 4
  %799 = add nsw i32 %798, 1
  store i32 %799, i32* %47, align 4
  br label %780, !llvm.loop !30

800:                                              ; preds = %780
  br label %801

801:                                              ; preds = %800
  %802 = load <2 x double>, <2 x double>* %11, align 16
  %803 = fadd <2 x double> <double 2.000000e+00, double 2.000000e+00>, %802
  store <2 x double> %803, <2 x double>* %12, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %48, align 16
  %804 = load <2 x double>, <2 x double>* %48, align 16
  %805 = load <2 x double>, <2 x double>* %11, align 16
  %806 = fadd <2 x double> %804, %805
  store <2 x double> %806, <2 x double>* %13, align 16
  br label %807

807:                                              ; preds = %801
  store i32 0, i32* %49, align 4
  br label %808

808:                                              ; preds = %825, %807
  %809 = load i32, i32* %49, align 4
  %810 = icmp slt i32 %809, 2
  br i1 %810, label %811, label %828

811:                                              ; preds = %808
  %812 = bitcast <2 x double>* %12 to double*
  %813 = load i32, i32* %49, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds double, double* %812, i64 %814
  %816 = load double, double* %815, align 8
  %817 = bitcast <2 x double>* %13 to double*
  %818 = load i32, i32* %49, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds double, double* %817, i64 %819
  %821 = load double, double* %820, align 8
  %822 = fcmp une double %816, %821
  br i1 %822, label %823, label %824

823:                                              ; preds = %811
  call void @abort() #2
  unreachable

824:                                              ; preds = %811
  br label %825

825:                                              ; preds = %824
  %826 = load i32, i32* %49, align 4
  %827 = add nsw i32 %826, 1
  store i32 %827, i32* %49, align 4
  br label %808, !llvm.loop !31

828:                                              ; preds = %808
  br label %829

829:                                              ; preds = %828
  %830 = load <2 x double>, <2 x double>* %11, align 16
  %831 = fsub <2 x double> <double 2.000000e+00, double 2.000000e+00>, %830
  store <2 x double> %831, <2 x double>* %12, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %50, align 16
  %832 = load <2 x double>, <2 x double>* %50, align 16
  %833 = load <2 x double>, <2 x double>* %11, align 16
  %834 = fsub <2 x double> %832, %833
  store <2 x double> %834, <2 x double>* %13, align 16
  br label %835

835:                                              ; preds = %829
  store i32 0, i32* %51, align 4
  br label %836

836:                                              ; preds = %853, %835
  %837 = load i32, i32* %51, align 4
  %838 = icmp slt i32 %837, 2
  br i1 %838, label %839, label %856

839:                                              ; preds = %836
  %840 = bitcast <2 x double>* %12 to double*
  %841 = load i32, i32* %51, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds double, double* %840, i64 %842
  %844 = load double, double* %843, align 8
  %845 = bitcast <2 x double>* %13 to double*
  %846 = load i32, i32* %51, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds double, double* %845, i64 %847
  %849 = load double, double* %848, align 8
  %850 = fcmp une double %844, %849
  br i1 %850, label %851, label %852

851:                                              ; preds = %839
  call void @abort() #2
  unreachable

852:                                              ; preds = %839
  br label %853

853:                                              ; preds = %852
  %854 = load i32, i32* %51, align 4
  %855 = add nsw i32 %854, 1
  store i32 %855, i32* %51, align 4
  br label %836, !llvm.loop !32

856:                                              ; preds = %836
  br label %857

857:                                              ; preds = %856
  %858 = load <2 x double>, <2 x double>* %11, align 16
  %859 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %858
  store <2 x double> %859, <2 x double>* %12, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %52, align 16
  %860 = load <2 x double>, <2 x double>* %52, align 16
  %861 = load <2 x double>, <2 x double>* %11, align 16
  %862 = fmul <2 x double> %860, %861
  store <2 x double> %862, <2 x double>* %13, align 16
  br label %863

863:                                              ; preds = %857
  store i32 0, i32* %53, align 4
  br label %864

864:                                              ; preds = %881, %863
  %865 = load i32, i32* %53, align 4
  %866 = icmp slt i32 %865, 2
  br i1 %866, label %867, label %884

867:                                              ; preds = %864
  %868 = bitcast <2 x double>* %12 to double*
  %869 = load i32, i32* %53, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds double, double* %868, i64 %870
  %872 = load double, double* %871, align 8
  %873 = bitcast <2 x double>* %13 to double*
  %874 = load i32, i32* %53, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds double, double* %873, i64 %875
  %877 = load double, double* %876, align 8
  %878 = fcmp une double %872, %877
  br i1 %878, label %879, label %880

879:                                              ; preds = %867
  call void @abort() #2
  unreachable

880:                                              ; preds = %867
  br label %881

881:                                              ; preds = %880
  %882 = load i32, i32* %53, align 4
  %883 = add nsw i32 %882, 1
  store i32 %883, i32* %53, align 4
  br label %864, !llvm.loop !33

884:                                              ; preds = %864
  br label %885

885:                                              ; preds = %884
  %886 = load <2 x double>, <2 x double>* %11, align 16
  %887 = fdiv <2 x double> <double 2.000000e+00, double 2.000000e+00>, %886
  store <2 x double> %887, <2 x double>* %12, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %54, align 16
  %888 = load <2 x double>, <2 x double>* %54, align 16
  %889 = load <2 x double>, <2 x double>* %11, align 16
  %890 = fdiv <2 x double> %888, %889
  store <2 x double> %890, <2 x double>* %13, align 16
  br label %891

891:                                              ; preds = %885
  store i32 0, i32* %55, align 4
  br label %892

892:                                              ; preds = %909, %891
  %893 = load i32, i32* %55, align 4
  %894 = icmp slt i32 %893, 2
  br i1 %894, label %895, label %912

895:                                              ; preds = %892
  %896 = bitcast <2 x double>* %12 to double*
  %897 = load i32, i32* %55, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds double, double* %896, i64 %898
  %900 = load double, double* %899, align 8
  %901 = bitcast <2 x double>* %13 to double*
  %902 = load i32, i32* %55, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds double, double* %901, i64 %903
  %905 = load double, double* %904, align 8
  %906 = fcmp une double %900, %905
  br i1 %906, label %907, label %908

907:                                              ; preds = %895
  call void @abort() #2
  unreachable

908:                                              ; preds = %895
  br label %909

909:                                              ; preds = %908
  %910 = load i32, i32* %55, align 4
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %55, align 4
  br label %892, !llvm.loop !34

912:                                              ; preds = %892
  br label %913

913:                                              ; preds = %912
  %914 = load <2 x double>, <2 x double>* %11, align 16
  %915 = fadd <2 x double> %914, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %915, <2 x double>* %12, align 16
  %916 = load <2 x double>, <2 x double>* %11, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %56, align 16
  %917 = load <2 x double>, <2 x double>* %56, align 16
  %918 = fadd <2 x double> %916, %917
  store <2 x double> %918, <2 x double>* %13, align 16
  br label %919

919:                                              ; preds = %913
  store i32 0, i32* %57, align 4
  br label %920

920:                                              ; preds = %937, %919
  %921 = load i32, i32* %57, align 4
  %922 = icmp slt i32 %921, 2
  br i1 %922, label %923, label %940

923:                                              ; preds = %920
  %924 = bitcast <2 x double>* %12 to double*
  %925 = load i32, i32* %57, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds double, double* %924, i64 %926
  %928 = load double, double* %927, align 8
  %929 = bitcast <2 x double>* %13 to double*
  %930 = load i32, i32* %57, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds double, double* %929, i64 %931
  %933 = load double, double* %932, align 8
  %934 = fcmp une double %928, %933
  br i1 %934, label %935, label %936

935:                                              ; preds = %923
  call void @abort() #2
  unreachable

936:                                              ; preds = %923
  br label %937

937:                                              ; preds = %936
  %938 = load i32, i32* %57, align 4
  %939 = add nsw i32 %938, 1
  store i32 %939, i32* %57, align 4
  br label %920, !llvm.loop !35

940:                                              ; preds = %920
  br label %941

941:                                              ; preds = %940
  %942 = load <2 x double>, <2 x double>* %11, align 16
  %943 = fsub <2 x double> %942, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %943, <2 x double>* %12, align 16
  %944 = load <2 x double>, <2 x double>* %11, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %58, align 16
  %945 = load <2 x double>, <2 x double>* %58, align 16
  %946 = fsub <2 x double> %944, %945
  store <2 x double> %946, <2 x double>* %13, align 16
  br label %947

947:                                              ; preds = %941
  store i32 0, i32* %59, align 4
  br label %948

948:                                              ; preds = %965, %947
  %949 = load i32, i32* %59, align 4
  %950 = icmp slt i32 %949, 2
  br i1 %950, label %951, label %968

951:                                              ; preds = %948
  %952 = bitcast <2 x double>* %12 to double*
  %953 = load i32, i32* %59, align 4
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds double, double* %952, i64 %954
  %956 = load double, double* %955, align 8
  %957 = bitcast <2 x double>* %13 to double*
  %958 = load i32, i32* %59, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds double, double* %957, i64 %959
  %961 = load double, double* %960, align 8
  %962 = fcmp une double %956, %961
  br i1 %962, label %963, label %964

963:                                              ; preds = %951
  call void @abort() #2
  unreachable

964:                                              ; preds = %951
  br label %965

965:                                              ; preds = %964
  %966 = load i32, i32* %59, align 4
  %967 = add nsw i32 %966, 1
  store i32 %967, i32* %59, align 4
  br label %948, !llvm.loop !36

968:                                              ; preds = %948
  br label %969

969:                                              ; preds = %968
  %970 = load <2 x double>, <2 x double>* %11, align 16
  %971 = fmul <2 x double> %970, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %971, <2 x double>* %12, align 16
  %972 = load <2 x double>, <2 x double>* %11, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %60, align 16
  %973 = load <2 x double>, <2 x double>* %60, align 16
  %974 = fmul <2 x double> %972, %973
  store <2 x double> %974, <2 x double>* %13, align 16
  br label %975

975:                                              ; preds = %969
  store i32 0, i32* %61, align 4
  br label %976

976:                                              ; preds = %993, %975
  %977 = load i32, i32* %61, align 4
  %978 = icmp slt i32 %977, 2
  br i1 %978, label %979, label %996

979:                                              ; preds = %976
  %980 = bitcast <2 x double>* %12 to double*
  %981 = load i32, i32* %61, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds double, double* %980, i64 %982
  %984 = load double, double* %983, align 8
  %985 = bitcast <2 x double>* %13 to double*
  %986 = load i32, i32* %61, align 4
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds double, double* %985, i64 %987
  %989 = load double, double* %988, align 8
  %990 = fcmp une double %984, %989
  br i1 %990, label %991, label %992

991:                                              ; preds = %979
  call void @abort() #2
  unreachable

992:                                              ; preds = %979
  br label %993

993:                                              ; preds = %992
  %994 = load i32, i32* %61, align 4
  %995 = add nsw i32 %994, 1
  store i32 %995, i32* %61, align 4
  br label %976, !llvm.loop !37

996:                                              ; preds = %976
  br label %997

997:                                              ; preds = %996
  %998 = load <2 x double>, <2 x double>* %11, align 16
  %999 = fdiv <2 x double> %998, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %999, <2 x double>* %12, align 16
  %1000 = load <2 x double>, <2 x double>* %11, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %62, align 16
  %1001 = load <2 x double>, <2 x double>* %62, align 16
  %1002 = fdiv <2 x double> %1000, %1001
  store <2 x double> %1002, <2 x double>* %13, align 16
  br label %1003

1003:                                             ; preds = %997
  store i32 0, i32* %63, align 4
  br label %1004

1004:                                             ; preds = %1021, %1003
  %1005 = load i32, i32* %63, align 4
  %1006 = icmp slt i32 %1005, 2
  br i1 %1006, label %1007, label %1024

1007:                                             ; preds = %1004
  %1008 = bitcast <2 x double>* %12 to double*
  %1009 = load i32, i32* %63, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds double, double* %1008, i64 %1010
  %1012 = load double, double* %1011, align 8
  %1013 = bitcast <2 x double>* %13 to double*
  %1014 = load i32, i32* %63, align 4
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds double, double* %1013, i64 %1015
  %1017 = load double, double* %1016, align 8
  %1018 = fcmp une double %1012, %1017
  br i1 %1018, label %1019, label %1020

1019:                                             ; preds = %1007
  call void @abort() #2
  unreachable

1020:                                             ; preds = %1007
  br label %1021

1021:                                             ; preds = %1020
  %1022 = load i32, i32* %63, align 4
  %1023 = add nsw i32 %1022, 1
  store i32 %1023, i32* %63, align 4
  br label %1004, !llvm.loop !38

1024:                                             ; preds = %1004
  br label %1025

1025:                                             ; preds = %1024
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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
