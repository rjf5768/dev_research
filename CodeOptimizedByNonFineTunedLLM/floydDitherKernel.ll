; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Dither/floydDitherKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Dither/floydDitherKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @floydDitherKernel(i32 noundef %0, i32 noundef %1, [512 x i32]* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [512 x i32]*, align 8
  %8 = alloca i32*, align 8
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [512 x i32]* %2, [512 x i32]** %7, align 8
  store i32* %3, i32** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %56, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load [512 x i32]*, [512 x i32]** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [512 x i32], [512 x i32]* %36, i64 %38
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [512 x i32], [512 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %25
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %43, i32* %51, align 4
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %31, !llvm.loop !4

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %26, !llvm.loop !6

59:                                               ; preds = %26
  store i32 1, i32* %16, align 4
  br label %60

60:                                               ; preds = %349, %59
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %352

65:                                               ; preds = %60
  store i32 1, i32* %17, align 4
  br label %66

66:                                               ; preds = %345, %65
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %348

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, %25
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 127
  br i1 %81, label %82, label %101

82:                                               ; preds = %71
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, %25
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 255
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, %25
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 255, i32* %100, align 4
  br label %120

101:                                              ; preds = %71
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %25
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 0
  store i32 %111, i32* %11, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = mul nsw i64 %114, %25
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %101, %82
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 %121, 7
  %123 = sdiv i32 %122, 16
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %124, 1
  %126 = sdiv i32 %125, 16
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %127, 5
  %129 = sdiv i32 %128, 16
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %130, 3
  %132 = sdiv i32 %131, 16
  store i32 %132, i32* %15, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %25
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp sgt i32 %145, 255
  br i1 %146, label %147, label %157

147:                                              ; preds = %120
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, %25
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 255, i32* %156, align 4
  br label %182

157:                                              ; preds = %120
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %163, %25
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 0, i32* %169, align 4
  br label %181

170:                                              ; preds = %157
  %171 = load i32, i32* %18, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %174, %25
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %171, i32* %180, align 4
  br label %181

181:                                              ; preds = %170, %160
  br label %182

182:                                              ; preds = %181, %147
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = mul nsw i64 %186, %25
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %193, %194
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %19, align 4
  %197 = icmp sgt i32 %196, 255
  br i1 %197, label %198, label %209

198:                                              ; preds = %182
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* %16, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %202, %25
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 255, i32* %208, align 4
  br label %236

209:                                              ; preds = %182
  %210 = load i32, i32* %19, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load i32*, i32** %8, align 8
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = mul nsw i64 %216, %25
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  store i32 0, i32* %222, align 4
  br label %235

223:                                              ; preds = %209
  %224 = load i32, i32* %19, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %228, %25
  %230 = getelementptr inbounds i32, i32* %225, i64 %229
  %231 = load i32, i32* %17, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  store i32 %224, i32* %234, align 4
  br label %235

235:                                              ; preds = %223, %212
  br label %236

236:                                              ; preds = %235, %198
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = mul nsw i64 %240, %25
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, 0
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %247, %248
  store i32 %249, i32* %20, align 4
  %250 = load i32, i32* %20, align 4
  %251 = icmp sgt i32 %250, 255
  br i1 %251, label %252, label %263

252:                                              ; preds = %236
  %253 = load i32*, i32** %8, align 8
  %254 = load i32, i32* %16, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = mul nsw i64 %256, %25
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* %17, align 4
  %260 = add nsw i32 %259, 0
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 255, i32* %262, align 4
  br label %290

263:                                              ; preds = %236
  %264 = load i32, i32* %20, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %263
  %267 = load i32*, i32** %8, align 8
  %268 = load i32, i32* %16, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = mul nsw i64 %270, %25
  %272 = getelementptr inbounds i32, i32* %267, i64 %271
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, 0
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  store i32 0, i32* %276, align 4
  br label %289

277:                                              ; preds = %263
  %278 = load i32, i32* %20, align 4
  %279 = load i32*, i32** %8, align 8
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = mul nsw i64 %282, %25
  %284 = getelementptr inbounds i32, i32* %279, i64 %283
  %285 = load i32, i32* %17, align 4
  %286 = add nsw i32 %285, 0
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  store i32 %278, i32* %288, align 4
  br label %289

289:                                              ; preds = %277, %266
  br label %290

290:                                              ; preds = %289, %252
  %291 = load i32*, i32** %8, align 8
  %292 = load i32, i32* %16, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = mul nsw i64 %294, %25
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  %297 = load i32, i32* %17, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %15, align 4
  %303 = add nsw i32 %301, %302
  store i32 %303, i32* %21, align 4
  %304 = load i32, i32* %21, align 4
  %305 = icmp sgt i32 %304, 255
  br i1 %305, label %306, label %317

306:                                              ; preds = %290
  %307 = load i32*, i32** %8, align 8
  %308 = load i32, i32* %16, align 4
  %309 = add nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = mul nsw i64 %310, %25
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = load i32, i32* %17, align 4
  %314 = sub nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32 255, i32* %316, align 4
  br label %344

317:                                              ; preds = %290
  %318 = load i32, i32* %21, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %331

320:                                              ; preds = %317
  %321 = load i32*, i32** %8, align 8
  %322 = load i32, i32* %16, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = mul nsw i64 %324, %25
  %326 = getelementptr inbounds i32, i32* %321, i64 %325
  %327 = load i32, i32* %17, align 4
  %328 = sub nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  store i32 0, i32* %330, align 4
  br label %343

331:                                              ; preds = %317
  %332 = load i32, i32* %21, align 4
  %333 = load i32*, i32** %8, align 8
  %334 = load i32, i32* %16, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = mul nsw i64 %336, %25
  %338 = getelementptr inbounds i32, i32* %333, i64 %337
  %339 = load i32, i32* %17, align 4
  %340 = sub nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %332, i32* %342, align 4
  br label %343

343:                                              ; preds = %331, %320
  br label %344

344:                                              ; preds = %343, %306
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %17, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %17, align 4
  br label %66, !llvm.loop !7

348:                                              ; preds = %66
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %16, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %16, align 4
  br label %60, !llvm.loop !8

352:                                              ; preds = %60
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
