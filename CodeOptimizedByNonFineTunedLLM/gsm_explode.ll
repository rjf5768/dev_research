; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_explode.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_explode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gsm_explode(%struct.gsm_state* noundef %0, i8* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsm_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  store %struct.gsm_state* %0, %struct.gsm_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16* %2, i16** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 4
  %12 = and i32 %11, 15
  %13 = icmp ne i32 %12, 13
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %1053

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %6, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 15
  %21 = shl i32 %20, 2
  %22 = trunc i32 %21 to i16
  %23 = load i16*, i16** %7, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 %22, i16* %24, align 2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = ashr i32 %27, 6
  %29 = and i32 %28, 3
  %30 = load i16*, i16** %7, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 0
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = or i32 %33, %29
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %31, align 2
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 63
  %41 = trunc i32 %40 to i16
  %42 = load i16*, i16** %7, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 1
  store i16 %41, i16* %43, align 2
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = ashr i32 %46, 3
  %48 = and i32 %47, 31
  %49 = trunc i32 %48 to i16
  %50 = load i16*, i16** %7, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 2
  store i16 %49, i16* %51, align 2
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 7
  %57 = shl i32 %56, 2
  %58 = trunc i32 %57 to i16
  %59 = load i16*, i16** %7, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 3
  store i16 %58, i16* %60, align 2
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = ashr i32 %63, 6
  %65 = and i32 %64, 3
  %66 = load i16*, i16** %7, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 3
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = or i32 %69, %65
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 2
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = ashr i32 %74, 2
  %76 = and i32 %75, 15
  %77 = trunc i32 %76 to i16
  %78 = load i16*, i16** %7, align 8
  %79 = getelementptr inbounds i16, i16* %78, i64 4
  store i16 %77, i16* %79, align 2
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 3
  %85 = shl i32 %84, 2
  %86 = trunc i32 %85 to i16
  %87 = load i16*, i16** %7, align 8
  %88 = getelementptr inbounds i16, i16* %87, i64 5
  store i16 %86, i16* %88, align 2
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = ashr i32 %91, 6
  %93 = and i32 %92, 3
  %94 = load i16*, i16** %7, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 5
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = or i32 %97, %93
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %95, align 2
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = ashr i32 %102, 3
  %104 = and i32 %103, 7
  %105 = trunc i32 %104 to i16
  %106 = load i16*, i16** %7, align 8
  %107 = getelementptr inbounds i16, i16* %106, i64 6
  store i16 %105, i16* %107, align 2
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  %110 = load i8, i8* %108, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 7
  %113 = trunc i32 %112 to i16
  %114 = load i16*, i16** %7, align 8
  %115 = getelementptr inbounds i16, i16* %114, i64 7
  store i16 %113, i16* %115, align 2
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = ashr i32 %118, 1
  %120 = and i32 %119, 127
  %121 = trunc i32 %120 to i16
  %122 = load i16*, i16** %7, align 8
  %123 = getelementptr inbounds i16, i16* %122, i64 8
  %124 = getelementptr inbounds i16, i16* %123, i64 0
  store i16 %121, i16* %124, align 2
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %6, align 8
  %127 = load i8, i8* %125, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 1
  %130 = shl i32 %129, 1
  %131 = trunc i32 %130 to i16
  %132 = load i16*, i16** %7, align 8
  %133 = getelementptr inbounds i16, i16* %132, i64 9
  %134 = getelementptr inbounds i16, i16* %133, i64 0
  store i16 %131, i16* %134, align 2
  %135 = load i8*, i8** %6, align 8
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = ashr i32 %137, 7
  %139 = and i32 %138, 1
  %140 = load i16*, i16** %7, align 8
  %141 = getelementptr inbounds i16, i16* %140, i64 9
  %142 = getelementptr inbounds i16, i16* %141, i64 0
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i32
  %145 = or i32 %144, %139
  %146 = trunc i32 %145 to i16
  store i16 %146, i16* %142, align 2
  %147 = load i8*, i8** %6, align 8
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = ashr i32 %149, 5
  %151 = and i32 %150, 3
  %152 = trunc i32 %151 to i16
  %153 = load i16*, i16** %7, align 8
  %154 = getelementptr inbounds i16, i16* %153, i64 10
  %155 = getelementptr inbounds i16, i16* %154, i64 0
  store i16 %152, i16* %155, align 2
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %6, align 8
  %158 = load i8, i8* %156, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, 31
  %161 = shl i32 %160, 1
  %162 = trunc i32 %161 to i16
  %163 = load i16*, i16** %7, align 8
  %164 = getelementptr inbounds i16, i16* %163, i64 11
  %165 = getelementptr inbounds i16, i16* %164, i64 0
  store i16 %162, i16* %165, align 2
  %166 = load i8*, i8** %6, align 8
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = ashr i32 %168, 7
  %170 = and i32 %169, 1
  %171 = load i16*, i16** %7, align 8
  %172 = getelementptr inbounds i16, i16* %171, i64 11
  %173 = getelementptr inbounds i16, i16* %172, i64 0
  %174 = load i16, i16* %173, align 2
  %175 = sext i16 %174 to i32
  %176 = or i32 %175, %170
  %177 = trunc i32 %176 to i16
  store i16 %177, i16* %173, align 2
  %178 = load i8*, i8** %6, align 8
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = ashr i32 %180, 4
  %182 = and i32 %181, 7
  %183 = trunc i32 %182 to i16
  %184 = load i16*, i16** %7, align 8
  %185 = getelementptr inbounds i16, i16* %184, i64 12
  %186 = getelementptr inbounds i16, i16* %185, i64 0
  store i16 %183, i16* %186, align 2
  %187 = load i8*, i8** %6, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = ashr i32 %189, 1
  %191 = and i32 %190, 7
  %192 = trunc i32 %191 to i16
  %193 = load i16*, i16** %7, align 8
  %194 = getelementptr inbounds i16, i16* %193, i64 12
  %195 = getelementptr inbounds i16, i16* %194, i64 1
  store i16 %192, i16* %195, align 2
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %6, align 8
  %198 = load i8, i8* %196, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %199, 1
  %201 = shl i32 %200, 2
  %202 = trunc i32 %201 to i16
  %203 = load i16*, i16** %7, align 8
  %204 = getelementptr inbounds i16, i16* %203, i64 12
  %205 = getelementptr inbounds i16, i16* %204, i64 2
  store i16 %202, i16* %205, align 2
  %206 = load i8*, i8** %6, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = ashr i32 %208, 6
  %210 = and i32 %209, 3
  %211 = load i16*, i16** %7, align 8
  %212 = getelementptr inbounds i16, i16* %211, i64 12
  %213 = getelementptr inbounds i16, i16* %212, i64 2
  %214 = load i16, i16* %213, align 2
  %215 = sext i16 %214 to i32
  %216 = or i32 %215, %210
  %217 = trunc i32 %216 to i16
  store i16 %217, i16* %213, align 2
  %218 = load i8*, i8** %6, align 8
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = ashr i32 %220, 3
  %222 = and i32 %221, 7
  %223 = trunc i32 %222 to i16
  %224 = load i16*, i16** %7, align 8
  %225 = getelementptr inbounds i16, i16* %224, i64 12
  %226 = getelementptr inbounds i16, i16* %225, i64 3
  store i16 %223, i16* %226, align 2
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %6, align 8
  %229 = load i8, i8* %227, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %230, 7
  %232 = trunc i32 %231 to i16
  %233 = load i16*, i16** %7, align 8
  %234 = getelementptr inbounds i16, i16* %233, i64 12
  %235 = getelementptr inbounds i16, i16* %234, i64 4
  store i16 %232, i16* %235, align 2
  %236 = load i8*, i8** %6, align 8
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = ashr i32 %238, 5
  %240 = and i32 %239, 7
  %241 = trunc i32 %240 to i16
  %242 = load i16*, i16** %7, align 8
  %243 = getelementptr inbounds i16, i16* %242, i64 12
  %244 = getelementptr inbounds i16, i16* %243, i64 5
  store i16 %241, i16* %244, align 2
  %245 = load i8*, i8** %6, align 8
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = ashr i32 %247, 2
  %249 = and i32 %248, 7
  %250 = trunc i32 %249 to i16
  %251 = load i16*, i16** %7, align 8
  %252 = getelementptr inbounds i16, i16* %251, i64 12
  %253 = getelementptr inbounds i16, i16* %252, i64 6
  store i16 %250, i16* %253, align 2
  %254 = load i8*, i8** %6, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %6, align 8
  %256 = load i8, i8* %254, align 1
  %257 = zext i8 %256 to i32
  %258 = and i32 %257, 3
  %259 = shl i32 %258, 1
  %260 = trunc i32 %259 to i16
  %261 = load i16*, i16** %7, align 8
  %262 = getelementptr inbounds i16, i16* %261, i64 12
  %263 = getelementptr inbounds i16, i16* %262, i64 7
  store i16 %260, i16* %263, align 2
  %264 = load i8*, i8** %6, align 8
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = ashr i32 %266, 7
  %268 = and i32 %267, 1
  %269 = load i16*, i16** %7, align 8
  %270 = getelementptr inbounds i16, i16* %269, i64 12
  %271 = getelementptr inbounds i16, i16* %270, i64 7
  %272 = load i16, i16* %271, align 2
  %273 = sext i16 %272 to i32
  %274 = or i32 %273, %268
  %275 = trunc i32 %274 to i16
  store i16 %275, i16* %271, align 2
  %276 = load i8*, i8** %6, align 8
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = ashr i32 %278, 4
  %280 = and i32 %279, 7
  %281 = trunc i32 %280 to i16
  %282 = load i16*, i16** %7, align 8
  %283 = getelementptr inbounds i16, i16* %282, i64 12
  %284 = getelementptr inbounds i16, i16* %283, i64 8
  store i16 %281, i16* %284, align 2
  %285 = load i8*, i8** %6, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = ashr i32 %287, 1
  %289 = and i32 %288, 7
  %290 = trunc i32 %289 to i16
  %291 = load i16*, i16** %7, align 8
  %292 = getelementptr inbounds i16, i16* %291, i64 12
  %293 = getelementptr inbounds i16, i16* %292, i64 9
  store i16 %290, i16* %293, align 2
  %294 = load i8*, i8** %6, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %6, align 8
  %296 = load i8, i8* %294, align 1
  %297 = zext i8 %296 to i32
  %298 = and i32 %297, 1
  %299 = shl i32 %298, 2
  %300 = trunc i32 %299 to i16
  %301 = load i16*, i16** %7, align 8
  %302 = getelementptr inbounds i16, i16* %301, i64 12
  %303 = getelementptr inbounds i16, i16* %302, i64 10
  store i16 %300, i16* %303, align 2
  %304 = load i8*, i8** %6, align 8
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = ashr i32 %306, 6
  %308 = and i32 %307, 3
  %309 = load i16*, i16** %7, align 8
  %310 = getelementptr inbounds i16, i16* %309, i64 12
  %311 = getelementptr inbounds i16, i16* %310, i64 10
  %312 = load i16, i16* %311, align 2
  %313 = sext i16 %312 to i32
  %314 = or i32 %313, %308
  %315 = trunc i32 %314 to i16
  store i16 %315, i16* %311, align 2
  %316 = load i8*, i8** %6, align 8
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = ashr i32 %318, 3
  %320 = and i32 %319, 7
  %321 = trunc i32 %320 to i16
  %322 = load i16*, i16** %7, align 8
  %323 = getelementptr inbounds i16, i16* %322, i64 12
  %324 = getelementptr inbounds i16, i16* %323, i64 11
  store i16 %321, i16* %324, align 2
  %325 = load i8*, i8** %6, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %6, align 8
  %327 = load i8, i8* %325, align 1
  %328 = zext i8 %327 to i32
  %329 = and i32 %328, 7
  %330 = trunc i32 %329 to i16
  %331 = load i16*, i16** %7, align 8
  %332 = getelementptr inbounds i16, i16* %331, i64 12
  %333 = getelementptr inbounds i16, i16* %332, i64 12
  store i16 %330, i16* %333, align 2
  %334 = load i8*, i8** %6, align 8
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = ashr i32 %336, 1
  %338 = and i32 %337, 127
  %339 = trunc i32 %338 to i16
  %340 = load i16*, i16** %7, align 8
  %341 = getelementptr inbounds i16, i16* %340, i64 25
  %342 = getelementptr inbounds i16, i16* %341, i64 -1
  %343 = getelementptr inbounds i16, i16* %342, i64 1
  store i16 %339, i16* %343, align 2
  %344 = load i8*, i8** %6, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %6, align 8
  %346 = load i8, i8* %344, align 1
  %347 = zext i8 %346 to i32
  %348 = and i32 %347, 1
  %349 = shl i32 %348, 1
  %350 = trunc i32 %349 to i16
  %351 = load i16*, i16** %7, align 8
  %352 = getelementptr inbounds i16, i16* %351, i64 26
  %353 = getelementptr inbounds i16, i16* %352, i64 -1
  %354 = getelementptr inbounds i16, i16* %353, i64 1
  store i16 %350, i16* %354, align 2
  %355 = load i8*, i8** %6, align 8
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = ashr i32 %357, 7
  %359 = and i32 %358, 1
  %360 = load i16*, i16** %7, align 8
  %361 = getelementptr inbounds i16, i16* %360, i64 26
  %362 = getelementptr inbounds i16, i16* %361, i64 -1
  %363 = getelementptr inbounds i16, i16* %362, i64 1
  %364 = load i16, i16* %363, align 2
  %365 = sext i16 %364 to i32
  %366 = or i32 %365, %359
  %367 = trunc i32 %366 to i16
  store i16 %367, i16* %363, align 2
  %368 = load i8*, i8** %6, align 8
  %369 = load i8, i8* %368, align 1
  %370 = zext i8 %369 to i32
  %371 = ashr i32 %370, 5
  %372 = and i32 %371, 3
  %373 = trunc i32 %372 to i16
  %374 = load i16*, i16** %7, align 8
  %375 = getelementptr inbounds i16, i16* %374, i64 27
  %376 = getelementptr inbounds i16, i16* %375, i64 -1
  %377 = getelementptr inbounds i16, i16* %376, i64 1
  store i16 %373, i16* %377, align 2
  %378 = load i8*, i8** %6, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %6, align 8
  %380 = load i8, i8* %378, align 1
  %381 = zext i8 %380 to i32
  %382 = and i32 %381, 31
  %383 = shl i32 %382, 1
  %384 = trunc i32 %383 to i16
  %385 = load i16*, i16** %7, align 8
  %386 = getelementptr inbounds i16, i16* %385, i64 28
  %387 = getelementptr inbounds i16, i16* %386, i64 -1
  %388 = getelementptr inbounds i16, i16* %387, i64 1
  store i16 %384, i16* %388, align 2
  %389 = load i8*, i8** %6, align 8
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  %392 = ashr i32 %391, 7
  %393 = and i32 %392, 1
  %394 = load i16*, i16** %7, align 8
  %395 = getelementptr inbounds i16, i16* %394, i64 28
  %396 = getelementptr inbounds i16, i16* %395, i64 -1
  %397 = getelementptr inbounds i16, i16* %396, i64 1
  %398 = load i16, i16* %397, align 2
  %399 = sext i16 %398 to i32
  %400 = or i32 %399, %393
  %401 = trunc i32 %400 to i16
  store i16 %401, i16* %397, align 2
  %402 = load i8*, i8** %6, align 8
  %403 = load i8, i8* %402, align 1
  %404 = zext i8 %403 to i32
  %405 = ashr i32 %404, 4
  %406 = and i32 %405, 7
  %407 = trunc i32 %406 to i16
  %408 = load i16*, i16** %7, align 8
  %409 = getelementptr inbounds i16, i16* %408, i64 29
  %410 = getelementptr inbounds i16, i16* %409, i64 -13
  %411 = getelementptr inbounds i16, i16* %410, i64 13
  store i16 %407, i16* %411, align 2
  %412 = load i8*, i8** %6, align 8
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i32
  %415 = ashr i32 %414, 1
  %416 = and i32 %415, 7
  %417 = trunc i32 %416 to i16
  %418 = load i16*, i16** %7, align 8
  %419 = getelementptr inbounds i16, i16* %418, i64 29
  %420 = getelementptr inbounds i16, i16* %419, i64 -13
  %421 = getelementptr inbounds i16, i16* %420, i64 14
  store i16 %417, i16* %421, align 2
  %422 = load i8*, i8** %6, align 8
  %423 = getelementptr inbounds i8, i8* %422, i32 1
  store i8* %423, i8** %6, align 8
  %424 = load i8, i8* %422, align 1
  %425 = zext i8 %424 to i32
  %426 = and i32 %425, 1
  %427 = shl i32 %426, 2
  %428 = trunc i32 %427 to i16
  %429 = load i16*, i16** %7, align 8
  %430 = getelementptr inbounds i16, i16* %429, i64 29
  %431 = getelementptr inbounds i16, i16* %430, i64 -13
  %432 = getelementptr inbounds i16, i16* %431, i64 15
  store i16 %428, i16* %432, align 2
  %433 = load i8*, i8** %6, align 8
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = ashr i32 %435, 6
  %437 = and i32 %436, 3
  %438 = load i16*, i16** %7, align 8
  %439 = getelementptr inbounds i16, i16* %438, i64 29
  %440 = getelementptr inbounds i16, i16* %439, i64 -13
  %441 = getelementptr inbounds i16, i16* %440, i64 15
  %442 = load i16, i16* %441, align 2
  %443 = sext i16 %442 to i32
  %444 = or i32 %443, %437
  %445 = trunc i32 %444 to i16
  store i16 %445, i16* %441, align 2
  %446 = load i8*, i8** %6, align 8
  %447 = load i8, i8* %446, align 1
  %448 = zext i8 %447 to i32
  %449 = ashr i32 %448, 3
  %450 = and i32 %449, 7
  %451 = trunc i32 %450 to i16
  %452 = load i16*, i16** %7, align 8
  %453 = getelementptr inbounds i16, i16* %452, i64 29
  %454 = getelementptr inbounds i16, i16* %453, i64 -13
  %455 = getelementptr inbounds i16, i16* %454, i64 16
  store i16 %451, i16* %455, align 2
  %456 = load i8*, i8** %6, align 8
  %457 = getelementptr inbounds i8, i8* %456, i32 1
  store i8* %457, i8** %6, align 8
  %458 = load i8, i8* %456, align 1
  %459 = zext i8 %458 to i32
  %460 = and i32 %459, 7
  %461 = trunc i32 %460 to i16
  %462 = load i16*, i16** %7, align 8
  %463 = getelementptr inbounds i16, i16* %462, i64 29
  %464 = getelementptr inbounds i16, i16* %463, i64 -13
  %465 = getelementptr inbounds i16, i16* %464, i64 17
  store i16 %461, i16* %465, align 2
  %466 = load i8*, i8** %6, align 8
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = ashr i32 %468, 5
  %470 = and i32 %469, 7
  %471 = trunc i32 %470 to i16
  %472 = load i16*, i16** %7, align 8
  %473 = getelementptr inbounds i16, i16* %472, i64 29
  %474 = getelementptr inbounds i16, i16* %473, i64 -13
  %475 = getelementptr inbounds i16, i16* %474, i64 18
  store i16 %471, i16* %475, align 2
  %476 = load i8*, i8** %6, align 8
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i32
  %479 = ashr i32 %478, 2
  %480 = and i32 %479, 7
  %481 = trunc i32 %480 to i16
  %482 = load i16*, i16** %7, align 8
  %483 = getelementptr inbounds i16, i16* %482, i64 29
  %484 = getelementptr inbounds i16, i16* %483, i64 -13
  %485 = getelementptr inbounds i16, i16* %484, i64 19
  store i16 %481, i16* %485, align 2
  %486 = load i8*, i8** %6, align 8
  %487 = getelementptr inbounds i8, i8* %486, i32 1
  store i8* %487, i8** %6, align 8
  %488 = load i8, i8* %486, align 1
  %489 = zext i8 %488 to i32
  %490 = and i32 %489, 3
  %491 = shl i32 %490, 1
  %492 = trunc i32 %491 to i16
  %493 = load i16*, i16** %7, align 8
  %494 = getelementptr inbounds i16, i16* %493, i64 29
  %495 = getelementptr inbounds i16, i16* %494, i64 -13
  %496 = getelementptr inbounds i16, i16* %495, i64 20
  store i16 %492, i16* %496, align 2
  %497 = load i8*, i8** %6, align 8
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i32
  %500 = ashr i32 %499, 7
  %501 = and i32 %500, 1
  %502 = load i16*, i16** %7, align 8
  %503 = getelementptr inbounds i16, i16* %502, i64 29
  %504 = getelementptr inbounds i16, i16* %503, i64 -13
  %505 = getelementptr inbounds i16, i16* %504, i64 20
  %506 = load i16, i16* %505, align 2
  %507 = sext i16 %506 to i32
  %508 = or i32 %507, %501
  %509 = trunc i32 %508 to i16
  store i16 %509, i16* %505, align 2
  %510 = load i8*, i8** %6, align 8
  %511 = load i8, i8* %510, align 1
  %512 = zext i8 %511 to i32
  %513 = ashr i32 %512, 4
  %514 = and i32 %513, 7
  %515 = trunc i32 %514 to i16
  %516 = load i16*, i16** %7, align 8
  %517 = getelementptr inbounds i16, i16* %516, i64 29
  %518 = getelementptr inbounds i16, i16* %517, i64 -13
  %519 = getelementptr inbounds i16, i16* %518, i64 21
  store i16 %515, i16* %519, align 2
  %520 = load i8*, i8** %6, align 8
  %521 = load i8, i8* %520, align 1
  %522 = zext i8 %521 to i32
  %523 = ashr i32 %522, 1
  %524 = and i32 %523, 7
  %525 = trunc i32 %524 to i16
  %526 = load i16*, i16** %7, align 8
  %527 = getelementptr inbounds i16, i16* %526, i64 29
  %528 = getelementptr inbounds i16, i16* %527, i64 -13
  %529 = getelementptr inbounds i16, i16* %528, i64 22
  store i16 %525, i16* %529, align 2
  %530 = load i8*, i8** %6, align 8
  %531 = getelementptr inbounds i8, i8* %530, i32 1
  store i8* %531, i8** %6, align 8
  %532 = load i8, i8* %530, align 1
  %533 = zext i8 %532 to i32
  %534 = and i32 %533, 1
  %535 = shl i32 %534, 2
  %536 = trunc i32 %535 to i16
  %537 = load i16*, i16** %7, align 8
  %538 = getelementptr inbounds i16, i16* %537, i64 29
  %539 = getelementptr inbounds i16, i16* %538, i64 -13
  %540 = getelementptr inbounds i16, i16* %539, i64 23
  store i16 %536, i16* %540, align 2
  %541 = load i8*, i8** %6, align 8
  %542 = load i8, i8* %541, align 1
  %543 = zext i8 %542 to i32
  %544 = ashr i32 %543, 6
  %545 = and i32 %544, 3
  %546 = load i16*, i16** %7, align 8
  %547 = getelementptr inbounds i16, i16* %546, i64 29
  %548 = getelementptr inbounds i16, i16* %547, i64 -13
  %549 = getelementptr inbounds i16, i16* %548, i64 23
  %550 = load i16, i16* %549, align 2
  %551 = sext i16 %550 to i32
  %552 = or i32 %551, %545
  %553 = trunc i32 %552 to i16
  store i16 %553, i16* %549, align 2
  %554 = load i8*, i8** %6, align 8
  %555 = load i8, i8* %554, align 1
  %556 = zext i8 %555 to i32
  %557 = ashr i32 %556, 3
  %558 = and i32 %557, 7
  %559 = trunc i32 %558 to i16
  %560 = load i16*, i16** %7, align 8
  %561 = getelementptr inbounds i16, i16* %560, i64 29
  %562 = getelementptr inbounds i16, i16* %561, i64 -13
  %563 = getelementptr inbounds i16, i16* %562, i64 24
  store i16 %559, i16* %563, align 2
  %564 = load i8*, i8** %6, align 8
  %565 = getelementptr inbounds i8, i8* %564, i32 1
  store i8* %565, i8** %6, align 8
  %566 = load i8, i8* %564, align 1
  %567 = zext i8 %566 to i32
  %568 = and i32 %567, 7
  %569 = trunc i32 %568 to i16
  %570 = load i16*, i16** %7, align 8
  %571 = getelementptr inbounds i16, i16* %570, i64 29
  %572 = getelementptr inbounds i16, i16* %571, i64 -13
  %573 = getelementptr inbounds i16, i16* %572, i64 25
  store i16 %569, i16* %573, align 2
  %574 = load i8*, i8** %6, align 8
  %575 = load i8, i8* %574, align 1
  %576 = zext i8 %575 to i32
  %577 = ashr i32 %576, 1
  %578 = and i32 %577, 127
  %579 = trunc i32 %578 to i16
  %580 = load i16*, i16** %7, align 8
  %581 = getelementptr inbounds i16, i16* %580, i64 42
  %582 = getelementptr inbounds i16, i16* %581, i64 -2
  %583 = getelementptr inbounds i16, i16* %582, i64 2
  store i16 %579, i16* %583, align 2
  %584 = load i8*, i8** %6, align 8
  %585 = getelementptr inbounds i8, i8* %584, i32 1
  store i8* %585, i8** %6, align 8
  %586 = load i8, i8* %584, align 1
  %587 = zext i8 %586 to i32
  %588 = and i32 %587, 1
  %589 = shl i32 %588, 1
  %590 = trunc i32 %589 to i16
  %591 = load i16*, i16** %7, align 8
  %592 = getelementptr inbounds i16, i16* %591, i64 43
  %593 = getelementptr inbounds i16, i16* %592, i64 -2
  %594 = getelementptr inbounds i16, i16* %593, i64 2
  store i16 %590, i16* %594, align 2
  %595 = load i8*, i8** %6, align 8
  %596 = load i8, i8* %595, align 1
  %597 = zext i8 %596 to i32
  %598 = ashr i32 %597, 7
  %599 = and i32 %598, 1
  %600 = load i16*, i16** %7, align 8
  %601 = getelementptr inbounds i16, i16* %600, i64 43
  %602 = getelementptr inbounds i16, i16* %601, i64 -2
  %603 = getelementptr inbounds i16, i16* %602, i64 2
  %604 = load i16, i16* %603, align 2
  %605 = sext i16 %604 to i32
  %606 = or i32 %605, %599
  %607 = trunc i32 %606 to i16
  store i16 %607, i16* %603, align 2
  %608 = load i8*, i8** %6, align 8
  %609 = load i8, i8* %608, align 1
  %610 = zext i8 %609 to i32
  %611 = ashr i32 %610, 5
  %612 = and i32 %611, 3
  %613 = trunc i32 %612 to i16
  %614 = load i16*, i16** %7, align 8
  %615 = getelementptr inbounds i16, i16* %614, i64 44
  %616 = getelementptr inbounds i16, i16* %615, i64 -2
  %617 = getelementptr inbounds i16, i16* %616, i64 2
  store i16 %613, i16* %617, align 2
  %618 = load i8*, i8** %6, align 8
  %619 = getelementptr inbounds i8, i8* %618, i32 1
  store i8* %619, i8** %6, align 8
  %620 = load i8, i8* %618, align 1
  %621 = zext i8 %620 to i32
  %622 = and i32 %621, 31
  %623 = shl i32 %622, 1
  %624 = trunc i32 %623 to i16
  %625 = load i16*, i16** %7, align 8
  %626 = getelementptr inbounds i16, i16* %625, i64 45
  %627 = getelementptr inbounds i16, i16* %626, i64 -2
  %628 = getelementptr inbounds i16, i16* %627, i64 2
  store i16 %624, i16* %628, align 2
  %629 = load i8*, i8** %6, align 8
  %630 = load i8, i8* %629, align 1
  %631 = zext i8 %630 to i32
  %632 = ashr i32 %631, 7
  %633 = and i32 %632, 1
  %634 = load i16*, i16** %7, align 8
  %635 = getelementptr inbounds i16, i16* %634, i64 45
  %636 = getelementptr inbounds i16, i16* %635, i64 -2
  %637 = getelementptr inbounds i16, i16* %636, i64 2
  %638 = load i16, i16* %637, align 2
  %639 = sext i16 %638 to i32
  %640 = or i32 %639, %633
  %641 = trunc i32 %640 to i16
  store i16 %641, i16* %637, align 2
  %642 = load i8*, i8** %6, align 8
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i32
  %645 = ashr i32 %644, 4
  %646 = and i32 %645, 7
  %647 = trunc i32 %646 to i16
  %648 = load i16*, i16** %7, align 8
  %649 = getelementptr inbounds i16, i16* %648, i64 46
  %650 = getelementptr inbounds i16, i16* %649, i64 -26
  %651 = getelementptr inbounds i16, i16* %650, i64 26
  store i16 %647, i16* %651, align 2
  %652 = load i8*, i8** %6, align 8
  %653 = load i8, i8* %652, align 1
  %654 = zext i8 %653 to i32
  %655 = ashr i32 %654, 1
  %656 = and i32 %655, 7
  %657 = trunc i32 %656 to i16
  %658 = load i16*, i16** %7, align 8
  %659 = getelementptr inbounds i16, i16* %658, i64 46
  %660 = getelementptr inbounds i16, i16* %659, i64 -26
  %661 = getelementptr inbounds i16, i16* %660, i64 27
  store i16 %657, i16* %661, align 2
  %662 = load i8*, i8** %6, align 8
  %663 = getelementptr inbounds i8, i8* %662, i32 1
  store i8* %663, i8** %6, align 8
  %664 = load i8, i8* %662, align 1
  %665 = zext i8 %664 to i32
  %666 = and i32 %665, 1
  %667 = shl i32 %666, 2
  %668 = trunc i32 %667 to i16
  %669 = load i16*, i16** %7, align 8
  %670 = getelementptr inbounds i16, i16* %669, i64 46
  %671 = getelementptr inbounds i16, i16* %670, i64 -26
  %672 = getelementptr inbounds i16, i16* %671, i64 28
  store i16 %668, i16* %672, align 2
  %673 = load i8*, i8** %6, align 8
  %674 = load i8, i8* %673, align 1
  %675 = zext i8 %674 to i32
  %676 = ashr i32 %675, 6
  %677 = and i32 %676, 3
  %678 = load i16*, i16** %7, align 8
  %679 = getelementptr inbounds i16, i16* %678, i64 46
  %680 = getelementptr inbounds i16, i16* %679, i64 -26
  %681 = getelementptr inbounds i16, i16* %680, i64 28
  %682 = load i16, i16* %681, align 2
  %683 = sext i16 %682 to i32
  %684 = or i32 %683, %677
  %685 = trunc i32 %684 to i16
  store i16 %685, i16* %681, align 2
  %686 = load i8*, i8** %6, align 8
  %687 = load i8, i8* %686, align 1
  %688 = zext i8 %687 to i32
  %689 = ashr i32 %688, 3
  %690 = and i32 %689, 7
  %691 = trunc i32 %690 to i16
  %692 = load i16*, i16** %7, align 8
  %693 = getelementptr inbounds i16, i16* %692, i64 46
  %694 = getelementptr inbounds i16, i16* %693, i64 -26
  %695 = getelementptr inbounds i16, i16* %694, i64 29
  store i16 %691, i16* %695, align 2
  %696 = load i8*, i8** %6, align 8
  %697 = getelementptr inbounds i8, i8* %696, i32 1
  store i8* %697, i8** %6, align 8
  %698 = load i8, i8* %696, align 1
  %699 = zext i8 %698 to i32
  %700 = and i32 %699, 7
  %701 = trunc i32 %700 to i16
  %702 = load i16*, i16** %7, align 8
  %703 = getelementptr inbounds i16, i16* %702, i64 46
  %704 = getelementptr inbounds i16, i16* %703, i64 -26
  %705 = getelementptr inbounds i16, i16* %704, i64 30
  store i16 %701, i16* %705, align 2
  %706 = load i8*, i8** %6, align 8
  %707 = load i8, i8* %706, align 1
  %708 = zext i8 %707 to i32
  %709 = ashr i32 %708, 5
  %710 = and i32 %709, 7
  %711 = trunc i32 %710 to i16
  %712 = load i16*, i16** %7, align 8
  %713 = getelementptr inbounds i16, i16* %712, i64 46
  %714 = getelementptr inbounds i16, i16* %713, i64 -26
  %715 = getelementptr inbounds i16, i16* %714, i64 31
  store i16 %711, i16* %715, align 2
  %716 = load i8*, i8** %6, align 8
  %717 = load i8, i8* %716, align 1
  %718 = zext i8 %717 to i32
  %719 = ashr i32 %718, 2
  %720 = and i32 %719, 7
  %721 = trunc i32 %720 to i16
  %722 = load i16*, i16** %7, align 8
  %723 = getelementptr inbounds i16, i16* %722, i64 46
  %724 = getelementptr inbounds i16, i16* %723, i64 -26
  %725 = getelementptr inbounds i16, i16* %724, i64 32
  store i16 %721, i16* %725, align 2
  %726 = load i8*, i8** %6, align 8
  %727 = getelementptr inbounds i8, i8* %726, i32 1
  store i8* %727, i8** %6, align 8
  %728 = load i8, i8* %726, align 1
  %729 = zext i8 %728 to i32
  %730 = and i32 %729, 3
  %731 = shl i32 %730, 1
  %732 = trunc i32 %731 to i16
  %733 = load i16*, i16** %7, align 8
  %734 = getelementptr inbounds i16, i16* %733, i64 46
  %735 = getelementptr inbounds i16, i16* %734, i64 -26
  %736 = getelementptr inbounds i16, i16* %735, i64 33
  store i16 %732, i16* %736, align 2
  %737 = load i8*, i8** %6, align 8
  %738 = load i8, i8* %737, align 1
  %739 = zext i8 %738 to i32
  %740 = ashr i32 %739, 7
  %741 = and i32 %740, 1
  %742 = load i16*, i16** %7, align 8
  %743 = getelementptr inbounds i16, i16* %742, i64 46
  %744 = getelementptr inbounds i16, i16* %743, i64 -26
  %745 = getelementptr inbounds i16, i16* %744, i64 33
  %746 = load i16, i16* %745, align 2
  %747 = sext i16 %746 to i32
  %748 = or i32 %747, %741
  %749 = trunc i32 %748 to i16
  store i16 %749, i16* %745, align 2
  %750 = load i8*, i8** %6, align 8
  %751 = load i8, i8* %750, align 1
  %752 = zext i8 %751 to i32
  %753 = ashr i32 %752, 4
  %754 = and i32 %753, 7
  %755 = trunc i32 %754 to i16
  %756 = load i16*, i16** %7, align 8
  %757 = getelementptr inbounds i16, i16* %756, i64 46
  %758 = getelementptr inbounds i16, i16* %757, i64 -26
  %759 = getelementptr inbounds i16, i16* %758, i64 34
  store i16 %755, i16* %759, align 2
  %760 = load i8*, i8** %6, align 8
  %761 = load i8, i8* %760, align 1
  %762 = zext i8 %761 to i32
  %763 = ashr i32 %762, 1
  %764 = and i32 %763, 7
  %765 = trunc i32 %764 to i16
  %766 = load i16*, i16** %7, align 8
  %767 = getelementptr inbounds i16, i16* %766, i64 46
  %768 = getelementptr inbounds i16, i16* %767, i64 -26
  %769 = getelementptr inbounds i16, i16* %768, i64 35
  store i16 %765, i16* %769, align 2
  %770 = load i8*, i8** %6, align 8
  %771 = getelementptr inbounds i8, i8* %770, i32 1
  store i8* %771, i8** %6, align 8
  %772 = load i8, i8* %770, align 1
  %773 = zext i8 %772 to i32
  %774 = and i32 %773, 1
  %775 = shl i32 %774, 2
  %776 = trunc i32 %775 to i16
  %777 = load i16*, i16** %7, align 8
  %778 = getelementptr inbounds i16, i16* %777, i64 46
  %779 = getelementptr inbounds i16, i16* %778, i64 -26
  %780 = getelementptr inbounds i16, i16* %779, i64 36
  store i16 %776, i16* %780, align 2
  %781 = load i8*, i8** %6, align 8
  %782 = load i8, i8* %781, align 1
  %783 = zext i8 %782 to i32
  %784 = ashr i32 %783, 6
  %785 = and i32 %784, 3
  %786 = load i16*, i16** %7, align 8
  %787 = getelementptr inbounds i16, i16* %786, i64 46
  %788 = getelementptr inbounds i16, i16* %787, i64 -26
  %789 = getelementptr inbounds i16, i16* %788, i64 36
  %790 = load i16, i16* %789, align 2
  %791 = sext i16 %790 to i32
  %792 = or i32 %791, %785
  %793 = trunc i32 %792 to i16
  store i16 %793, i16* %789, align 2
  %794 = load i8*, i8** %6, align 8
  %795 = load i8, i8* %794, align 1
  %796 = zext i8 %795 to i32
  %797 = ashr i32 %796, 3
  %798 = and i32 %797, 7
  %799 = trunc i32 %798 to i16
  %800 = load i16*, i16** %7, align 8
  %801 = getelementptr inbounds i16, i16* %800, i64 46
  %802 = getelementptr inbounds i16, i16* %801, i64 -26
  %803 = getelementptr inbounds i16, i16* %802, i64 37
  store i16 %799, i16* %803, align 2
  %804 = load i8*, i8** %6, align 8
  %805 = getelementptr inbounds i8, i8* %804, i32 1
  store i8* %805, i8** %6, align 8
  %806 = load i8, i8* %804, align 1
  %807 = zext i8 %806 to i32
  %808 = and i32 %807, 7
  %809 = trunc i32 %808 to i16
  %810 = load i16*, i16** %7, align 8
  %811 = getelementptr inbounds i16, i16* %810, i64 46
  %812 = getelementptr inbounds i16, i16* %811, i64 -26
  %813 = getelementptr inbounds i16, i16* %812, i64 38
  store i16 %809, i16* %813, align 2
  %814 = load i8*, i8** %6, align 8
  %815 = load i8, i8* %814, align 1
  %816 = zext i8 %815 to i32
  %817 = ashr i32 %816, 1
  %818 = and i32 %817, 127
  %819 = trunc i32 %818 to i16
  %820 = load i16*, i16** %7, align 8
  %821 = getelementptr inbounds i16, i16* %820, i64 59
  %822 = getelementptr inbounds i16, i16* %821, i64 -3
  %823 = getelementptr inbounds i16, i16* %822, i64 3
  store i16 %819, i16* %823, align 2
  %824 = load i8*, i8** %6, align 8
  %825 = getelementptr inbounds i8, i8* %824, i32 1
  store i8* %825, i8** %6, align 8
  %826 = load i8, i8* %824, align 1
  %827 = zext i8 %826 to i32
  %828 = and i32 %827, 1
  %829 = shl i32 %828, 1
  %830 = trunc i32 %829 to i16
  %831 = load i16*, i16** %7, align 8
  %832 = getelementptr inbounds i16, i16* %831, i64 60
  %833 = getelementptr inbounds i16, i16* %832, i64 -3
  %834 = getelementptr inbounds i16, i16* %833, i64 3
  store i16 %830, i16* %834, align 2
  %835 = load i8*, i8** %6, align 8
  %836 = load i8, i8* %835, align 1
  %837 = zext i8 %836 to i32
  %838 = ashr i32 %837, 7
  %839 = and i32 %838, 1
  %840 = load i16*, i16** %7, align 8
  %841 = getelementptr inbounds i16, i16* %840, i64 60
  %842 = getelementptr inbounds i16, i16* %841, i64 -3
  %843 = getelementptr inbounds i16, i16* %842, i64 3
  %844 = load i16, i16* %843, align 2
  %845 = sext i16 %844 to i32
  %846 = or i32 %845, %839
  %847 = trunc i32 %846 to i16
  store i16 %847, i16* %843, align 2
  %848 = load i8*, i8** %6, align 8
  %849 = load i8, i8* %848, align 1
  %850 = zext i8 %849 to i32
  %851 = ashr i32 %850, 5
  %852 = and i32 %851, 3
  %853 = trunc i32 %852 to i16
  %854 = load i16*, i16** %7, align 8
  %855 = getelementptr inbounds i16, i16* %854, i64 61
  %856 = getelementptr inbounds i16, i16* %855, i64 -3
  %857 = getelementptr inbounds i16, i16* %856, i64 3
  store i16 %853, i16* %857, align 2
  %858 = load i8*, i8** %6, align 8
  %859 = getelementptr inbounds i8, i8* %858, i32 1
  store i8* %859, i8** %6, align 8
  %860 = load i8, i8* %858, align 1
  %861 = zext i8 %860 to i32
  %862 = and i32 %861, 31
  %863 = shl i32 %862, 1
  %864 = trunc i32 %863 to i16
  %865 = load i16*, i16** %7, align 8
  %866 = getelementptr inbounds i16, i16* %865, i64 62
  %867 = getelementptr inbounds i16, i16* %866, i64 -3
  %868 = getelementptr inbounds i16, i16* %867, i64 3
  store i16 %864, i16* %868, align 2
  %869 = load i8*, i8** %6, align 8
  %870 = load i8, i8* %869, align 1
  %871 = zext i8 %870 to i32
  %872 = ashr i32 %871, 7
  %873 = and i32 %872, 1
  %874 = load i16*, i16** %7, align 8
  %875 = getelementptr inbounds i16, i16* %874, i64 62
  %876 = getelementptr inbounds i16, i16* %875, i64 -3
  %877 = getelementptr inbounds i16, i16* %876, i64 3
  %878 = load i16, i16* %877, align 2
  %879 = sext i16 %878 to i32
  %880 = or i32 %879, %873
  %881 = trunc i32 %880 to i16
  store i16 %881, i16* %877, align 2
  %882 = load i8*, i8** %6, align 8
  %883 = load i8, i8* %882, align 1
  %884 = zext i8 %883 to i32
  %885 = ashr i32 %884, 4
  %886 = and i32 %885, 7
  %887 = trunc i32 %886 to i16
  %888 = load i16*, i16** %7, align 8
  %889 = getelementptr inbounds i16, i16* %888, i64 63
  %890 = getelementptr inbounds i16, i16* %889, i64 -39
  %891 = getelementptr inbounds i16, i16* %890, i64 39
  store i16 %887, i16* %891, align 2
  %892 = load i8*, i8** %6, align 8
  %893 = load i8, i8* %892, align 1
  %894 = zext i8 %893 to i32
  %895 = ashr i32 %894, 1
  %896 = and i32 %895, 7
  %897 = trunc i32 %896 to i16
  %898 = load i16*, i16** %7, align 8
  %899 = getelementptr inbounds i16, i16* %898, i64 63
  %900 = getelementptr inbounds i16, i16* %899, i64 -39
  %901 = getelementptr inbounds i16, i16* %900, i64 40
  store i16 %897, i16* %901, align 2
  %902 = load i8*, i8** %6, align 8
  %903 = getelementptr inbounds i8, i8* %902, i32 1
  store i8* %903, i8** %6, align 8
  %904 = load i8, i8* %902, align 1
  %905 = zext i8 %904 to i32
  %906 = and i32 %905, 1
  %907 = shl i32 %906, 2
  %908 = trunc i32 %907 to i16
  %909 = load i16*, i16** %7, align 8
  %910 = getelementptr inbounds i16, i16* %909, i64 63
  %911 = getelementptr inbounds i16, i16* %910, i64 -39
  %912 = getelementptr inbounds i16, i16* %911, i64 41
  store i16 %908, i16* %912, align 2
  %913 = load i8*, i8** %6, align 8
  %914 = load i8, i8* %913, align 1
  %915 = zext i8 %914 to i32
  %916 = ashr i32 %915, 6
  %917 = and i32 %916, 3
  %918 = load i16*, i16** %7, align 8
  %919 = getelementptr inbounds i16, i16* %918, i64 63
  %920 = getelementptr inbounds i16, i16* %919, i64 -39
  %921 = getelementptr inbounds i16, i16* %920, i64 41
  %922 = load i16, i16* %921, align 2
  %923 = sext i16 %922 to i32
  %924 = or i32 %923, %917
  %925 = trunc i32 %924 to i16
  store i16 %925, i16* %921, align 2
  %926 = load i8*, i8** %6, align 8
  %927 = load i8, i8* %926, align 1
  %928 = zext i8 %927 to i32
  %929 = ashr i32 %928, 3
  %930 = and i32 %929, 7
  %931 = trunc i32 %930 to i16
  %932 = load i16*, i16** %7, align 8
  %933 = getelementptr inbounds i16, i16* %932, i64 63
  %934 = getelementptr inbounds i16, i16* %933, i64 -39
  %935 = getelementptr inbounds i16, i16* %934, i64 42
  store i16 %931, i16* %935, align 2
  %936 = load i8*, i8** %6, align 8
  %937 = getelementptr inbounds i8, i8* %936, i32 1
  store i8* %937, i8** %6, align 8
  %938 = load i8, i8* %936, align 1
  %939 = zext i8 %938 to i32
  %940 = and i32 %939, 7
  %941 = trunc i32 %940 to i16
  %942 = load i16*, i16** %7, align 8
  %943 = getelementptr inbounds i16, i16* %942, i64 63
  %944 = getelementptr inbounds i16, i16* %943, i64 -39
  %945 = getelementptr inbounds i16, i16* %944, i64 43
  store i16 %941, i16* %945, align 2
  %946 = load i8*, i8** %6, align 8
  %947 = load i8, i8* %946, align 1
  %948 = zext i8 %947 to i32
  %949 = ashr i32 %948, 5
  %950 = and i32 %949, 7
  %951 = trunc i32 %950 to i16
  %952 = load i16*, i16** %7, align 8
  %953 = getelementptr inbounds i16, i16* %952, i64 63
  %954 = getelementptr inbounds i16, i16* %953, i64 -39
  %955 = getelementptr inbounds i16, i16* %954, i64 44
  store i16 %951, i16* %955, align 2
  %956 = load i8*, i8** %6, align 8
  %957 = load i8, i8* %956, align 1
  %958 = zext i8 %957 to i32
  %959 = ashr i32 %958, 2
  %960 = and i32 %959, 7
  %961 = trunc i32 %960 to i16
  %962 = load i16*, i16** %7, align 8
  %963 = getelementptr inbounds i16, i16* %962, i64 63
  %964 = getelementptr inbounds i16, i16* %963, i64 -39
  %965 = getelementptr inbounds i16, i16* %964, i64 45
  store i16 %961, i16* %965, align 2
  %966 = load i8*, i8** %6, align 8
  %967 = getelementptr inbounds i8, i8* %966, i32 1
  store i8* %967, i8** %6, align 8
  %968 = load i8, i8* %966, align 1
  %969 = zext i8 %968 to i32
  %970 = and i32 %969, 3
  %971 = shl i32 %970, 1
  %972 = trunc i32 %971 to i16
  %973 = load i16*, i16** %7, align 8
  %974 = getelementptr inbounds i16, i16* %973, i64 63
  %975 = getelementptr inbounds i16, i16* %974, i64 -39
  %976 = getelementptr inbounds i16, i16* %975, i64 46
  store i16 %972, i16* %976, align 2
  %977 = load i8*, i8** %6, align 8
  %978 = load i8, i8* %977, align 1
  %979 = zext i8 %978 to i32
  %980 = ashr i32 %979, 7
  %981 = and i32 %980, 1
  %982 = load i16*, i16** %7, align 8
  %983 = getelementptr inbounds i16, i16* %982, i64 63
  %984 = getelementptr inbounds i16, i16* %983, i64 -39
  %985 = getelementptr inbounds i16, i16* %984, i64 46
  %986 = load i16, i16* %985, align 2
  %987 = sext i16 %986 to i32
  %988 = or i32 %987, %981
  %989 = trunc i32 %988 to i16
  store i16 %989, i16* %985, align 2
  %990 = load i8*, i8** %6, align 8
  %991 = load i8, i8* %990, align 1
  %992 = zext i8 %991 to i32
  %993 = ashr i32 %992, 4
  %994 = and i32 %993, 7
  %995 = trunc i32 %994 to i16
  %996 = load i16*, i16** %7, align 8
  %997 = getelementptr inbounds i16, i16* %996, i64 63
  %998 = getelementptr inbounds i16, i16* %997, i64 -39
  %999 = getelementptr inbounds i16, i16* %998, i64 47
  store i16 %995, i16* %999, align 2
  %1000 = load i8*, i8** %6, align 8
  %1001 = load i8, i8* %1000, align 1
  %1002 = zext i8 %1001 to i32
  %1003 = ashr i32 %1002, 1
  %1004 = and i32 %1003, 7
  %1005 = trunc i32 %1004 to i16
  %1006 = load i16*, i16** %7, align 8
  %1007 = getelementptr inbounds i16, i16* %1006, i64 63
  %1008 = getelementptr inbounds i16, i16* %1007, i64 -39
  %1009 = getelementptr inbounds i16, i16* %1008, i64 48
  store i16 %1005, i16* %1009, align 2
  %1010 = load i8*, i8** %6, align 8
  %1011 = getelementptr inbounds i8, i8* %1010, i32 1
  store i8* %1011, i8** %6, align 8
  %1012 = load i8, i8* %1010, align 1
  %1013 = zext i8 %1012 to i32
  %1014 = and i32 %1013, 1
  %1015 = shl i32 %1014, 2
  %1016 = trunc i32 %1015 to i16
  %1017 = load i16*, i16** %7, align 8
  %1018 = getelementptr inbounds i16, i16* %1017, i64 63
  %1019 = getelementptr inbounds i16, i16* %1018, i64 -39
  %1020 = getelementptr inbounds i16, i16* %1019, i64 49
  store i16 %1016, i16* %1020, align 2
  %1021 = load i8*, i8** %6, align 8
  %1022 = load i8, i8* %1021, align 1
  %1023 = zext i8 %1022 to i32
  %1024 = ashr i32 %1023, 6
  %1025 = and i32 %1024, 3
  %1026 = load i16*, i16** %7, align 8
  %1027 = getelementptr inbounds i16, i16* %1026, i64 63
  %1028 = getelementptr inbounds i16, i16* %1027, i64 -39
  %1029 = getelementptr inbounds i16, i16* %1028, i64 49
  %1030 = load i16, i16* %1029, align 2
  %1031 = sext i16 %1030 to i32
  %1032 = or i32 %1031, %1025
  %1033 = trunc i32 %1032 to i16
  store i16 %1033, i16* %1029, align 2
  %1034 = load i8*, i8** %6, align 8
  %1035 = load i8, i8* %1034, align 1
  %1036 = zext i8 %1035 to i32
  %1037 = ashr i32 %1036, 3
  %1038 = and i32 %1037, 7
  %1039 = trunc i32 %1038 to i16
  %1040 = load i16*, i16** %7, align 8
  %1041 = getelementptr inbounds i16, i16* %1040, i64 63
  %1042 = getelementptr inbounds i16, i16* %1041, i64 -39
  %1043 = getelementptr inbounds i16, i16* %1042, i64 50
  store i16 %1039, i16* %1043, align 2
  %1044 = load i8*, i8** %6, align 8
  %1045 = load i8, i8* %1044, align 1
  %1046 = zext i8 %1045 to i32
  %1047 = and i32 %1046, 7
  %1048 = trunc i32 %1047 to i16
  %1049 = load i16*, i16** %7, align 8
  %1050 = getelementptr inbounds i16, i16* %1049, i64 63
  %1051 = getelementptr inbounds i16, i16* %1050, i64 -39
  %1052 = getelementptr inbounds i16, i16* %1051, i64 51
  store i16 %1048, i16* %1052, align 2
  store i32 0, i32* %4, align 4
  br label %1053

1053:                                             ; preds = %15, %14
  %1054 = load i32, i32* %4, align 4
  ret i32 %1054
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
