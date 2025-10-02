; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/matchpat.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/matchpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { [16 x %struct.patval], i32, i32, i32 }
%struct.patval = type { i32, i32, i32 }

@matchpat.pat = internal global [24 x %struct.pattern] zeroinitializer, align 16
@matchpat.trf = internal global [8 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 1, i32 0]]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@umove = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4
@lib = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @matchpat(i32 noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32*, i32** %9, align 8
  store i32 -1, i32* %21, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 -1, i32* %22, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %410, %5
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %25, 24
  br i1 %26, label %27, label %413

27:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %406, %27
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.pattern, %struct.pattern* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %409

36:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  store i32 1, i32* %17, align 4
  br label %37

37:                                               ; preds = %276, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.pattern, %struct.pattern* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi i1 [ false, %37 ], [ %47, %45 ]
  br i1 %49, label %50, label %279

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %53
  %55 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %54, i64 0, i64 0
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.pattern, %struct.pattern* %60, i32 0, i32 0
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.patval, %struct.patval* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %57, %66
  %68 = add nsw i32 %51, %67
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %70
  %72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %71, i64 0, i64 0
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.pattern, %struct.pattern* %77, i32 0, i32 0
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %78, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.patval, %struct.patval* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %74, %83
  %85 = add nsw i32 %68, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %88
  %90 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %89, i64 0, i64 1
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0, i64 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.pattern, %struct.pattern* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %96, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.patval, %struct.patval* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %92, %101
  %103 = add nsw i32 %86, %102
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %105
  %107 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %106, i64 0, i64 1
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.pattern, %struct.pattern* %112, i32 0, i32 0
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.patval, %struct.patval* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %109, %118
  %120 = add nsw i32 %103, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %50
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %124, 18
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %14, align 4
  %131 = icmp sgt i32 %130, 18
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %126, %123, %50
  store i32 0, i32* %17, align 4
  br label %279

133:                                              ; preds = %129
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.pattern, %struct.pattern* %136, i32 0, i32 0
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %137, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.patval, %struct.patval* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %276 [
    i32 0, label %143
    i32 1, label %155
    i32 2, label %168
    i32 3, label %181
    i32 4, label %202
    i32 5, label %226
    i32 6, label %251
  ]

143:                                              ; preds = %133
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %145
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [19 x i8], [19 x i8]* %146, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %276

154:                                              ; preds = %143
  store i32 0, i32* %17, align 4
  br label %276

155:                                              ; preds = %133
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %157
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [19 x i8], [19 x i8]* %158, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = load i32, i32* @umove, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  br label %276

167:                                              ; preds = %155
  store i32 0, i32* %17, align 4
  br label %276

168:                                              ; preds = %133
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %170
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [19 x i8], [19 x i8]* %171, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i32, i32* @mymove, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %276

180:                                              ; preds = %168
  store i32 0, i32* %17, align 4
  br label %276

181:                                              ; preds = %133
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %183
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [19 x i8], [19 x i8]* %184, i64 0, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %181
  store i32 0, i32* @lib, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %192, i32 noundef %193, i32 noundef %194)
  %195 = load i32, i32* @lib, align 4
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %14, align 4
  store i32 %199, i32* %19, align 4
  br label %276

200:                                              ; preds = %191
  store i32 0, i32* %17, align 4
  br label %276

201:                                              ; preds = %181
  store i32 0, i32* %17, align 4
  br label %276

202:                                              ; preds = %133
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %204
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [19 x i8], [19 x i8]* %205, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %202
  %213 = load i32, i32* %13, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %13, align 4
  %217 = icmp eq i32 %216, 18
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %14, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %14, align 4
  %223 = icmp eq i32 %222, 18
  br i1 %223, label %224, label %225

224:                                              ; preds = %221, %218, %215, %212
  br label %276

225:                                              ; preds = %221, %202
  store i32 0, i32* %17, align 4
  br label %276

226:                                              ; preds = %133
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %228
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [19 x i8], [19 x i8]* %229, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = load i32, i32* @umove, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %250

237:                                              ; preds = %226
  %238 = load i32, i32* %13, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %13, align 4
  %242 = icmp eq i32 %241, 18
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %14, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %14, align 4
  %248 = icmp eq i32 %247, 18
  br i1 %248, label %249, label %250

249:                                              ; preds = %246, %243, %240, %237
  br label %276

250:                                              ; preds = %246, %226
  store i32 0, i32* %17, align 4
  br label %276

251:                                              ; preds = %133
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %253
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [19 x i8], [19 x i8]* %254, i64 0, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = load i32, i32* @mymove, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %251
  %263 = load i32, i32* %13, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %13, align 4
  %267 = icmp eq i32 %266, 18
  br i1 %267, label %274, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* %14, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %14, align 4
  %273 = icmp eq i32 %272, 18
  br i1 %273, label %274, label %275

274:                                              ; preds = %271, %268, %265, %262
  br label %276

275:                                              ; preds = %271, %251
  store i32 0, i32* %17, align 4
  br label %276

276:                                              ; preds = %133, %275, %274, %250, %249, %225, %224, %201, %200, %197, %180, %179, %167, %166, %154, %153
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %37, !llvm.loop !4

279:                                              ; preds = %132, %48
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %405

282:                                              ; preds = %279
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.pattern, %struct.pattern* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* %16, align 4
  %289 = icmp sge i32 %288, 8
  br i1 %289, label %290, label %392

290:                                              ; preds = %282
  %291 = load i32, i32* %16, align 4
  %292 = icmp sle i32 %291, 13
  br i1 %292, label %293, label %392

293:                                              ; preds = %290
  %294 = load i32, i32* %18, align 4
  %295 = sub nsw i32 %294, 9
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i32, i32* %18, align 4
  %299 = sub nsw i32 %298, 9
  %300 = sub nsw i32 0, %299
  br label %304

301:                                              ; preds = %293
  %302 = load i32, i32* %18, align 4
  %303 = sub nsw i32 %302, 9
  br label %304

304:                                              ; preds = %301, %297
  %305 = phi i32 [ %300, %297 ], [ %303, %301 ]
  %306 = icmp sgt i32 %305, 7
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* %20, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %20, align 4
  br label %342

310:                                              ; preds = %304
  %311 = load i32, i32* %18, align 4
  %312 = sub nsw i32 %311, 9
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = load i32, i32* %18, align 4
  %316 = sub nsw i32 %315, 9
  %317 = sub nsw i32 0, %316
  br label %321

318:                                              ; preds = %310
  %319 = load i32, i32* %18, align 4
  %320 = sub nsw i32 %319, 9
  br label %321

321:                                              ; preds = %318, %314
  %322 = phi i32 [ %317, %314 ], [ %320, %318 ]
  %323 = icmp eq i32 %322, 6
  br i1 %323, label %338, label %324

324:                                              ; preds = %321
  %325 = load i32, i32* %18, align 4
  %326 = sub nsw i32 %325, 9
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load i32, i32* %18, align 4
  %330 = sub nsw i32 %329, 9
  %331 = sub nsw i32 0, %330
  br label %335

332:                                              ; preds = %324
  %333 = load i32, i32* %18, align 4
  %334 = sub nsw i32 %333, 9
  br label %335

335:                                              ; preds = %332, %328
  %336 = phi i32 [ %331, %328 ], [ %334, %332 ]
  %337 = icmp eq i32 %336, 7
  br i1 %337, label %338, label %341

338:                                              ; preds = %335, %321
  %339 = load i32, i32* %20, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %20, align 4
  br label %341

341:                                              ; preds = %338, %335
  br label %342

342:                                              ; preds = %341, %307
  %343 = load i32, i32* %19, align 4
  %344 = sub nsw i32 %343, 9
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %342
  %347 = load i32, i32* %19, align 4
  %348 = sub nsw i32 %347, 9
  %349 = sub nsw i32 0, %348
  br label %353

350:                                              ; preds = %342
  %351 = load i32, i32* %19, align 4
  %352 = sub nsw i32 %351, 9
  br label %353

353:                                              ; preds = %350, %346
  %354 = phi i32 [ %349, %346 ], [ %352, %350 ]
  %355 = icmp sgt i32 %354, 7
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load i32, i32* %20, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* %20, align 4
  br label %391

359:                                              ; preds = %353
  %360 = load i32, i32* %19, align 4
  %361 = sub nsw i32 %360, 9
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = load i32, i32* %19, align 4
  %365 = sub nsw i32 %364, 9
  %366 = sub nsw i32 0, %365
  br label %370

367:                                              ; preds = %359
  %368 = load i32, i32* %19, align 4
  %369 = sub nsw i32 %368, 9
  br label %370

370:                                              ; preds = %367, %363
  %371 = phi i32 [ %366, %363 ], [ %369, %367 ]
  %372 = icmp eq i32 %371, 6
  br i1 %372, label %387, label %373

373:                                              ; preds = %370
  %374 = load i32, i32* %19, align 4
  %375 = sub nsw i32 %374, 9
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = load i32, i32* %19, align 4
  %379 = sub nsw i32 %378, 9
  %380 = sub nsw i32 0, %379
  br label %384

381:                                              ; preds = %373
  %382 = load i32, i32* %19, align 4
  %383 = sub nsw i32 %382, 9
  br label %384

384:                                              ; preds = %381, %377
  %385 = phi i32 [ %380, %377 ], [ %383, %381 ]
  %386 = icmp eq i32 %385, 7
  br i1 %386, label %387, label %390

387:                                              ; preds = %384, %370
  %388 = load i32, i32* %20, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %20, align 4
  br label %390

390:                                              ; preds = %387, %384
  br label %391

391:                                              ; preds = %390, %356
  br label %392

392:                                              ; preds = %391, %290, %282
  %393 = load i32, i32* %20, align 4
  %394 = load i32*, i32** %11, align 8
  %395 = load i32, i32* %394, align 4
  %396 = icmp sgt i32 %393, %395
  br i1 %396, label %397, label %404

397:                                              ; preds = %392
  %398 = load i32, i32* %20, align 4
  %399 = load i32*, i32** %11, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i32, i32* %18, align 4
  %401 = load i32*, i32** %9, align 8
  store i32 %400, i32* %401, align 4
  %402 = load i32, i32* %19, align 4
  %403 = load i32*, i32** %10, align 8
  store i32 %402, i32* %403, align 4
  br label %404

404:                                              ; preds = %397, %392
  br label %405

405:                                              ; preds = %404, %279
  br label %406

406:                                              ; preds = %405
  %407 = load i32, i32* %15, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %15, align 4
  br label %28, !llvm.loop !6

409:                                              ; preds = %28
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %16, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %16, align 4
  br label %24, !llvm.loop !7

413:                                              ; preds = %24
  %414 = load i32*, i32** %11, align 8
  %415 = load i32, i32* %414, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %413
  store i32 1, i32* %6, align 4
  br label %419

418:                                              ; preds = %413
  store i32 0, i32* %6, align 4
  br label %419

419:                                              ; preds = %418, %417
  %420 = load i32, i32* %6, align 4
  ret i32 %420
}

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

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
