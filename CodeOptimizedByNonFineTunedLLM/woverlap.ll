; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlap.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlap.c"
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
@numcells = external dso_local global i32, align 4
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@lapFactor = external dso_local global double, align 8
@offset = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @woverlap(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cellbox*, align 8
  %16 = alloca %struct.cellbox*, align 8
  %17 = alloca %struct.tilebox*, align 8
  %18 = alloca %struct.tilebox*, align 8
  %19 = alloca %struct.tilebox*, align 8
  %20 = alloca %struct.tilebox*, align 8
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
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %30, align 4
  %54 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %54, i64 %56
  %58 = load %struct.cellbox*, %struct.cellbox** %57, align 8
  store %struct.cellbox* %58, %struct.cellbox** %15, align 8
  %59 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %60 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %59, i32 0, i32 21
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %60, i64 0, i64 %62
  %64 = load %struct.tilebox*, %struct.tilebox** %63, align 8
  store %struct.tilebox* %64, %struct.tilebox** %19, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %77 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @numcells, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %7
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %24, align 4
  %92 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %93 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %92, i32 0, i32 1
  %94 = load double, double* %93, align 8
  %95 = call i32 @wireestx(i32 noundef %89, i32 noundef %90, i32 noundef %91, double noundef %94)
  %96 = load i32, i32* %21, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %102 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 2
  %103 = load double, double* %102, align 8
  %104 = call i32 @wireestx(i32 noundef %98, i32 noundef %99, i32 noundef %100, double noundef %103)
  %105 = load i32, i32* %22, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %111 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %110, i32 0, i32 3
  %112 = load double, double* %111, align 8
  %113 = call i32 @wireesty(i32 noundef %107, i32 noundef %108, i32 noundef %109, double noundef %112)
  %114 = load i32, i32* %23, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %120 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 4
  %121 = load double, double* %120, align 8
  %122 = call i32 @wireesty(i32 noundef %116, i32 noundef %117, i32 noundef %118, double noundef %121)
  %123 = load i32, i32* %24, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %24, align 4
  br label %125

125:                                              ; preds = %88, %7
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @binOffsetX, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* @binWidthX, align 4
  %130 = sdiv i32 %128, %129
  store i32 %130, i32* %50, align 4
  %131 = load i32, i32* %50, align 4
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 1, i32* %50, align 4
  br label %141

134:                                              ; preds = %125
  %135 = load i32, i32* %50, align 4
  %136 = load i32, i32* @numBinsX, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @numBinsX, align 4
  store i32 %139, i32* %50, align 4
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140, %133
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* @binOffsetX, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* @binWidthX, align 4
  %146 = sdiv i32 %144, %145
  store i32 %146, i32* %51, align 4
  %147 = load i32, i32* %51, align 4
  %148 = load i32, i32* @numBinsX, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @numBinsX, align 4
  store i32 %151, i32* %51, align 4
  br label %157

152:                                              ; preds = %141
  %153 = load i32, i32* %51, align 4
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 1, i32* %51, align 4
  br label %156

156:                                              ; preds = %155, %152
  br label %157

157:                                              ; preds = %156, %150
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* @binOffsetY, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* @binWidthY, align 4
  %162 = sdiv i32 %160, %161
  store i32 %162, i32* %52, align 4
  %163 = load i32, i32* %52, align 4
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  store i32 1, i32* %52, align 4
  br label %173

166:                                              ; preds = %157
  %167 = load i32, i32* %52, align 4
  %168 = load i32, i32* @numBinsY, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @numBinsY, align 4
  store i32 %171, i32* %52, align 4
  br label %172

172:                                              ; preds = %170, %166
  br label %173

173:                                              ; preds = %172, %165
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* @binOffsetY, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* @binWidthY, align 4
  %178 = sdiv i32 %176, %177
  store i32 %178, i32* %53, align 4
  %179 = load i32, i32* %53, align 4
  %180 = load i32, i32* @numBinsY, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = load i32, i32* @numBinsY, align 4
  store i32 %183, i32* %53, align 4
  br label %189

184:                                              ; preds = %173
  %185 = load i32, i32* %53, align 4
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 1, i32* %53, align 4
  br label %188

188:                                              ; preds = %187, %184
  br label %189

189:                                              ; preds = %188, %182
  %190 = load i32, i32* %50, align 4
  %191 = load i32, i32* %51, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %189
  %194 = load i32, i32* %52, align 4
  %195 = load i32, i32* %53, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %50, align 4
  store i32 %198, i32* @binX, align 4
  %199 = load i32, i32* %52, align 4
  store i32 %199, i32* @binY, align 4
  br label %201

200:                                              ; preds = %193, %189
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %201

201:                                              ; preds = %200, %197
  store i32 0, i32* %46, align 4
  br label %202

202:                                              ; preds = %672, %201
  %203 = load i32, i32* %46, align 4
  %204 = load i32, i32* %51, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %675

206:                                              ; preds = %202
  %207 = load i32, i32* %46, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %46, align 4
  %211 = load i32, i32* %50, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %214, label %213

213:                                              ; preds = %209
  br label %672

214:                                              ; preds = %209, %206
  store i32 0, i32* %47, align 4
  br label %215

215:                                              ; preds = %668, %214
  %216 = load i32, i32* %47, align 4
  %217 = load i32, i32* %53, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %671

219:                                              ; preds = %215
  %220 = load i32, i32* %46, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* %47, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %46, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i32, i32* %47, align 4
  %230 = load i32, i32* %52, align 4
  %231 = icmp sge i32 %229, %230
  br i1 %231, label %233, label %232

232:                                              ; preds = %228, %225
  br label %668

233:                                              ; preds = %228, %222
  %234 = load i32***, i32**** @blockarray, align 8
  %235 = load i32, i32* %46, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32**, i32*** %234, i64 %236
  %238 = load i32**, i32*** %237, align 8
  %239 = load i32, i32* %47, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  store i32* %242, i32** %49, align 8
  store i32 1, i32* %48, align 4
  br label %243

243:                                              ; preds = %664, %233
  %244 = load i32, i32* %48, align 4
  %245 = load i32*, i32** %49, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp sle i32 %244, %247
  br i1 %248, label %249, label %667

249:                                              ; preds = %243
  %250 = load i32*, i32** %49, align 8
  %251 = load i32, i32* %48, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %25, align 4
  %255 = load i32, i32* %25, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %249
  br label %664

259:                                              ; preds = %249
  %260 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %261 = load i32, i32* %25, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %260, i64 %262
  %264 = load %struct.cellbox*, %struct.cellbox** %263, align 8
  store %struct.cellbox* %264, %struct.cellbox** %16, align 8
  %265 = load i32, i32* %25, align 4
  %266 = load i32, i32* %12, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %283

268:                                              ; preds = %259
  %269 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %270 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %269, i32 0, i32 21
  %271 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %272 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %270, i64 0, i64 %274
  %276 = load %struct.tilebox*, %struct.tilebox** %275, align 8
  store %struct.tilebox* %276, %struct.tilebox** %20, align 8
  %277 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %278 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %44, align 4
  %280 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %281 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %45, align 4
  br label %301

283:                                              ; preds = %259
  %284 = load i32, i32* %13, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %283
  %287 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %288 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %287, i32 0, i32 21
  %289 = load i32, i32* %14, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %288, i64 0, i64 %290
  %292 = load %struct.tilebox*, %struct.tilebox** %291, align 8
  store %struct.tilebox* %292, %struct.tilebox** %20, align 8
  %293 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %294 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %44, align 4
  %296 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %297 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  store i32 %298, i32* %45, align 4
  br label %300

299:                                              ; preds = %283
  br label %664

300:                                              ; preds = %286
  br label %301

301:                                              ; preds = %300, %268
  %302 = load i32, i32* %44, align 4
  %303 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %304 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %303, i32 0, i32 9
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %302, %305
  store i32 %306, i32* %26, align 4
  %307 = load i32, i32* %44, align 4
  %308 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %309 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %308, i32 0, i32 10
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %307, %310
  store i32 %311, i32* %27, align 4
  %312 = load i32, i32* %45, align 4
  %313 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %314 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %313, i32 0, i32 11
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %312, %315
  store i32 %316, i32* %28, align 4
  %317 = load i32, i32* %45, align 4
  %318 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %319 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %318, i32 0, i32 12
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %317, %320
  store i32 %321, i32* %29, align 4
  %322 = load i32, i32* %25, align 4
  %323 = load i32, i32* @numcells, align 4
  %324 = icmp sle i32 %322, %323
  br i1 %324, label %325, label %362

325:                                              ; preds = %301
  %326 = load i32, i32* %26, align 4
  %327 = load i32, i32* %28, align 4
  %328 = load i32, i32* %29, align 4
  %329 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %330 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %329, i32 0, i32 1
  %331 = load double, double* %330, align 8
  %332 = call i32 @wireestx(i32 noundef %326, i32 noundef %327, i32 noundef %328, double noundef %331)
  %333 = load i32, i32* %26, align 4
  %334 = sub nsw i32 %333, %332
  store i32 %334, i32* %26, align 4
  %335 = load i32, i32* %27, align 4
  %336 = load i32, i32* %28, align 4
  %337 = load i32, i32* %29, align 4
  %338 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %339 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %338, i32 0, i32 2
  %340 = load double, double* %339, align 8
  %341 = call i32 @wireestx(i32 noundef %335, i32 noundef %336, i32 noundef %337, double noundef %340)
  %342 = load i32, i32* %27, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %27, align 4
  %344 = load i32, i32* %28, align 4
  %345 = load i32, i32* %26, align 4
  %346 = load i32, i32* %27, align 4
  %347 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %348 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %347, i32 0, i32 3
  %349 = load double, double* %348, align 8
  %350 = call i32 @wireesty(i32 noundef %344, i32 noundef %345, i32 noundef %346, double noundef %349)
  %351 = load i32, i32* %28, align 4
  %352 = sub nsw i32 %351, %350
  store i32 %352, i32* %28, align 4
  %353 = load i32, i32* %29, align 4
  %354 = load i32, i32* %26, align 4
  %355 = load i32, i32* %27, align 4
  %356 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %357 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %356, i32 0, i32 4
  %358 = load double, double* %357, align 8
  %359 = call i32 @wireesty(i32 noundef %353, i32 noundef %354, i32 noundef %355, double noundef %358)
  %360 = load i32, i32* %29, align 4
  %361 = add nsw i32 %360, %359
  store i32 %361, i32* %29, align 4
  br label %362

362:                                              ; preds = %325, %301
  %363 = load i32, i32* %26, align 4
  %364 = load i32, i32* %22, align 4
  %365 = icmp sge i32 %363, %364
  br i1 %365, label %378, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* %21, align 4
  %368 = load i32, i32* %27, align 4
  %369 = icmp sge i32 %367, %368
  br i1 %369, label %378, label %370

370:                                              ; preds = %366
  %371 = load i32, i32* %28, align 4
  %372 = load i32, i32* %24, align 4
  %373 = icmp sge i32 %371, %372
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = load i32, i32* %23, align 4
  %376 = load i32, i32* %29, align 4
  %377 = icmp sge i32 %375, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %374, %370, %366, %362
  br label %664

379:                                              ; preds = %374
  %380 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %381 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 4
  %383 = icmp eq i32 %382, 1
  br i1 %383, label %384, label %441

384:                                              ; preds = %379
  %385 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %386 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %385, i32 0, i32 6
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %441

389:                                              ; preds = %384
  %390 = load i32, i32* %21, align 4
  %391 = load i32, i32* %26, align 4
  %392 = icmp sge i32 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = load i32, i32* %21, align 4
  br label %397

395:                                              ; preds = %389
  %396 = load i32, i32* %26, align 4
  br label %397

397:                                              ; preds = %395, %393
  %398 = phi i32 [ %394, %393 ], [ %396, %395 ]
  store i32 %398, i32* %40, align 4
  %399 = load i32, i32* %22, align 4
  %400 = load i32, i32* %27, align 4
  %401 = icmp sle i32 %399, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %397
  %403 = load i32, i32* %22, align 4
  br label %406

404:                                              ; preds = %397
  %405 = load i32, i32* %27, align 4
  br label %406

406:                                              ; preds = %404, %402
  %407 = phi i32 [ %403, %402 ], [ %405, %404 ]
  store i32 %407, i32* %41, align 4
  %408 = load i32, i32* %23, align 4
  %409 = load i32, i32* %28, align 4
  %410 = icmp sge i32 %408, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %406
  %412 = load i32, i32* %23, align 4
  br label %415

413:                                              ; preds = %406
  %414 = load i32, i32* %28, align 4
  br label %415

415:                                              ; preds = %413, %411
  %416 = phi i32 [ %412, %411 ], [ %414, %413 ]
  store i32 %416, i32* %42, align 4
  %417 = load i32, i32* %24, align 4
  %418 = load i32, i32* %29, align 4
  %419 = icmp sle i32 %417, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %415
  %421 = load i32, i32* %24, align 4
  br label %424

422:                                              ; preds = %415
  %423 = load i32, i32* %29, align 4
  br label %424

424:                                              ; preds = %422, %420
  %425 = phi i32 [ %421, %420 ], [ %423, %422 ]
  store i32 %425, i32* %43, align 4
  %426 = load double, double* @lapFactor, align 8
  %427 = load i32, i32* %43, align 4
  %428 = load i32, i32* %42, align 4
  %429 = sub nsw i32 %427, %428
  %430 = load i32, i32* %41, align 4
  %431 = load i32, i32* %40, align 4
  %432 = sub nsw i32 %430, %431
  %433 = mul nsw i32 %429, %432
  %434 = load i32, i32* @offset, align 4
  %435 = add nsw i32 %433, %434
  %436 = sitofp i32 %435 to double
  %437 = fmul double %426, %436
  %438 = fptosi double %437 to i32
  %439 = load i32, i32* %30, align 4
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* %30, align 4
  br label %663

441:                                              ; preds = %384, %379
  store i32 0, i32* %31, align 4
  %442 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %443 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %442, i32 0, i32 0
  %444 = load %struct.tilebox*, %struct.tilebox** %443, align 8
  store %struct.tilebox* %444, %struct.tilebox** %17, align 8
  br label %445

445:                                              ; preds = %645, %441
  %446 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %447 = icmp ne %struct.tilebox* %446, null
  br i1 %447, label %448, label %649

448:                                              ; preds = %445
  %449 = load i32, i32* %9, align 4
  %450 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %451 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %450, i32 0, i32 9
  %452 = load i32, i32* %451, align 8
  %453 = add nsw i32 %449, %452
  store i32 %453, i32* %32, align 4
  %454 = load i32, i32* %9, align 4
  %455 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %456 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %455, i32 0, i32 10
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %454, %457
  store i32 %458, i32* %33, align 4
  %459 = load i32, i32* %10, align 4
  %460 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %461 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %460, i32 0, i32 11
  %462 = load i32, i32* %461, align 8
  %463 = add nsw i32 %459, %462
  store i32 %463, i32* %34, align 4
  %464 = load i32, i32* %10, align 4
  %465 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %466 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %465, i32 0, i32 12
  %467 = load i32, i32* %466, align 4
  %468 = add nsw i32 %464, %467
  store i32 %468, i32* %35, align 4
  %469 = load i32, i32* %8, align 4
  %470 = load i32, i32* @numcells, align 4
  %471 = icmp sle i32 %469, %470
  br i1 %471, label %472, label %509

472:                                              ; preds = %448
  %473 = load i32, i32* %32, align 4
  %474 = load i32, i32* %34, align 4
  %475 = load i32, i32* %35, align 4
  %476 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %477 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %476, i32 0, i32 1
  %478 = load double, double* %477, align 8
  %479 = call i32 @wireestx(i32 noundef %473, i32 noundef %474, i32 noundef %475, double noundef %478)
  %480 = load i32, i32* %32, align 4
  %481 = sub nsw i32 %480, %479
  store i32 %481, i32* %32, align 4
  %482 = load i32, i32* %33, align 4
  %483 = load i32, i32* %34, align 4
  %484 = load i32, i32* %35, align 4
  %485 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %486 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %485, i32 0, i32 2
  %487 = load double, double* %486, align 8
  %488 = call i32 @wireestx(i32 noundef %482, i32 noundef %483, i32 noundef %484, double noundef %487)
  %489 = load i32, i32* %33, align 4
  %490 = add nsw i32 %489, %488
  store i32 %490, i32* %33, align 4
  %491 = load i32, i32* %34, align 4
  %492 = load i32, i32* %32, align 4
  %493 = load i32, i32* %33, align 4
  %494 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %495 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %494, i32 0, i32 3
  %496 = load double, double* %495, align 8
  %497 = call i32 @wireesty(i32 noundef %491, i32 noundef %492, i32 noundef %493, double noundef %496)
  %498 = load i32, i32* %34, align 4
  %499 = sub nsw i32 %498, %497
  store i32 %499, i32* %34, align 4
  %500 = load i32, i32* %35, align 4
  %501 = load i32, i32* %32, align 4
  %502 = load i32, i32* %33, align 4
  %503 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %504 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %503, i32 0, i32 4
  %505 = load double, double* %504, align 8
  %506 = call i32 @wireesty(i32 noundef %500, i32 noundef %501, i32 noundef %502, double noundef %505)
  %507 = load i32, i32* %35, align 4
  %508 = add nsw i32 %507, %506
  store i32 %508, i32* %35, align 4
  br label %509

509:                                              ; preds = %472, %448
  %510 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %511 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %510, i32 0, i32 0
  %512 = load %struct.tilebox*, %struct.tilebox** %511, align 8
  store %struct.tilebox* %512, %struct.tilebox** %18, align 8
  br label %513

513:                                              ; preds = %640, %509
  %514 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %515 = icmp ne %struct.tilebox* %514, null
  br i1 %515, label %516, label %644

516:                                              ; preds = %513
  %517 = load i32, i32* %44, align 4
  %518 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %519 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %518, i32 0, i32 9
  %520 = load i32, i32* %519, align 8
  %521 = add nsw i32 %517, %520
  store i32 %521, i32* %36, align 4
  %522 = load i32, i32* %44, align 4
  %523 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %524 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %523, i32 0, i32 10
  %525 = load i32, i32* %524, align 4
  %526 = add nsw i32 %522, %525
  store i32 %526, i32* %37, align 4
  %527 = load i32, i32* %45, align 4
  %528 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %529 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %528, i32 0, i32 11
  %530 = load i32, i32* %529, align 8
  %531 = add nsw i32 %527, %530
  store i32 %531, i32* %38, align 4
  %532 = load i32, i32* %45, align 4
  %533 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %534 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %533, i32 0, i32 12
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %532, %535
  store i32 %536, i32* %39, align 4
  %537 = load i32, i32* %25, align 4
  %538 = load i32, i32* @numcells, align 4
  %539 = icmp sle i32 %537, %538
  br i1 %539, label %540, label %577

540:                                              ; preds = %516
  %541 = load i32, i32* %36, align 4
  %542 = load i32, i32* %38, align 4
  %543 = load i32, i32* %39, align 4
  %544 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %545 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %544, i32 0, i32 1
  %546 = load double, double* %545, align 8
  %547 = call i32 @wireestx(i32 noundef %541, i32 noundef %542, i32 noundef %543, double noundef %546)
  %548 = load i32, i32* %36, align 4
  %549 = sub nsw i32 %548, %547
  store i32 %549, i32* %36, align 4
  %550 = load i32, i32* %37, align 4
  %551 = load i32, i32* %38, align 4
  %552 = load i32, i32* %39, align 4
  %553 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %554 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %553, i32 0, i32 2
  %555 = load double, double* %554, align 8
  %556 = call i32 @wireestx(i32 noundef %550, i32 noundef %551, i32 noundef %552, double noundef %555)
  %557 = load i32, i32* %37, align 4
  %558 = add nsw i32 %557, %556
  store i32 %558, i32* %37, align 4
  %559 = load i32, i32* %38, align 4
  %560 = load i32, i32* %36, align 4
  %561 = load i32, i32* %37, align 4
  %562 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %563 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %562, i32 0, i32 3
  %564 = load double, double* %563, align 8
  %565 = call i32 @wireesty(i32 noundef %559, i32 noundef %560, i32 noundef %561, double noundef %564)
  %566 = load i32, i32* %38, align 4
  %567 = sub nsw i32 %566, %565
  store i32 %567, i32* %38, align 4
  %568 = load i32, i32* %39, align 4
  %569 = load i32, i32* %36, align 4
  %570 = load i32, i32* %37, align 4
  %571 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %572 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %571, i32 0, i32 4
  %573 = load double, double* %572, align 8
  %574 = call i32 @wireesty(i32 noundef %568, i32 noundef %569, i32 noundef %570, double noundef %573)
  %575 = load i32, i32* %39, align 4
  %576 = add nsw i32 %575, %574
  store i32 %576, i32* %39, align 4
  br label %577

577:                                              ; preds = %540, %516
  %578 = load i32, i32* %36, align 4
  %579 = load i32, i32* %33, align 4
  %580 = icmp sge i32 %578, %579
  br i1 %580, label %593, label %581

581:                                              ; preds = %577
  %582 = load i32, i32* %32, align 4
  %583 = load i32, i32* %37, align 4
  %584 = icmp sge i32 %582, %583
  br i1 %584, label %593, label %585

585:                                              ; preds = %581
  %586 = load i32, i32* %38, align 4
  %587 = load i32, i32* %35, align 4
  %588 = icmp sge i32 %586, %587
  br i1 %588, label %593, label %589

589:                                              ; preds = %585
  %590 = load i32, i32* %34, align 4
  %591 = load i32, i32* %39, align 4
  %592 = icmp sge i32 %590, %591
  br i1 %592, label %593, label %594

593:                                              ; preds = %589, %585, %581, %577
  br label %640

594:                                              ; preds = %589
  %595 = load i32, i32* %32, align 4
  %596 = load i32, i32* %36, align 4
  %597 = icmp sge i32 %595, %596
  br i1 %597, label %598, label %600

598:                                              ; preds = %594
  %599 = load i32, i32* %32, align 4
  br label %602

600:                                              ; preds = %594
  %601 = load i32, i32* %36, align 4
  br label %602

602:                                              ; preds = %600, %598
  %603 = phi i32 [ %599, %598 ], [ %601, %600 ]
  store i32 %603, i32* %40, align 4
  %604 = load i32, i32* %33, align 4
  %605 = load i32, i32* %37, align 4
  %606 = icmp sle i32 %604, %605
  br i1 %606, label %607, label %609

607:                                              ; preds = %602
  %608 = load i32, i32* %33, align 4
  br label %611

609:                                              ; preds = %602
  %610 = load i32, i32* %37, align 4
  br label %611

611:                                              ; preds = %609, %607
  %612 = phi i32 [ %608, %607 ], [ %610, %609 ]
  store i32 %612, i32* %41, align 4
  %613 = load i32, i32* %34, align 4
  %614 = load i32, i32* %38, align 4
  %615 = icmp sge i32 %613, %614
  br i1 %615, label %616, label %618

616:                                              ; preds = %611
  %617 = load i32, i32* %34, align 4
  br label %620

618:                                              ; preds = %611
  %619 = load i32, i32* %38, align 4
  br label %620

620:                                              ; preds = %618, %616
  %621 = phi i32 [ %617, %616 ], [ %619, %618 ]
  store i32 %621, i32* %42, align 4
  %622 = load i32, i32* %35, align 4
  %623 = load i32, i32* %39, align 4
  %624 = icmp sle i32 %622, %623
  br i1 %624, label %625, label %627

625:                                              ; preds = %620
  %626 = load i32, i32* %35, align 4
  br label %629

627:                                              ; preds = %620
  %628 = load i32, i32* %39, align 4
  br label %629

629:                                              ; preds = %627, %625
  %630 = phi i32 [ %626, %625 ], [ %628, %627 ]
  store i32 %630, i32* %43, align 4
  %631 = load i32, i32* %43, align 4
  %632 = load i32, i32* %42, align 4
  %633 = sub nsw i32 %631, %632
  %634 = load i32, i32* %41, align 4
  %635 = load i32, i32* %40, align 4
  %636 = sub nsw i32 %634, %635
  %637 = mul nsw i32 %633, %636
  %638 = load i32, i32* %31, align 4
  %639 = add nsw i32 %638, %637
  store i32 %639, i32* %31, align 4
  br label %640

640:                                              ; preds = %629, %593
  %641 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %642 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %641, i32 0, i32 0
  %643 = load %struct.tilebox*, %struct.tilebox** %642, align 8
  store %struct.tilebox* %643, %struct.tilebox** %18, align 8
  br label %513, !llvm.loop !4

644:                                              ; preds = %513
  br label %645

645:                                              ; preds = %644
  %646 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %647 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %646, i32 0, i32 0
  %648 = load %struct.tilebox*, %struct.tilebox** %647, align 8
  store %struct.tilebox* %648, %struct.tilebox** %17, align 8
  br label %445, !llvm.loop !6

649:                                              ; preds = %445
  %650 = load i32, i32* %31, align 4
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %662

652:                                              ; preds = %649
  %653 = load double, double* @lapFactor, align 8
  %654 = load i32, i32* %31, align 4
  %655 = load i32, i32* @offset, align 4
  %656 = add nsw i32 %654, %655
  %657 = sitofp i32 %656 to double
  %658 = fmul double %653, %657
  %659 = fptosi double %658 to i32
  %660 = load i32, i32* %30, align 4
  %661 = add nsw i32 %660, %659
  store i32 %661, i32* %30, align 4
  br label %662

662:                                              ; preds = %652, %649
  br label %663

663:                                              ; preds = %662, %424
  br label %664

664:                                              ; preds = %663, %378, %299, %258
  %665 = load i32, i32* %48, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %48, align 4
  br label %243, !llvm.loop !7

667:                                              ; preds = %243
  br label %668

668:                                              ; preds = %667, %232
  %669 = load i32, i32* %47, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %47, align 4
  br label %215, !llvm.loop !8

671:                                              ; preds = %215
  br label %672

672:                                              ; preds = %671, %213
  %673 = load i32, i32* %46, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %46, align 4
  br label %202, !llvm.loop !9

675:                                              ; preds = %202
  %676 = load i32, i32* %30, align 4
  ret i32 %676
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
