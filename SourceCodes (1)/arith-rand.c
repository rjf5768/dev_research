; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/arith-rand.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/arith-rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_rand.seed = internal global i64 47114711, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @simple_rand() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @simple_rand.seed, align 8
  %3 = mul i64 %2, 1103515245
  %4 = add i64 %3, 12345
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  store i64 %5, i64* @simple_rand.seed, align 8
  %6 = load i64, i64* %1, align 8
  %7 = lshr i64 %6, 8
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @random_bitstring() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %41, %0
  %7 = call i64 @simple_rand()
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = ashr i64 %8, 1
  %10 = srem i64 %9, 16
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i64, i64* %2, align 8
  store i64 %18, i64* %1, align 8
  br label %42

19:                                               ; preds = %6
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* %2, align 8
  %22 = zext i32 %20 to i64
  %23 = shl i64 %21, %22
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, 1
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %2, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %27, %19
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %36, 70
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %2, align 8
  store i64 %39, i64* %1, align 8
  br label %42

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  br label %6

42:                                               ; preds = %38, %17
  %43 = load i64, i64* %1, align 8
  ret i64 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i16, align 2
  %28 = alloca i16, align 2
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %37

37:                                               ; preds = %386, %0
  %38 = load i64, i64* %2, align 8
  %39 = icmp slt i64 %38, 1000
  br i1 %39, label %40, label %389

40:                                               ; preds = %37
  %41 = call i64 @random_bitstring()
  store i64 %41, i64* %3, align 8
  %42 = call i64 @random_bitstring()
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %386

48:                                               ; preds = %40
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = udiv i64 %49, %50
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = urem i64 %52, %53
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = mul i64 %59, %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %61, %62
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %48
  call void @abort() #2
  unreachable

67:                                               ; preds = %58
  %68 = load i64, i64* %3, align 8
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %4, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = shl i64 %70, 1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %386

77:                                               ; preds = %73, %67
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sdiv i64 %78, %79
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = srem i64 %81, %82
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i64, i64* %12, align 8
  br label %91

88:                                               ; preds = %77
  %89 = load i64, i64* %12, align 8
  %90 = sub nsw i64 0, %89
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi i64 [ %87, %86 ], [ %90, %88 ]
  %93 = load i64, i64* %10, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i64, i64* %10, align 8
  br label %100

97:                                               ; preds = %91
  %98 = load i64, i64* %10, align 8
  %99 = sub nsw i64 0, %98
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i64 [ %96, %95 ], [ %99, %97 ]
  %102 = icmp uge i64 %92, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = mul nsw i64 %104, %105
  %107 = load i64, i64* %12, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103, %100
  call void @abort() #2
  unreachable

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %3, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %13, align 4
  %116 = load i64, i64* %4, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %386

121:                                              ; preds = %113
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = udiv i32 %122, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = urem i32 %125, %126
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp uge i32 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %14, align 4
  %134 = mul i32 %132, %133
  %135 = load i32, i32* %16, align 4
  %136 = add i32 %134, %135
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131, %121
  call void @abort() #2
  unreachable

140:                                              ; preds = %131
  %141 = load i64, i64* %3, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %17, align 4
  %143 = load i64, i64* %4, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %17, align 4
  %146 = shl i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load i32, i32* %18, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %386

152:                                              ; preds = %148, %140
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  %155 = sdiv i32 %153, %154
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = srem i32 %156, %157
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %20, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %20, align 4
  br label %166

163:                                              ; preds = %152
  %164 = load i32, i32* %20, align 4
  %165 = sub nsw i32 0, %164
  br label %166

166:                                              ; preds = %163, %161
  %167 = phi i32 [ %162, %161 ], [ %165, %163 ]
  %168 = load i32, i32* %18, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* %18, align 4
  br label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %18, align 4
  %174 = sub nsw i32 0, %173
  br label %175

175:                                              ; preds = %172, %170
  %176 = phi i32 [ %171, %170 ], [ %174, %172 ]
  %177 = icmp uge i32 %167, %176
  br i1 %177, label %186, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %18, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %178, %175
  call void @abort() #2
  unreachable

187:                                              ; preds = %178
  %188 = load i64, i64* %3, align 8
  %189 = trunc i64 %188 to i16
  store i16 %189, i16* %21, align 2
  %190 = load i64, i64* %4, align 8
  %191 = trunc i64 %190 to i16
  store i16 %191, i16* %22, align 2
  %192 = load i16, i16* %22, align 2
  %193 = zext i16 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %386

196:                                              ; preds = %187
  %197 = load i16, i16* %21, align 2
  %198 = zext i16 %197 to i32
  %199 = load i16, i16* %22, align 2
  %200 = zext i16 %199 to i32
  %201 = sdiv i32 %198, %200
  %202 = trunc i32 %201 to i16
  store i16 %202, i16* %23, align 2
  %203 = load i16, i16* %21, align 2
  %204 = zext i16 %203 to i32
  %205 = load i16, i16* %22, align 2
  %206 = zext i16 %205 to i32
  %207 = srem i32 %204, %206
  %208 = trunc i32 %207 to i16
  store i16 %208, i16* %24, align 2
  %209 = load i16, i16* %24, align 2
  %210 = zext i16 %209 to i32
  %211 = load i16, i16* %22, align 2
  %212 = zext i16 %211 to i32
  %213 = icmp sge i32 %210, %212
  br i1 %213, label %226, label %214

214:                                              ; preds = %196
  %215 = load i16, i16* %23, align 2
  %216 = zext i16 %215 to i32
  %217 = load i16, i16* %22, align 2
  %218 = zext i16 %217 to i32
  %219 = mul nsw i32 %216, %218
  %220 = load i16, i16* %24, align 2
  %221 = zext i16 %220 to i32
  %222 = add nsw i32 %219, %221
  %223 = load i16, i16* %21, align 2
  %224 = zext i16 %223 to i32
  %225 = icmp ne i32 %222, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %214, %196
  call void @abort() #2
  unreachable

227:                                              ; preds = %214
  %228 = load i64, i64* %3, align 8
  %229 = trunc i64 %228 to i16
  store i16 %229, i16* %25, align 2
  %230 = load i64, i64* %4, align 8
  %231 = trunc i64 %230 to i16
  store i16 %231, i16* %26, align 2
  %232 = load i16, i16* %25, align 2
  %233 = sext i16 %232 to i32
  %234 = load i16, i16* %26, align 2
  %235 = sext i16 %234 to i32
  %236 = sdiv i32 %233, %235
  %237 = trunc i32 %236 to i16
  store i16 %237, i16* %27, align 2
  %238 = load i16, i16* %25, align 2
  %239 = sext i16 %238 to i32
  %240 = load i16, i16* %26, align 2
  %241 = sext i16 %240 to i32
  %242 = srem i32 %239, %241
  %243 = trunc i32 %242 to i16
  store i16 %243, i16* %28, align 2
  %244 = load i16, i16* %28, align 2
  %245 = sext i16 %244 to i32
  %246 = icmp sge i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %227
  %248 = load i16, i16* %28, align 2
  %249 = sext i16 %248 to i32
  br label %254

250:                                              ; preds = %227
  %251 = load i16, i16* %28, align 2
  %252 = sext i16 %251 to i32
  %253 = sub nsw i32 0, %252
  br label %254

254:                                              ; preds = %250, %247
  %255 = phi i32 [ %249, %247 ], [ %253, %250 ]
  %256 = load i16, i16* %26, align 2
  %257 = sext i16 %256 to i32
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load i16, i16* %26, align 2
  %261 = sext i16 %260 to i32
  br label %266

262:                                              ; preds = %254
  %263 = load i16, i16* %26, align 2
  %264 = sext i16 %263 to i32
  %265 = sub nsw i32 0, %264
  br label %266

266:                                              ; preds = %262, %259
  %267 = phi i32 [ %261, %259 ], [ %265, %262 ]
  %268 = trunc i32 %267 to i16
  %269 = zext i16 %268 to i32
  %270 = icmp sge i32 %255, %269
  br i1 %270, label %285, label %271

271:                                              ; preds = %266
  %272 = load i16, i16* %27, align 2
  %273 = sext i16 %272 to i32
  %274 = load i16, i16* %26, align 2
  %275 = sext i16 %274 to i32
  %276 = mul nsw i32 %273, %275
  %277 = load i16, i16* %28, align 2
  %278 = sext i16 %277 to i32
  %279 = add nsw i32 %276, %278
  %280 = trunc i32 %279 to i16
  %281 = sext i16 %280 to i32
  %282 = load i16, i16* %25, align 2
  %283 = sext i16 %282 to i32
  %284 = icmp ne i32 %281, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %271, %266
  call void @abort() #2
  unreachable

286:                                              ; preds = %271
  %287 = load i64, i64* %3, align 8
  %288 = trunc i64 %287 to i8
  store i8 %288, i8* %29, align 1
  %289 = load i64, i64* %4, align 8
  %290 = trunc i64 %289 to i8
  store i8 %290, i8* %30, align 1
  %291 = load i8, i8* %30, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %286
  br label %386

295:                                              ; preds = %286
  %296 = load i8, i8* %29, align 1
  %297 = zext i8 %296 to i32
  %298 = load i8, i8* %30, align 1
  %299 = zext i8 %298 to i32
  %300 = sdiv i32 %297, %299
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %31, align 1
  %302 = load i8, i8* %29, align 1
  %303 = zext i8 %302 to i32
  %304 = load i8, i8* %30, align 1
  %305 = zext i8 %304 to i32
  %306 = srem i32 %303, %305
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %32, align 1
  %308 = load i8, i8* %32, align 1
  %309 = zext i8 %308 to i32
  %310 = load i8, i8* %30, align 1
  %311 = zext i8 %310 to i32
  %312 = icmp sge i32 %309, %311
  br i1 %312, label %325, label %313

313:                                              ; preds = %295
  %314 = load i8, i8* %31, align 1
  %315 = zext i8 %314 to i32
  %316 = load i8, i8* %30, align 1
  %317 = zext i8 %316 to i32
  %318 = mul nsw i32 %315, %317
  %319 = load i8, i8* %32, align 1
  %320 = zext i8 %319 to i32
  %321 = add nsw i32 %318, %320
  %322 = load i8, i8* %29, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp ne i32 %321, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %313, %295
  call void @abort() #2
  unreachable

326:                                              ; preds = %313
  %327 = load i64, i64* %3, align 8
  %328 = trunc i64 %327 to i8
  store i8 %328, i8* %33, align 1
  %329 = load i64, i64* %4, align 8
  %330 = trunc i64 %329 to i8
  store i8 %330, i8* %34, align 1
  %331 = load i8, i8* %33, align 1
  %332 = sext i8 %331 to i32
  %333 = load i8, i8* %34, align 1
  %334 = sext i8 %333 to i32
  %335 = sdiv i32 %332, %334
  %336 = trunc i32 %335 to i8
  store i8 %336, i8* %35, align 1
  %337 = load i8, i8* %33, align 1
  %338 = sext i8 %337 to i32
  %339 = load i8, i8* %34, align 1
  %340 = sext i8 %339 to i32
  %341 = srem i32 %338, %340
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %36, align 1
  %343 = load i8, i8* %36, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp sge i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %326
  %347 = load i8, i8* %36, align 1
  %348 = sext i8 %347 to i32
  br label %353

349:                                              ; preds = %326
  %350 = load i8, i8* %36, align 1
  %351 = sext i8 %350 to i32
  %352 = sub nsw i32 0, %351
  br label %353

353:                                              ; preds = %349, %346
  %354 = phi i32 [ %348, %346 ], [ %352, %349 ]
  %355 = load i8, i8* %34, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp sge i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %353
  %359 = load i8, i8* %34, align 1
  %360 = sext i8 %359 to i32
  br label %365

361:                                              ; preds = %353
  %362 = load i8, i8* %34, align 1
  %363 = sext i8 %362 to i32
  %364 = sub nsw i32 0, %363
  br label %365

365:                                              ; preds = %361, %358
  %366 = phi i32 [ %360, %358 ], [ %364, %361 ]
  %367 = trunc i32 %366 to i8
  %368 = zext i8 %367 to i32
  %369 = icmp sge i32 %354, %368
  br i1 %369, label %384, label %370

370:                                              ; preds = %365
  %371 = load i8, i8* %35, align 1
  %372 = sext i8 %371 to i32
  %373 = load i8, i8* %34, align 1
  %374 = sext i8 %373 to i32
  %375 = mul nsw i32 %372, %374
  %376 = load i8, i8* %36, align 1
  %377 = sext i8 %376 to i32
  %378 = add nsw i32 %375, %377
  %379 = trunc i32 %378 to i8
  %380 = sext i8 %379 to i32
  %381 = load i8, i8* %33, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp ne i32 %380, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %370, %365
  call void @abort() #2
  unreachable

385:                                              ; preds = %370
  br label %386

386:                                              ; preds = %385, %294, %195, %151, %120, %76, %47
  %387 = load i64, i64* %2, align 8
  %388 = add nsw i64 %387, 1
  store i64 %388, i64* %2, align 8
  br label %37, !llvm.loop !4

389:                                              ; preds = %37
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
