; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_encode.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @gsm_encode(%struct.gsm_state* noundef %0, i16* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.gsm_state*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [8 x i16], align 16
  %8 = alloca [4 x i16], align 2
  %9 = alloca [4 x i16], align 2
  %10 = alloca [4 x i16], align 2
  %11 = alloca [4 x i16], align 2
  %12 = alloca [52 x i16], align 16
  store %struct.gsm_state* %0, %struct.gsm_state** %4, align 8
  store i16* %1, i16** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %14 = load i16*, i16** %5, align 8
  %15 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 0
  %17 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  %18 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 0
  %19 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  %20 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 0
  call void @Gsm_Coder(%struct.gsm_state* noundef %13, i16* noundef %14, i16* noundef %15, i16* noundef %16, i16* noundef %17, i16* noundef %18, i16* noundef %19, i16* noundef %20)
  %21 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 0
  %22 = load i16, i16* %21, align 16
  %23 = sext i16 %22 to i32
  %24 = ashr i32 %23, 2
  %25 = and i32 %24, 15
  %26 = or i32 208, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  store i8 %27, i8* %28, align 1
  %30 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 0
  %31 = load i16, i16* %30, align 16
  %32 = sext i16 %31 to i32
  %33 = and i32 %32, 3
  %34 = shl i32 %33, 6
  %35 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 1
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = and i32 %37, 63
  %39 = or i32 %34, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  store i8 %40, i8* %41, align 1
  %43 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 2
  %44 = load i16, i16* %43, align 4
  %45 = sext i16 %44 to i32
  %46 = and i32 %45, 31
  %47 = shl i32 %46, 3
  %48 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 3
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = ashr i32 %50, 2
  %52 = and i32 %51, 7
  %53 = or i32 %47, %52
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 %54, i8* %55, align 1
  %57 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 3
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = and i32 %59, 3
  %61 = shl i32 %60, 6
  %62 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 4
  %63 = load i16, i16* %62, align 8
  %64 = sext i16 %63 to i32
  %65 = and i32 %64, 15
  %66 = shl i32 %65, 2
  %67 = or i32 %61, %66
  %68 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 5
  %69 = load i16, i16* %68, align 2
  %70 = sext i16 %69 to i32
  %71 = ashr i32 %70, 2
  %72 = and i32 %71, 3
  %73 = or i32 %67, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 %74, i8* %75, align 1
  %77 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 5
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = and i32 %79, 3
  %81 = shl i32 %80, 6
  %82 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 6
  %83 = load i16, i16* %82, align 4
  %84 = sext i16 %83 to i32
  %85 = and i32 %84, 7
  %86 = shl i32 %85, 3
  %87 = or i32 %81, %86
  %88 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 7
  %89 = load i16, i16* %88, align 2
  %90 = sext i16 %89 to i32
  %91 = and i32 %90, 7
  %92 = or i32 %87, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 %93, i8* %94, align 1
  %96 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 0
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = and i32 %98, 127
  %100 = shl i32 %99, 1
  %101 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  %102 = load i16, i16* %101, align 2
  %103 = sext i16 %102 to i32
  %104 = ashr i32 %103, 1
  %105 = and i32 %104, 1
  %106 = or i32 %100, %105
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  store i8 %107, i8* %108, align 1
  %110 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  %111 = load i16, i16* %110, align 2
  %112 = sext i16 %111 to i32
  %113 = and i32 %112, 1
  %114 = shl i32 %113, 7
  %115 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 0
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = and i32 %117, 3
  %119 = shl i32 %118, 5
  %120 = or i32 %114, %119
  %121 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  %122 = load i16, i16* %121, align 2
  %123 = sext i16 %122 to i32
  %124 = ashr i32 %123, 1
  %125 = and i32 %124, 31
  %126 = or i32 %120, %125
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  store i8 %127, i8* %128, align 1
  %130 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = and i32 %132, 1
  %134 = shl i32 %133, 7
  %135 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 0
  %136 = load i16, i16* %135, align 16
  %137 = sext i16 %136 to i32
  %138 = and i32 %137, 7
  %139 = shl i32 %138, 4
  %140 = or i32 %134, %139
  %141 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 1
  %142 = load i16, i16* %141, align 2
  %143 = sext i16 %142 to i32
  %144 = and i32 %143, 7
  %145 = shl i32 %144, 1
  %146 = or i32 %140, %145
  %147 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 2
  %148 = load i16, i16* %147, align 4
  %149 = sext i16 %148 to i32
  %150 = ashr i32 %149, 2
  %151 = and i32 %150, 1
  %152 = or i32 %146, %151
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %6, align 8
  store i8 %153, i8* %154, align 1
  %156 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 2
  %157 = load i16, i16* %156, align 4
  %158 = sext i16 %157 to i32
  %159 = and i32 %158, 3
  %160 = shl i32 %159, 6
  %161 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 3
  %162 = load i16, i16* %161, align 2
  %163 = sext i16 %162 to i32
  %164 = and i32 %163, 7
  %165 = shl i32 %164, 3
  %166 = or i32 %160, %165
  %167 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 4
  %168 = load i16, i16* %167, align 8
  %169 = sext i16 %168 to i32
  %170 = and i32 %169, 7
  %171 = or i32 %166, %170
  %172 = trunc i32 %171 to i8
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %6, align 8
  store i8 %172, i8* %173, align 1
  %175 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 5
  %176 = load i16, i16* %175, align 2
  %177 = sext i16 %176 to i32
  %178 = and i32 %177, 7
  %179 = shl i32 %178, 5
  %180 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 6
  %181 = load i16, i16* %180, align 4
  %182 = sext i16 %181 to i32
  %183 = and i32 %182, 7
  %184 = shl i32 %183, 2
  %185 = or i32 %179, %184
  %186 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 7
  %187 = load i16, i16* %186, align 2
  %188 = sext i16 %187 to i32
  %189 = ashr i32 %188, 1
  %190 = and i32 %189, 3
  %191 = or i32 %185, %190
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %6, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %6, align 8
  store i8 %192, i8* %193, align 1
  %195 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 7
  %196 = load i16, i16* %195, align 2
  %197 = sext i16 %196 to i32
  %198 = and i32 %197, 1
  %199 = shl i32 %198, 7
  %200 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 8
  %201 = load i16, i16* %200, align 16
  %202 = sext i16 %201 to i32
  %203 = and i32 %202, 7
  %204 = shl i32 %203, 4
  %205 = or i32 %199, %204
  %206 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 9
  %207 = load i16, i16* %206, align 2
  %208 = sext i16 %207 to i32
  %209 = and i32 %208, 7
  %210 = shl i32 %209, 1
  %211 = or i32 %205, %210
  %212 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 10
  %213 = load i16, i16* %212, align 4
  %214 = sext i16 %213 to i32
  %215 = ashr i32 %214, 2
  %216 = and i32 %215, 1
  %217 = or i32 %211, %216
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %6, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %6, align 8
  store i8 %218, i8* %219, align 1
  %221 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 10
  %222 = load i16, i16* %221, align 4
  %223 = sext i16 %222 to i32
  %224 = and i32 %223, 3
  %225 = shl i32 %224, 6
  %226 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 11
  %227 = load i16, i16* %226, align 2
  %228 = sext i16 %227 to i32
  %229 = and i32 %228, 7
  %230 = shl i32 %229, 3
  %231 = or i32 %225, %230
  %232 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 12
  %233 = load i16, i16* %232, align 8
  %234 = sext i16 %233 to i32
  %235 = and i32 %234, 7
  %236 = or i32 %231, %235
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %6, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %6, align 8
  store i8 %237, i8* %238, align 1
  %240 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 1
  %241 = load i16, i16* %240, align 2
  %242 = sext i16 %241 to i32
  %243 = and i32 %242, 127
  %244 = shl i32 %243, 1
  %245 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 1
  %246 = load i16, i16* %245, align 2
  %247 = sext i16 %246 to i32
  %248 = ashr i32 %247, 1
  %249 = and i32 %248, 1
  %250 = or i32 %244, %249
  %251 = trunc i32 %250 to i8
  %252 = load i8*, i8** %6, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %6, align 8
  store i8 %251, i8* %252, align 1
  %254 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 1
  %255 = load i16, i16* %254, align 2
  %256 = sext i16 %255 to i32
  %257 = and i32 %256, 1
  %258 = shl i32 %257, 7
  %259 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 1
  %260 = load i16, i16* %259, align 2
  %261 = sext i16 %260 to i32
  %262 = and i32 %261, 3
  %263 = shl i32 %262, 5
  %264 = or i32 %258, %263
  %265 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 1
  %266 = load i16, i16* %265, align 2
  %267 = sext i16 %266 to i32
  %268 = ashr i32 %267, 1
  %269 = and i32 %268, 31
  %270 = or i32 %264, %269
  %271 = trunc i32 %270 to i8
  %272 = load i8*, i8** %6, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %6, align 8
  store i8 %271, i8* %272, align 1
  %274 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 1
  %275 = load i16, i16* %274, align 2
  %276 = sext i16 %275 to i32
  %277 = and i32 %276, 1
  %278 = shl i32 %277, 7
  %279 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 13
  %280 = load i16, i16* %279, align 2
  %281 = sext i16 %280 to i32
  %282 = and i32 %281, 7
  %283 = shl i32 %282, 4
  %284 = or i32 %278, %283
  %285 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 14
  %286 = load i16, i16* %285, align 4
  %287 = sext i16 %286 to i32
  %288 = and i32 %287, 7
  %289 = shl i32 %288, 1
  %290 = or i32 %284, %289
  %291 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 15
  %292 = load i16, i16* %291, align 2
  %293 = sext i16 %292 to i32
  %294 = ashr i32 %293, 2
  %295 = and i32 %294, 1
  %296 = or i32 %290, %295
  %297 = trunc i32 %296 to i8
  %298 = load i8*, i8** %6, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %6, align 8
  store i8 %297, i8* %298, align 1
  %300 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 15
  %301 = load i16, i16* %300, align 2
  %302 = sext i16 %301 to i32
  %303 = and i32 %302, 3
  %304 = shl i32 %303, 6
  %305 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 16
  %306 = load i16, i16* %305, align 16
  %307 = sext i16 %306 to i32
  %308 = and i32 %307, 7
  %309 = shl i32 %308, 3
  %310 = or i32 %304, %309
  %311 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 17
  %312 = load i16, i16* %311, align 2
  %313 = sext i16 %312 to i32
  %314 = and i32 %313, 7
  %315 = or i32 %310, %314
  %316 = trunc i32 %315 to i8
  %317 = load i8*, i8** %6, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %6, align 8
  store i8 %316, i8* %317, align 1
  %319 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 18
  %320 = load i16, i16* %319, align 4
  %321 = sext i16 %320 to i32
  %322 = and i32 %321, 7
  %323 = shl i32 %322, 5
  %324 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 19
  %325 = load i16, i16* %324, align 2
  %326 = sext i16 %325 to i32
  %327 = and i32 %326, 7
  %328 = shl i32 %327, 2
  %329 = or i32 %323, %328
  %330 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 20
  %331 = load i16, i16* %330, align 8
  %332 = sext i16 %331 to i32
  %333 = ashr i32 %332, 1
  %334 = and i32 %333, 3
  %335 = or i32 %329, %334
  %336 = trunc i32 %335 to i8
  %337 = load i8*, i8** %6, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %6, align 8
  store i8 %336, i8* %337, align 1
  %339 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 20
  %340 = load i16, i16* %339, align 8
  %341 = sext i16 %340 to i32
  %342 = and i32 %341, 1
  %343 = shl i32 %342, 7
  %344 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 21
  %345 = load i16, i16* %344, align 2
  %346 = sext i16 %345 to i32
  %347 = and i32 %346, 7
  %348 = shl i32 %347, 4
  %349 = or i32 %343, %348
  %350 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 22
  %351 = load i16, i16* %350, align 4
  %352 = sext i16 %351 to i32
  %353 = and i32 %352, 7
  %354 = shl i32 %353, 1
  %355 = or i32 %349, %354
  %356 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 23
  %357 = load i16, i16* %356, align 2
  %358 = sext i16 %357 to i32
  %359 = ashr i32 %358, 2
  %360 = and i32 %359, 1
  %361 = or i32 %355, %360
  %362 = trunc i32 %361 to i8
  %363 = load i8*, i8** %6, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %6, align 8
  store i8 %362, i8* %363, align 1
  %365 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 23
  %366 = load i16, i16* %365, align 2
  %367 = sext i16 %366 to i32
  %368 = and i32 %367, 3
  %369 = shl i32 %368, 6
  %370 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 24
  %371 = load i16, i16* %370, align 16
  %372 = sext i16 %371 to i32
  %373 = and i32 %372, 7
  %374 = shl i32 %373, 3
  %375 = or i32 %369, %374
  %376 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 25
  %377 = load i16, i16* %376, align 2
  %378 = sext i16 %377 to i32
  %379 = and i32 %378, 7
  %380 = or i32 %375, %379
  %381 = trunc i32 %380 to i8
  %382 = load i8*, i8** %6, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %6, align 8
  store i8 %381, i8* %382, align 1
  %384 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 2
  %385 = load i16, i16* %384, align 2
  %386 = sext i16 %385 to i32
  %387 = and i32 %386, 127
  %388 = shl i32 %387, 1
  %389 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 2
  %390 = load i16, i16* %389, align 2
  %391 = sext i16 %390 to i32
  %392 = ashr i32 %391, 1
  %393 = and i32 %392, 1
  %394 = or i32 %388, %393
  %395 = trunc i32 %394 to i8
  %396 = load i8*, i8** %6, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %6, align 8
  store i8 %395, i8* %396, align 1
  %398 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 2
  %399 = load i16, i16* %398, align 2
  %400 = sext i16 %399 to i32
  %401 = and i32 %400, 1
  %402 = shl i32 %401, 7
  %403 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 2
  %404 = load i16, i16* %403, align 2
  %405 = sext i16 %404 to i32
  %406 = and i32 %405, 3
  %407 = shl i32 %406, 5
  %408 = or i32 %402, %407
  %409 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 2
  %410 = load i16, i16* %409, align 2
  %411 = sext i16 %410 to i32
  %412 = ashr i32 %411, 1
  %413 = and i32 %412, 31
  %414 = or i32 %408, %413
  %415 = trunc i32 %414 to i8
  %416 = load i8*, i8** %6, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %6, align 8
  store i8 %415, i8* %416, align 1
  %418 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 2
  %419 = load i16, i16* %418, align 2
  %420 = sext i16 %419 to i32
  %421 = and i32 %420, 1
  %422 = shl i32 %421, 7
  %423 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 26
  %424 = load i16, i16* %423, align 4
  %425 = sext i16 %424 to i32
  %426 = and i32 %425, 7
  %427 = shl i32 %426, 4
  %428 = or i32 %422, %427
  %429 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 27
  %430 = load i16, i16* %429, align 2
  %431 = sext i16 %430 to i32
  %432 = and i32 %431, 7
  %433 = shl i32 %432, 1
  %434 = or i32 %428, %433
  %435 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 28
  %436 = load i16, i16* %435, align 8
  %437 = sext i16 %436 to i32
  %438 = ashr i32 %437, 2
  %439 = and i32 %438, 1
  %440 = or i32 %434, %439
  %441 = trunc i32 %440 to i8
  %442 = load i8*, i8** %6, align 8
  %443 = getelementptr inbounds i8, i8* %442, i32 1
  store i8* %443, i8** %6, align 8
  store i8 %441, i8* %442, align 1
  %444 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 28
  %445 = load i16, i16* %444, align 8
  %446 = sext i16 %445 to i32
  %447 = and i32 %446, 3
  %448 = shl i32 %447, 6
  %449 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 29
  %450 = load i16, i16* %449, align 2
  %451 = sext i16 %450 to i32
  %452 = and i32 %451, 7
  %453 = shl i32 %452, 3
  %454 = or i32 %448, %453
  %455 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 30
  %456 = load i16, i16* %455, align 4
  %457 = sext i16 %456 to i32
  %458 = and i32 %457, 7
  %459 = or i32 %454, %458
  %460 = trunc i32 %459 to i8
  %461 = load i8*, i8** %6, align 8
  %462 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %462, i8** %6, align 8
  store i8 %460, i8* %461, align 1
  %463 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 31
  %464 = load i16, i16* %463, align 2
  %465 = sext i16 %464 to i32
  %466 = and i32 %465, 7
  %467 = shl i32 %466, 5
  %468 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 32
  %469 = load i16, i16* %468, align 16
  %470 = sext i16 %469 to i32
  %471 = and i32 %470, 7
  %472 = shl i32 %471, 2
  %473 = or i32 %467, %472
  %474 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 33
  %475 = load i16, i16* %474, align 2
  %476 = sext i16 %475 to i32
  %477 = ashr i32 %476, 1
  %478 = and i32 %477, 3
  %479 = or i32 %473, %478
  %480 = trunc i32 %479 to i8
  %481 = load i8*, i8** %6, align 8
  %482 = getelementptr inbounds i8, i8* %481, i32 1
  store i8* %482, i8** %6, align 8
  store i8 %480, i8* %481, align 1
  %483 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 33
  %484 = load i16, i16* %483, align 2
  %485 = sext i16 %484 to i32
  %486 = and i32 %485, 1
  %487 = shl i32 %486, 7
  %488 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 34
  %489 = load i16, i16* %488, align 4
  %490 = sext i16 %489 to i32
  %491 = and i32 %490, 7
  %492 = shl i32 %491, 4
  %493 = or i32 %487, %492
  %494 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 35
  %495 = load i16, i16* %494, align 2
  %496 = sext i16 %495 to i32
  %497 = and i32 %496, 7
  %498 = shl i32 %497, 1
  %499 = or i32 %493, %498
  %500 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 36
  %501 = load i16, i16* %500, align 8
  %502 = sext i16 %501 to i32
  %503 = ashr i32 %502, 2
  %504 = and i32 %503, 1
  %505 = or i32 %499, %504
  %506 = trunc i32 %505 to i8
  %507 = load i8*, i8** %6, align 8
  %508 = getelementptr inbounds i8, i8* %507, i32 1
  store i8* %508, i8** %6, align 8
  store i8 %506, i8* %507, align 1
  %509 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 36
  %510 = load i16, i16* %509, align 8
  %511 = sext i16 %510 to i32
  %512 = and i32 %511, 3
  %513 = shl i32 %512, 6
  %514 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 37
  %515 = load i16, i16* %514, align 2
  %516 = sext i16 %515 to i32
  %517 = and i32 %516, 7
  %518 = shl i32 %517, 3
  %519 = or i32 %513, %518
  %520 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 38
  %521 = load i16, i16* %520, align 4
  %522 = sext i16 %521 to i32
  %523 = and i32 %522, 7
  %524 = or i32 %519, %523
  %525 = trunc i32 %524 to i8
  %526 = load i8*, i8** %6, align 8
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** %6, align 8
  store i8 %525, i8* %526, align 1
  %528 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 3
  %529 = load i16, i16* %528, align 2
  %530 = sext i16 %529 to i32
  %531 = and i32 %530, 127
  %532 = shl i32 %531, 1
  %533 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 3
  %534 = load i16, i16* %533, align 2
  %535 = sext i16 %534 to i32
  %536 = ashr i32 %535, 1
  %537 = and i32 %536, 1
  %538 = or i32 %532, %537
  %539 = trunc i32 %538 to i8
  %540 = load i8*, i8** %6, align 8
  %541 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %541, i8** %6, align 8
  store i8 %539, i8* %540, align 1
  %542 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 3
  %543 = load i16, i16* %542, align 2
  %544 = sext i16 %543 to i32
  %545 = and i32 %544, 1
  %546 = shl i32 %545, 7
  %547 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 3
  %548 = load i16, i16* %547, align 2
  %549 = sext i16 %548 to i32
  %550 = and i32 %549, 3
  %551 = shl i32 %550, 5
  %552 = or i32 %546, %551
  %553 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 3
  %554 = load i16, i16* %553, align 2
  %555 = sext i16 %554 to i32
  %556 = ashr i32 %555, 1
  %557 = and i32 %556, 31
  %558 = or i32 %552, %557
  %559 = trunc i32 %558 to i8
  %560 = load i8*, i8** %6, align 8
  %561 = getelementptr inbounds i8, i8* %560, i32 1
  store i8* %561, i8** %6, align 8
  store i8 %559, i8* %560, align 1
  %562 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 3
  %563 = load i16, i16* %562, align 2
  %564 = sext i16 %563 to i32
  %565 = and i32 %564, 1
  %566 = shl i32 %565, 7
  %567 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 39
  %568 = load i16, i16* %567, align 2
  %569 = sext i16 %568 to i32
  %570 = and i32 %569, 7
  %571 = shl i32 %570, 4
  %572 = or i32 %566, %571
  %573 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 40
  %574 = load i16, i16* %573, align 16
  %575 = sext i16 %574 to i32
  %576 = and i32 %575, 7
  %577 = shl i32 %576, 1
  %578 = or i32 %572, %577
  %579 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 41
  %580 = load i16, i16* %579, align 2
  %581 = sext i16 %580 to i32
  %582 = ashr i32 %581, 2
  %583 = and i32 %582, 1
  %584 = or i32 %578, %583
  %585 = trunc i32 %584 to i8
  %586 = load i8*, i8** %6, align 8
  %587 = getelementptr inbounds i8, i8* %586, i32 1
  store i8* %587, i8** %6, align 8
  store i8 %585, i8* %586, align 1
  %588 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 41
  %589 = load i16, i16* %588, align 2
  %590 = sext i16 %589 to i32
  %591 = and i32 %590, 3
  %592 = shl i32 %591, 6
  %593 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 42
  %594 = load i16, i16* %593, align 4
  %595 = sext i16 %594 to i32
  %596 = and i32 %595, 7
  %597 = shl i32 %596, 3
  %598 = or i32 %592, %597
  %599 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 43
  %600 = load i16, i16* %599, align 2
  %601 = sext i16 %600 to i32
  %602 = and i32 %601, 7
  %603 = or i32 %598, %602
  %604 = trunc i32 %603 to i8
  %605 = load i8*, i8** %6, align 8
  %606 = getelementptr inbounds i8, i8* %605, i32 1
  store i8* %606, i8** %6, align 8
  store i8 %604, i8* %605, align 1
  %607 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 44
  %608 = load i16, i16* %607, align 8
  %609 = sext i16 %608 to i32
  %610 = and i32 %609, 7
  %611 = shl i32 %610, 5
  %612 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 45
  %613 = load i16, i16* %612, align 2
  %614 = sext i16 %613 to i32
  %615 = and i32 %614, 7
  %616 = shl i32 %615, 2
  %617 = or i32 %611, %616
  %618 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 46
  %619 = load i16, i16* %618, align 4
  %620 = sext i16 %619 to i32
  %621 = ashr i32 %620, 1
  %622 = and i32 %621, 3
  %623 = or i32 %617, %622
  %624 = trunc i32 %623 to i8
  %625 = load i8*, i8** %6, align 8
  %626 = getelementptr inbounds i8, i8* %625, i32 1
  store i8* %626, i8** %6, align 8
  store i8 %624, i8* %625, align 1
  %627 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 46
  %628 = load i16, i16* %627, align 4
  %629 = sext i16 %628 to i32
  %630 = and i32 %629, 1
  %631 = shl i32 %630, 7
  %632 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 47
  %633 = load i16, i16* %632, align 2
  %634 = sext i16 %633 to i32
  %635 = and i32 %634, 7
  %636 = shl i32 %635, 4
  %637 = or i32 %631, %636
  %638 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 48
  %639 = load i16, i16* %638, align 16
  %640 = sext i16 %639 to i32
  %641 = and i32 %640, 7
  %642 = shl i32 %641, 1
  %643 = or i32 %637, %642
  %644 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 49
  %645 = load i16, i16* %644, align 2
  %646 = sext i16 %645 to i32
  %647 = ashr i32 %646, 2
  %648 = and i32 %647, 1
  %649 = or i32 %643, %648
  %650 = trunc i32 %649 to i8
  %651 = load i8*, i8** %6, align 8
  %652 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %652, i8** %6, align 8
  store i8 %650, i8* %651, align 1
  %653 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 49
  %654 = load i16, i16* %653, align 2
  %655 = sext i16 %654 to i32
  %656 = and i32 %655, 3
  %657 = shl i32 %656, 6
  %658 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 50
  %659 = load i16, i16* %658, align 4
  %660 = sext i16 %659 to i32
  %661 = and i32 %660, 7
  %662 = shl i32 %661, 3
  %663 = or i32 %657, %662
  %664 = getelementptr inbounds [52 x i16], [52 x i16]* %12, i64 0, i64 51
  %665 = load i16, i16* %664, align 2
  %666 = sext i16 %665 to i32
  %667 = and i32 %666, 7
  %668 = or i32 %663, %667
  %669 = trunc i32 %668 to i8
  %670 = load i8*, i8** %6, align 8
  %671 = getelementptr inbounds i8, i8* %670, i32 1
  store i8* %671, i8** %6, align 8
  store i8 %669, i8* %670, align 1
  ret void
}

declare dso_local void @Gsm_Coder(%struct.gsm_state* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
