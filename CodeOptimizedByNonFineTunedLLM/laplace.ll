; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/laplace.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/laplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 noundef %0, i32 noundef %1, i32 noundef %2, double* noundef %3, %struct.hypre_Vector** noundef %4, %struct.hypre_Vector** noundef %5, %struct.hypre_Vector** noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca %struct.hypre_Vector**, align 8
  %13 = alloca %struct.hypre_Vector**, align 8
  %14 = alloca %struct.hypre_Vector**, align 8
  %15 = alloca %struct.hypre_CSRMatrix*, align 8
  %16 = alloca %struct.hypre_Vector*, align 8
  %17 = alloca %struct.hypre_Vector*, align 8
  %18 = alloca %struct.hypre_Vector*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store double* %3, double** %11, align 8
  store %struct.hypre_Vector** %4, %struct.hypre_Vector*** %12, align 8
  store %struct.hypre_Vector** %5, %struct.hypre_Vector*** %13, align 8
  store %struct.hypre_Vector** %6, %struct.hypre_Vector*** %14, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %32, align 4
  %38 = load i32, i32* %32, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i8* @hypre_CAlloc(i32 noundef %39, i32 noundef 4)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %22, align 8
  %42 = load i32, i32* %32, align 4
  %43 = call i8* @hypre_CAlloc(i32 noundef %42, i32 noundef 8)
  %44 = bitcast i8* %43 to double*
  store double* %44, double** %19, align 8
  %45 = load i32, i32* %32, align 4
  %46 = call i8* @hypre_CAlloc(i32 noundef %45, i32 noundef 8)
  %47 = bitcast i8* %46 to double*
  store double* %47, double** %20, align 8
  %48 = load i32, i32* %32, align 4
  %49 = call i8* @hypre_CAlloc(i32 noundef %48, i32 noundef 8)
  %50 = bitcast i8* %49 to double*
  store double* %50, double** %21, align 8
  store i32 0, i32* %30, align 4
  br label %51

51:                                               ; preds = %68, %7
  %52 = load i32, i32* %30, align 4
  %53 = load i32, i32* %32, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load double*, double** %20, align 8
  %57 = load i32, i32* %30, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double 0.000000e+00, double* %59, align 8
  %60 = load double*, double** %21, align 8
  %61 = load i32, i32* %30, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double 0.000000e+00, double* %63, align 8
  %64 = load double*, double** %19, align 8
  %65 = load i32, i32* %30, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  store double 1.000000e+00, double* %67, align 8
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %30, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %30, align 4
  br label %51, !llvm.loop !4

71:                                               ; preds = %51
  store i32 1, i32* %28, align 4
  %72 = load i32*, i32** %22, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 0, i32* %73, align 4
  store i32 0, i32* %27, align 4
  br label %74

74:                                               ; preds = %181, %71
  %75 = load i32, i32* %27, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %184

78:                                               ; preds = %74
  store i32 0, i32* %26, align 4
  br label %79

79:                                               ; preds = %177, %78
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %180

83:                                               ; preds = %79
  store i32 0, i32* %25, align 4
  br label %84

84:                                               ; preds = %173, %83
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %176

88:                                               ; preds = %84
  %89 = load i32*, i32** %22, align 8
  %90 = load i32, i32* %28, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %22, align 8
  %96 = load i32, i32* %28, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load i32*, i32** %22, align 8
  %100 = load i32, i32* %28, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %27, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %88
  %108 = load i32*, i32** %22, align 8
  %109 = load i32, i32* %28, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %88
  %115 = load i32, i32* %26, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32*, i32** %22, align 8
  %119 = load i32, i32* %28, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %114
  %125 = load i32, i32* %25, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32*, i32** %22, align 8
  %129 = load i32, i32* %28, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %124
  %135 = load i32, i32* %25, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32*, i32** %22, align 8
  %141 = load i32, i32* %28, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %139, %134
  %147 = load i32, i32* %26, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32*, i32** %22, align 8
  %153 = load i32, i32* %28, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32, i32* %27, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i32*, i32** %22, align 8
  %165 = load i32, i32* %28, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %163, %158
  %171 = load i32, i32* %28, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %28, align 4
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %25, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %25, align 4
  br label %84, !llvm.loop !6

176:                                              ; preds = %84
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %26, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %26, align 4
  br label %79, !llvm.loop !7

180:                                              ; preds = %79
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %27, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %27, align 4
  br label %74, !llvm.loop !8

184:                                              ; preds = %74
  %185 = load i32*, i32** %22, align 8
  %186 = load i32, i32* %32, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @hypre_CAlloc(i32 noundef %189, i32 noundef 4)
  %191 = bitcast i8* %190 to i32*
  store i32* %191, i32** %23, align 8
  %192 = load i32*, i32** %22, align 8
  %193 = load i32, i32* %32, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @hypre_CAlloc(i32 noundef %196, i32 noundef 8)
  %198 = bitcast i8* %197 to double*
  store double* %198, double** %24, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %199

199:                                              ; preds = %359, %184
  %200 = load i32, i32* %27, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %362

203:                                              ; preds = %199
  store i32 0, i32* %26, align 4
  br label %204

204:                                              ; preds = %355, %203
  %205 = load i32, i32* %26, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %358

208:                                              ; preds = %204
  store i32 0, i32* %25, align 4
  br label %209

209:                                              ; preds = %351, %208
  %210 = load i32, i32* %25, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %354

213:                                              ; preds = %209
  %214 = load i32, i32* %29, align 4
  %215 = load i32*, i32** %23, align 8
  %216 = load i32, i32* %28, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  %219 = load double*, double** %11, align 8
  %220 = getelementptr inbounds double, double* %219, i64 0
  %221 = load double, double* %220, align 8
  %222 = load double*, double** %24, align 8
  %223 = load i32, i32* %28, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %28, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds double, double* %222, i64 %225
  store double %221, double* %226, align 8
  %227 = load i32, i32* %27, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %247

229:                                              ; preds = %213
  %230 = load i32, i32* %29, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %9, align 4
  %233 = mul nsw i32 %231, %232
  %234 = sub nsw i32 %230, %233
  %235 = load i32*, i32** %23, align 8
  %236 = load i32, i32* %28, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %234, i32* %238, align 4
  %239 = load double*, double** %11, align 8
  %240 = getelementptr inbounds double, double* %239, i64 3
  %241 = load double, double* %240, align 8
  %242 = load double*, double** %24, align 8
  %243 = load i32, i32* %28, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %28, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds double, double* %242, i64 %245
  store double %241, double* %246, align 8
  br label %247

247:                                              ; preds = %229, %213
  %248 = load i32, i32* %26, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %247
  %251 = load i32, i32* %29, align 4
  %252 = load i32, i32* %8, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32*, i32** %23, align 8
  %255 = load i32, i32* %28, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %253, i32* %257, align 4
  %258 = load double*, double** %11, align 8
  %259 = getelementptr inbounds double, double* %258, i64 2
  %260 = load double, double* %259, align 8
  %261 = load double*, double** %24, align 8
  %262 = load i32, i32* %28, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %28, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds double, double* %261, i64 %264
  store double %260, double* %265, align 8
  br label %266

266:                                              ; preds = %250, %247
  %267 = load i32, i32* %25, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %266
  %270 = load i32, i32* %29, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load i32*, i32** %23, align 8
  %273 = load i32, i32* %28, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %271, i32* %275, align 4
  %276 = load double*, double** %11, align 8
  %277 = getelementptr inbounds double, double* %276, i64 1
  %278 = load double, double* %277, align 8
  %279 = load double*, double** %24, align 8
  %280 = load i32, i32* %28, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %28, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds double, double* %279, i64 %282
  store double %278, double* %283, align 8
  br label %284

284:                                              ; preds = %269, %266
  %285 = load i32, i32* %25, align 4
  %286 = add nsw i32 %285, 1
  %287 = load i32, i32* %8, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %304

289:                                              ; preds = %284
  %290 = load i32, i32* %29, align 4
  %291 = add nsw i32 %290, 1
  %292 = load i32*, i32** %23, align 8
  %293 = load i32, i32* %28, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %291, i32* %295, align 4
  %296 = load double*, double** %11, align 8
  %297 = getelementptr inbounds double, double* %296, i64 1
  %298 = load double, double* %297, align 8
  %299 = load double*, double** %24, align 8
  %300 = load i32, i32* %28, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %28, align 4
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds double, double* %299, i64 %302
  store double %298, double* %303, align 8
  br label %304

304:                                              ; preds = %289, %284
  %305 = load i32, i32* %26, align 4
  %306 = add nsw i32 %305, 1
  %307 = load i32, i32* %9, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %325

309:                                              ; preds = %304
  %310 = load i32, i32* %29, align 4
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %310, %311
  %313 = load i32*, i32** %23, align 8
  %314 = load i32, i32* %28, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %312, i32* %316, align 4
  %317 = load double*, double** %11, align 8
  %318 = getelementptr inbounds double, double* %317, i64 2
  %319 = load double, double* %318, align 8
  %320 = load double*, double** %24, align 8
  %321 = load i32, i32* %28, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %28, align 4
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds double, double* %320, i64 %323
  store double %319, double* %324, align 8
  br label %325

325:                                              ; preds = %309, %304
  %326 = load i32, i32* %27, align 4
  %327 = add nsw i32 %326, 1
  %328 = load i32, i32* %10, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %348

330:                                              ; preds = %325
  %331 = load i32, i32* %29, align 4
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* %9, align 4
  %334 = mul nsw i32 %332, %333
  %335 = add nsw i32 %331, %334
  %336 = load i32*, i32** %23, align 8
  %337 = load i32, i32* %28, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %335, i32* %339, align 4
  %340 = load double*, double** %11, align 8
  %341 = getelementptr inbounds double, double* %340, i64 3
  %342 = load double, double* %341, align 8
  %343 = load double*, double** %24, align 8
  %344 = load i32, i32* %28, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %28, align 4
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds double, double* %343, i64 %346
  store double %342, double* %347, align 8
  br label %348

348:                                              ; preds = %330, %325
  %349 = load i32, i32* %29, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %29, align 4
  br label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %25, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %25, align 4
  br label %209, !llvm.loop !9

354:                                              ; preds = %209
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %26, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %26, align 4
  br label %204, !llvm.loop !10

358:                                              ; preds = %204
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %27, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %27, align 4
  br label %199, !llvm.loop !11

362:                                              ; preds = %199
  %363 = load i32, i32* %32, align 4
  %364 = load i32, i32* %32, align 4
  %365 = load i32*, i32** %22, align 8
  %366 = load i32, i32* %32, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %363, i32 noundef %364, i32 noundef %369)
  store %struct.hypre_CSRMatrix* %370, %struct.hypre_CSRMatrix** %15, align 8
  %371 = load i32, i32* %32, align 4
  %372 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef %371)
  store %struct.hypre_Vector* %372, %struct.hypre_Vector** %16, align 8
  %373 = load double*, double** %19, align 8
  %374 = load %struct.hypre_Vector*, %struct.hypre_Vector** %16, align 8
  %375 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %374, i32 0, i32 0
  store double* %373, double** %375, align 8
  %376 = load i32, i32* %32, align 4
  %377 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef %376)
  store %struct.hypre_Vector* %377, %struct.hypre_Vector** %17, align 8
  %378 = load double*, double** %20, align 8
  %379 = load %struct.hypre_Vector*, %struct.hypre_Vector** %17, align 8
  %380 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %379, i32 0, i32 0
  store double* %378, double** %380, align 8
  store i32 0, i32* %30, align 4
  br label %381

381:                                              ; preds = %416, %362
  %382 = load i32, i32* %30, align 4
  %383 = load i32, i32* %32, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %419

385:                                              ; preds = %381
  %386 = load i32*, i32** %22, align 8
  %387 = load i32, i32* %30, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %31, align 4
  br label %391

391:                                              ; preds = %412, %385
  %392 = load i32, i32* %31, align 4
  %393 = load i32*, i32** %22, align 8
  %394 = load i32, i32* %30, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %393, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = icmp slt i32 %392, %398
  br i1 %399, label %400, label %415

400:                                              ; preds = %391
  %401 = load double*, double** %24, align 8
  %402 = load i32, i32* %31, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %401, i64 %403
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %21, align 8
  %407 = load i32, i32* %30, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds double, double* %406, i64 %408
  %410 = load double, double* %409, align 8
  %411 = fadd double %410, %405
  store double %411, double* %409, align 8
  br label %412

412:                                              ; preds = %400
  %413 = load i32, i32* %31, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %31, align 4
  br label %391, !llvm.loop !12

415:                                              ; preds = %391
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %30, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %30, align 4
  br label %381, !llvm.loop !13

419:                                              ; preds = %381
  %420 = load i32, i32* %32, align 4
  %421 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef %420)
  store %struct.hypre_Vector* %421, %struct.hypre_Vector** %18, align 8
  %422 = load double*, double** %21, align 8
  %423 = load %struct.hypre_Vector*, %struct.hypre_Vector** %18, align 8
  %424 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %423, i32 0, i32 0
  store double* %422, double** %424, align 8
  %425 = load i32*, i32** %22, align 8
  %426 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  %427 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %426, i32 0, i32 1
  store i32* %425, i32** %427, align 8
  %428 = load i32*, i32** %23, align 8
  %429 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  %430 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %429, i32 0, i32 2
  store i32* %428, i32** %430, align 8
  %431 = load double*, double** %24, align 8
  %432 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  %433 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %432, i32 0, i32 0
  store double* %431, double** %433, align 8
  %434 = load %struct.hypre_Vector*, %struct.hypre_Vector** %16, align 8
  %435 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %12, align 8
  store %struct.hypre_Vector* %434, %struct.hypre_Vector** %435, align 8
  %436 = load %struct.hypre_Vector*, %struct.hypre_Vector** %17, align 8
  %437 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %13, align 8
  store %struct.hypre_Vector* %436, %struct.hypre_Vector** %437, align 8
  %438 = load %struct.hypre_Vector*, %struct.hypre_Vector** %18, align 8
  %439 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %14, align 8
  store %struct.hypre_Vector* %438, %struct.hypre_Vector** %439, align 8
  %440 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  ret %struct.hypre_CSRMatrix* %440
}

declare dso_local i8* @hypre_CAlloc(i32 noundef, i32 noundef) #1

declare dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef) #1

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
