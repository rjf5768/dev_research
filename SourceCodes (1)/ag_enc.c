; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ag_enc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ag_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dyn_comp(%struct.AGParamRec* noundef %0, i32* noundef %1, %struct.BitBuffer* noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8, align 1
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32*, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i8*, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32*, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca %struct.AGParamRec*, align 8
  %70 = alloca i32*, align 8
  %71 = alloca %struct.BitBuffer*, align 8
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32*, align 8
  %75 = alloca i8*, align 8
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32*, align 8
  store %struct.AGParamRec* %0, %struct.AGParamRec** %69, align 8
  store i32* %1, i32** %70, align 8
  store %struct.BitBuffer* %2, %struct.BitBuffer** %71, align 8
  store i32 %3, i32* %72, align 4
  store i32 %4, i32* %73, align 4
  store i32* %5, i32** %74, align 8
  store i32 0, i32* %95, align 4
  %99 = load %struct.AGParamRec*, %struct.AGParamRec** %69, align 8
  %100 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %96, align 4
  %102 = load %struct.AGParamRec*, %struct.AGParamRec** %69, align 8
  %103 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %96, align 4
  %106 = sub i32 %104, %105
  store i32 %106, i32* %97, align 4
  %107 = load i32*, i32** %70, align 8
  store i32* %107, i32** %98, align 8
  %108 = load i32*, i32** %74, align 8
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* %73, align 4
  %110 = icmp sge i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %6
  %112 = load i32, i32* %73, align 4
  %113 = icmp sle i32 %112, 32
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %6
  store i32 -50, i32* %68, align 4
  br label %519

115:                                              ; preds = %111
  %116 = load %struct.BitBuffer*, %struct.BitBuffer** %71, align 8
  %117 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %75, align 8
  %119 = load %struct.BitBuffer*, %struct.BitBuffer** %71, align 8
  %120 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %77, align 4
  %122 = load i32, i32* %77, align 4
  store i32 %122, i32* %76, align 4
  %123 = load %struct.AGParamRec*, %struct.AGParamRec** %69, align 8
  %124 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.AGParamRec*, %struct.AGParamRec** %69, align 8
  %127 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  store i32 %125, i32* %91, align 4
  %128 = load %struct.AGParamRec*, %struct.AGParamRec** %69, align 8
  %129 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %92, align 4
  %131 = load %struct.AGParamRec*, %struct.AGParamRec** %69, align 8
  %132 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %93, align 4
  %134 = load %struct.AGParamRec*, %struct.AGParamRec** %69, align 8
  %135 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %94, align 4
  store i32 0, i32* %87, align 4
  store i32 0, i32* %81, align 4
  store i32 0, i32* %90, align 4
  br label %137

137:                                              ; preds = %508, %115
  %138 = load i32, i32* %81, align 4
  %139 = load i32, i32* %72, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %509

141:                                              ; preds = %137
  %142 = load i32, i32* %91, align 4
  %143 = lshr i32 %142, 9
  store i32 %143, i32* %78, align 4
  %144 = load i32, i32* %78, align 4
  store i32 %144, i32* %66, align 4
  %145 = load i32, i32* %66, align 4
  %146 = add nsw i32 %145, 3
  store i32 %146, i32* %66, align 4
  %147 = load i32, i32* %66, align 4
  %148 = call i32 @lead(i32 noundef %147) #2
  store i32 %148, i32* %67, align 4
  %149 = load i32, i32* %67, align 4
  %150 = sub nsw i32 31, %149
  store i32 %150, i32* %79, align 4
  %151 = load i32, i32* %79, align 4
  %152 = load i32, i32* %93, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %141
  %155 = load i32, i32* %93, align 4
  store i32 %155, i32* %79, align 4
  br label %156

156:                                              ; preds = %154, %141
  %157 = load i32, i32* %79, align 4
  %158 = shl i32 1, %157
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %78, align 4
  %160 = load i32*, i32** %98, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %98, align 8
  %162 = load i32, i32* %160, align 4
  store i32 %162, i32* %86, align 4
  %163 = load i32, i32* %95, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %95, align 4
  %165 = load i32, i32* %86, align 4
  store i32 %165, i32* %62, align 4
  %166 = load i32, i32* %62, align 4
  %167 = ashr i32 %166, 31
  store i32 %167, i32* %63, align 4
  %168 = load i32, i32* %62, align 4
  %169 = load i32, i32* %63, align 4
  %170 = xor i32 %168, %169
  store i32 %170, i32* %64, align 4
  %171 = load i32, i32* %64, align 4
  %172 = load i32, i32* %63, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %65, align 4
  %174 = load i32, i32* %65, align 4
  %175 = shl i32 %174, 1
  %176 = load i32, i32* %86, align 4
  %177 = ashr i32 %176, 31
  %178 = and i32 %177, 1
  %179 = sub nsw i32 %175, %178
  %180 = load i32, i32* %87, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %80, align 4
  %182 = load i32, i32* %73, align 4
  %183 = load i32, i32* %78, align 4
  %184 = load i32, i32* %79, align 4
  %185 = load i32, i32* %80, align 4
  %186 = call i32 @dyn_code_32bit(i32 noundef %182, i32 noundef %183, i32 noundef %184, i32 noundef %185, i32* noundef %84, i32* noundef %85, i32* noundef %88, i32* noundef %89)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %318

188:                                              ; preds = %156
  %189 = load i8*, i8** %75, align 8
  %190 = load i32, i32* %76, align 4
  %191 = load i32, i32* %84, align 4
  %192 = load i32, i32* %85, align 4
  store i8* %189, i8** %38, align 8
  store i32 %190, i32* %39, align 4
  store i32 %191, i32* %40, align 4
  store i32 %192, i32* %41, align 4
  %193 = load i8*, i8** %38, align 8
  %194 = load i32, i32* %39, align 4
  %195 = lshr i32 %194, 3
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = bitcast i8* %197 to i32*
  store i32* %198, i32** %42, align 8
  %199 = load i32*, i32** %42, align 8
  %200 = bitcast i32* %199 to i8*
  store i8* %200, i8** %23, align 8
  %201 = load i8*, i8** %23, align 8
  %202 = bitcast i8* %201 to i32*
  store i32* %202, i32** %24, align 8
  %203 = load i32*, i32** %24, align 8
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @Swap32NtoB(i32 noundef %204) #2
  store i32 %205, i32* %44, align 4
  %206 = load i32, i32* %39, align 4
  %207 = and i32 %206, 7
  %208 = sub i32 32, %207
  %209 = load i32, i32* %40, align 4
  %210 = sub i32 %208, %209
  store i32 %210, i32* %45, align 4
  %211 = load i32, i32* %40, align 4
  %212 = sub i32 32, %211
  %213 = lshr i32 -1, %212
  store i32 %213, i32* %43, align 4
  %214 = load i32, i32* %45, align 4
  %215 = load i32, i32* %43, align 4
  %216 = shl i32 %215, %214
  store i32 %216, i32* %43, align 4
  %217 = load i32, i32* %41, align 4
  %218 = load i32, i32* %45, align 4
  %219 = shl i32 %217, %218
  %220 = load i32, i32* %43, align 4
  %221 = and i32 %219, %220
  store i32 %221, i32* %41, align 4
  %222 = load i32, i32* %44, align 4
  %223 = load i32, i32* %43, align 4
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  %226 = load i32, i32* %41, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %41, align 4
  %228 = load i32*, i32** %42, align 8
  %229 = bitcast i32* %228 to i8*
  %230 = load i32, i32* %41, align 4
  store i8* %229, i8** %13, align 8
  store i32 %230, i32* %14, align 4
  %231 = load i8*, i8** %13, align 8
  %232 = bitcast i8* %231 to i32*
  store i32* %232, i32** %15, align 8
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @Swap32BtoN(i32 noundef %233) #2
  %235 = load i32*, i32** %15, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %84, align 4
  %237 = load i32, i32* %76, align 4
  %238 = add i32 %237, %236
  store i32 %238, i32* %76, align 4
  %239 = load i8*, i8** %75, align 8
  %240 = load i32, i32* %76, align 4
  %241 = load i32, i32* %89, align 4
  %242 = load i32, i32* %88, align 4
  store i8* %239, i8** %27, align 8
  store i32 %240, i32* %28, align 4
  store i32 %241, i32* %29, align 4
  store i32 %242, i32* %30, align 4
  %243 = load i8*, i8** %27, align 8
  %244 = load i32, i32* %28, align 4
  %245 = lshr i32 %244, 3
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  %248 = bitcast i8* %247 to i32*
  store i32* %248, i32** %31, align 8
  %249 = load i32, i32* %28, align 4
  %250 = and i32 %249, 7
  %251 = sub i32 32, %250
  %252 = load i32, i32* %29, align 4
  %253 = sub i32 %251, %252
  store i32 %253, i32* %35, align 4
  %254 = load i32*, i32** %31, align 8
  %255 = bitcast i32* %254 to i8*
  store i8* %255, i8** %25, align 8
  %256 = load i8*, i8** %25, align 8
  %257 = bitcast i8* %256 to i32*
  store i32* %257, i32** %26, align 8
  %258 = load i32*, i32** %26, align 8
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @Swap32NtoB(i32 noundef %259) #2
  store i32 %260, i32* %33, align 4
  %261 = load i32, i32* %35, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %288

263:                                              ; preds = %188
  %264 = load i32, i32* %30, align 4
  %265 = load i32, i32* %35, align 4
  %266 = sub nsw i32 0, %265
  %267 = lshr i32 %264, %266
  store i32 %267, i32* %32, align 4
  %268 = load i32, i32* %35, align 4
  %269 = sub nsw i32 0, %268
  %270 = lshr i32 -1, %269
  store i32 %270, i32* %34, align 4
  %271 = load i32, i32* %33, align 4
  %272 = load i32, i32* %34, align 4
  %273 = xor i32 %272, -1
  %274 = and i32 %271, %273
  %275 = load i32, i32* %32, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %32, align 4
  %277 = load i32*, i32** %31, align 8
  %278 = bitcast i32* %277 to i8*
  %279 = getelementptr inbounds i8, i8* %278, i64 4
  store i8* %279, i8** %37, align 8
  %280 = load i32, i32* %30, align 4
  %281 = load i32, i32* %35, align 4
  %282 = add nsw i32 8, %281
  %283 = shl i32 %280, %282
  %284 = and i32 %283, 255
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %36, align 1
  %286 = load i8, i8* %36, align 1
  %287 = load i8*, i8** %37, align 8
  store i8 %286, i8* %287, align 1
  br label %306

288:                                              ; preds = %188
  %289 = load i32, i32* %29, align 4
  %290 = sub i32 32, %289
  %291 = lshr i32 -1, %290
  store i32 %291, i32* %34, align 4
  %292 = load i32, i32* %35, align 4
  %293 = load i32, i32* %34, align 4
  %294 = shl i32 %293, %292
  store i32 %294, i32* %34, align 4
  %295 = load i32, i32* %30, align 4
  %296 = load i32, i32* %35, align 4
  %297 = shl i32 %295, %296
  %298 = load i32, i32* %34, align 4
  %299 = and i32 %297, %298
  store i32 %299, i32* %32, align 4
  %300 = load i32, i32* %33, align 4
  %301 = load i32, i32* %34, align 4
  %302 = xor i32 %301, -1
  %303 = and i32 %300, %302
  %304 = load i32, i32* %32, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %32, align 4
  br label %306

306:                                              ; preds = %263, %288
  %307 = load i32*, i32** %31, align 8
  %308 = bitcast i32* %307 to i8*
  %309 = load i32, i32* %32, align 4
  store i8* %308, i8** %16, align 8
  store i32 %309, i32* %17, align 4
  %310 = load i8*, i8** %16, align 8
  %311 = bitcast i8* %310 to i32*
  store i32* %311, i32** %18, align 8
  %312 = load i32, i32* %17, align 4
  %313 = call i32 @Swap32BtoN(i32 noundef %312) #2
  %314 = load i32*, i32** %18, align 8
  store i32 %313, i32* %314, align 4
  %315 = load i32, i32* %89, align 4
  %316 = load i32, i32* %76, align 4
  %317 = add i32 %316, %315
  store i32 %317, i32* %76, align 4
  br label %369

318:                                              ; preds = %156
  %319 = load i8*, i8** %75, align 8
  %320 = load i32, i32* %76, align 4
  %321 = load i32, i32* %84, align 4
  %322 = load i32, i32* %85, align 4
  store i8* %319, i8** %46, align 8
  store i32 %320, i32* %47, align 4
  store i32 %321, i32* %48, align 4
  store i32 %322, i32* %49, align 4
  %323 = load i8*, i8** %46, align 8
  %324 = load i32, i32* %47, align 4
  %325 = lshr i32 %324, 3
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %323, i64 %326
  %328 = bitcast i8* %327 to i32*
  store i32* %328, i32** %50, align 8
  %329 = load i32*, i32** %50, align 8
  %330 = bitcast i32* %329 to i8*
  store i8* %330, i8** %21, align 8
  %331 = load i8*, i8** %21, align 8
  %332 = bitcast i8* %331 to i32*
  store i32* %332, i32** %22, align 8
  %333 = load i32*, i32** %22, align 8
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @Swap32NtoB(i32 noundef %334) #2
  store i32 %335, i32* %52, align 4
  %336 = load i32, i32* %47, align 4
  %337 = and i32 %336, 7
  %338 = sub i32 32, %337
  %339 = load i32, i32* %48, align 4
  %340 = sub i32 %338, %339
  store i32 %340, i32* %53, align 4
  %341 = load i32, i32* %48, align 4
  %342 = sub i32 32, %341
  %343 = lshr i32 -1, %342
  store i32 %343, i32* %51, align 4
  %344 = load i32, i32* %53, align 4
  %345 = load i32, i32* %51, align 4
  %346 = shl i32 %345, %344
  store i32 %346, i32* %51, align 4
  %347 = load i32, i32* %49, align 4
  %348 = load i32, i32* %53, align 4
  %349 = shl i32 %347, %348
  %350 = load i32, i32* %51, align 4
  %351 = and i32 %349, %350
  store i32 %351, i32* %49, align 4
  %352 = load i32, i32* %52, align 4
  %353 = load i32, i32* %51, align 4
  %354 = xor i32 %353, -1
  %355 = and i32 %352, %354
  %356 = load i32, i32* %49, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %49, align 4
  %358 = load i32*, i32** %50, align 8
  %359 = bitcast i32* %358 to i8*
  %360 = load i32, i32* %49, align 4
  store i8* %359, i8** %10, align 8
  store i32 %360, i32* %11, align 4
  %361 = load i8*, i8** %10, align 8
  %362 = bitcast i8* %361 to i32*
  store i32* %362, i32** %12, align 8
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @Swap32BtoN(i32 noundef %363) #2
  %365 = load i32*, i32** %12, align 8
  store i32 %364, i32* %365, align 4
  %366 = load i32, i32* %84, align 4
  %367 = load i32, i32* %76, align 4
  %368 = add i32 %367, %366
  store i32 %368, i32* %76, align 4
  br label %369

369:                                              ; preds = %318, %306
  %370 = load i32, i32* %81, align 4
  %371 = add i32 %370, 1
  store i32 %371, i32* %81, align 4
  %372 = load i32, i32* %95, align 4
  %373 = load i32, i32* %96, align 4
  %374 = icmp sge i32 %372, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %369
  store i32 0, i32* %95, align 4
  %376 = load i32, i32* %97, align 4
  %377 = load i32*, i32** %98, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32* %379, i32** %98, align 8
  br label %380

380:                                              ; preds = %375, %369
  %381 = load i32, i32* %92, align 4
  %382 = load i32, i32* %80, align 4
  %383 = load i32, i32* %87, align 4
  %384 = add i32 %382, %383
  %385 = mul i32 %381, %384
  %386 = load i32, i32* %91, align 4
  %387 = add i32 %385, %386
  %388 = load i32, i32* %92, align 4
  %389 = load i32, i32* %91, align 4
  %390 = mul i32 %388, %389
  %391 = lshr i32 %390, 9
  %392 = sub i32 %387, %391
  store i32 %392, i32* %91, align 4
  %393 = load i32, i32* %80, align 4
  %394 = icmp ugt i32 %393, 65535
  br i1 %394, label %395, label %396

395:                                              ; preds = %380
  store i32 65535, i32* %91, align 4
  br label %396

396:                                              ; preds = %395, %380
  store i32 0, i32* %87, align 4
  %397 = load i32, i32* %81, align 4
  %398 = load i32, i32* %72, align 4
  %399 = icmp ule i32 %397, %398
  br i1 %399, label %401, label %400

400:                                              ; preds = %396
  store i32 -50, i32* %90, align 4
  br label %517

401:                                              ; preds = %396
  %402 = load i32, i32* %91, align 4
  %403 = shl i32 %402, 2
  %404 = icmp ult i32 %403, 512
  br i1 %404, label %405, label %508

405:                                              ; preds = %401
  %406 = load i32, i32* %81, align 4
  %407 = load i32, i32* %72, align 4
  %408 = icmp ult i32 %406, %407
  br i1 %408, label %409, label %508

409:                                              ; preds = %405
  store i32 1, i32* %87, align 4
  store i32 0, i32* %83, align 4
  br label %410

410:                                              ; preds = %440, %409
  %411 = load i32, i32* %81, align 4
  %412 = load i32, i32* %72, align 4
  %413 = icmp ult i32 %411, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %410
  %415 = load i32*, i32** %98, align 8
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 0
  br label %418

418:                                              ; preds = %414, %410
  %419 = phi i1 [ false, %410 ], [ %417, %414 ]
  br i1 %419, label %420, label %441

420:                                              ; preds = %418
  %421 = load i32*, i32** %98, align 8
  %422 = getelementptr inbounds i32, i32* %421, i32 1
  store i32* %422, i32** %98, align 8
  %423 = load i32, i32* %83, align 4
  %424 = add i32 %423, 1
  store i32 %424, i32* %83, align 4
  %425 = load i32, i32* %81, align 4
  %426 = add i32 %425, 1
  store i32 %426, i32* %81, align 4
  %427 = load i32, i32* %95, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %95, align 4
  %429 = load i32, i32* %96, align 4
  %430 = icmp sge i32 %428, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %420
  store i32 0, i32* %95, align 4
  %432 = load i32, i32* %97, align 4
  %433 = load i32*, i32** %98, align 8
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  store i32* %435, i32** %98, align 8
  br label %436

436:                                              ; preds = %431, %420
  %437 = load i32, i32* %83, align 4
  %438 = icmp uge i32 %437, 65535
  br i1 %438, label %439, label %440

439:                                              ; preds = %436
  store i32 0, i32* %87, align 4
  br label %441

440:                                              ; preds = %436
  br label %410, !llvm.loop !4

441:                                              ; preds = %439, %418
  %442 = load i32, i32* %91, align 4
  %443 = call i32 @lead(i32 noundef %442)
  %444 = sub nsw i32 %443, 24
  %445 = load i32, i32* %91, align 4
  %446 = add i32 %445, 16
  %447 = lshr i32 %446, 6
  %448 = add i32 %444, %447
  store i32 %448, i32* %79, align 4
  %449 = load i32, i32* %79, align 4
  %450 = shl i32 1, %449
  %451 = sub nsw i32 %450, 1
  %452 = load i32, i32* %94, align 4
  %453 = and i32 %451, %452
  store i32 %453, i32* %82, align 4
  %454 = load i32, i32* %82, align 4
  %455 = load i32, i32* %79, align 4
  %456 = load i32, i32* %83, align 4
  %457 = call i32 @dyn_code(i32 noundef %454, i32 noundef %455, i32 noundef %456, i32* noundef %84)
  store i32 %457, i32* %85, align 4
  %458 = load i8*, i8** %75, align 8
  %459 = load i32, i32* %76, align 4
  %460 = load i32, i32* %84, align 4
  %461 = load i32, i32* %85, align 4
  store i8* %458, i8** %54, align 8
  store i32 %459, i32* %55, align 4
  store i32 %460, i32* %56, align 4
  store i32 %461, i32* %57, align 4
  %462 = load i8*, i8** %54, align 8
  %463 = load i32, i32* %55, align 4
  %464 = lshr i32 %463, 3
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %462, i64 %465
  %467 = bitcast i8* %466 to i32*
  store i32* %467, i32** %58, align 8
  %468 = load i32*, i32** %58, align 8
  %469 = bitcast i32* %468 to i8*
  store i8* %469, i8** %19, align 8
  %470 = load i8*, i8** %19, align 8
  %471 = bitcast i8* %470 to i32*
  store i32* %471, i32** %20, align 8
  %472 = load i32*, i32** %20, align 8
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @Swap32NtoB(i32 noundef %473) #2
  store i32 %474, i32* %60, align 4
  %475 = load i32, i32* %55, align 4
  %476 = and i32 %475, 7
  %477 = sub i32 32, %476
  %478 = load i32, i32* %56, align 4
  %479 = sub i32 %477, %478
  store i32 %479, i32* %61, align 4
  %480 = load i32, i32* %56, align 4
  %481 = sub i32 32, %480
  %482 = lshr i32 -1, %481
  store i32 %482, i32* %59, align 4
  %483 = load i32, i32* %61, align 4
  %484 = load i32, i32* %59, align 4
  %485 = shl i32 %484, %483
  store i32 %485, i32* %59, align 4
  %486 = load i32, i32* %57, align 4
  %487 = load i32, i32* %61, align 4
  %488 = shl i32 %486, %487
  %489 = load i32, i32* %59, align 4
  %490 = and i32 %488, %489
  store i32 %490, i32* %57, align 4
  %491 = load i32, i32* %60, align 4
  %492 = load i32, i32* %59, align 4
  %493 = xor i32 %492, -1
  %494 = and i32 %491, %493
  %495 = load i32, i32* %57, align 4
  %496 = or i32 %495, %494
  store i32 %496, i32* %57, align 4
  %497 = load i32*, i32** %58, align 8
  %498 = bitcast i32* %497 to i8*
  %499 = load i32, i32* %57, align 4
  store i8* %498, i8** %7, align 8
  store i32 %499, i32* %8, align 4
  %500 = load i8*, i8** %7, align 8
  %501 = bitcast i8* %500 to i32*
  store i32* %501, i32** %9, align 8
  %502 = load i32, i32* %8, align 4
  %503 = call i32 @Swap32BtoN(i32 noundef %502) #2
  %504 = load i32*, i32** %9, align 8
  store i32 %503, i32* %504, align 4
  %505 = load i32, i32* %84, align 4
  %506 = load i32, i32* %76, align 4
  %507 = add i32 %506, %505
  store i32 %507, i32* %76, align 4
  store i32 0, i32* %91, align 4
  br label %508

508:                                              ; preds = %441, %405, %401
  br label %137, !llvm.loop !6

509:                                              ; preds = %137
  %510 = load i32, i32* %76, align 4
  %511 = load i32, i32* %77, align 4
  %512 = sub i32 %510, %511
  %513 = load i32*, i32** %74, align 8
  store i32 %512, i32* %513, align 4
  %514 = load %struct.BitBuffer*, %struct.BitBuffer** %71, align 8
  %515 = load i32*, i32** %74, align 8
  %516 = load i32, i32* %515, align 4
  call void @BitBufferAdvance(%struct.BitBuffer* noundef %514, i32 noundef %516)
  br label %517

517:                                              ; preds = %509, %400
  %518 = load i32, i32* %90, align 4
  store i32 %518, i32* %68, align 4
  br label %519

519:                                              ; preds = %517, %114
  %520 = load i32, i32* %68, align 4
  ret i32 %520
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dyn_code_32bit(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef %4, i32* noundef %5, i32* noundef %6, i32* noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ult i32 %26, 9
  br i1 %27, label %28, label %59

28:                                               ; preds = %8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %17, align 4
  %32 = mul i32 %30, %31
  %33 = sub i32 %29, %32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %37, %38
  %40 = add i32 %39, 1
  %41 = load i32, i32* %19, align 4
  %42 = sub i32 %40, %41
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %17, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sub i32 %46, %47
  %49 = shl i32 %45, %48
  %50 = load i32, i32* %18, align 4
  %51 = add i32 %49, %50
  %52 = add i32 %51, 1
  %53 = load i32, i32* %19, align 4
  %54 = sub i32 %52, %53
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp ugt i32 %55, 25
  br i1 %56, label %57, label %58

57:                                               ; preds = %28
  br label %60

58:                                               ; preds = %28
  br label %65

59:                                               ; preds = %8
  br label %60

60:                                               ; preds = %59, %57
  store i32 9, i32* %20, align 4
  store i32 511, i32* %21, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %15, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %16, align 8
  store i32 %63, i32* %64, align 4
  store i32 1, i32* %22, align 4
  br label %65

65:                                               ; preds = %60, %58
  %66 = load i32, i32* %20, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32*, i32** %14, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %22, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lead(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 2147483648, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %9, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %21

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = lshr i64 %16, 1
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %5, !llvm.loop !7

21:                                               ; preds = %14, %5
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dyn_code(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp uge i32 %17, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  store i32 25, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 33488896, %20
  store i32 %21, i32* %13, align 4
  br label %53

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %29, %30
  %32 = add i32 %31, 1
  %33 = load i32, i32* %11, align 4
  %34 = sub i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub i32 %38, %39
  %41 = shl i32 %37, %40
  %42 = load i32, i32* %10, align 4
  %43 = add i32 %41, %42
  %44 = add i32 %43, 1
  %45 = load i32, i32* %11, align 4
  %46 = sub i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ugt i32 %47, 25
  br i1 %48, label %49, label %52

49:                                               ; preds = %22
  store i32 25, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 33488896, %50
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %49, %22
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  ret i32 %56
}

declare dso_local void @BitBufferAdvance(%struct.BitBuffer* noundef, i32 noundef) #1

declare dso_local i32 @Swap32NtoB(i32 noundef) #1

declare dso_local i32 @Swap32BtoN(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
