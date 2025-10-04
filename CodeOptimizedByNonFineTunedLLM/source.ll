; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/source.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Source = type { float**, float**, float, float*, float**, float** }
%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, i8*, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Beginning XS Allocation...\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Beginning Source and Flux Parameter Allocation...\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Source* @initialize_sources(%struct.Input* noundef byval(%struct.Input) align 8 %0, i64* noundef %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.Source*, align 8
  %5 = alloca i64, align 8
  %6 = alloca float***, align 8
  %7 = alloca float**, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float***, align 8
  %16 = alloca float**, align 8
  %17 = alloca float*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float***, align 8
  %25 = alloca float**, align 8
  %26 = alloca float***, align 8
  %27 = alloca float**, align 8
  %28 = alloca float**, align 8
  %29 = alloca float*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i32, align 4
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  store i64* %1, i64** %3, align 8
  %47 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %48 = load i64, i64* %47, align 8
  %49 = mul i64 %48, 48
  %50 = call noalias i8* @malloc(i64 noundef %49) #3
  %51 = bitcast i8* %50 to %struct.Source*
  store %struct.Source* %51, %struct.Source** %4, align 8
  %52 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %53, 48
  %55 = load i64*, i64** %3, align 8
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %59 = load i64, i64* %58, align 8
  %60 = sdiv i64 %59, 8
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = mul i64 %61, 8
  %63 = call noalias i8* @malloc(i64 noundef %62) #3
  %64 = bitcast i8* %63 to float***
  store float*** %64, float**** %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = mul i64 %65, 8
  %67 = load i64*, i64** %3, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %70, %73
  %75 = mul i64 %74, 8
  %76 = call noalias i8* @malloc(i64 noundef %75) #3
  %77 = bitcast i8* %76 to float**
  store float** %77, float*** %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = mul i64 %78, 8
  %80 = load i64*, i64** %3, align 8
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, %79
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %83, %86
  %88 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %87, %90
  %92 = mul i64 %91, 4
  %93 = call noalias i8* @malloc(i64 noundef %92) #3
  %94 = bitcast i8* %93 to float*
  store float* %94, float** %8, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %95, %98
  %100 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %99, %102
  %104 = mul i64 %103, 4
  %105 = load i64*, i64** %3, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %104
  store i64 %107, i64* %105, align 8
  store i64 0, i64* %9, align 8
  br label %108

108:                                              ; preds = %123, %2
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load float**, float*** %7, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %114, %117
  %119 = getelementptr inbounds float*, float** %113, i64 %118
  %120 = load float***, float**** %6, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds float**, float*** %120, i64 %121
  store float** %119, float*** %122, align 8
  br label %123

123:                                              ; preds = %112
  %124 = load i64, i64* %9, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %9, align 8
  br label %108, !llvm.loop !4

126:                                              ; preds = %108
  store i64 0, i64* %10, align 8
  br label %127

127:                                              ; preds = %166, %126
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %5, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %169

131:                                              ; preds = %127
  store i64 0, i64* %11, align 8
  br label %132

132:                                              ; preds = %162, %131
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %132
  %139 = load float*, float** %8, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %140, %143
  %145 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %144, %147
  %149 = load i64, i64* %11, align 8
  %150 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %149, %152
  %154 = add nsw i64 %148, %153
  %155 = getelementptr inbounds float, float* %139, i64 %154
  %156 = load float***, float**** %6, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds float**, float*** %156, i64 %157
  %159 = load float**, float*** %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds float*, float** %159, i64 %160
  store float* %155, float** %161, align 8
  br label %162

162:                                              ; preds = %138
  %163 = load i64, i64* %11, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %11, align 8
  br label %132, !llvm.loop !6

165:                                              ; preds = %132
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %10, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %127, !llvm.loop !7

169:                                              ; preds = %127
  store i64 0, i64* %12, align 8
  br label %170

170:                                              ; preds = %207, %169
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %210

174:                                              ; preds = %170
  store i64 0, i64* %13, align 8
  br label %175

175:                                              ; preds = %203, %174
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %175
  store i64 0, i64* %14, align 8
  br label %182

182:                                              ; preds = %199, %181
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %183, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %182
  %189 = call float @urand()
  %190 = load float***, float**** %6, align 8
  %191 = load i64, i64* %12, align 8
  %192 = getelementptr inbounds float**, float*** %190, i64 %191
  %193 = load float**, float*** %192, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds float*, float** %193, i64 %194
  %196 = load float*, float** %195, align 8
  %197 = load i64, i64* %14, align 8
  %198 = getelementptr inbounds float, float* %196, i64 %197
  store float %189, float* %198, align 4
  br label %199

199:                                              ; preds = %188
  %200 = load i64, i64* %14, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %14, align 8
  br label %182, !llvm.loop !8

202:                                              ; preds = %182
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %13, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %13, align 8
  br label %175, !llvm.loop !9

206:                                              ; preds = %175
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %12, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %12, align 8
  br label %170, !llvm.loop !10

210:                                              ; preds = %170
  %211 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 17
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %210
  %217 = load i64, i64* %5, align 8
  %218 = mul i64 %217, 8
  %219 = call noalias i8* @malloc(i64 noundef %218) #3
  %220 = bitcast i8* %219 to float***
  store float*** %220, float**** %15, align 8
  %221 = load i64, i64* %5, align 8
  %222 = mul i64 %221, 8
  %223 = load i64*, i64** %3, align 8
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %224, %222
  store i64 %225, i64* %223, align 8
  %226 = load i64, i64* %5, align 8
  %227 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = mul nsw i64 %226, %229
  %231 = mul i64 %230, 8
  %232 = call noalias i8* @malloc(i64 noundef %231) #3
  %233 = bitcast i8* %232 to float**
  store float** %233, float*** %16, align 8
  %234 = load i64, i64* %5, align 8
  %235 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = mul nsw i64 %234, %237
  %239 = mul i64 %238, 8
  %240 = load i64*, i64** %3, align 8
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %241, %239
  store i64 %242, i64* %240, align 8
  %243 = load i64, i64* %5, align 8
  %244 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul nsw i64 %243, %246
  %248 = mul nsw i64 %247, 3
  %249 = mul i64 %248, 4
  %250 = call noalias i8* @malloc(i64 noundef %249) #3
  %251 = bitcast i8* %250 to float*
  store float* %251, float** %17, align 8
  %252 = load i64, i64* %5, align 8
  %253 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %252, %255
  %257 = mul nsw i64 %256, 3
  %258 = mul i64 %257, 4
  %259 = load i64*, i64** %3, align 8
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %260, %258
  store i64 %261, i64* %259, align 8
  store i64 0, i64* %18, align 8
  br label %262

262:                                              ; preds = %277, %216
  %263 = load i64, i64* %18, align 8
  %264 = load i64, i64* %5, align 8
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %262
  %267 = load float**, float*** %16, align 8
  %268 = load i64, i64* %18, align 8
  %269 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = mul nsw i64 %268, %271
  %273 = getelementptr inbounds float*, float** %267, i64 %272
  %274 = load float***, float**** %15, align 8
  %275 = load i64, i64* %18, align 8
  %276 = getelementptr inbounds float**, float*** %274, i64 %275
  store float** %273, float*** %276, align 8
  br label %277

277:                                              ; preds = %266
  %278 = load i64, i64* %18, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %18, align 8
  br label %262, !llvm.loop !11

280:                                              ; preds = %262
  store i64 0, i64* %19, align 8
  br label %281

281:                                              ; preds = %314, %280
  %282 = load i64, i64* %19, align 8
  %283 = load i64, i64* %5, align 8
  %284 = icmp slt i64 %282, %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %281
  store i64 0, i64* %20, align 8
  br label %286

286:                                              ; preds = %310, %285
  %287 = load i64, i64* %20, align 8
  %288 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = icmp slt i64 %287, %290
  br i1 %291, label %292, label %313

292:                                              ; preds = %286
  %293 = load float*, float** %17, align 8
  %294 = load i64, i64* %19, align 8
  %295 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = mul nsw i64 %294, %297
  %299 = mul nsw i64 %298, 3
  %300 = load i64, i64* %20, align 8
  %301 = mul nsw i64 %300, 3
  %302 = add nsw i64 %299, %301
  %303 = getelementptr inbounds float, float* %293, i64 %302
  %304 = load float***, float**** %15, align 8
  %305 = load i64, i64* %19, align 8
  %306 = getelementptr inbounds float**, float*** %304, i64 %305
  %307 = load float**, float*** %306, align 8
  %308 = load i64, i64* %20, align 8
  %309 = getelementptr inbounds float*, float** %307, i64 %308
  store float* %303, float** %309, align 8
  br label %310

310:                                              ; preds = %292
  %311 = load i64, i64* %20, align 8
  %312 = add nsw i64 %311, 1
  store i64 %312, i64* %20, align 8
  br label %286, !llvm.loop !12

313:                                              ; preds = %286
  br label %314

314:                                              ; preds = %313
  %315 = load i64, i64* %19, align 8
  %316 = add nsw i64 %315, 1
  store i64 %316, i64* %19, align 8
  br label %281, !llvm.loop !13

317:                                              ; preds = %281
  store i64 0, i64* %21, align 8
  br label %318

318:                                              ; preds = %353, %317
  %319 = load i64, i64* %21, align 8
  %320 = load i64, i64* %5, align 8
  %321 = icmp slt i64 %319, %320
  br i1 %321, label %322, label %356

322:                                              ; preds = %318
  store i32 0, i32* %22, align 4
  br label %323

323:                                              ; preds = %349, %322
  %324 = load i32, i32* %22, align 4
  %325 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %352

328:                                              ; preds = %323
  store i32 0, i32* %23, align 4
  br label %329

329:                                              ; preds = %345, %328
  %330 = load i32, i32* %23, align 4
  %331 = icmp slt i32 %330, 3
  br i1 %331, label %332, label %348

332:                                              ; preds = %329
  %333 = call float @urand()
  %334 = load float***, float**** %15, align 8
  %335 = load i64, i64* %21, align 8
  %336 = getelementptr inbounds float**, float*** %334, i64 %335
  %337 = load float**, float*** %336, align 8
  %338 = load i32, i32* %22, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float*, float** %337, i64 %339
  %341 = load float*, float** %340, align 8
  %342 = load i32, i32* %23, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %341, i64 %343
  store float %333, float* %344, align 4
  br label %345

345:                                              ; preds = %332
  %346 = load i32, i32* %23, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %23, align 4
  br label %329, !llvm.loop !14

348:                                              ; preds = %329
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %22, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %22, align 4
  br label %323, !llvm.loop !15

352:                                              ; preds = %323
  br label %353

353:                                              ; preds = %352
  %354 = load i64, i64* %21, align 8
  %355 = add nsw i64 %354, 1
  store i64 %355, i64* %21, align 8
  br label %318, !llvm.loop !16

356:                                              ; preds = %318
  %357 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 17
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %356
  %361 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %362

362:                                              ; preds = %360, %356
  %363 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %364 = load i64, i64* %363, align 8
  %365 = mul i64 %364, 8
  %366 = call noalias i8* @malloc(i64 noundef %365) #3
  %367 = bitcast i8* %366 to float***
  store float*** %367, float**** %24, align 8
  %368 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %369 = load i64, i64* %368, align 8
  %370 = mul i64 %369, 8
  %371 = load i64*, i64** %3, align 8
  %372 = load i64, i64* %371, align 8
  %373 = add i64 %372, %370
  store i64 %373, i64* %371, align 8
  %374 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %375 = load i64, i64* %374, align 8
  %376 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = mul nsw i64 %375, %378
  %380 = mul i64 %379, 8
  %381 = call noalias i8* @malloc(i64 noundef %380) #3
  %382 = bitcast i8* %381 to float**
  store float** %382, float*** %25, align 8
  %383 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  %388 = mul nsw i64 %384, %387
  %389 = mul i64 %388, 8
  %390 = load i64*, i64** %3, align 8
  %391 = load i64, i64* %390, align 8
  %392 = add i64 %391, %389
  store i64 %392, i64* %390, align 8
  %393 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %394 = load i64, i64* %393, align 8
  %395 = mul i64 %394, 8
  %396 = call noalias i8* @malloc(i64 noundef %395) #3
  %397 = bitcast i8* %396 to float***
  store float*** %397, float**** %26, align 8
  %398 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %399 = load i64, i64* %398, align 8
  %400 = mul i64 %399, 8
  %401 = load i64*, i64** %3, align 8
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, %400
  store i64 %403, i64* %401, align 8
  %404 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = mul nsw i64 %405, %408
  %410 = mul i64 %409, 8
  %411 = call noalias i8* @malloc(i64 noundef %410) #3
  %412 = bitcast i8* %411 to float**
  store float** %412, float*** %27, align 8
  %413 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = mul nsw i64 %414, %417
  %419 = mul i64 %418, 8
  %420 = load i64*, i64** %3, align 8
  %421 = load i64, i64* %420, align 8
  %422 = add i64 %421, %419
  store i64 %422, i64* %420, align 8
  %423 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %424 = load i64, i64* %423, align 8
  %425 = mul i64 %424, 8
  %426 = call noalias i8* @malloc(i64 noundef %425) #3
  %427 = bitcast i8* %426 to float**
  store float** %427, float*** %28, align 8
  %428 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = mul nsw i32 2, %429
  %431 = add nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %434 = load i64, i64* %433, align 8
  %435 = mul nsw i64 %432, %434
  %436 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = mul nsw i64 %435, %438
  %440 = mul i64 %439, 4
  %441 = call noalias i8* @malloc(i64 noundef %440) #3
  %442 = bitcast i8* %441 to float*
  store float* %442, float** %29, align 8
  %443 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %444 = load i64, i64* %443, align 8
  %445 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  %448 = mul nsw i64 %444, %447
  %449 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %450 = load i32, i32* %449, align 4
  %451 = sext i32 %450 to i64
  %452 = mul nsw i64 %448, %451
  %453 = mul i64 %452, 4
  %454 = load i64*, i64** %3, align 8
  %455 = load i64, i64* %454, align 8
  %456 = add i64 %455, %453
  store i64 %456, i64* %454, align 8
  store i64 0, i64* %30, align 8
  br label %457

457:                                              ; preds = %473, %362
  %458 = load i64, i64* %30, align 8
  %459 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %460 = load i64, i64* %459, align 8
  %461 = icmp slt i64 %458, %460
  br i1 %461, label %462, label %476

462:                                              ; preds = %457
  %463 = load float**, float*** %25, align 8
  %464 = load i64, i64* %30, align 8
  %465 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  %468 = mul nsw i64 %464, %467
  %469 = getelementptr inbounds float*, float** %463, i64 %468
  %470 = load float***, float**** %24, align 8
  %471 = load i64, i64* %30, align 8
  %472 = getelementptr inbounds float**, float*** %470, i64 %471
  store float** %469, float*** %472, align 8
  br label %473

473:                                              ; preds = %462
  %474 = load i64, i64* %30, align 8
  %475 = add nsw i64 %474, 1
  store i64 %475, i64* %30, align 8
  br label %457, !llvm.loop !17

476:                                              ; preds = %457
  store i64 0, i64* %31, align 8
  br label %477

477:                                              ; preds = %517, %476
  %478 = load i64, i64* %31, align 8
  %479 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %480 = load i64, i64* %479, align 8
  %481 = icmp slt i64 %478, %480
  br i1 %481, label %482, label %520

482:                                              ; preds = %477
  store i64 0, i64* %32, align 8
  br label %483

483:                                              ; preds = %513, %482
  %484 = load i64, i64* %32, align 8
  %485 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  %488 = icmp slt i64 %484, %487
  br i1 %488, label %489, label %516

489:                                              ; preds = %483
  %490 = load float*, float** %29, align 8
  %491 = load i64, i64* %31, align 8
  %492 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %493 to i64
  %495 = mul nsw i64 %491, %494
  %496 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %497 = load i32, i32* %496, align 4
  %498 = sext i32 %497 to i64
  %499 = mul nsw i64 %495, %498
  %500 = load i64, i64* %32, align 8
  %501 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %502 = load i32, i32* %501, align 4
  %503 = sext i32 %502 to i64
  %504 = mul nsw i64 %500, %503
  %505 = add nsw i64 %499, %504
  %506 = getelementptr inbounds float, float* %490, i64 %505
  %507 = load float***, float**** %24, align 8
  %508 = load i64, i64* %31, align 8
  %509 = getelementptr inbounds float**, float*** %507, i64 %508
  %510 = load float**, float*** %509, align 8
  %511 = load i64, i64* %32, align 8
  %512 = getelementptr inbounds float*, float** %510, i64 %511
  store float* %506, float** %512, align 8
  br label %513

513:                                              ; preds = %489
  %514 = load i64, i64* %32, align 8
  %515 = add nsw i64 %514, 1
  store i64 %515, i64* %32, align 8
  br label %483, !llvm.loop !18

516:                                              ; preds = %483
  br label %517

517:                                              ; preds = %516
  %518 = load i64, i64* %31, align 8
  %519 = add nsw i64 %518, 1
  store i64 %519, i64* %31, align 8
  br label %477, !llvm.loop !19

520:                                              ; preds = %477
  store i64 0, i64* %33, align 8
  br label %521

521:                                              ; preds = %537, %520
  %522 = load i64, i64* %33, align 8
  %523 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %524 = load i64, i64* %523, align 8
  %525 = icmp slt i64 %522, %524
  br i1 %525, label %526, label %540

526:                                              ; preds = %521
  %527 = load float**, float*** %27, align 8
  %528 = load i64, i64* %33, align 8
  %529 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  %532 = mul nsw i64 %528, %531
  %533 = getelementptr inbounds float*, float** %527, i64 %532
  %534 = load float***, float**** %26, align 8
  %535 = load i64, i64* %33, align 8
  %536 = getelementptr inbounds float**, float*** %534, i64 %535
  store float** %533, float*** %536, align 8
  br label %537

537:                                              ; preds = %526
  %538 = load i64, i64* %33, align 8
  %539 = add nsw i64 %538, 1
  store i64 %539, i64* %33, align 8
  br label %521, !llvm.loop !20

540:                                              ; preds = %521
  store i64 0, i64* %34, align 8
  br label %541

541:                                              ; preds = %583, %540
  %542 = load i64, i64* %34, align 8
  %543 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %544 = load i64, i64* %543, align 8
  %545 = icmp slt i64 %542, %544
  br i1 %545, label %546, label %586

546:                                              ; preds = %541
  store i32 0, i32* %35, align 4
  br label %547

547:                                              ; preds = %579, %546
  %548 = load i32, i32* %35, align 4
  %549 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %550 = load i32, i32* %549, align 4
  %551 = icmp slt i32 %548, %550
  br i1 %551, label %552, label %582

552:                                              ; preds = %547
  %553 = load float*, float** %29, align 8
  %554 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %555 = load i32, i32* %554, align 4
  %556 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %557 = load i32, i32* %556, align 4
  %558 = mul nsw i32 %555, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* %34, align 8
  %563 = add nsw i64 %561, %562
  %564 = mul nsw i64 %559, %563
  %565 = load i32, i32* %35, align 4
  %566 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %567 = load i32, i32* %566, align 4
  %568 = mul nsw i32 %565, %567
  %569 = sext i32 %568 to i64
  %570 = add nsw i64 %564, %569
  %571 = getelementptr inbounds float, float* %553, i64 %570
  %572 = load float***, float**** %26, align 8
  %573 = load i64, i64* %34, align 8
  %574 = getelementptr inbounds float**, float*** %572, i64 %573
  %575 = load float**, float*** %574, align 8
  %576 = load i32, i32* %35, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds float*, float** %575, i64 %577
  store float* %571, float** %578, align 8
  br label %579

579:                                              ; preds = %552
  %580 = load i32, i32* %35, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %35, align 4
  br label %547, !llvm.loop !21

582:                                              ; preds = %547
  br label %583

583:                                              ; preds = %582
  %584 = load i64, i64* %34, align 8
  %585 = add nsw i64 %584, 1
  store i64 %585, i64* %34, align 8
  br label %541, !llvm.loop !22

586:                                              ; preds = %541
  store i64 0, i64* %36, align 8
  br label %587

587:                                              ; preds = %615, %586
  %588 = load i64, i64* %36, align 8
  %589 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %590 = load i64, i64* %589, align 8
  %591 = icmp slt i64 %588, %590
  br i1 %591, label %592, label %618

592:                                              ; preds = %587
  %593 = load float*, float** %29, align 8
  %594 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %595 = load i64, i64* %594, align 8
  %596 = mul nsw i64 2, %595
  %597 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  %600 = mul nsw i64 %596, %599
  %601 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %602 = load i32, i32* %601, align 4
  %603 = sext i32 %602 to i64
  %604 = mul nsw i64 %600, %603
  %605 = load i64, i64* %36, align 8
  %606 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = mul nsw i64 %605, %608
  %610 = add nsw i64 %604, %609
  %611 = getelementptr inbounds float, float* %593, i64 %610
  %612 = load float**, float*** %28, align 8
  %613 = load i64, i64* %36, align 8
  %614 = getelementptr inbounds float*, float** %612, i64 %613
  store float* %611, float** %614, align 8
  br label %615

615:                                              ; preds = %592
  %616 = load i64, i64* %36, align 8
  %617 = add nsw i64 %616, 1
  store i64 %617, i64* %36, align 8
  br label %587, !llvm.loop !23

618:                                              ; preds = %587
  store i64 0, i64* %37, align 8
  br label %619

619:                                              ; preds = %657, %618
  %620 = load i64, i64* %37, align 8
  %621 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %622 = load i64, i64* %621, align 8
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %624, label %660

624:                                              ; preds = %619
  store i32 0, i32* %38, align 4
  br label %625

625:                                              ; preds = %653, %624
  %626 = load i32, i32* %38, align 4
  %627 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %628 = load i32, i32* %627, align 4
  %629 = icmp slt i32 %626, %628
  br i1 %629, label %630, label %656

630:                                              ; preds = %625
  store i32 0, i32* %39, align 4
  br label %631

631:                                              ; preds = %649, %630
  %632 = load i32, i32* %39, align 4
  %633 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %634 = load i32, i32* %633, align 4
  %635 = icmp slt i32 %632, %634
  br i1 %635, label %636, label %652

636:                                              ; preds = %631
  %637 = call float @urand()
  %638 = load float***, float**** %24, align 8
  %639 = load i64, i64* %37, align 8
  %640 = getelementptr inbounds float**, float*** %638, i64 %639
  %641 = load float**, float*** %640, align 8
  %642 = load i32, i32* %38, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds float*, float** %641, i64 %643
  %645 = load float*, float** %644, align 8
  %646 = load i32, i32* %39, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds float, float* %645, i64 %647
  store float %637, float* %648, align 4
  br label %649

649:                                              ; preds = %636
  %650 = load i32, i32* %39, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %39, align 4
  br label %631, !llvm.loop !24

652:                                              ; preds = %631
  br label %653

653:                                              ; preds = %652
  %654 = load i32, i32* %38, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %38, align 4
  br label %625, !llvm.loop !25

656:                                              ; preds = %625
  br label %657

657:                                              ; preds = %656
  %658 = load i64, i64* %37, align 8
  %659 = add nsw i64 %658, 1
  store i64 %659, i64* %37, align 8
  br label %619, !llvm.loop !26

660:                                              ; preds = %619
  store i64 0, i64* %40, align 8
  br label %661

661:                                              ; preds = %698, %660
  %662 = load i64, i64* %40, align 8
  %663 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %664 = load i64, i64* %663, align 8
  %665 = icmp slt i64 %662, %664
  br i1 %665, label %666, label %701

666:                                              ; preds = %661
  store i32 0, i32* %41, align 4
  br label %667

667:                                              ; preds = %694, %666
  %668 = load i32, i32* %41, align 4
  %669 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %670 = load i32, i32* %669, align 4
  %671 = icmp slt i32 %668, %670
  br i1 %671, label %672, label %697

672:                                              ; preds = %667
  store i32 0, i32* %42, align 4
  br label %673

673:                                              ; preds = %690, %672
  %674 = load i32, i32* %42, align 4
  %675 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %676 = load i32, i32* %675, align 4
  %677 = icmp slt i32 %674, %676
  br i1 %677, label %678, label %693

678:                                              ; preds = %673
  %679 = load float***, float**** %26, align 8
  %680 = load i64, i64* %40, align 8
  %681 = getelementptr inbounds float**, float*** %679, i64 %680
  %682 = load float**, float*** %681, align 8
  %683 = load i32, i32* %41, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds float*, float** %682, i64 %684
  %686 = load float*, float** %685, align 8
  %687 = load i32, i32* %42, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds float, float* %686, i64 %688
  store float 0.000000e+00, float* %689, align 4
  br label %690

690:                                              ; preds = %678
  %691 = load i32, i32* %42, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %42, align 4
  br label %673, !llvm.loop !27

693:                                              ; preds = %673
  br label %694

694:                                              ; preds = %693
  %695 = load i32, i32* %41, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %41, align 4
  br label %667, !llvm.loop !28

697:                                              ; preds = %667
  br label %698

698:                                              ; preds = %697
  %699 = load i64, i64* %40, align 8
  %700 = add nsw i64 %699, 1
  store i64 %700, i64* %40, align 8
  br label %661, !llvm.loop !29

701:                                              ; preds = %661
  store i64 0, i64* %43, align 8
  br label %702

702:                                              ; preds = %726, %701
  %703 = load i64, i64* %43, align 8
  %704 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %705 = load i64, i64* %704, align 8
  %706 = icmp slt i64 %703, %705
  br i1 %706, label %707, label %729

707:                                              ; preds = %702
  store i32 0, i32* %44, align 4
  br label %708

708:                                              ; preds = %722, %707
  %709 = load i32, i32* %44, align 4
  %710 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %711 = load i32, i32* %710, align 4
  %712 = icmp slt i32 %709, %711
  br i1 %712, label %713, label %725

713:                                              ; preds = %708
  %714 = call float @urand()
  %715 = load float**, float*** %28, align 8
  %716 = load i64, i64* %43, align 8
  %717 = getelementptr inbounds float*, float** %715, i64 %716
  %718 = load float*, float** %717, align 8
  %719 = load i32, i32* %44, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds float, float* %718, i64 %720
  store float %714, float* %721, align 4
  br label %722

722:                                              ; preds = %713
  %723 = load i32, i32* %44, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %44, align 4
  br label %708, !llvm.loop !30

725:                                              ; preds = %708
  br label %726

726:                                              ; preds = %725
  %727 = load i64, i64* %43, align 8
  %728 = add nsw i64 %727, 1
  store i64 %728, i64* %43, align 8
  br label %702, !llvm.loop !31

729:                                              ; preds = %702
  store i64 0, i64* %45, align 8
  br label %730

730:                                              ; preds = %790, %729
  %731 = load i64, i64* %45, align 8
  %732 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %733 = load i64, i64* %732, align 8
  %734 = icmp slt i64 %731, %733
  br i1 %734, label %735, label %793

735:                                              ; preds = %730
  %736 = load i64, i64* %45, align 8
  %737 = icmp eq i64 %736, 0
  br i1 %737, label %738, label %739

738:                                              ; preds = %735
  store i64 0, i64* %46, align 8
  br label %744

739:                                              ; preds = %735
  %740 = call i32 @glibc_compat_rand()
  %741 = sext i32 %740 to i64
  %742 = load i64, i64* %5, align 8
  %743 = srem i64 %741, %742
  store i64 %743, i64* %46, align 8
  br label %744

744:                                              ; preds = %739, %738
  %745 = load float***, float**** %6, align 8
  %746 = load i64, i64* %46, align 8
  %747 = getelementptr inbounds float**, float*** %745, i64 %746
  %748 = load float**, float*** %747, align 8
  %749 = load %struct.Source*, %struct.Source** %4, align 8
  %750 = load i64, i64* %45, align 8
  %751 = getelementptr inbounds %struct.Source, %struct.Source* %749, i64 %750
  %752 = getelementptr inbounds %struct.Source, %struct.Source* %751, i32 0, i32 5
  store float** %748, float*** %752, align 8
  %753 = load float***, float**** %15, align 8
  %754 = load i64, i64* %46, align 8
  %755 = getelementptr inbounds float**, float*** %753, i64 %754
  %756 = load float**, float*** %755, align 8
  %757 = load %struct.Source*, %struct.Source** %4, align 8
  %758 = load i64, i64* %45, align 8
  %759 = getelementptr inbounds %struct.Source, %struct.Source* %757, i64 %758
  %760 = getelementptr inbounds %struct.Source, %struct.Source* %759, i32 0, i32 4
  store float** %756, float*** %760, align 8
  %761 = load float***, float**** %26, align 8
  %762 = load i64, i64* %45, align 8
  %763 = getelementptr inbounds float**, float*** %761, i64 %762
  %764 = load float**, float*** %763, align 8
  %765 = load %struct.Source*, %struct.Source** %4, align 8
  %766 = load i64, i64* %45, align 8
  %767 = getelementptr inbounds %struct.Source, %struct.Source* %765, i64 %766
  %768 = getelementptr inbounds %struct.Source, %struct.Source* %767, i32 0, i32 0
  store float** %764, float*** %768, align 8
  %769 = load float***, float**** %24, align 8
  %770 = load i64, i64* %45, align 8
  %771 = getelementptr inbounds float**, float*** %769, i64 %770
  %772 = load float**, float*** %771, align 8
  %773 = load %struct.Source*, %struct.Source** %4, align 8
  %774 = load i64, i64* %45, align 8
  %775 = getelementptr inbounds %struct.Source, %struct.Source* %773, i64 %774
  %776 = getelementptr inbounds %struct.Source, %struct.Source* %775, i32 0, i32 1
  store float** %772, float*** %776, align 8
  %777 = load float**, float*** %28, align 8
  %778 = load i64, i64* %45, align 8
  %779 = getelementptr inbounds float*, float** %777, i64 %778
  %780 = load float*, float** %779, align 8
  %781 = load %struct.Source*, %struct.Source** %4, align 8
  %782 = load i64, i64* %45, align 8
  %783 = getelementptr inbounds %struct.Source, %struct.Source* %781, i64 %782
  %784 = getelementptr inbounds %struct.Source, %struct.Source* %783, i32 0, i32 3
  store float* %780, float** %784, align 8
  %785 = call float @urand()
  %786 = load %struct.Source*, %struct.Source** %4, align 8
  %787 = load i64, i64* %45, align 8
  %788 = getelementptr inbounds %struct.Source, %struct.Source* %786, i64 %787
  %789 = getelementptr inbounds %struct.Source, %struct.Source* %788, i32 0, i32 2
  store float %785, float* %789, align 8
  br label %790

790:                                              ; preds = %744
  %791 = load i64, i64* %45, align 8
  %792 = add nsw i64 %791, 1
  store i64 %792, i64* %45, align 8
  br label %730, !llvm.loop !32

793:                                              ; preds = %730
  %794 = load float***, float**** %6, align 8
  %795 = bitcast float*** %794 to i8*
  call void @free(i8* noundef %795) #3
  %796 = load float***, float**** %15, align 8
  %797 = bitcast float*** %796 to i8*
  call void @free(i8* noundef %797) #3
  %798 = load float***, float**** %26, align 8
  %799 = bitcast float*** %798 to i8*
  call void @free(i8* noundef %799) #3
  %800 = load float***, float**** %24, align 8
  %801 = bitcast float*** %800 to i8*
  call void @free(i8* noundef %801) #3
  %802 = load float**, float*** %28, align 8
  %803 = bitcast float** %802 to i8*
  call void @free(i8* noundef %803) #3
  %804 = load %struct.Source*, %struct.Source** %4, align 8
  ret %struct.Source* %804
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local float @urand() #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @glibc_compat_rand() #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_sources(%struct.Input* noundef byval(%struct.Input) align 8 %0, %struct.Source* noundef %1) #0 {
  %3 = alloca %struct.Source*, align 8
  store %struct.Source* %1, %struct.Source** %3, align 8
  %4 = load %struct.Source*, %struct.Source** %3, align 8
  %5 = getelementptr inbounds %struct.Source, %struct.Source* %4, i64 0
  %6 = getelementptr inbounds %struct.Source, %struct.Source* %5, i32 0, i32 4
  %7 = load float**, float*** %6, align 8
  %8 = getelementptr inbounds float*, float** %7, i64 0
  %9 = load float*, float** %8, align 8
  %10 = bitcast float* %9 to i8*
  call void @free(i8* noundef %10) #3
  %11 = load %struct.Source*, %struct.Source** %3, align 8
  %12 = getelementptr inbounds %struct.Source, %struct.Source* %11, i64 0
  %13 = getelementptr inbounds %struct.Source, %struct.Source* %12, i32 0, i32 4
  %14 = load float**, float*** %13, align 8
  %15 = bitcast float** %14 to i8*
  call void @free(i8* noundef %15) #3
  %16 = load %struct.Source*, %struct.Source** %3, align 8
  %17 = getelementptr inbounds %struct.Source, %struct.Source* %16, i64 0
  %18 = getelementptr inbounds %struct.Source, %struct.Source* %17, i32 0, i32 0
  %19 = load float**, float*** %18, align 8
  %20 = getelementptr inbounds float*, float** %19, i64 0
  %21 = load float*, float** %20, align 8
  %22 = bitcast float* %21 to i8*
  call void @free(i8* noundef %22) #3
  %23 = load %struct.Source*, %struct.Source** %3, align 8
  %24 = getelementptr inbounds %struct.Source, %struct.Source* %23, i64 0
  %25 = getelementptr inbounds %struct.Source, %struct.Source* %24, i32 0, i32 0
  %26 = load float**, float*** %25, align 8
  %27 = bitcast float** %26 to i8*
  call void @free(i8* noundef %27) #3
  %28 = load %struct.Source*, %struct.Source** %3, align 8
  %29 = getelementptr inbounds %struct.Source, %struct.Source* %28, i64 0
  %30 = getelementptr inbounds %struct.Source, %struct.Source* %29, i32 0, i32 5
  %31 = load float**, float*** %30, align 8
  %32 = getelementptr inbounds float*, float** %31, i64 0
  %33 = load float*, float** %32, align 8
  %34 = bitcast float* %33 to i8*
  call void @free(i8* noundef %34) #3
  %35 = load %struct.Source*, %struct.Source** %3, align 8
  %36 = getelementptr inbounds %struct.Source, %struct.Source* %35, i64 0
  %37 = getelementptr inbounds %struct.Source, %struct.Source* %36, i32 0, i32 5
  %38 = load float**, float*** %37, align 8
  %39 = bitcast float** %38 to i8*
  call void @free(i8* noundef %39) #3
  %40 = load %struct.Source*, %struct.Source** %3, align 8
  %41 = getelementptr inbounds %struct.Source, %struct.Source* %40, i64 0
  %42 = getelementptr inbounds %struct.Source, %struct.Source* %41, i32 0, i32 1
  %43 = load float**, float*** %42, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 0
  %45 = load float*, float** %44, align 8
  %46 = bitcast float* %45 to i8*
  call void @free(i8* noundef %46) #3
  %47 = load %struct.Source*, %struct.Source** %3, align 8
  %48 = getelementptr inbounds %struct.Source, %struct.Source* %47, i64 0
  %49 = getelementptr inbounds %struct.Source, %struct.Source* %48, i32 0, i32 1
  %50 = load float**, float*** %49, align 8
  %51 = bitcast float** %50 to i8*
  call void @free(i8* noundef %51) #3
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
