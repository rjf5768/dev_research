; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlapx.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlapx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@cellarray = external dso_local global %struct.cellbox**, align 8
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@numcells = external dso_local global i32, align 4
@lapFactor = external dso_local global double, align 8
@offset = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @woverlapx(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.cellbox*, align 8
  %14 = alloca %struct.cellbox*, align 8
  %15 = alloca %struct.tilebox*, align 8
  %16 = alloca %struct.tilebox*, align 8
  %17 = alloca %struct.tilebox*, align 8
  %18 = alloca %struct.tilebox*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32*, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store double %5, double* %12, align 8
  store i32 0, i32* %28, align 4
  %53 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %53, i64 %55
  %57 = load %struct.cellbox*, %struct.cellbox** %56, align 8
  store %struct.cellbox* %57, %struct.cellbox** %13, align 8
  %58 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %59 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %58, i32 0, i32 21
  %60 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %59, i64 0, i64 %63
  %65 = load %struct.tilebox*, %struct.tilebox** %64, align 8
  store %struct.tilebox* %65, %struct.tilebox** %15, align 8
  %66 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %67 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %19, align 4
  %71 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 14
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sitofp i32 %75 to double
  %77 = load double, double* %12, align 8
  %78 = fdiv double %76, %77
  store double %78, double* %52, align 8
  %79 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %80 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load double, double* %52, align 8
  %83 = load double, double* %52, align 8
  %84 = fptosi double %83 to i32
  %85 = sitofp i32 %84 to double
  %86 = fsub double %82, %85
  %87 = fcmp oge double %86, 5.000000e-01
  br i1 %87, label %88, label %92

88:                                               ; preds = %6
  %89 = load double, double* %52, align 8
  %90 = fptosi double %89 to i32
  %91 = add nsw i32 %90, 1
  br label %95

92:                                               ; preds = %6
  %93 = load double, double* %52, align 8
  %94 = fptosi double %93 to i32
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ %91, %88 ], [ %94, %92 ]
  %97 = add nsw i32 %81, %96
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %20, align 4
  %100 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %101 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %21, align 4
  %105 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %106 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sitofp i32 %109 to double
  %111 = load double, double* %12, align 8
  %112 = fmul double %110, %111
  store double %112, double* %52, align 8
  %113 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %114 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load double, double* %52, align 8
  %117 = load double, double* %52, align 8
  %118 = fptosi double %117 to i32
  %119 = sitofp i32 %118 to double
  %120 = fsub double %116, %119
  %121 = fcmp oge double %120, 5.000000e-01
  br i1 %121, label %122, label %126

122:                                              ; preds = %95
  %123 = load double, double* %52, align 8
  %124 = fptosi double %123 to i32
  %125 = add nsw i32 %124, 1
  br label %129

126:                                              ; preds = %95
  %127 = load double, double* %52, align 8
  %128 = fptosi double %127 to i32
  br label %129

129:                                              ; preds = %126, %122
  %130 = phi i32 [ %125, %122 ], [ %128, %126 ]
  %131 = add nsw i32 %115, %130
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %138 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %137, i32 0, i32 1
  %139 = load double, double* %138, align 8
  %140 = call i32 @wireestx(i32 noundef %134, i32 noundef %135, i32 noundef %136, double noundef %139)
  %141 = load i32, i32* %19, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %146, i32 0, i32 2
  %148 = load double, double* %147, align 8
  %149 = call i32 @wireestx(i32 noundef %143, i32 noundef %144, i32 noundef %145, double noundef %148)
  %150 = load i32, i32* %20, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %20, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %155, i32 0, i32 3
  %157 = load double, double* %156, align 8
  %158 = call i32 @wireesty(i32 noundef %152, i32 noundef %153, i32 noundef %154, double noundef %157)
  %159 = load i32, i32* %21, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %20, align 4
  %164 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %165 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %164, i32 0, i32 4
  %166 = load double, double* %165, align 8
  %167 = call i32 @wireesty(i32 noundef %161, i32 noundef %162, i32 noundef %163, double noundef %166)
  %168 = load i32, i32* %22, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %22, align 4
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* @binOffsetX, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load i32, i32* @binWidthX, align 4
  %174 = sdiv i32 %172, %173
  store i32 %174, i32* %48, align 4
  %175 = load i32, i32* %48, align 4
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %129
  store i32 1, i32* %48, align 4
  br label %185

178:                                              ; preds = %129
  %179 = load i32, i32* %48, align 4
  %180 = load i32, i32* @numBinsX, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @numBinsX, align 4
  store i32 %183, i32* %48, align 4
  br label %184

184:                                              ; preds = %182, %178
  br label %185

185:                                              ; preds = %184, %177
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* @binOffsetX, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* @binWidthX, align 4
  %190 = sdiv i32 %188, %189
  store i32 %190, i32* %49, align 4
  %191 = load i32, i32* %49, align 4
  %192 = load i32, i32* @numBinsX, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %185
  %195 = load i32, i32* @numBinsX, align 4
  store i32 %195, i32* %49, align 4
  br label %201

196:                                              ; preds = %185
  %197 = load i32, i32* %49, align 4
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 1, i32* %49, align 4
  br label %200

200:                                              ; preds = %199, %196
  br label %201

201:                                              ; preds = %200, %194
  %202 = load i32, i32* %21, align 4
  %203 = load i32, i32* @binOffsetY, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* @binWidthY, align 4
  %206 = sdiv i32 %204, %205
  store i32 %206, i32* %50, align 4
  %207 = load i32, i32* %50, align 4
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  store i32 1, i32* %50, align 4
  br label %217

210:                                              ; preds = %201
  %211 = load i32, i32* %50, align 4
  %212 = load i32, i32* @numBinsY, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = load i32, i32* @numBinsY, align 4
  store i32 %215, i32* %50, align 4
  br label %216

216:                                              ; preds = %214, %210
  br label %217

217:                                              ; preds = %216, %209
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* @binOffsetY, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load i32, i32* @binWidthY, align 4
  %222 = sdiv i32 %220, %221
  store i32 %222, i32* %51, align 4
  %223 = load i32, i32* %51, align 4
  %224 = load i32, i32* @numBinsY, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %217
  %227 = load i32, i32* @numBinsY, align 4
  store i32 %227, i32* %51, align 4
  br label %233

228:                                              ; preds = %217
  %229 = load i32, i32* %51, align 4
  %230 = icmp slt i32 %229, 1
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 1, i32* %51, align 4
  br label %232

232:                                              ; preds = %231, %228
  br label %233

233:                                              ; preds = %232, %226
  %234 = load i32, i32* %48, align 4
  %235 = load i32, i32* %49, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = load i32, i32* %50, align 4
  %239 = load i32, i32* %51, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32, i32* %48, align 4
  store i32 %242, i32* @binX, align 4
  %243 = load i32, i32* %50, align 4
  store i32 %243, i32* @binY, align 4
  br label %245

244:                                              ; preds = %237, %233
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %245

245:                                              ; preds = %244, %241
  store i32 0, i32* %44, align 4
  br label %246

246:                                              ; preds = %784, %245
  %247 = load i32, i32* %44, align 4
  %248 = load i32, i32* %49, align 4
  %249 = icmp sle i32 %247, %248
  br i1 %249, label %250, label %787

250:                                              ; preds = %246
  %251 = load i32, i32* %44, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %44, align 4
  %255 = load i32, i32* %48, align 4
  %256 = icmp sge i32 %254, %255
  br i1 %256, label %258, label %257

257:                                              ; preds = %253
  br label %784

258:                                              ; preds = %253, %250
  store i32 0, i32* %45, align 4
  br label %259

259:                                              ; preds = %780, %258
  %260 = load i32, i32* %45, align 4
  %261 = load i32, i32* %51, align 4
  %262 = icmp sle i32 %260, %261
  br i1 %262, label %263, label %783

263:                                              ; preds = %259
  %264 = load i32, i32* %44, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* %45, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* %44, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i32, i32* %45, align 4
  %274 = load i32, i32* %50, align 4
  %275 = icmp sge i32 %273, %274
  br i1 %275, label %277, label %276

276:                                              ; preds = %272, %269
  br label %780

277:                                              ; preds = %272, %266
  %278 = load i32***, i32**** @blockarray, align 8
  %279 = load i32, i32* %44, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32**, i32*** %278, i64 %280
  %282 = load i32**, i32*** %281, align 8
  %283 = load i32, i32* %45, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  store i32* %286, i32** %47, align 8
  store i32 1, i32* %46, align 4
  br label %287

287:                                              ; preds = %776, %277
  %288 = load i32, i32* %46, align 4
  %289 = load i32*, i32** %47, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp sle i32 %288, %291
  br i1 %292, label %293, label %779

293:                                              ; preds = %287
  %294 = load i32*, i32** %47, align 8
  %295 = load i32, i32* %46, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %23, align 4
  %299 = load i32, i32* %23, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %293
  br label %776

303:                                              ; preds = %293
  %304 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %305 = load i32, i32* %23, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %304, i64 %306
  %308 = load %struct.cellbox*, %struct.cellbox** %307, align 8
  store %struct.cellbox* %308, %struct.cellbox** %14, align 8
  %309 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %310 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %309, i32 0, i32 21
  %311 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %312 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %310, i64 0, i64 %314
  %316 = load %struct.tilebox*, %struct.tilebox** %315, align 8
  store %struct.tilebox* %316, %struct.tilebox** %17, align 8
  %317 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %318 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %42, align 4
  %320 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %321 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  store i32 %322, i32* %43, align 4
  %323 = load i32, i32* %42, align 4
  %324 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %325 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %323, %326
  store i32 %327, i32* %24, align 4
  %328 = load i32, i32* %42, align 4
  %329 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %330 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %329, i32 0, i32 10
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %328, %331
  store i32 %332, i32* %25, align 4
  %333 = load i32, i32* %43, align 4
  %334 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %335 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %334, i32 0, i32 11
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %333, %336
  store i32 %337, i32* %26, align 4
  %338 = load i32, i32* %43, align 4
  %339 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %340 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %339, i32 0, i32 12
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %338, %341
  store i32 %342, i32* %27, align 4
  %343 = load i32, i32* %23, align 4
  %344 = load i32, i32* @numcells, align 4
  %345 = icmp sle i32 %343, %344
  br i1 %345, label %346, label %383

346:                                              ; preds = %303
  %347 = load i32, i32* %24, align 4
  %348 = load i32, i32* %26, align 4
  %349 = load i32, i32* %27, align 4
  %350 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %351 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %350, i32 0, i32 1
  %352 = load double, double* %351, align 8
  %353 = call i32 @wireestx(i32 noundef %347, i32 noundef %348, i32 noundef %349, double noundef %352)
  %354 = load i32, i32* %24, align 4
  %355 = sub nsw i32 %354, %353
  store i32 %355, i32* %24, align 4
  %356 = load i32, i32* %25, align 4
  %357 = load i32, i32* %26, align 4
  %358 = load i32, i32* %27, align 4
  %359 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %360 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %359, i32 0, i32 2
  %361 = load double, double* %360, align 8
  %362 = call i32 @wireestx(i32 noundef %356, i32 noundef %357, i32 noundef %358, double noundef %361)
  %363 = load i32, i32* %25, align 4
  %364 = add nsw i32 %363, %362
  store i32 %364, i32* %25, align 4
  %365 = load i32, i32* %26, align 4
  %366 = load i32, i32* %24, align 4
  %367 = load i32, i32* %25, align 4
  %368 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %369 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %368, i32 0, i32 3
  %370 = load double, double* %369, align 8
  %371 = call i32 @wireesty(i32 noundef %365, i32 noundef %366, i32 noundef %367, double noundef %370)
  %372 = load i32, i32* %26, align 4
  %373 = sub nsw i32 %372, %371
  store i32 %373, i32* %26, align 4
  %374 = load i32, i32* %27, align 4
  %375 = load i32, i32* %24, align 4
  %376 = load i32, i32* %25, align 4
  %377 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %378 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %377, i32 0, i32 4
  %379 = load double, double* %378, align 8
  %380 = call i32 @wireesty(i32 noundef %374, i32 noundef %375, i32 noundef %376, double noundef %379)
  %381 = load i32, i32* %27, align 4
  %382 = add nsw i32 %381, %380
  store i32 %382, i32* %27, align 4
  br label %383

383:                                              ; preds = %346, %303
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %20, align 4
  %386 = icmp sge i32 %384, %385
  br i1 %386, label %399, label %387

387:                                              ; preds = %383
  %388 = load i32, i32* %19, align 4
  %389 = load i32, i32* %25, align 4
  %390 = icmp sge i32 %388, %389
  br i1 %390, label %399, label %391

391:                                              ; preds = %387
  %392 = load i32, i32* %26, align 4
  %393 = load i32, i32* %22, align 4
  %394 = icmp sge i32 %392, %393
  br i1 %394, label %399, label %395

395:                                              ; preds = %391
  %396 = load i32, i32* %21, align 4
  %397 = load i32, i32* %27, align 4
  %398 = icmp sge i32 %396, %397
  br i1 %398, label %399, label %400

399:                                              ; preds = %395, %391, %387, %383
  br label %776

400:                                              ; preds = %395
  %401 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %402 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %401, i32 0, i32 6
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %462

405:                                              ; preds = %400
  %406 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %407 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %406, i32 0, i32 6
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %410, label %462

410:                                              ; preds = %405
  %411 = load i32, i32* %19, align 4
  %412 = load i32, i32* %24, align 4
  %413 = icmp sge i32 %411, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %410
  %415 = load i32, i32* %19, align 4
  br label %418

416:                                              ; preds = %410
  %417 = load i32, i32* %24, align 4
  br label %418

418:                                              ; preds = %416, %414
  %419 = phi i32 [ %415, %414 ], [ %417, %416 ]
  store i32 %419, i32* %38, align 4
  %420 = load i32, i32* %20, align 4
  %421 = load i32, i32* %25, align 4
  %422 = icmp sle i32 %420, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %418
  %424 = load i32, i32* %20, align 4
  br label %427

425:                                              ; preds = %418
  %426 = load i32, i32* %25, align 4
  br label %427

427:                                              ; preds = %425, %423
  %428 = phi i32 [ %424, %423 ], [ %426, %425 ]
  store i32 %428, i32* %39, align 4
  %429 = load i32, i32* %21, align 4
  %430 = load i32, i32* %26, align 4
  %431 = icmp sge i32 %429, %430
  br i1 %431, label %432, label %434

432:                                              ; preds = %427
  %433 = load i32, i32* %21, align 4
  br label %436

434:                                              ; preds = %427
  %435 = load i32, i32* %26, align 4
  br label %436

436:                                              ; preds = %434, %432
  %437 = phi i32 [ %433, %432 ], [ %435, %434 ]
  store i32 %437, i32* %40, align 4
  %438 = load i32, i32* %22, align 4
  %439 = load i32, i32* %27, align 4
  %440 = icmp sle i32 %438, %439
  br i1 %440, label %441, label %443

441:                                              ; preds = %436
  %442 = load i32, i32* %22, align 4
  br label %445

443:                                              ; preds = %436
  %444 = load i32, i32* %27, align 4
  br label %445

445:                                              ; preds = %443, %441
  %446 = phi i32 [ %442, %441 ], [ %444, %443 ]
  store i32 %446, i32* %41, align 4
  %447 = load double, double* @lapFactor, align 8
  %448 = load i32, i32* %41, align 4
  %449 = load i32, i32* %40, align 4
  %450 = sub nsw i32 %448, %449
  %451 = load i32, i32* %39, align 4
  %452 = load i32, i32* %38, align 4
  %453 = sub nsw i32 %451, %452
  %454 = mul nsw i32 %450, %453
  %455 = load i32, i32* @offset, align 4
  %456 = add nsw i32 %454, %455
  %457 = sitofp i32 %456 to double
  %458 = fmul double %447, %457
  %459 = fptosi double %458 to i32
  %460 = load i32, i32* %28, align 4
  %461 = add nsw i32 %460, %459
  store i32 %461, i32* %28, align 4
  br label %775

462:                                              ; preds = %405, %400
  store i32 0, i32* %29, align 4
  %463 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %464 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %463, i32 0, i32 0
  %465 = load %struct.tilebox*, %struct.tilebox** %464, align 8
  store %struct.tilebox* %465, %struct.tilebox** %16, align 8
  br label %466

466:                                              ; preds = %757, %462
  %467 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %468 = icmp ne %struct.tilebox* %467, null
  br i1 %468, label %469, label %761

469:                                              ; preds = %466
  %470 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %471 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %470, i32 0, i32 13
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* %8, align 4
  %474 = sub nsw i32 %472, %473
  %475 = sitofp i32 %474 to double
  %476 = load double, double* %12, align 8
  %477 = fdiv double %475, %476
  store double %477, double* %52, align 8
  %478 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %479 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load double, double* %52, align 8
  %482 = load double, double* %52, align 8
  %483 = fptosi double %482 to i32
  %484 = sitofp i32 %483 to double
  %485 = fsub double %481, %484
  %486 = fcmp oge double %485, 5.000000e-01
  br i1 %486, label %487, label %491

487:                                              ; preds = %469
  %488 = load double, double* %52, align 8
  %489 = fptosi double %488 to i32
  %490 = add nsw i32 %489, 1
  br label %494

491:                                              ; preds = %469
  %492 = load double, double* %52, align 8
  %493 = fptosi double %492 to i32
  br label %494

494:                                              ; preds = %491, %487
  %495 = phi i32 [ %490, %487 ], [ %493, %491 ]
  %496 = add nsw i32 %480, %495
  %497 = load i32, i32* %10, align 4
  %498 = sub nsw i32 %496, %497
  store i32 %498, i32* %30, align 4
  %499 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %500 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %499, i32 0, i32 14
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* %8, align 4
  %503 = sub nsw i32 %501, %502
  %504 = sitofp i32 %503 to double
  %505 = load double, double* %12, align 8
  %506 = fdiv double %504, %505
  store double %506, double* %52, align 8
  %507 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %508 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 4
  %510 = load double, double* %52, align 8
  %511 = load double, double* %52, align 8
  %512 = fptosi double %511 to i32
  %513 = sitofp i32 %512 to double
  %514 = fsub double %510, %513
  %515 = fcmp oge double %514, 5.000000e-01
  br i1 %515, label %516, label %520

516:                                              ; preds = %494
  %517 = load double, double* %52, align 8
  %518 = fptosi double %517 to i32
  %519 = add nsw i32 %518, 1
  br label %523

520:                                              ; preds = %494
  %521 = load double, double* %52, align 8
  %522 = fptosi double %521 to i32
  br label %523

523:                                              ; preds = %520, %516
  %524 = phi i32 [ %519, %516 ], [ %522, %520 ]
  %525 = add nsw i32 %509, %524
  %526 = load i32, i32* %10, align 4
  %527 = sub nsw i32 %525, %526
  store i32 %527, i32* %31, align 4
  %528 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %529 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %528, i32 0, i32 15
  %530 = load i32, i32* %529, align 8
  %531 = load i32, i32* %9, align 4
  %532 = sub nsw i32 %530, %531
  %533 = sitofp i32 %532 to double
  %534 = load double, double* %12, align 8
  %535 = fmul double %533, %534
  store double %535, double* %52, align 8
  %536 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %537 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 8
  %539 = load double, double* %52, align 8
  %540 = load double, double* %52, align 8
  %541 = fptosi double %540 to i32
  %542 = sitofp i32 %541 to double
  %543 = fsub double %539, %542
  %544 = fcmp oge double %543, 5.000000e-01
  br i1 %544, label %545, label %549

545:                                              ; preds = %523
  %546 = load double, double* %52, align 8
  %547 = fptosi double %546 to i32
  %548 = add nsw i32 %547, 1
  br label %552

549:                                              ; preds = %523
  %550 = load double, double* %52, align 8
  %551 = fptosi double %550 to i32
  br label %552

552:                                              ; preds = %549, %545
  %553 = phi i32 [ %548, %545 ], [ %551, %549 ]
  %554 = add nsw i32 %538, %553
  %555 = load i32, i32* %11, align 4
  %556 = sub nsw i32 %554, %555
  store i32 %556, i32* %32, align 4
  %557 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %558 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %557, i32 0, i32 16
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* %9, align 4
  %561 = sub nsw i32 %559, %560
  %562 = sitofp i32 %561 to double
  %563 = load double, double* %12, align 8
  %564 = fmul double %562, %563
  store double %564, double* %52, align 8
  %565 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %566 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 8
  %568 = load double, double* %52, align 8
  %569 = load double, double* %52, align 8
  %570 = fptosi double %569 to i32
  %571 = sitofp i32 %570 to double
  %572 = fsub double %568, %571
  %573 = fcmp oge double %572, 5.000000e-01
  br i1 %573, label %574, label %578

574:                                              ; preds = %552
  %575 = load double, double* %52, align 8
  %576 = fptosi double %575 to i32
  %577 = add nsw i32 %576, 1
  br label %581

578:                                              ; preds = %552
  %579 = load double, double* %52, align 8
  %580 = fptosi double %579 to i32
  br label %581

581:                                              ; preds = %578, %574
  %582 = phi i32 [ %577, %574 ], [ %580, %578 ]
  %583 = add nsw i32 %567, %582
  %584 = load i32, i32* %11, align 4
  %585 = sub nsw i32 %583, %584
  store i32 %585, i32* %33, align 4
  %586 = load i32, i32* %30, align 4
  %587 = load i32, i32* %32, align 4
  %588 = load i32, i32* %33, align 4
  %589 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %590 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %589, i32 0, i32 1
  %591 = load double, double* %590, align 8
  %592 = call i32 @wireestx(i32 noundef %586, i32 noundef %587, i32 noundef %588, double noundef %591)
  %593 = load i32, i32* %30, align 4
  %594 = sub nsw i32 %593, %592
  store i32 %594, i32* %30, align 4
  %595 = load i32, i32* %31, align 4
  %596 = load i32, i32* %32, align 4
  %597 = load i32, i32* %33, align 4
  %598 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %599 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %598, i32 0, i32 2
  %600 = load double, double* %599, align 8
  %601 = call i32 @wireestx(i32 noundef %595, i32 noundef %596, i32 noundef %597, double noundef %600)
  %602 = load i32, i32* %31, align 4
  %603 = add nsw i32 %602, %601
  store i32 %603, i32* %31, align 4
  %604 = load i32, i32* %32, align 4
  %605 = load i32, i32* %30, align 4
  %606 = load i32, i32* %31, align 4
  %607 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %608 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %607, i32 0, i32 3
  %609 = load double, double* %608, align 8
  %610 = call i32 @wireesty(i32 noundef %604, i32 noundef %605, i32 noundef %606, double noundef %609)
  %611 = load i32, i32* %32, align 4
  %612 = sub nsw i32 %611, %610
  store i32 %612, i32* %32, align 4
  %613 = load i32, i32* %33, align 4
  %614 = load i32, i32* %30, align 4
  %615 = load i32, i32* %31, align 4
  %616 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %617 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %616, i32 0, i32 4
  %618 = load double, double* %617, align 8
  %619 = call i32 @wireesty(i32 noundef %613, i32 noundef %614, i32 noundef %615, double noundef %618)
  %620 = load i32, i32* %33, align 4
  %621 = add nsw i32 %620, %619
  store i32 %621, i32* %33, align 4
  %622 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %623 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %622, i32 0, i32 0
  %624 = load %struct.tilebox*, %struct.tilebox** %623, align 8
  store %struct.tilebox* %624, %struct.tilebox** %18, align 8
  br label %625

625:                                              ; preds = %752, %581
  %626 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %627 = icmp ne %struct.tilebox* %626, null
  br i1 %627, label %628, label %756

628:                                              ; preds = %625
  %629 = load i32, i32* %42, align 4
  %630 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %631 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %630, i32 0, i32 9
  %632 = load i32, i32* %631, align 8
  %633 = add nsw i32 %629, %632
  store i32 %633, i32* %34, align 4
  %634 = load i32, i32* %42, align 4
  %635 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %636 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %635, i32 0, i32 10
  %637 = load i32, i32* %636, align 4
  %638 = add nsw i32 %634, %637
  store i32 %638, i32* %35, align 4
  %639 = load i32, i32* %43, align 4
  %640 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %641 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %640, i32 0, i32 11
  %642 = load i32, i32* %641, align 8
  %643 = add nsw i32 %639, %642
  store i32 %643, i32* %36, align 4
  %644 = load i32, i32* %43, align 4
  %645 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %646 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %645, i32 0, i32 12
  %647 = load i32, i32* %646, align 4
  %648 = add nsw i32 %644, %647
  store i32 %648, i32* %37, align 4
  %649 = load i32, i32* %23, align 4
  %650 = load i32, i32* @numcells, align 4
  %651 = icmp sle i32 %649, %650
  br i1 %651, label %652, label %689

652:                                              ; preds = %628
  %653 = load i32, i32* %34, align 4
  %654 = load i32, i32* %36, align 4
  %655 = load i32, i32* %37, align 4
  %656 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %657 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %656, i32 0, i32 1
  %658 = load double, double* %657, align 8
  %659 = call i32 @wireestx(i32 noundef %653, i32 noundef %654, i32 noundef %655, double noundef %658)
  %660 = load i32, i32* %34, align 4
  %661 = sub nsw i32 %660, %659
  store i32 %661, i32* %34, align 4
  %662 = load i32, i32* %35, align 4
  %663 = load i32, i32* %36, align 4
  %664 = load i32, i32* %37, align 4
  %665 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %666 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %665, i32 0, i32 2
  %667 = load double, double* %666, align 8
  %668 = call i32 @wireestx(i32 noundef %662, i32 noundef %663, i32 noundef %664, double noundef %667)
  %669 = load i32, i32* %35, align 4
  %670 = add nsw i32 %669, %668
  store i32 %670, i32* %35, align 4
  %671 = load i32, i32* %36, align 4
  %672 = load i32, i32* %34, align 4
  %673 = load i32, i32* %35, align 4
  %674 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %675 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %674, i32 0, i32 3
  %676 = load double, double* %675, align 8
  %677 = call i32 @wireesty(i32 noundef %671, i32 noundef %672, i32 noundef %673, double noundef %676)
  %678 = load i32, i32* %36, align 4
  %679 = sub nsw i32 %678, %677
  store i32 %679, i32* %36, align 4
  %680 = load i32, i32* %37, align 4
  %681 = load i32, i32* %34, align 4
  %682 = load i32, i32* %35, align 4
  %683 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %684 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %683, i32 0, i32 4
  %685 = load double, double* %684, align 8
  %686 = call i32 @wireesty(i32 noundef %680, i32 noundef %681, i32 noundef %682, double noundef %685)
  %687 = load i32, i32* %37, align 4
  %688 = add nsw i32 %687, %686
  store i32 %688, i32* %37, align 4
  br label %689

689:                                              ; preds = %652, %628
  %690 = load i32, i32* %34, align 4
  %691 = load i32, i32* %31, align 4
  %692 = icmp sge i32 %690, %691
  br i1 %692, label %705, label %693

693:                                              ; preds = %689
  %694 = load i32, i32* %30, align 4
  %695 = load i32, i32* %35, align 4
  %696 = icmp sge i32 %694, %695
  br i1 %696, label %705, label %697

697:                                              ; preds = %693
  %698 = load i32, i32* %36, align 4
  %699 = load i32, i32* %33, align 4
  %700 = icmp sge i32 %698, %699
  br i1 %700, label %705, label %701

701:                                              ; preds = %697
  %702 = load i32, i32* %32, align 4
  %703 = load i32, i32* %37, align 4
  %704 = icmp sge i32 %702, %703
  br i1 %704, label %705, label %706

705:                                              ; preds = %701, %697, %693, %689
  br label %752

706:                                              ; preds = %701
  %707 = load i32, i32* %30, align 4
  %708 = load i32, i32* %34, align 4
  %709 = icmp sge i32 %707, %708
  br i1 %709, label %710, label %712

710:                                              ; preds = %706
  %711 = load i32, i32* %30, align 4
  br label %714

712:                                              ; preds = %706
  %713 = load i32, i32* %34, align 4
  br label %714

714:                                              ; preds = %712, %710
  %715 = phi i32 [ %711, %710 ], [ %713, %712 ]
  store i32 %715, i32* %38, align 4
  %716 = load i32, i32* %31, align 4
  %717 = load i32, i32* %35, align 4
  %718 = icmp sle i32 %716, %717
  br i1 %718, label %719, label %721

719:                                              ; preds = %714
  %720 = load i32, i32* %31, align 4
  br label %723

721:                                              ; preds = %714
  %722 = load i32, i32* %35, align 4
  br label %723

723:                                              ; preds = %721, %719
  %724 = phi i32 [ %720, %719 ], [ %722, %721 ]
  store i32 %724, i32* %39, align 4
  %725 = load i32, i32* %32, align 4
  %726 = load i32, i32* %36, align 4
  %727 = icmp sge i32 %725, %726
  br i1 %727, label %728, label %730

728:                                              ; preds = %723
  %729 = load i32, i32* %32, align 4
  br label %732

730:                                              ; preds = %723
  %731 = load i32, i32* %36, align 4
  br label %732

732:                                              ; preds = %730, %728
  %733 = phi i32 [ %729, %728 ], [ %731, %730 ]
  store i32 %733, i32* %40, align 4
  %734 = load i32, i32* %33, align 4
  %735 = load i32, i32* %37, align 4
  %736 = icmp sle i32 %734, %735
  br i1 %736, label %737, label %739

737:                                              ; preds = %732
  %738 = load i32, i32* %33, align 4
  br label %741

739:                                              ; preds = %732
  %740 = load i32, i32* %37, align 4
  br label %741

741:                                              ; preds = %739, %737
  %742 = phi i32 [ %738, %737 ], [ %740, %739 ]
  store i32 %742, i32* %41, align 4
  %743 = load i32, i32* %41, align 4
  %744 = load i32, i32* %40, align 4
  %745 = sub nsw i32 %743, %744
  %746 = load i32, i32* %39, align 4
  %747 = load i32, i32* %38, align 4
  %748 = sub nsw i32 %746, %747
  %749 = mul nsw i32 %745, %748
  %750 = load i32, i32* %29, align 4
  %751 = add nsw i32 %750, %749
  store i32 %751, i32* %29, align 4
  br label %752

752:                                              ; preds = %741, %705
  %753 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %754 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %753, i32 0, i32 0
  %755 = load %struct.tilebox*, %struct.tilebox** %754, align 8
  store %struct.tilebox* %755, %struct.tilebox** %18, align 8
  br label %625, !llvm.loop !4

756:                                              ; preds = %625
  br label %757

757:                                              ; preds = %756
  %758 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %759 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %758, i32 0, i32 0
  %760 = load %struct.tilebox*, %struct.tilebox** %759, align 8
  store %struct.tilebox* %760, %struct.tilebox** %16, align 8
  br label %466, !llvm.loop !6

761:                                              ; preds = %466
  %762 = load i32, i32* %29, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %774

764:                                              ; preds = %761
  %765 = load double, double* @lapFactor, align 8
  %766 = load i32, i32* %29, align 4
  %767 = load i32, i32* @offset, align 4
  %768 = add nsw i32 %766, %767
  %769 = sitofp i32 %768 to double
  %770 = fmul double %765, %769
  %771 = fptosi double %770 to i32
  %772 = load i32, i32* %28, align 4
  %773 = add nsw i32 %772, %771
  store i32 %773, i32* %28, align 4
  br label %774

774:                                              ; preds = %764, %761
  br label %775

775:                                              ; preds = %774, %445
  br label %776

776:                                              ; preds = %775, %399, %302
  %777 = load i32, i32* %46, align 4
  %778 = add nsw i32 %777, 1
  store i32 %778, i32* %46, align 4
  br label %287, !llvm.loop !7

779:                                              ; preds = %287
  br label %780

780:                                              ; preds = %779, %276
  %781 = load i32, i32* %45, align 4
  %782 = add nsw i32 %781, 1
  store i32 %782, i32* %45, align 4
  br label %259, !llvm.loop !8

783:                                              ; preds = %259
  br label %784

784:                                              ; preds = %783, %257
  %785 = load i32, i32* %44, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %44, align 4
  br label %246, !llvm.loop !9

787:                                              ; preds = %246
  %788 = load i32, i32* %28, align 4
  ret i32 %788
}

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

declare dso_local i32 @wireesty(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

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
