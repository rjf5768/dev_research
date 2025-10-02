; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/HuffEnc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/HuffEnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Huffman_Generate(i32* noundef %0, i32* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i32], align 16
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
  %25 = alloca [17 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [17 x i32], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %40, %5
  %34 = load i32, i32* %12, align 4
  %35 = icmp ult i32 %34, 64
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %38
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %33, !llvm.loop !4

43:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ult i32 %54, 63
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %14, align 4
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 63, %58 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %44, !llvm.loop !6

68:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %12, align 4
  %71 = icmp ult i32 %70, 64
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %69, !llvm.loop !7

87:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %125, %87
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  br label %124

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %16, align 4
  %108 = shl i32 %107, 10
  %109 = or i32 %106, %108
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %16, align 4
  %112 = icmp ult i32 %111, 63
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %16, align 4
  br label %116

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 63, %115 ]
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %110, i64 %122
  store i32 %109, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %100
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %12, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %88, !llvm.loop !8

128:                                              ; preds = %88
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %129, align 16
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 62
  %132 = load i32, i32* %131, align 8
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 63
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 62
  %138 = load i32, i32* %137, align 8
  %139 = sub i32 %136, %138
  call void @HeapSort(i32* noundef %134, i32 noundef %139)
  %140 = load i32, i32* %11, align 4
  %141 = icmp ult i32 %140, 2
  br i1 %141, label %142, label %173

142:                                              ; preds = %128
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 1023
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* %18, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %152, %145
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %17, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 0, i32* %160, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %18, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 1, i32* %164, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %18, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 1, i8* %168, align 1
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* %17, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  store i8 1, i8* %172, align 1
  br label %445

173:                                              ; preds = %128
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %174

174:                                              ; preds = %287, %173
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %174
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %20, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %196, label %182

182:                                              ; preds = %178
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %21, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = lshr i32 %187, 10
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %19, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = lshr i32 %193, 10
  %195 = icmp ule i32 %188, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %182, %178
  %197 = load i32, i32* %21, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %21, align 4
  br label %202

199:                                              ; preds = %182, %174
  %200 = load i32, i32* %19, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i32 [ %197, %196 ], [ %200, %199 ]
  store i32 %203, i32* %22, align 4
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %22, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, -1024
  store i32 %209, i32* %24, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %22, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 1023
  %216 = load i32, i32* %20, align 4
  %217 = shl i32 %216, 10
  %218 = or i32 %215, %217
  %219 = load i32*, i32** %7, align 8
  %220 = load i32, i32* %22, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %218, i32* %222, align 4
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %247

226:                                              ; preds = %202
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %20, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %244, label %230

230:                                              ; preds = %226
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %21, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = lshr i32 %235, 10
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %19, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = lshr i32 %241, 10
  %243 = icmp ule i32 %236, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %230, %226
  %245 = load i32, i32* %21, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %21, align 4
  br label %250

247:                                              ; preds = %230, %202
  %248 = load i32, i32* %19, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %19, align 4
  br label %250

250:                                              ; preds = %247, %244
  %251 = phi i32 [ %245, %244 ], [ %248, %247 ]
  store i32 %251, i32* %23, align 4
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %23, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, -1024
  %258 = load i32, i32* %24, align 4
  %259 = add i32 %258, %257
  store i32 %259, i32* %24, align 4
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %23, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 1023
  %266 = load i32, i32* %20, align 4
  %267 = shl i32 %266, 10
  %268 = or i32 %265, %267
  %269 = load i32*, i32** %7, align 8
  %270 = load i32, i32* %23, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %268, i32* %272, align 4
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %20, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 1023
  %279 = load i32, i32* %24, align 4
  %280 = or i32 %278, %279
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %20, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 %280, i32* %284, align 4
  %285 = load i32, i32* %20, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %20, align 4
  br label %287

287:                                              ; preds = %250
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %20, align 4
  %290 = sub i32 %288, %289
  %291 = icmp ugt i32 %290, 1
  br i1 %291, label %174, label %292, !llvm.loop !9

292:                                              ; preds = %287
  store i32 0, i32* %21, align 4
  br label %293

293:                                              ; preds = %300, %292
  %294 = load i32, i32* %21, align 4
  %295 = icmp ule i32 %294, 16
  br i1 %295, label %296, label %303

296:                                              ; preds = %293
  %297 = load i32, i32* %21, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds [17 x i32], [17 x i32]* %25, i64 0, i64 %298
  store i32 0, i32* %299, align 4
  br label %300

300:                                              ; preds = %296
  %301 = load i32, i32* %21, align 4
  %302 = add i32 %301, 1
  store i32 %302, i32* %21, align 4
  br label %293, !llvm.loop !10

303:                                              ; preds = %293
  %304 = load i32*, i32** %7, align 8
  %305 = load i32, i32* %20, align 4
  %306 = add i32 %305, -1
  store i32 %306, i32* %20, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 1023
  store i32 %310, i32* %308, align 4
  %311 = getelementptr inbounds [17 x i32], [17 x i32]* %25, i64 0, i64 1
  store i32 2, i32* %311, align 4
  br label %312

312:                                              ; preds = %359, %303
  %313 = load i32, i32* %20, align 4
  %314 = icmp ugt i32 %313, 0
  br i1 %314, label %315, label %371

315:                                              ; preds = %312
  %316 = load i32*, i32** %7, align 8
  %317 = load i32*, i32** %7, align 8
  %318 = load i32, i32* %20, align 4
  %319 = add i32 %318, -1
  store i32 %319, i32* %20, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = lshr i32 %322, 10
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %316, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = lshr i32 %326, 10
  %328 = add i32 %327, 1
  store i32 %328, i32* %26, align 4
  %329 = load i32*, i32** %7, align 8
  %330 = load i32, i32* %20, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, 1023
  %335 = load i32, i32* %26, align 4
  %336 = shl i32 %335, 10
  %337 = or i32 %334, %336
  %338 = load i32*, i32** %7, align 8
  %339 = load i32, i32* %20, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32 %337, i32* %341, align 4
  %342 = load i32, i32* %26, align 4
  %343 = load i32, i32* %10, align 4
  %344 = icmp uge i32 %342, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %315
  %346 = load i32, i32* %10, align 4
  %347 = sub i32 %346, 1
  store i32 %347, i32* %26, align 4
  br label %348

348:                                              ; preds = %355, %345
  %349 = load i32, i32* %26, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds [17 x i32], [17 x i32]* %25, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %26, align 4
  %357 = add i32 %356, -1
  store i32 %357, i32* %26, align 4
  br label %348, !llvm.loop !11

358:                                              ; preds = %348
  br label %359

359:                                              ; preds = %358, %315
  %360 = load i32, i32* %26, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds [17 x i32], [17 x i32]* %25, i64 0, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = add i32 %363, -1
  store i32 %364, i32* %362, align 4
  %365 = load i32, i32* %26, align 4
  %366 = add i32 %365, 1
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [17 x i32], [17 x i32]* %25, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = add i32 %369, 2
  store i32 %370, i32* %368, align 4
  br label %312, !llvm.loop !12

371:                                              ; preds = %312
  store i32 0, i32* %21, align 4
  %372 = load i32, i32* %10, align 4
  store i32 %372, i32* %27, align 4
  br label %373

373:                                              ; preds = %401, %371
  %374 = load i32, i32* %27, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %404

376:                                              ; preds = %373
  %377 = load i32, i32* %27, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [17 x i32], [17 x i32]* %25, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %28, align 4
  br label %381

381:                                              ; preds = %397, %376
  %382 = load i32, i32* %28, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %400

384:                                              ; preds = %381
  %385 = load i32, i32* %27, align 4
  %386 = trunc i32 %385 to i8
  %387 = load i8*, i8** %8, align 8
  %388 = load i32*, i32** %7, align 8
  %389 = load i32, i32* %21, align 4
  %390 = add i32 %389, 1
  store i32 %390, i32* %21, align 4
  %391 = zext i32 %389 to i64
  %392 = getelementptr inbounds i32, i32* %388, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, 1023
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds i8, i8* %387, i64 %395
  store i8 %386, i8* %396, align 1
  br label %397

397:                                              ; preds = %384
  %398 = load i32, i32* %28, align 4
  %399 = add i32 %398, -1
  store i32 %399, i32* %28, align 4
  br label %381, !llvm.loop !13

400:                                              ; preds = %381
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %27, align 4
  %403 = add i32 %402, -1
  store i32 %403, i32* %27, align 4
  br label %373, !llvm.loop !14

404:                                              ; preds = %373
  store i32 0, i32* %30, align 4
  store i32 1, i32* %31, align 4
  br label %405

405:                                              ; preds = %420, %404
  %406 = load i32, i32* %31, align 4
  %407 = icmp ule i32 %406, 16
  br i1 %407, label %408, label %423

408:                                              ; preds = %405
  %409 = load i32, i32* %30, align 4
  %410 = load i32, i32* %31, align 4
  %411 = sub i32 %410, 1
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [17 x i32], [17 x i32]* %25, i64 0, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add i32 %409, %414
  %416 = shl i32 %415, 1
  store i32 %416, i32* %30, align 4
  %417 = load i32, i32* %31, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds [17 x i32], [17 x i32]* %29, i64 0, i64 %418
  store i32 %416, i32* %419, align 4
  br label %420

420:                                              ; preds = %408
  %421 = load i32, i32* %31, align 4
  %422 = add i32 %421, 1
  store i32 %422, i32* %31, align 4
  br label %405, !llvm.loop !15

423:                                              ; preds = %405
  store i32 0, i32* %32, align 4
  br label %424

424:                                              ; preds = %442, %423
  %425 = load i32, i32* %32, align 4
  %426 = load i32, i32* %9, align 4
  %427 = icmp ult i32 %425, %426
  br i1 %427, label %428, label %445

428:                                              ; preds = %424
  %429 = load i8*, i8** %8, align 8
  %430 = load i32, i32* %32, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %429, i64 %431
  %433 = load i8, i8* %432, align 1
  %434 = zext i8 %433 to i64
  %435 = getelementptr inbounds [17 x i32], [17 x i32]* %29, i64 0, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = add i32 %436, 1
  store i32 %437, i32* %435, align 4
  %438 = load i32*, i32** %7, align 8
  %439 = load i32, i32* %32, align 4
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  store i32 %436, i32* %441, align 4
  br label %442

442:                                              ; preds = %428
  %443 = load i32, i32* %32, align 4
  %444 = add i32 %443, 1
  store i32 %444, i32* %32, align 4
  br label %424, !llvm.loop !16

445:                                              ; preds = %156, %424
  ret void
}

declare dso_local void @HeapSort(i32* noundef, i32 noundef) #1

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
