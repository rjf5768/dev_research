; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/arith-rand-ll.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/arith-rand-ll.c"
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

37:                                               ; preds = %397, %0
  %38 = load i64, i64* %2, align 8
  %39 = icmp slt i64 %38, 10000
  br i1 %39, label %40, label %400

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
  br label %397

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
  br label %397

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
  br label %397

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
  br label %397

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
  br i1 %177, label %197, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %18, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %197, label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %20, align 4
  %191 = icmp slt i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load i32, i32* %20, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194, %178, %175
  call void @abort() #2
  unreachable

198:                                              ; preds = %194, %186
  %199 = load i64, i64* %3, align 8
  %200 = trunc i64 %199 to i16
  store i16 %200, i16* %21, align 2
  %201 = load i64, i64* %4, align 8
  %202 = trunc i64 %201 to i16
  store i16 %202, i16* %22, align 2
  %203 = load i16, i16* %22, align 2
  %204 = zext i16 %203 to i32
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %397

207:                                              ; preds = %198
  %208 = load i16, i16* %21, align 2
  %209 = zext i16 %208 to i32
  %210 = load i16, i16* %22, align 2
  %211 = zext i16 %210 to i32
  %212 = sdiv i32 %209, %211
  %213 = trunc i32 %212 to i16
  store i16 %213, i16* %23, align 2
  %214 = load i16, i16* %21, align 2
  %215 = zext i16 %214 to i32
  %216 = load i16, i16* %22, align 2
  %217 = zext i16 %216 to i32
  %218 = srem i32 %215, %217
  %219 = trunc i32 %218 to i16
  store i16 %219, i16* %24, align 2
  %220 = load i16, i16* %24, align 2
  %221 = zext i16 %220 to i32
  %222 = load i16, i16* %22, align 2
  %223 = zext i16 %222 to i32
  %224 = icmp sge i32 %221, %223
  br i1 %224, label %237, label %225

225:                                              ; preds = %207
  %226 = load i16, i16* %23, align 2
  %227 = zext i16 %226 to i32
  %228 = load i16, i16* %22, align 2
  %229 = zext i16 %228 to i32
  %230 = mul nsw i32 %227, %229
  %231 = load i16, i16* %24, align 2
  %232 = zext i16 %231 to i32
  %233 = add nsw i32 %230, %232
  %234 = load i16, i16* %21, align 2
  %235 = zext i16 %234 to i32
  %236 = icmp ne i32 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %225, %207
  call void @abort() #2
  unreachable

238:                                              ; preds = %225
  %239 = load i64, i64* %3, align 8
  %240 = trunc i64 %239 to i16
  store i16 %240, i16* %25, align 2
  %241 = load i64, i64* %4, align 8
  %242 = trunc i64 %241 to i16
  store i16 %242, i16* %26, align 2
  %243 = load i16, i16* %25, align 2
  %244 = sext i16 %243 to i32
  %245 = load i16, i16* %26, align 2
  %246 = sext i16 %245 to i32
  %247 = sdiv i32 %244, %246
  %248 = trunc i32 %247 to i16
  store i16 %248, i16* %27, align 2
  %249 = load i16, i16* %25, align 2
  %250 = sext i16 %249 to i32
  %251 = load i16, i16* %26, align 2
  %252 = sext i16 %251 to i32
  %253 = srem i32 %250, %252
  %254 = trunc i32 %253 to i16
  store i16 %254, i16* %28, align 2
  %255 = load i16, i16* %28, align 2
  %256 = sext i16 %255 to i32
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %238
  %259 = load i16, i16* %28, align 2
  %260 = sext i16 %259 to i32
  br label %265

261:                                              ; preds = %238
  %262 = load i16, i16* %28, align 2
  %263 = sext i16 %262 to i32
  %264 = sub nsw i32 0, %263
  br label %265

265:                                              ; preds = %261, %258
  %266 = phi i32 [ %260, %258 ], [ %264, %261 ]
  %267 = load i16, i16* %26, align 2
  %268 = sext i16 %267 to i32
  %269 = icmp sge i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i16, i16* %26, align 2
  %272 = sext i16 %271 to i32
  br label %277

273:                                              ; preds = %265
  %274 = load i16, i16* %26, align 2
  %275 = sext i16 %274 to i32
  %276 = sub nsw i32 0, %275
  br label %277

277:                                              ; preds = %273, %270
  %278 = phi i32 [ %272, %270 ], [ %276, %273 ]
  %279 = trunc i32 %278 to i16
  %280 = zext i16 %279 to i32
  %281 = icmp sge i32 %266, %280
  br i1 %281, label %296, label %282

282:                                              ; preds = %277
  %283 = load i16, i16* %27, align 2
  %284 = sext i16 %283 to i32
  %285 = load i16, i16* %26, align 2
  %286 = sext i16 %285 to i32
  %287 = mul nsw i32 %284, %286
  %288 = load i16, i16* %28, align 2
  %289 = sext i16 %288 to i32
  %290 = add nsw i32 %287, %289
  %291 = trunc i32 %290 to i16
  %292 = sext i16 %291 to i32
  %293 = load i16, i16* %25, align 2
  %294 = sext i16 %293 to i32
  %295 = icmp ne i32 %292, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %282, %277
  call void @abort() #2
  unreachable

297:                                              ; preds = %282
  %298 = load i64, i64* %3, align 8
  %299 = trunc i64 %298 to i8
  store i8 %299, i8* %29, align 1
  %300 = load i64, i64* %4, align 8
  %301 = trunc i64 %300 to i8
  store i8 %301, i8* %30, align 1
  %302 = load i8, i8* %30, align 1
  %303 = zext i8 %302 to i32
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  br label %397

306:                                              ; preds = %297
  %307 = load i8, i8* %29, align 1
  %308 = zext i8 %307 to i32
  %309 = load i8, i8* %30, align 1
  %310 = zext i8 %309 to i32
  %311 = sdiv i32 %308, %310
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %31, align 1
  %313 = load i8, i8* %29, align 1
  %314 = zext i8 %313 to i32
  %315 = load i8, i8* %30, align 1
  %316 = zext i8 %315 to i32
  %317 = srem i32 %314, %316
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %32, align 1
  %319 = load i8, i8* %32, align 1
  %320 = zext i8 %319 to i32
  %321 = load i8, i8* %30, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp sge i32 %320, %322
  br i1 %323, label %336, label %324

324:                                              ; preds = %306
  %325 = load i8, i8* %31, align 1
  %326 = zext i8 %325 to i32
  %327 = load i8, i8* %30, align 1
  %328 = zext i8 %327 to i32
  %329 = mul nsw i32 %326, %328
  %330 = load i8, i8* %32, align 1
  %331 = zext i8 %330 to i32
  %332 = add nsw i32 %329, %331
  %333 = load i8, i8* %29, align 1
  %334 = zext i8 %333 to i32
  %335 = icmp ne i32 %332, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %324, %306
  call void @abort() #2
  unreachable

337:                                              ; preds = %324
  %338 = load i64, i64* %3, align 8
  %339 = trunc i64 %338 to i8
  store i8 %339, i8* %33, align 1
  %340 = load i64, i64* %4, align 8
  %341 = trunc i64 %340 to i8
  store i8 %341, i8* %34, align 1
  %342 = load i8, i8* %33, align 1
  %343 = sext i8 %342 to i32
  %344 = load i8, i8* %34, align 1
  %345 = sext i8 %344 to i32
  %346 = sdiv i32 %343, %345
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %35, align 1
  %348 = load i8, i8* %33, align 1
  %349 = sext i8 %348 to i32
  %350 = load i8, i8* %34, align 1
  %351 = sext i8 %350 to i32
  %352 = srem i32 %349, %351
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %36, align 1
  %354 = load i8, i8* %36, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp sge i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %337
  %358 = load i8, i8* %36, align 1
  %359 = sext i8 %358 to i32
  br label %364

360:                                              ; preds = %337
  %361 = load i8, i8* %36, align 1
  %362 = sext i8 %361 to i32
  %363 = sub nsw i32 0, %362
  br label %364

364:                                              ; preds = %360, %357
  %365 = phi i32 [ %359, %357 ], [ %363, %360 ]
  %366 = load i8, i8* %34, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp sge i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load i8, i8* %34, align 1
  %371 = sext i8 %370 to i32
  br label %376

372:                                              ; preds = %364
  %373 = load i8, i8* %34, align 1
  %374 = sext i8 %373 to i32
  %375 = sub nsw i32 0, %374
  br label %376

376:                                              ; preds = %372, %369
  %377 = phi i32 [ %371, %369 ], [ %375, %372 ]
  %378 = trunc i32 %377 to i8
  %379 = zext i8 %378 to i32
  %380 = icmp sge i32 %365, %379
  br i1 %380, label %395, label %381

381:                                              ; preds = %376
  %382 = load i8, i8* %35, align 1
  %383 = sext i8 %382 to i32
  %384 = load i8, i8* %34, align 1
  %385 = sext i8 %384 to i32
  %386 = mul nsw i32 %383, %385
  %387 = load i8, i8* %36, align 1
  %388 = sext i8 %387 to i32
  %389 = add nsw i32 %386, %388
  %390 = trunc i32 %389 to i8
  %391 = sext i8 %390 to i32
  %392 = load i8, i8* %33, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp ne i32 %391, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %381, %376
  call void @abort() #2
  unreachable

396:                                              ; preds = %381
  br label %397

397:                                              ; preds = %396, %305, %206, %151, %120, %76, %47
  %398 = load i64, i64* %2, align 8
  %399 = add nsw i64 %398, 1
  store i64 %399, i64* %2, align 8
  br label %37, !llvm.loop !4

400:                                              ; preds = %37
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
