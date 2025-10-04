; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42833.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42833.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_s8 = type { i8, i8, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @helper_neon_rshl_s8(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.neon_s8, align 1
  %7 = alloca %struct.neon_s8, align 1
  %8 = alloca %struct.neon_s8, align 1
  %9 = alloca %union.anon, align 4
  %10 = alloca %union.anon.0, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %union.anon.1, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = bitcast %union.anon* %9 to i32*
  store i32 %17, i32* %18, align 4
  %19 = bitcast %union.anon* %9 to %struct.neon_s8*
  %20 = bitcast %struct.neon_s8* %6 to i8*
  %21 = bitcast %struct.neon_s8* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 4 %21, i64 4, i1 false)
  br label %22

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %union.anon.0* %10 to i32*
  store i32 %24, i32* %25, align 4
  %26 = bitcast %union.anon.0* %10 to %struct.neon_s8*
  %27 = bitcast %struct.neon_s8* %7 to i8*
  %28 = bitcast %struct.neon_s8* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %7, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %11, align 1
  %33 = load i8, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 0
  store i8 0, i8* %37, align 1
  br label %102

38:                                               ; preds = %30
  %39 = load i8, i8* %11, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp slt i32 %40, -8
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = ashr i32 %45, 7
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 0
  store i8 %47, i8* %48, align 1
  br label %101

49:                                               ; preds = %38
  %50 = load i8, i8* %11, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, -8
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %11, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 1
  %60 = ashr i32 %56, %59
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 0
  store i8 %61, i8* %62, align 1
  %63 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 0
  %64 = load i8, i8* %63, align 1
  %65 = add i8 %64, 1
  store i8 %65, i8* %63, align 1
  %66 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = ashr i32 %68, 1
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  br label %100

71:                                               ; preds = %49
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* %11, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 -1, %80
  %82 = shl i32 1, %81
  %83 = add nsw i32 %78, %82
  %84 = load i8, i8* %11, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 0, %85
  %87 = ashr i32 %83, %86
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 0
  store i8 %88, i8* %89, align 1
  br label %99

90:                                               ; preds = %71
  %91 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* %11, align 1
  %95 = sext i8 %94 to i32
  %96 = shl i32 %93, %95
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 0
  store i8 %97, i8* %98, align 1
  br label %99

99:                                               ; preds = %90, %75
  br label %100

100:                                              ; preds = %99, %53
  br label %101

101:                                              ; preds = %100, %42
  br label %102

102:                                              ; preds = %101, %36
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %7, i32 0, i32 1
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %12, align 1
  %107 = load i8, i8* %12, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sge i32 %108, 8
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 1
  store i8 0, i8* %111, align 1
  br label %176

112:                                              ; preds = %104
  %113 = load i8, i8* %12, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp slt i32 %114, -8
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = ashr i32 %119, 7
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 1
  store i8 %121, i8* %122, align 1
  br label %175

123:                                              ; preds = %112
  %124 = load i8, i8* %12, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, -8
  br i1 %126, label %127, label %145

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 1
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* %12, align 1
  %132 = sext i8 %131 to i32
  %133 = sub nsw i32 %132, 1
  %134 = ashr i32 %130, %133
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 1
  store i8 %135, i8* %136, align 1
  %137 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 1
  %138 = load i8, i8* %137, align 1
  %139 = add i8 %138, 1
  store i8 %139, i8* %137, align 1
  %140 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = ashr i32 %142, 1
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %140, align 1
  br label %174

145:                                              ; preds = %123
  %146 = load i8, i8* %12, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 1
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = load i8, i8* %12, align 1
  %154 = sext i8 %153 to i32
  %155 = sub nsw i32 -1, %154
  %156 = shl i32 1, %155
  %157 = add nsw i32 %152, %156
  %158 = load i8, i8* %12, align 1
  %159 = sext i8 %158 to i32
  %160 = sub nsw i32 0, %159
  %161 = ashr i32 %157, %160
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 1
  store i8 %162, i8* %163, align 1
  br label %173

164:                                              ; preds = %145
  %165 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = load i8, i8* %12, align 1
  %169 = sext i8 %168 to i32
  %170 = shl i32 %167, %169
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 1
  store i8 %171, i8* %172, align 1
  br label %173

173:                                              ; preds = %164, %149
  br label %174

174:                                              ; preds = %173, %127
  br label %175

175:                                              ; preds = %174, %116
  br label %176

176:                                              ; preds = %175, %110
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %7, i32 0, i32 2
  %180 = load i8, i8* %179, align 1
  store i8 %180, i8* %13, align 1
  %181 = load i8, i8* %13, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp sge i32 %182, 8
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 2
  store i8 0, i8* %185, align 1
  br label %250

186:                                              ; preds = %178
  %187 = load i8, i8* %13, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp slt i32 %188, -8
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 2
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = ashr i32 %193, 7
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 2
  store i8 %195, i8* %196, align 1
  br label %249

197:                                              ; preds = %186
  %198 = load i8, i8* %13, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, -8
  br i1 %200, label %201, label %219

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 2
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = load i8, i8* %13, align 1
  %206 = sext i8 %205 to i32
  %207 = sub nsw i32 %206, 1
  %208 = ashr i32 %204, %207
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 2
  store i8 %209, i8* %210, align 1
  %211 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 2
  %212 = load i8, i8* %211, align 1
  %213 = add i8 %212, 1
  store i8 %213, i8* %211, align 1
  %214 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 2
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = ashr i32 %216, 1
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %214, align 1
  br label %248

219:                                              ; preds = %197
  %220 = load i8, i8* %13, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 2
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = load i8, i8* %13, align 1
  %228 = sext i8 %227 to i32
  %229 = sub nsw i32 -1, %228
  %230 = shl i32 1, %229
  %231 = add nsw i32 %226, %230
  %232 = load i8, i8* %13, align 1
  %233 = sext i8 %232 to i32
  %234 = sub nsw i32 0, %233
  %235 = ashr i32 %231, %234
  %236 = trunc i32 %235 to i8
  %237 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 2
  store i8 %236, i8* %237, align 1
  br label %247

238:                                              ; preds = %219
  %239 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 2
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = load i8, i8* %13, align 1
  %243 = sext i8 %242 to i32
  %244 = shl i32 %241, %243
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 2
  store i8 %245, i8* %246, align 1
  br label %247

247:                                              ; preds = %238, %223
  br label %248

248:                                              ; preds = %247, %201
  br label %249

249:                                              ; preds = %248, %190
  br label %250

250:                                              ; preds = %249, %184
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %7, i32 0, i32 3
  %254 = load i8, i8* %253, align 1
  store i8 %254, i8* %14, align 1
  %255 = load i8, i8* %14, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp sge i32 %256, 8
  br i1 %257, label %258, label %260

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 3
  store i8 0, i8* %259, align 1
  br label %324

260:                                              ; preds = %252
  %261 = load i8, i8* %14, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp slt i32 %262, -8
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 3
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = ashr i32 %267, 7
  %269 = trunc i32 %268 to i8
  %270 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 3
  store i8 %269, i8* %270, align 1
  br label %323

271:                                              ; preds = %260
  %272 = load i8, i8* %14, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, -8
  br i1 %274, label %275, label %293

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 3
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = load i8, i8* %14, align 1
  %280 = sext i8 %279 to i32
  %281 = sub nsw i32 %280, 1
  %282 = ashr i32 %278, %281
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 3
  store i8 %283, i8* %284, align 1
  %285 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 3
  %286 = load i8, i8* %285, align 1
  %287 = add i8 %286, 1
  store i8 %287, i8* %285, align 1
  %288 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 3
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = ashr i32 %290, 1
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %288, align 1
  br label %322

293:                                              ; preds = %271
  %294 = load i8, i8* %14, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 3
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = load i8, i8* %14, align 1
  %302 = sext i8 %301 to i32
  %303 = sub nsw i32 -1, %302
  %304 = shl i32 1, %303
  %305 = add nsw i32 %300, %304
  %306 = load i8, i8* %14, align 1
  %307 = sext i8 %306 to i32
  %308 = sub nsw i32 0, %307
  %309 = ashr i32 %305, %308
  %310 = trunc i32 %309 to i8
  %311 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 3
  store i8 %310, i8* %311, align 1
  br label %321

312:                                              ; preds = %293
  %313 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %6, i32 0, i32 3
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = load i8, i8* %14, align 1
  %317 = sext i8 %316 to i32
  %318 = shl i32 %315, %317
  %319 = trunc i32 %318 to i8
  %320 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %8, i32 0, i32 3
  store i8 %319, i8* %320, align 1
  br label %321

321:                                              ; preds = %312, %297
  br label %322

322:                                              ; preds = %321, %275
  br label %323

323:                                              ; preds = %322, %264
  br label %324

324:                                              ; preds = %323, %258
  br label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  %327 = bitcast %union.anon.1* %15 to %struct.neon_s8*
  %328 = bitcast %struct.neon_s8* %327 to i8*
  %329 = bitcast %struct.neon_s8* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %328, i8* align 1 %329, i64 4, i1 false)
  %330 = bitcast %union.anon.1* %15 to i32*
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %5, align 4
  br label %332

332:                                              ; preds = %326
  %333 = load i32, i32* %5, align 4
  ret i32 %333
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @helper_neon_rshl_s8(i32 noundef 84215045, i32 noundef 16843009)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 168430090
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
