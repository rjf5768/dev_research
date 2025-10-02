; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findnext.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = external dso_local global [19 x [19 x i8]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@lib = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findnextmove(i32 noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 -1, i32* %19, align 4
  %20 = load i32*, i32** %12, align 8
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %22
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x i8], [19 x i8]* %23, i64 0, i64 %25
  store i8 1, i8* %26, align 1
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %32
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [19 x i8], [19 x i8]* %33, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %44, i32 noundef %45, i32 noundef %46)
  %47 = load i32, i32* @lib, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @fval(i32 noundef %47, i32 noundef %48)
  store i32 %49, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %82

50:                                               ; preds = %29
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [19 x i8], [19 x i8]* %54, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* @mymove, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [19 x i8], [19 x i8]* %66, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @findnextmove(i32 noundef %74, i32 noundef %75, i32* noundef %14, i32* noundef %15, i32* noundef %16, i32 noundef %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %72
  br label %81

81:                                               ; preds = %80, %62, %50
  br label %82

82:                                               ; preds = %81, %40
  br label %83

83:                                               ; preds = %82, %6
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %12, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1, i32* %7, align 4
  br label %340

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 18
  br i1 %105, label %106, label %160

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %109
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [19 x i8], [19 x i8]* %110, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %106
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %121, i32 noundef %122, i32 noundef %123)
  %124 = load i32, i32* @lib, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @fval(i32 noundef %124, i32 noundef %125)
  store i32 %126, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %159

127:                                              ; preds = %106
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %130
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [19 x i8], [19 x i8]* %131, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* @mymove, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %127
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %142
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [19 x i8], [19 x i8]* %143, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @findnextmove(i32 noundef %151, i32 noundef %152, i32* noundef %14, i32* noundef %15, i32* noundef %16, i32 noundef %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 1, i32* %17, align 4
  br label %157

157:                                              ; preds = %156, %149
  br label %158

158:                                              ; preds = %157, %139, %127
  br label %159

159:                                              ; preds = %158, %117
  br label %160

160:                                              ; preds = %159, %103
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %160
  store i32 0, i32* %17, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %164, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* %16, align 4
  %170 = load i32*, i32** %12, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %10, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32*, i32** %11, align 8
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %168, %163
  %176 = load i32, i32* %13, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 1, i32* %7, align 4
  br label %340

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %179, %160
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %237

183:                                              ; preds = %180
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %185
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [19 x i8], [19 x i8]* %186, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %183
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %9, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %198, i32 noundef %199, i32 noundef %200)
  %201 = load i32, i32* @lib, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @fval(i32 noundef %201, i32 noundef %202)
  store i32 %203, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %236

204:                                              ; preds = %183
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %206
  %208 = load i32, i32* %9, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [19 x i8], [19 x i8]* %207, i64 0, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = load i32, i32* @mymove, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %204
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %218
  %220 = load i32, i32* %9, align 4
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [19 x i8], [19 x i8]* %219, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = icmp ne i8 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %9, align 4
  %229 = sub nsw i32 %228, 1
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @findnextmove(i32 noundef %227, i32 noundef %229, i32* noundef %14, i32* noundef %15, i32* noundef %16, i32 noundef %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  store i32 1, i32* %17, align 4
  br label %234

234:                                              ; preds = %233, %226
  br label %235

235:                                              ; preds = %234, %216, %204
  br label %236

236:                                              ; preds = %235, %194
  br label %237

237:                                              ; preds = %236, %180
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %237
  store i32 0, i32* %17, align 4
  %241 = load i32, i32* %16, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %241, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load i32, i32* %16, align 4
  %247 = load i32*, i32** %12, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32*, i32** %10, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load i32*, i32** %11, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %245, %240
  %253 = load i32, i32* %13, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 1, i32* %7, align 4
  br label %340

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %256, %237
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 18
  br i1 %259, label %260, label %314

260:                                              ; preds = %257
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %262
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [19 x i8], [19 x i8]* %263, i64 0, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %260
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %275, i32 noundef %276, i32 noundef %277)
  %278 = load i32, i32* @lib, align 4
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @fval(i32 noundef %278, i32 noundef %279)
  store i32 %280, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %313

281:                                              ; preds = %260
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %283
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [19 x i8], [19 x i8]* %284, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = load i32, i32* @mymove, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %281
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %295
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [19 x i8], [19 x i8]* %296, i64 0, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = icmp ne i8 %301, 0
  br i1 %302, label %312, label %303

303:                                              ; preds = %293
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 1
  %307 = load i32, i32* %13, align 4
  %308 = call i32 @findnextmove(i32 noundef %304, i32 noundef %306, i32* noundef %14, i32* noundef %15, i32* noundef %16, i32 noundef %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  store i32 1, i32* %17, align 4
  br label %311

311:                                              ; preds = %310, %303
  br label %312

312:                                              ; preds = %311, %293, %281
  br label %313

313:                                              ; preds = %312, %271
  br label %314

314:                                              ; preds = %313, %257
  %315 = load i32, i32* %17, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %334

317:                                              ; preds = %314
  store i32 0, i32* %17, align 4
  %318 = load i32, i32* %16, align 4
  %319 = load i32*, i32** %12, align 8
  %320 = load i32, i32* %319, align 4
  %321 = icmp sgt i32 %318, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load i32, i32* %16, align 4
  %324 = load i32*, i32** %12, align 8
  store i32 %323, i32* %324, align 4
  %325 = load i32, i32* %14, align 4
  %326 = load i32*, i32** %10, align 8
  store i32 %325, i32* %326, align 4
  %327 = load i32, i32* %15, align 4
  %328 = load i32*, i32** %11, align 8
  store i32 %327, i32* %328, align 4
  br label %329

329:                                              ; preds = %322, %317
  %330 = load i32, i32* %13, align 4
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i32 1, i32* %7, align 4
  br label %340

333:                                              ; preds = %329
  br label %334

334:                                              ; preds = %333, %314
  %335 = load i32*, i32** %12, align 8
  %336 = load i32, i32* %335, align 4
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 1, i32* %7, align 4
  br label %340

339:                                              ; preds = %334
  store i32 0, i32* %7, align 4
  br label %340

340:                                              ; preds = %339, %338, %332, %255, %178, %101
  %341 = load i32, i32* %7, align 4
  ret i32 %341
}

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fval(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = mul nsw i32 %16, 50
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %17, %22
  %24 = add nsw i32 40, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %11, %10
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
