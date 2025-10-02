; ModuleID = './gsm_explode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_explode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gsm_explode(%struct.gsm_state* nocapture noundef readnone %0, i8* nocapture noundef readonly %1, i16* noundef %2) #0 {
  %4 = load i8, i8* %1, align 1
  %.mask = and i8 %4, -16
  %.not = icmp eq i8 %.mask, -48
  br i1 %.not, label %6, label %5

5:                                                ; preds = %3
  br label %513

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 1
  %8 = load i8, i8* %1, align 1
  %9 = shl i8 %8, 2
  %10 = and i8 %9, 60
  %11 = zext i8 %10 to i16
  store i16 %11, i16* %2, align 2
  %12 = load i8, i8* %7, align 1
  %13 = lshr i8 %12, 6
  %14 = or i8 %10, %13
  %15 = zext i8 %14 to i16
  store i16 %15, i16* %2, align 2
  %16 = getelementptr inbounds i8, i8* %1, i64 2
  %17 = load i8, i8* %7, align 1
  %18 = and i8 %17, 63
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %19, i16* %20, align 2
  %21 = load i8, i8* %16, align 1
  %22 = lshr i8 %21, 3
  %23 = zext i8 %22 to i16
  %24 = getelementptr inbounds i16, i16* %2, i64 2
  store i16 %23, i16* %24, align 2
  %25 = getelementptr inbounds i8, i8* %1, i64 3
  %26 = load i8, i8* %16, align 1
  %27 = shl i8 %26, 2
  %28 = and i8 %27, 28
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds i16, i16* %2, i64 3
  store i16 %29, i16* %30, align 2
  %31 = load i8, i8* %25, align 1
  %32 = lshr i8 %31, 6
  %33 = getelementptr inbounds i16, i16* %2, i64 3
  %34 = or i8 %28, %32
  %35 = zext i8 %34 to i16
  store i16 %35, i16* %33, align 2
  %36 = load i8, i8* %25, align 1
  %37 = lshr i8 %36, 2
  %38 = and i8 %37, 15
  %39 = zext i8 %38 to i16
  %40 = getelementptr inbounds i16, i16* %2, i64 4
  store i16 %39, i16* %40, align 2
  %41 = getelementptr inbounds i8, i8* %1, i64 4
  %42 = load i8, i8* %25, align 1
  %43 = shl i8 %42, 2
  %44 = and i8 %43, 12
  %45 = zext i8 %44 to i16
  %46 = getelementptr inbounds i16, i16* %2, i64 5
  store i16 %45, i16* %46, align 2
  %47 = load i8, i8* %41, align 1
  %48 = lshr i8 %47, 6
  %49 = getelementptr inbounds i16, i16* %2, i64 5
  %50 = or i8 %44, %48
  %51 = zext i8 %50 to i16
  store i16 %51, i16* %49, align 2
  %52 = load i8, i8* %41, align 1
  %53 = lshr i8 %52, 3
  %54 = and i8 %53, 7
  %55 = zext i8 %54 to i16
  %56 = getelementptr inbounds i16, i16* %2, i64 6
  store i16 %55, i16* %56, align 2
  %57 = getelementptr inbounds i8, i8* %1, i64 5
  %58 = load i8, i8* %41, align 1
  %59 = and i8 %58, 7
  %60 = zext i8 %59 to i16
  %61 = getelementptr inbounds i16, i16* %2, i64 7
  store i16 %60, i16* %61, align 2
  %62 = load i8, i8* %57, align 1
  %63 = lshr i8 %62, 1
  %64 = zext i8 %63 to i16
  %65 = getelementptr inbounds i16, i16* %2, i64 8
  store i16 %64, i16* %65, align 2
  %66 = getelementptr inbounds i8, i8* %1, i64 6
  %67 = load i8, i8* %57, align 1
  %68 = shl i8 %67, 1
  %69 = and i8 %68, 2
  %70 = zext i8 %69 to i16
  %71 = getelementptr inbounds i16, i16* %2, i64 9
  store i16 %70, i16* %71, align 2
  %72 = load i8, i8* %66, align 1
  %73 = lshr i8 %72, 7
  %74 = getelementptr inbounds i16, i16* %2, i64 9
  %75 = or i8 %69, %73
  %76 = zext i8 %75 to i16
  store i16 %76, i16* %74, align 2
  %77 = load i8, i8* %66, align 1
  %78 = lshr i8 %77, 5
  %79 = and i8 %78, 3
  %80 = zext i8 %79 to i16
  %81 = getelementptr inbounds i16, i16* %2, i64 10
  store i16 %80, i16* %81, align 2
  %82 = getelementptr inbounds i8, i8* %1, i64 7
  %83 = load i8, i8* %66, align 1
  %84 = shl i8 %83, 1
  %85 = and i8 %84, 62
  %86 = zext i8 %85 to i16
  %87 = getelementptr inbounds i16, i16* %2, i64 11
  store i16 %86, i16* %87, align 2
  %88 = load i8, i8* %82, align 1
  %89 = lshr i8 %88, 7
  %90 = getelementptr inbounds i16, i16* %2, i64 11
  %91 = or i8 %85, %89
  %92 = zext i8 %91 to i16
  store i16 %92, i16* %90, align 2
  %93 = load i8, i8* %82, align 1
  %94 = lshr i8 %93, 4
  %95 = and i8 %94, 7
  %96 = zext i8 %95 to i16
  %97 = getelementptr inbounds i16, i16* %2, i64 12
  store i16 %96, i16* %97, align 2
  %98 = load i8, i8* %82, align 1
  %99 = lshr i8 %98, 1
  %100 = and i8 %99, 7
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds i16, i16* %2, i64 13
  store i16 %101, i16* %102, align 2
  %103 = getelementptr inbounds i8, i8* %1, i64 8
  %104 = load i8, i8* %82, align 1
  %105 = shl i8 %104, 2
  %106 = and i8 %105, 4
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds i16, i16* %2, i64 14
  store i16 %107, i16* %108, align 2
  %109 = load i8, i8* %103, align 1
  %110 = lshr i8 %109, 6
  %111 = getelementptr inbounds i16, i16* %2, i64 14
  %112 = or i8 %106, %110
  %113 = zext i8 %112 to i16
  store i16 %113, i16* %111, align 2
  %114 = load i8, i8* %103, align 1
  %115 = lshr i8 %114, 3
  %116 = and i8 %115, 7
  %117 = zext i8 %116 to i16
  %118 = getelementptr inbounds i16, i16* %2, i64 15
  store i16 %117, i16* %118, align 2
  %119 = getelementptr inbounds i8, i8* %1, i64 9
  %120 = load i8, i8* %103, align 1
  %121 = and i8 %120, 7
  %122 = zext i8 %121 to i16
  %123 = getelementptr inbounds i16, i16* %2, i64 16
  store i16 %122, i16* %123, align 2
  %124 = load i8, i8* %119, align 1
  %125 = lshr i8 %124, 5
  %126 = zext i8 %125 to i16
  %127 = getelementptr inbounds i16, i16* %2, i64 17
  store i16 %126, i16* %127, align 2
  %128 = load i8, i8* %119, align 1
  %129 = lshr i8 %128, 2
  %130 = and i8 %129, 7
  %131 = zext i8 %130 to i16
  %132 = getelementptr inbounds i16, i16* %2, i64 18
  store i16 %131, i16* %132, align 2
  %133 = getelementptr inbounds i8, i8* %1, i64 10
  %134 = load i8, i8* %119, align 1
  %135 = shl i8 %134, 1
  %136 = and i8 %135, 6
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i16, i16* %2, i64 19
  store i16 %137, i16* %138, align 2
  %139 = load i8, i8* %133, align 1
  %140 = lshr i8 %139, 7
  %141 = getelementptr inbounds i16, i16* %2, i64 19
  %142 = or i8 %136, %140
  %143 = zext i8 %142 to i16
  store i16 %143, i16* %141, align 2
  %144 = load i8, i8* %133, align 1
  %145 = lshr i8 %144, 4
  %146 = and i8 %145, 7
  %147 = zext i8 %146 to i16
  %148 = getelementptr inbounds i16, i16* %2, i64 20
  store i16 %147, i16* %148, align 2
  %149 = load i8, i8* %133, align 1
  %150 = lshr i8 %149, 1
  %151 = and i8 %150, 7
  %152 = zext i8 %151 to i16
  %153 = getelementptr inbounds i16, i16* %2, i64 21
  store i16 %152, i16* %153, align 2
  %154 = getelementptr inbounds i8, i8* %1, i64 11
  %155 = load i8, i8* %133, align 1
  %156 = shl i8 %155, 2
  %157 = and i8 %156, 4
  %158 = zext i8 %157 to i16
  %159 = getelementptr inbounds i16, i16* %2, i64 22
  store i16 %158, i16* %159, align 2
  %160 = load i8, i8* %154, align 1
  %161 = lshr i8 %160, 6
  %162 = getelementptr inbounds i16, i16* %2, i64 22
  %163 = or i8 %157, %161
  %164 = zext i8 %163 to i16
  store i16 %164, i16* %162, align 2
  %165 = load i8, i8* %154, align 1
  %166 = lshr i8 %165, 3
  %167 = and i8 %166, 7
  %168 = zext i8 %167 to i16
  %169 = getelementptr inbounds i16, i16* %2, i64 23
  store i16 %168, i16* %169, align 2
  %170 = getelementptr inbounds i8, i8* %1, i64 12
  %171 = load i8, i8* %154, align 1
  %172 = and i8 %171, 7
  %173 = zext i8 %172 to i16
  %174 = getelementptr inbounds i16, i16* %2, i64 24
  store i16 %173, i16* %174, align 2
  %175 = load i8, i8* %170, align 1
  %176 = lshr i8 %175, 1
  %177 = zext i8 %176 to i16
  %178 = getelementptr inbounds i16, i16* %2, i64 25
  store i16 %177, i16* %178, align 2
  %179 = getelementptr inbounds i8, i8* %1, i64 13
  %180 = load i8, i8* %170, align 1
  %181 = shl i8 %180, 1
  %182 = and i8 %181, 2
  %183 = zext i8 %182 to i16
  %184 = getelementptr inbounds i16, i16* %2, i64 26
  store i16 %183, i16* %184, align 2
  %185 = load i8, i8* %179, align 1
  %186 = lshr i8 %185, 7
  %187 = getelementptr inbounds i16, i16* %2, i64 26
  %188 = or i8 %182, %186
  %189 = zext i8 %188 to i16
  store i16 %189, i16* %187, align 2
  %190 = load i8, i8* %179, align 1
  %191 = lshr i8 %190, 5
  %192 = and i8 %191, 3
  %193 = zext i8 %192 to i16
  %194 = getelementptr inbounds i16, i16* %2, i64 27
  store i16 %193, i16* %194, align 2
  %195 = getelementptr inbounds i8, i8* %1, i64 14
  %196 = load i8, i8* %179, align 1
  %197 = shl i8 %196, 1
  %198 = and i8 %197, 62
  %199 = zext i8 %198 to i16
  %200 = getelementptr inbounds i16, i16* %2, i64 28
  store i16 %199, i16* %200, align 2
  %201 = load i8, i8* %195, align 1
  %202 = lshr i8 %201, 7
  %203 = getelementptr inbounds i16, i16* %2, i64 28
  %204 = or i8 %198, %202
  %205 = zext i8 %204 to i16
  store i16 %205, i16* %203, align 2
  %206 = load i8, i8* %195, align 1
  %207 = lshr i8 %206, 4
  %208 = and i8 %207, 7
  %209 = zext i8 %208 to i16
  %210 = getelementptr inbounds i16, i16* %2, i64 29
  store i16 %209, i16* %210, align 2
  %211 = load i8, i8* %195, align 1
  %212 = lshr i8 %211, 1
  %213 = and i8 %212, 7
  %214 = zext i8 %213 to i16
  %215 = getelementptr inbounds i16, i16* %2, i64 30
  store i16 %214, i16* %215, align 2
  %216 = getelementptr inbounds i8, i8* %1, i64 15
  %217 = load i8, i8* %195, align 1
  %218 = shl i8 %217, 2
  %219 = and i8 %218, 4
  %220 = zext i8 %219 to i16
  %221 = getelementptr inbounds i16, i16* %2, i64 31
  store i16 %220, i16* %221, align 2
  %222 = load i8, i8* %216, align 1
  %223 = lshr i8 %222, 6
  %224 = getelementptr inbounds i16, i16* %2, i64 31
  %225 = or i8 %219, %223
  %226 = zext i8 %225 to i16
  store i16 %226, i16* %224, align 2
  %227 = load i8, i8* %216, align 1
  %228 = lshr i8 %227, 3
  %229 = and i8 %228, 7
  %230 = zext i8 %229 to i16
  %231 = getelementptr inbounds i16, i16* %2, i64 32
  store i16 %230, i16* %231, align 2
  %232 = getelementptr inbounds i8, i8* %1, i64 16
  %233 = load i8, i8* %216, align 1
  %234 = and i8 %233, 7
  %235 = zext i8 %234 to i16
  %236 = getelementptr inbounds i16, i16* %2, i64 33
  store i16 %235, i16* %236, align 2
  %237 = load i8, i8* %232, align 1
  %238 = lshr i8 %237, 5
  %239 = zext i8 %238 to i16
  %240 = getelementptr inbounds i16, i16* %2, i64 34
  store i16 %239, i16* %240, align 2
  %241 = load i8, i8* %232, align 1
  %242 = lshr i8 %241, 2
  %243 = and i8 %242, 7
  %244 = zext i8 %243 to i16
  %245 = getelementptr inbounds i16, i16* %2, i64 35
  store i16 %244, i16* %245, align 2
  %246 = getelementptr inbounds i8, i8* %1, i64 17
  %247 = load i8, i8* %232, align 1
  %248 = shl i8 %247, 1
  %249 = and i8 %248, 6
  %250 = zext i8 %249 to i16
  %251 = getelementptr inbounds i16, i16* %2, i64 36
  store i16 %250, i16* %251, align 2
  %252 = load i8, i8* %246, align 1
  %253 = lshr i8 %252, 7
  %254 = getelementptr inbounds i16, i16* %2, i64 36
  %255 = or i8 %249, %253
  %256 = zext i8 %255 to i16
  store i16 %256, i16* %254, align 2
  %257 = load i8, i8* %246, align 1
  %258 = lshr i8 %257, 4
  %259 = and i8 %258, 7
  %260 = zext i8 %259 to i16
  %261 = getelementptr inbounds i16, i16* %2, i64 37
  store i16 %260, i16* %261, align 2
  %262 = load i8, i8* %246, align 1
  %263 = lshr i8 %262, 1
  %264 = and i8 %263, 7
  %265 = zext i8 %264 to i16
  %266 = getelementptr inbounds i16, i16* %2, i64 38
  store i16 %265, i16* %266, align 2
  %267 = getelementptr inbounds i8, i8* %1, i64 18
  %268 = load i8, i8* %246, align 1
  %269 = shl i8 %268, 2
  %270 = and i8 %269, 4
  %271 = zext i8 %270 to i16
  %272 = getelementptr inbounds i16, i16* %2, i64 39
  store i16 %271, i16* %272, align 2
  %273 = load i8, i8* %267, align 1
  %274 = lshr i8 %273, 6
  %275 = getelementptr inbounds i16, i16* %2, i64 39
  %276 = or i8 %270, %274
  %277 = zext i8 %276 to i16
  store i16 %277, i16* %275, align 2
  %278 = load i8, i8* %267, align 1
  %279 = lshr i8 %278, 3
  %280 = and i8 %279, 7
  %281 = zext i8 %280 to i16
  %282 = getelementptr inbounds i16, i16* %2, i64 40
  store i16 %281, i16* %282, align 2
  %283 = getelementptr inbounds i8, i8* %1, i64 19
  %284 = load i8, i8* %267, align 1
  %285 = and i8 %284, 7
  %286 = zext i8 %285 to i16
  %287 = getelementptr inbounds i16, i16* %2, i64 41
  store i16 %286, i16* %287, align 2
  %288 = load i8, i8* %283, align 1
  %289 = lshr i8 %288, 1
  %290 = zext i8 %289 to i16
  %291 = getelementptr inbounds i16, i16* %2, i64 42
  store i16 %290, i16* %291, align 2
  %292 = getelementptr inbounds i8, i8* %1, i64 20
  %293 = load i8, i8* %283, align 1
  %294 = shl i8 %293, 1
  %295 = and i8 %294, 2
  %296 = zext i8 %295 to i16
  %297 = getelementptr inbounds i16, i16* %2, i64 43
  store i16 %296, i16* %297, align 2
  %298 = load i8, i8* %292, align 1
  %299 = lshr i8 %298, 7
  %300 = getelementptr inbounds i16, i16* %2, i64 43
  %301 = or i8 %295, %299
  %302 = zext i8 %301 to i16
  store i16 %302, i16* %300, align 2
  %303 = load i8, i8* %292, align 1
  %304 = lshr i8 %303, 5
  %305 = and i8 %304, 3
  %306 = zext i8 %305 to i16
  %307 = getelementptr inbounds i16, i16* %2, i64 44
  store i16 %306, i16* %307, align 2
  %308 = getelementptr inbounds i8, i8* %1, i64 21
  %309 = load i8, i8* %292, align 1
  %310 = shl i8 %309, 1
  %311 = and i8 %310, 62
  %312 = zext i8 %311 to i16
  %313 = getelementptr inbounds i16, i16* %2, i64 45
  store i16 %312, i16* %313, align 2
  %314 = load i8, i8* %308, align 1
  %315 = lshr i8 %314, 7
  %316 = getelementptr inbounds i16, i16* %2, i64 45
  %317 = or i8 %311, %315
  %318 = zext i8 %317 to i16
  store i16 %318, i16* %316, align 2
  %319 = load i8, i8* %308, align 1
  %320 = lshr i8 %319, 4
  %321 = and i8 %320, 7
  %322 = zext i8 %321 to i16
  %323 = getelementptr inbounds i16, i16* %2, i64 46
  store i16 %322, i16* %323, align 2
  %324 = load i8, i8* %308, align 1
  %325 = lshr i8 %324, 1
  %326 = and i8 %325, 7
  %327 = zext i8 %326 to i16
  %328 = getelementptr inbounds i16, i16* %2, i64 47
  store i16 %327, i16* %328, align 2
  %329 = getelementptr inbounds i8, i8* %1, i64 22
  %330 = load i8, i8* %308, align 1
  %331 = shl i8 %330, 2
  %332 = and i8 %331, 4
  %333 = zext i8 %332 to i16
  %334 = getelementptr inbounds i16, i16* %2, i64 48
  store i16 %333, i16* %334, align 2
  %335 = load i8, i8* %329, align 1
  %336 = lshr i8 %335, 6
  %337 = getelementptr inbounds i16, i16* %2, i64 48
  %338 = or i8 %332, %336
  %339 = zext i8 %338 to i16
  store i16 %339, i16* %337, align 2
  %340 = load i8, i8* %329, align 1
  %341 = lshr i8 %340, 3
  %342 = and i8 %341, 7
  %343 = zext i8 %342 to i16
  %344 = getelementptr inbounds i16, i16* %2, i64 49
  store i16 %343, i16* %344, align 2
  %345 = getelementptr inbounds i8, i8* %1, i64 23
  %346 = load i8, i8* %329, align 1
  %347 = and i8 %346, 7
  %348 = zext i8 %347 to i16
  %349 = getelementptr inbounds i16, i16* %2, i64 50
  store i16 %348, i16* %349, align 2
  %350 = load i8, i8* %345, align 1
  %351 = lshr i8 %350, 5
  %352 = zext i8 %351 to i16
  %353 = getelementptr inbounds i16, i16* %2, i64 51
  store i16 %352, i16* %353, align 2
  %354 = load i8, i8* %345, align 1
  %355 = lshr i8 %354, 2
  %356 = and i8 %355, 7
  %357 = zext i8 %356 to i16
  %358 = getelementptr inbounds i16, i16* %2, i64 52
  store i16 %357, i16* %358, align 2
  %359 = getelementptr inbounds i8, i8* %1, i64 24
  %360 = load i8, i8* %345, align 1
  %361 = shl i8 %360, 1
  %362 = and i8 %361, 6
  %363 = zext i8 %362 to i16
  %364 = getelementptr inbounds i16, i16* %2, i64 53
  store i16 %363, i16* %364, align 2
  %365 = load i8, i8* %359, align 1
  %366 = lshr i8 %365, 7
  %367 = getelementptr inbounds i16, i16* %2, i64 53
  %368 = or i8 %362, %366
  %369 = zext i8 %368 to i16
  store i16 %369, i16* %367, align 2
  %370 = load i8, i8* %359, align 1
  %371 = lshr i8 %370, 4
  %372 = and i8 %371, 7
  %373 = zext i8 %372 to i16
  %374 = getelementptr inbounds i16, i16* %2, i64 54
  store i16 %373, i16* %374, align 2
  %375 = load i8, i8* %359, align 1
  %376 = lshr i8 %375, 1
  %377 = and i8 %376, 7
  %378 = zext i8 %377 to i16
  %379 = getelementptr inbounds i16, i16* %2, i64 55
  store i16 %378, i16* %379, align 2
  %380 = getelementptr inbounds i8, i8* %1, i64 25
  %381 = load i8, i8* %359, align 1
  %382 = shl i8 %381, 2
  %383 = and i8 %382, 4
  %384 = zext i8 %383 to i16
  %385 = getelementptr inbounds i16, i16* %2, i64 56
  store i16 %384, i16* %385, align 2
  %386 = load i8, i8* %380, align 1
  %387 = lshr i8 %386, 6
  %388 = getelementptr inbounds i16, i16* %2, i64 56
  %389 = or i8 %383, %387
  %390 = zext i8 %389 to i16
  store i16 %390, i16* %388, align 2
  %391 = load i8, i8* %380, align 1
  %392 = lshr i8 %391, 3
  %393 = and i8 %392, 7
  %394 = zext i8 %393 to i16
  %395 = getelementptr inbounds i16, i16* %2, i64 57
  store i16 %394, i16* %395, align 2
  %396 = getelementptr inbounds i8, i8* %1, i64 26
  %397 = load i8, i8* %380, align 1
  %398 = and i8 %397, 7
  %399 = zext i8 %398 to i16
  %400 = getelementptr inbounds i16, i16* %2, i64 58
  store i16 %399, i16* %400, align 2
  %401 = load i8, i8* %396, align 1
  %402 = lshr i8 %401, 1
  %403 = zext i8 %402 to i16
  %404 = getelementptr inbounds i16, i16* %2, i64 59
  store i16 %403, i16* %404, align 2
  %405 = getelementptr inbounds i8, i8* %1, i64 27
  %406 = load i8, i8* %396, align 1
  %407 = shl i8 %406, 1
  %408 = and i8 %407, 2
  %409 = zext i8 %408 to i16
  %410 = getelementptr inbounds i16, i16* %2, i64 60
  store i16 %409, i16* %410, align 2
  %411 = load i8, i8* %405, align 1
  %412 = lshr i8 %411, 7
  %413 = getelementptr inbounds i16, i16* %2, i64 60
  %414 = or i8 %408, %412
  %415 = zext i8 %414 to i16
  store i16 %415, i16* %413, align 2
  %416 = load i8, i8* %405, align 1
  %417 = lshr i8 %416, 5
  %418 = and i8 %417, 3
  %419 = zext i8 %418 to i16
  %420 = getelementptr inbounds i16, i16* %2, i64 61
  store i16 %419, i16* %420, align 2
  %421 = getelementptr inbounds i8, i8* %1, i64 28
  %422 = load i8, i8* %405, align 1
  %423 = shl i8 %422, 1
  %424 = and i8 %423, 62
  %425 = zext i8 %424 to i16
  %426 = getelementptr inbounds i16, i16* %2, i64 62
  store i16 %425, i16* %426, align 2
  %427 = load i8, i8* %421, align 1
  %428 = lshr i8 %427, 7
  %429 = getelementptr inbounds i16, i16* %2, i64 62
  %430 = or i8 %424, %428
  %431 = zext i8 %430 to i16
  store i16 %431, i16* %429, align 2
  %432 = load i8, i8* %421, align 1
  %433 = lshr i8 %432, 4
  %434 = and i8 %433, 7
  %435 = zext i8 %434 to i16
  %436 = getelementptr inbounds i16, i16* %2, i64 63
  store i16 %435, i16* %436, align 2
  %437 = load i8, i8* %421, align 1
  %438 = lshr i8 %437, 1
  %439 = and i8 %438, 7
  %440 = zext i8 %439 to i16
  %441 = getelementptr inbounds i16, i16* %2, i64 64
  store i16 %440, i16* %441, align 2
  %442 = getelementptr inbounds i8, i8* %1, i64 29
  %443 = load i8, i8* %421, align 1
  %444 = shl i8 %443, 2
  %445 = and i8 %444, 4
  %446 = zext i8 %445 to i16
  %447 = getelementptr inbounds i16, i16* %2, i64 65
  store i16 %446, i16* %447, align 2
  %448 = load i8, i8* %442, align 1
  %449 = lshr i8 %448, 6
  %450 = getelementptr inbounds i16, i16* %2, i64 65
  %451 = or i8 %445, %449
  %452 = zext i8 %451 to i16
  store i16 %452, i16* %450, align 2
  %453 = load i8, i8* %442, align 1
  %454 = lshr i8 %453, 3
  %455 = and i8 %454, 7
  %456 = zext i8 %455 to i16
  %457 = getelementptr inbounds i16, i16* %2, i64 66
  store i16 %456, i16* %457, align 2
  %458 = getelementptr inbounds i8, i8* %1, i64 30
  %459 = load i8, i8* %442, align 1
  %460 = and i8 %459, 7
  %461 = zext i8 %460 to i16
  %462 = getelementptr inbounds i16, i16* %2, i64 67
  store i16 %461, i16* %462, align 2
  %463 = load i8, i8* %458, align 1
  %464 = lshr i8 %463, 5
  %465 = zext i8 %464 to i16
  %466 = getelementptr inbounds i16, i16* %2, i64 68
  store i16 %465, i16* %466, align 2
  %467 = load i8, i8* %458, align 1
  %468 = lshr i8 %467, 2
  %469 = and i8 %468, 7
  %470 = zext i8 %469 to i16
  %471 = getelementptr inbounds i16, i16* %2, i64 69
  store i16 %470, i16* %471, align 2
  %472 = getelementptr inbounds i8, i8* %1, i64 31
  %473 = load i8, i8* %458, align 1
  %474 = shl i8 %473, 1
  %475 = and i8 %474, 6
  %476 = zext i8 %475 to i16
  %477 = getelementptr inbounds i16, i16* %2, i64 70
  store i16 %476, i16* %477, align 2
  %478 = load i8, i8* %472, align 1
  %479 = lshr i8 %478, 7
  %480 = getelementptr inbounds i16, i16* %2, i64 70
  %481 = or i8 %475, %479
  %482 = zext i8 %481 to i16
  store i16 %482, i16* %480, align 2
  %483 = load i8, i8* %472, align 1
  %484 = lshr i8 %483, 4
  %485 = and i8 %484, 7
  %486 = zext i8 %485 to i16
  %487 = getelementptr inbounds i16, i16* %2, i64 71
  store i16 %486, i16* %487, align 2
  %488 = load i8, i8* %472, align 1
  %489 = lshr i8 %488, 1
  %490 = and i8 %489, 7
  %491 = zext i8 %490 to i16
  %492 = getelementptr inbounds i16, i16* %2, i64 72
  store i16 %491, i16* %492, align 2
  %493 = getelementptr inbounds i8, i8* %1, i64 32
  %494 = load i8, i8* %472, align 1
  %495 = shl i8 %494, 2
  %496 = and i8 %495, 4
  %497 = zext i8 %496 to i16
  %498 = getelementptr inbounds i16, i16* %2, i64 73
  store i16 %497, i16* %498, align 2
  %499 = load i8, i8* %493, align 1
  %500 = lshr i8 %499, 6
  %501 = getelementptr inbounds i16, i16* %2, i64 73
  %502 = or i8 %496, %500
  %503 = zext i8 %502 to i16
  store i16 %503, i16* %501, align 2
  %504 = load i8, i8* %493, align 1
  %505 = lshr i8 %504, 3
  %506 = and i8 %505, 7
  %507 = zext i8 %506 to i16
  %508 = getelementptr inbounds i16, i16* %2, i64 74
  store i16 %507, i16* %508, align 2
  %509 = load i8, i8* %493, align 1
  %510 = and i8 %509, 7
  %511 = zext i8 %510 to i16
  %512 = getelementptr inbounds i16, i16* %2, i64 75
  store i16 %511, i16* %512, align 2
  br label %513

513:                                              ; preds = %6, %5
  %.0 = phi i32 [ -1, %5 ], [ 0, %6 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
