; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/goverlapx.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/goverlapx.c"
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
define dso_local i32 @goverlapx(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5) #0 {
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
  %134 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %19, align 4
  %139 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %140 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %20, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %20, align 4
  %144 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %145 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %21, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %21, align 4
  %149 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %150 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %22, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* @binOffsetX, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* @binWidthX, align 4
  %158 = sdiv i32 %156, %157
  store i32 %158, i32* %48, align 4
  %159 = load i32, i32* %48, align 4
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %129
  store i32 1, i32* %48, align 4
  br label %169

162:                                              ; preds = %129
  %163 = load i32, i32* %48, align 4
  %164 = load i32, i32* @numBinsX, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @numBinsX, align 4
  store i32 %167, i32* %48, align 4
  br label %168

168:                                              ; preds = %166, %162
  br label %169

169:                                              ; preds = %168, %161
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* @binOffsetX, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load i32, i32* @binWidthX, align 4
  %174 = sdiv i32 %172, %173
  store i32 %174, i32* %49, align 4
  %175 = load i32, i32* %49, align 4
  %176 = load i32, i32* @numBinsX, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* @numBinsX, align 4
  store i32 %179, i32* %49, align 4
  br label %185

180:                                              ; preds = %169
  %181 = load i32, i32* %49, align 4
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 1, i32* %49, align 4
  br label %184

184:                                              ; preds = %183, %180
  br label %185

185:                                              ; preds = %184, %178
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* @binOffsetY, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* @binWidthY, align 4
  %190 = sdiv i32 %188, %189
  store i32 %190, i32* %50, align 4
  %191 = load i32, i32* %50, align 4
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  store i32 1, i32* %50, align 4
  br label %201

194:                                              ; preds = %185
  %195 = load i32, i32* %50, align 4
  %196 = load i32, i32* @numBinsY, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @numBinsY, align 4
  store i32 %199, i32* %50, align 4
  br label %200

200:                                              ; preds = %198, %194
  br label %201

201:                                              ; preds = %200, %193
  %202 = load i32, i32* %22, align 4
  %203 = load i32, i32* @binOffsetY, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* @binWidthY, align 4
  %206 = sdiv i32 %204, %205
  store i32 %206, i32* %51, align 4
  %207 = load i32, i32* %51, align 4
  %208 = load i32, i32* @numBinsY, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = load i32, i32* @numBinsY, align 4
  store i32 %211, i32* %51, align 4
  br label %217

212:                                              ; preds = %201
  %213 = load i32, i32* %51, align 4
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i32 1, i32* %51, align 4
  br label %216

216:                                              ; preds = %215, %212
  br label %217

217:                                              ; preds = %216, %210
  %218 = load i32, i32* %48, align 4
  %219 = load i32, i32* %49, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load i32, i32* %50, align 4
  %223 = load i32, i32* %51, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* %48, align 4
  store i32 %226, i32* @binX, align 4
  %227 = load i32, i32* %50, align 4
  store i32 %227, i32* @binY, align 4
  br label %229

228:                                              ; preds = %221, %217
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %229

229:                                              ; preds = %228, %225
  store i32 0, i32* %44, align 4
  br label %230

230:                                              ; preds = %720, %229
  %231 = load i32, i32* %44, align 4
  %232 = load i32, i32* %49, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %723

234:                                              ; preds = %230
  %235 = load i32, i32* %44, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %44, align 4
  %239 = load i32, i32* %48, align 4
  %240 = icmp sge i32 %238, %239
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  br label %720

242:                                              ; preds = %237, %234
  store i32 0, i32* %45, align 4
  br label %243

243:                                              ; preds = %716, %242
  %244 = load i32, i32* %45, align 4
  %245 = load i32, i32* %51, align 4
  %246 = icmp sle i32 %244, %245
  br i1 %246, label %247, label %719

247:                                              ; preds = %243
  %248 = load i32, i32* %44, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* %45, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %250, %247
  %254 = load i32, i32* %44, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i32, i32* %45, align 4
  %258 = load i32, i32* %50, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %261, label %260

260:                                              ; preds = %256, %253
  br label %716

261:                                              ; preds = %256, %250
  %262 = load i32***, i32**** @blockarray, align 8
  %263 = load i32, i32* %44, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32**, i32*** %262, i64 %264
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32, i32* %45, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  store i32* %270, i32** %47, align 8
  store i32 1, i32* %46, align 4
  br label %271

271:                                              ; preds = %712, %261
  %272 = load i32, i32* %46, align 4
  %273 = load i32*, i32** %47, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp sle i32 %272, %275
  br i1 %276, label %277, label %715

277:                                              ; preds = %271
  %278 = load i32*, i32** %47, align 8
  %279 = load i32, i32* %46, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %23, align 4
  %283 = load i32, i32* %23, align 4
  %284 = load i32, i32* %7, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %712

287:                                              ; preds = %277
  %288 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %289 = load i32, i32* %23, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %288, i64 %290
  %292 = load %struct.cellbox*, %struct.cellbox** %291, align 8
  store %struct.cellbox* %292, %struct.cellbox** %14, align 8
  %293 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %294 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %293, i32 0, i32 21
  %295 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %296 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %294, i64 0, i64 %298
  %300 = load %struct.tilebox*, %struct.tilebox** %299, align 8
  store %struct.tilebox* %300, %struct.tilebox** %17, align 8
  %301 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %302 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %42, align 4
  %304 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %305 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %43, align 4
  %307 = load i32, i32* %42, align 4
  %308 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %309 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %307, %310
  store i32 %311, i32* %24, align 4
  %312 = load i32, i32* %42, align 4
  %313 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %314 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %313, i32 0, i32 10
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %312, %315
  store i32 %316, i32* %25, align 4
  %317 = load i32, i32* %43, align 4
  %318 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %319 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %318, i32 0, i32 11
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %317, %320
  store i32 %321, i32* %26, align 4
  %322 = load i32, i32* %43, align 4
  %323 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %324 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %323, i32 0, i32 12
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %322, %325
  store i32 %326, i32* %27, align 4
  %327 = load i32, i32* %23, align 4
  %328 = load i32, i32* @numcells, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %351

330:                                              ; preds = %287
  %331 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %332 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %24, align 4
  %335 = sub nsw i32 %334, %333
  store i32 %335, i32* %24, align 4
  %336 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %337 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %25, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* %25, align 4
  %341 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %342 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %26, align 4
  %345 = sub nsw i32 %344, %343
  store i32 %345, i32* %26, align 4
  %346 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %347 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i32 0, i32 8
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %27, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %27, align 4
  br label %351

351:                                              ; preds = %330, %287
  %352 = load i32, i32* %24, align 4
  %353 = load i32, i32* %20, align 4
  %354 = icmp sge i32 %352, %353
  br i1 %354, label %367, label %355

355:                                              ; preds = %351
  %356 = load i32, i32* %19, align 4
  %357 = load i32, i32* %25, align 4
  %358 = icmp sge i32 %356, %357
  br i1 %358, label %367, label %359

359:                                              ; preds = %355
  %360 = load i32, i32* %26, align 4
  %361 = load i32, i32* %22, align 4
  %362 = icmp sge i32 %360, %361
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load i32, i32* %21, align 4
  %365 = load i32, i32* %27, align 4
  %366 = icmp sge i32 %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %363, %359, %355, %351
  br label %712

368:                                              ; preds = %363
  %369 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %370 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %369, i32 0, i32 6
  %371 = load i32, i32* %370, align 4
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %373, label %430

373:                                              ; preds = %368
  %374 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %375 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 1
  br i1 %377, label %378, label %430

378:                                              ; preds = %373
  %379 = load i32, i32* %19, align 4
  %380 = load i32, i32* %24, align 4
  %381 = icmp sge i32 %379, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %378
  %383 = load i32, i32* %19, align 4
  br label %386

384:                                              ; preds = %378
  %385 = load i32, i32* %24, align 4
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ]
  store i32 %387, i32* %38, align 4
  %388 = load i32, i32* %20, align 4
  %389 = load i32, i32* %25, align 4
  %390 = icmp sle i32 %388, %389
  br i1 %390, label %391, label %393

391:                                              ; preds = %386
  %392 = load i32, i32* %20, align 4
  br label %395

393:                                              ; preds = %386
  %394 = load i32, i32* %25, align 4
  br label %395

395:                                              ; preds = %393, %391
  %396 = phi i32 [ %392, %391 ], [ %394, %393 ]
  store i32 %396, i32* %39, align 4
  %397 = load i32, i32* %21, align 4
  %398 = load i32, i32* %26, align 4
  %399 = icmp sge i32 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %395
  %401 = load i32, i32* %21, align 4
  br label %404

402:                                              ; preds = %395
  %403 = load i32, i32* %26, align 4
  br label %404

404:                                              ; preds = %402, %400
  %405 = phi i32 [ %401, %400 ], [ %403, %402 ]
  store i32 %405, i32* %40, align 4
  %406 = load i32, i32* %22, align 4
  %407 = load i32, i32* %27, align 4
  %408 = icmp sle i32 %406, %407
  br i1 %408, label %409, label %411

409:                                              ; preds = %404
  %410 = load i32, i32* %22, align 4
  br label %413

411:                                              ; preds = %404
  %412 = load i32, i32* %27, align 4
  br label %413

413:                                              ; preds = %411, %409
  %414 = phi i32 [ %410, %409 ], [ %412, %411 ]
  store i32 %414, i32* %41, align 4
  %415 = load double, double* @lapFactor, align 8
  %416 = load i32, i32* %41, align 4
  %417 = load i32, i32* %40, align 4
  %418 = sub nsw i32 %416, %417
  %419 = load i32, i32* %39, align 4
  %420 = load i32, i32* %38, align 4
  %421 = sub nsw i32 %419, %420
  %422 = mul nsw i32 %418, %421
  %423 = load i32, i32* @offset, align 4
  %424 = add nsw i32 %422, %423
  %425 = sitofp i32 %424 to double
  %426 = fmul double %415, %425
  %427 = fptosi double %426 to i32
  %428 = load i32, i32* %28, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %28, align 4
  br label %711

430:                                              ; preds = %373, %368
  store i32 0, i32* %29, align 4
  %431 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %432 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %431, i32 0, i32 0
  %433 = load %struct.tilebox*, %struct.tilebox** %432, align 8
  store %struct.tilebox* %433, %struct.tilebox** %16, align 8
  br label %434

434:                                              ; preds = %693, %430
  %435 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %436 = icmp ne %struct.tilebox* %435, null
  br i1 %436, label %437, label %697

437:                                              ; preds = %434
  %438 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %439 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %438, i32 0, i32 13
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* %8, align 4
  %442 = sub nsw i32 %440, %441
  %443 = sitofp i32 %442 to double
  %444 = load double, double* %12, align 8
  %445 = fdiv double %443, %444
  store double %445, double* %52, align 8
  %446 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %447 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 4
  %449 = load double, double* %52, align 8
  %450 = load double, double* %52, align 8
  %451 = fptosi double %450 to i32
  %452 = sitofp i32 %451 to double
  %453 = fsub double %449, %452
  %454 = fcmp oge double %453, 5.000000e-01
  br i1 %454, label %455, label %459

455:                                              ; preds = %437
  %456 = load double, double* %52, align 8
  %457 = fptosi double %456 to i32
  %458 = add nsw i32 %457, 1
  br label %462

459:                                              ; preds = %437
  %460 = load double, double* %52, align 8
  %461 = fptosi double %460 to i32
  br label %462

462:                                              ; preds = %459, %455
  %463 = phi i32 [ %458, %455 ], [ %461, %459 ]
  %464 = add nsw i32 %448, %463
  %465 = load i32, i32* %10, align 4
  %466 = sub nsw i32 %464, %465
  store i32 %466, i32* %30, align 4
  %467 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %468 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %467, i32 0, i32 14
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* %8, align 4
  %471 = sub nsw i32 %469, %470
  %472 = sitofp i32 %471 to double
  %473 = load double, double* %12, align 8
  %474 = fdiv double %472, %473
  store double %474, double* %52, align 8
  %475 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %476 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = load double, double* %52, align 8
  %479 = load double, double* %52, align 8
  %480 = fptosi double %479 to i32
  %481 = sitofp i32 %480 to double
  %482 = fsub double %478, %481
  %483 = fcmp oge double %482, 5.000000e-01
  br i1 %483, label %484, label %488

484:                                              ; preds = %462
  %485 = load double, double* %52, align 8
  %486 = fptosi double %485 to i32
  %487 = add nsw i32 %486, 1
  br label %491

488:                                              ; preds = %462
  %489 = load double, double* %52, align 8
  %490 = fptosi double %489 to i32
  br label %491

491:                                              ; preds = %488, %484
  %492 = phi i32 [ %487, %484 ], [ %490, %488 ]
  %493 = add nsw i32 %477, %492
  %494 = load i32, i32* %10, align 4
  %495 = sub nsw i32 %493, %494
  store i32 %495, i32* %31, align 4
  %496 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %497 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %496, i32 0, i32 15
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %9, align 4
  %500 = sub nsw i32 %498, %499
  %501 = sitofp i32 %500 to double
  %502 = load double, double* %12, align 8
  %503 = fmul double %501, %502
  store double %503, double* %52, align 8
  %504 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %505 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 8
  %507 = load double, double* %52, align 8
  %508 = load double, double* %52, align 8
  %509 = fptosi double %508 to i32
  %510 = sitofp i32 %509 to double
  %511 = fsub double %507, %510
  %512 = fcmp oge double %511, 5.000000e-01
  br i1 %512, label %513, label %517

513:                                              ; preds = %491
  %514 = load double, double* %52, align 8
  %515 = fptosi double %514 to i32
  %516 = add nsw i32 %515, 1
  br label %520

517:                                              ; preds = %491
  %518 = load double, double* %52, align 8
  %519 = fptosi double %518 to i32
  br label %520

520:                                              ; preds = %517, %513
  %521 = phi i32 [ %516, %513 ], [ %519, %517 ]
  %522 = add nsw i32 %506, %521
  %523 = load i32, i32* %11, align 4
  %524 = sub nsw i32 %522, %523
  store i32 %524, i32* %32, align 4
  %525 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %526 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %525, i32 0, i32 16
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* %9, align 4
  %529 = sub nsw i32 %527, %528
  %530 = sitofp i32 %529 to double
  %531 = load double, double* %12, align 8
  %532 = fmul double %530, %531
  store double %532, double* %52, align 8
  %533 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %534 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 8
  %536 = load double, double* %52, align 8
  %537 = load double, double* %52, align 8
  %538 = fptosi double %537 to i32
  %539 = sitofp i32 %538 to double
  %540 = fsub double %536, %539
  %541 = fcmp oge double %540, 5.000000e-01
  br i1 %541, label %542, label %546

542:                                              ; preds = %520
  %543 = load double, double* %52, align 8
  %544 = fptosi double %543 to i32
  %545 = add nsw i32 %544, 1
  br label %549

546:                                              ; preds = %520
  %547 = load double, double* %52, align 8
  %548 = fptosi double %547 to i32
  br label %549

549:                                              ; preds = %546, %542
  %550 = phi i32 [ %545, %542 ], [ %548, %546 ]
  %551 = add nsw i32 %535, %550
  %552 = load i32, i32* %11, align 4
  %553 = sub nsw i32 %551, %552
  store i32 %553, i32* %33, align 4
  %554 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %555 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %554, i32 0, i32 5
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* %30, align 4
  %558 = sub nsw i32 %557, %556
  store i32 %558, i32* %30, align 4
  %559 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %560 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %559, i32 0, i32 6
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* %31, align 4
  %563 = add nsw i32 %562, %561
  store i32 %563, i32* %31, align 4
  %564 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %565 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %564, i32 0, i32 7
  %566 = load i32, i32* %565, align 8
  %567 = load i32, i32* %32, align 4
  %568 = sub nsw i32 %567, %566
  store i32 %568, i32* %32, align 4
  %569 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %570 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %569, i32 0, i32 8
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %33, align 4
  %573 = add nsw i32 %572, %571
  store i32 %573, i32* %33, align 4
  %574 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %575 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %574, i32 0, i32 0
  %576 = load %struct.tilebox*, %struct.tilebox** %575, align 8
  store %struct.tilebox* %576, %struct.tilebox** %18, align 8
  br label %577

577:                                              ; preds = %688, %549
  %578 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %579 = icmp ne %struct.tilebox* %578, null
  br i1 %579, label %580, label %692

580:                                              ; preds = %577
  %581 = load i32, i32* %42, align 4
  %582 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %583 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %582, i32 0, i32 9
  %584 = load i32, i32* %583, align 8
  %585 = add nsw i32 %581, %584
  store i32 %585, i32* %34, align 4
  %586 = load i32, i32* %42, align 4
  %587 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %588 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %587, i32 0, i32 10
  %589 = load i32, i32* %588, align 4
  %590 = add nsw i32 %586, %589
  store i32 %590, i32* %35, align 4
  %591 = load i32, i32* %43, align 4
  %592 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %593 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %592, i32 0, i32 11
  %594 = load i32, i32* %593, align 8
  %595 = add nsw i32 %591, %594
  store i32 %595, i32* %36, align 4
  %596 = load i32, i32* %43, align 4
  %597 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %598 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %597, i32 0, i32 12
  %599 = load i32, i32* %598, align 4
  %600 = add nsw i32 %596, %599
  store i32 %600, i32* %37, align 4
  %601 = load i32, i32* %23, align 4
  %602 = load i32, i32* @numcells, align 4
  %603 = icmp sle i32 %601, %602
  br i1 %603, label %604, label %625

604:                                              ; preds = %580
  %605 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %606 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %605, i32 0, i32 5
  %607 = load i32, i32* %606, align 8
  %608 = load i32, i32* %34, align 4
  %609 = sub nsw i32 %608, %607
  store i32 %609, i32* %34, align 4
  %610 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %611 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %610, i32 0, i32 6
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* %35, align 4
  %614 = add nsw i32 %613, %612
  store i32 %614, i32* %35, align 4
  %615 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %616 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %615, i32 0, i32 7
  %617 = load i32, i32* %616, align 8
  %618 = load i32, i32* %36, align 4
  %619 = sub nsw i32 %618, %617
  store i32 %619, i32* %36, align 4
  %620 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %621 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %620, i32 0, i32 8
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* %37, align 4
  %624 = add nsw i32 %623, %622
  store i32 %624, i32* %37, align 4
  br label %625

625:                                              ; preds = %604, %580
  %626 = load i32, i32* %34, align 4
  %627 = load i32, i32* %31, align 4
  %628 = icmp sge i32 %626, %627
  br i1 %628, label %641, label %629

629:                                              ; preds = %625
  %630 = load i32, i32* %30, align 4
  %631 = load i32, i32* %35, align 4
  %632 = icmp sge i32 %630, %631
  br i1 %632, label %641, label %633

633:                                              ; preds = %629
  %634 = load i32, i32* %36, align 4
  %635 = load i32, i32* %33, align 4
  %636 = icmp sge i32 %634, %635
  br i1 %636, label %641, label %637

637:                                              ; preds = %633
  %638 = load i32, i32* %32, align 4
  %639 = load i32, i32* %37, align 4
  %640 = icmp sge i32 %638, %639
  br i1 %640, label %641, label %642

641:                                              ; preds = %637, %633, %629, %625
  br label %688

642:                                              ; preds = %637
  %643 = load i32, i32* %30, align 4
  %644 = load i32, i32* %34, align 4
  %645 = icmp sge i32 %643, %644
  br i1 %645, label %646, label %648

646:                                              ; preds = %642
  %647 = load i32, i32* %30, align 4
  br label %650

648:                                              ; preds = %642
  %649 = load i32, i32* %34, align 4
  br label %650

650:                                              ; preds = %648, %646
  %651 = phi i32 [ %647, %646 ], [ %649, %648 ]
  store i32 %651, i32* %38, align 4
  %652 = load i32, i32* %31, align 4
  %653 = load i32, i32* %35, align 4
  %654 = icmp sle i32 %652, %653
  br i1 %654, label %655, label %657

655:                                              ; preds = %650
  %656 = load i32, i32* %31, align 4
  br label %659

657:                                              ; preds = %650
  %658 = load i32, i32* %35, align 4
  br label %659

659:                                              ; preds = %657, %655
  %660 = phi i32 [ %656, %655 ], [ %658, %657 ]
  store i32 %660, i32* %39, align 4
  %661 = load i32, i32* %32, align 4
  %662 = load i32, i32* %36, align 4
  %663 = icmp sge i32 %661, %662
  br i1 %663, label %664, label %666

664:                                              ; preds = %659
  %665 = load i32, i32* %32, align 4
  br label %668

666:                                              ; preds = %659
  %667 = load i32, i32* %36, align 4
  br label %668

668:                                              ; preds = %666, %664
  %669 = phi i32 [ %665, %664 ], [ %667, %666 ]
  store i32 %669, i32* %40, align 4
  %670 = load i32, i32* %33, align 4
  %671 = load i32, i32* %37, align 4
  %672 = icmp sle i32 %670, %671
  br i1 %672, label %673, label %675

673:                                              ; preds = %668
  %674 = load i32, i32* %33, align 4
  br label %677

675:                                              ; preds = %668
  %676 = load i32, i32* %37, align 4
  br label %677

677:                                              ; preds = %675, %673
  %678 = phi i32 [ %674, %673 ], [ %676, %675 ]
  store i32 %678, i32* %41, align 4
  %679 = load i32, i32* %41, align 4
  %680 = load i32, i32* %40, align 4
  %681 = sub nsw i32 %679, %680
  %682 = load i32, i32* %39, align 4
  %683 = load i32, i32* %38, align 4
  %684 = sub nsw i32 %682, %683
  %685 = mul nsw i32 %681, %684
  %686 = load i32, i32* %29, align 4
  %687 = add nsw i32 %686, %685
  store i32 %687, i32* %29, align 4
  br label %688

688:                                              ; preds = %677, %641
  %689 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %690 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %689, i32 0, i32 0
  %691 = load %struct.tilebox*, %struct.tilebox** %690, align 8
  store %struct.tilebox* %691, %struct.tilebox** %18, align 8
  br label %577, !llvm.loop !4

692:                                              ; preds = %577
  br label %693

693:                                              ; preds = %692
  %694 = load %struct.tilebox*, %struct.tilebox** %16, align 8
  %695 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %694, i32 0, i32 0
  %696 = load %struct.tilebox*, %struct.tilebox** %695, align 8
  store %struct.tilebox* %696, %struct.tilebox** %16, align 8
  br label %434, !llvm.loop !6

697:                                              ; preds = %434
  %698 = load i32, i32* %29, align 4
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %710

700:                                              ; preds = %697
  %701 = load double, double* @lapFactor, align 8
  %702 = load i32, i32* %29, align 4
  %703 = load i32, i32* @offset, align 4
  %704 = add nsw i32 %702, %703
  %705 = sitofp i32 %704 to double
  %706 = fmul double %701, %705
  %707 = fptosi double %706 to i32
  %708 = load i32, i32* %28, align 4
  %709 = add nsw i32 %708, %707
  store i32 %709, i32* %28, align 4
  br label %710

710:                                              ; preds = %700, %697
  br label %711

711:                                              ; preds = %710, %413
  br label %712

712:                                              ; preds = %711, %367, %286
  %713 = load i32, i32* %46, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %46, align 4
  br label %271, !llvm.loop !7

715:                                              ; preds = %271
  br label %716

716:                                              ; preds = %715, %260
  %717 = load i32, i32* %45, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %45, align 4
  br label %243, !llvm.loop !8

719:                                              ; preds = %243
  br label %720

720:                                              ; preds = %719, %241
  %721 = load i32, i32* %44, align 4
  %722 = add nsw i32 %721, 1
  store i32 %722, i32* %44, align 4
  br label %230, !llvm.loop !9

723:                                              ; preds = %230
  %724 = load i32, i32* %28, align 4
  ret i32 %724
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
!9 = distinct !{!9, !5}
