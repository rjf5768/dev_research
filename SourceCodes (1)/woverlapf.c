; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlapf.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlapf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

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
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [37 x i8] c"Overlap condition: cell1:%d cell2:%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"   value:%d   amount:%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @woverlapf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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

202:                                              ; preds = %712, %201
  %203 = load i32, i32* %46, align 4
  %204 = load i32, i32* %51, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %715

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
  br label %712

214:                                              ; preds = %209, %206
  store i32 0, i32* %47, align 4
  br label %215

215:                                              ; preds = %708, %214
  %216 = load i32, i32* %47, align 4
  %217 = load i32, i32* %53, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %711

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
  br label %708

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

243:                                              ; preds = %704, %233
  %244 = load i32, i32* %48, align 4
  %245 = load i32*, i32** %49, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp sle i32 %244, %247
  br i1 %248, label %249, label %707

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
  br label %704

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
  br label %704

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
  br label %704

379:                                              ; preds = %374
  %380 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %381 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 4
  %383 = icmp eq i32 %382, 1
  br i1 %383, label %384, label %467

384:                                              ; preds = %379
  %385 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %386 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %385, i32 0, i32 6
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %467

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
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %442 = load i32, i32* %8, align 4
  %443 = load i32, i32* %25, align 4
  %444 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %441, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %442, i32 noundef %443)
  %445 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %446 = load double, double* @lapFactor, align 8
  %447 = load i32, i32* %43, align 4
  %448 = load i32, i32* %42, align 4
  %449 = sub nsw i32 %447, %448
  %450 = load i32, i32* %41, align 4
  %451 = load i32, i32* %40, align 4
  %452 = sub nsw i32 %450, %451
  %453 = mul nsw i32 %449, %452
  %454 = load i32, i32* @offset, align 4
  %455 = add nsw i32 %453, %454
  %456 = sitofp i32 %455 to double
  %457 = fmul double %446, %456
  %458 = fptosi double %457 to i32
  %459 = load i32, i32* %43, align 4
  %460 = load i32, i32* %42, align 4
  %461 = sub nsw i32 %459, %460
  %462 = load i32, i32* %41, align 4
  %463 = load i32, i32* %40, align 4
  %464 = sub nsw i32 %462, %463
  %465 = mul nsw i32 %461, %464
  %466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %445, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %458, i32 noundef %465)
  br label %703

467:                                              ; preds = %384, %379
  store i32 0, i32* %31, align 4
  %468 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %469 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %468, i32 0, i32 0
  %470 = load %struct.tilebox*, %struct.tilebox** %469, align 8
  store %struct.tilebox* %470, %struct.tilebox** %17, align 8
  br label %471

471:                                              ; preds = %671, %467
  %472 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %473 = icmp ne %struct.tilebox* %472, null
  br i1 %473, label %474, label %675

474:                                              ; preds = %471
  %475 = load i32, i32* %9, align 4
  %476 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %477 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %476, i32 0, i32 9
  %478 = load i32, i32* %477, align 8
  %479 = add nsw i32 %475, %478
  store i32 %479, i32* %32, align 4
  %480 = load i32, i32* %9, align 4
  %481 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %482 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %481, i32 0, i32 10
  %483 = load i32, i32* %482, align 4
  %484 = add nsw i32 %480, %483
  store i32 %484, i32* %33, align 4
  %485 = load i32, i32* %10, align 4
  %486 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %487 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %486, i32 0, i32 11
  %488 = load i32, i32* %487, align 8
  %489 = add nsw i32 %485, %488
  store i32 %489, i32* %34, align 4
  %490 = load i32, i32* %10, align 4
  %491 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %492 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %491, i32 0, i32 12
  %493 = load i32, i32* %492, align 4
  %494 = add nsw i32 %490, %493
  store i32 %494, i32* %35, align 4
  %495 = load i32, i32* %8, align 4
  %496 = load i32, i32* @numcells, align 4
  %497 = icmp sle i32 %495, %496
  br i1 %497, label %498, label %535

498:                                              ; preds = %474
  %499 = load i32, i32* %32, align 4
  %500 = load i32, i32* %34, align 4
  %501 = load i32, i32* %35, align 4
  %502 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %503 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %502, i32 0, i32 1
  %504 = load double, double* %503, align 8
  %505 = call i32 @wireestx(i32 noundef %499, i32 noundef %500, i32 noundef %501, double noundef %504)
  %506 = load i32, i32* %32, align 4
  %507 = sub nsw i32 %506, %505
  store i32 %507, i32* %32, align 4
  %508 = load i32, i32* %33, align 4
  %509 = load i32, i32* %34, align 4
  %510 = load i32, i32* %35, align 4
  %511 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %512 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %511, i32 0, i32 2
  %513 = load double, double* %512, align 8
  %514 = call i32 @wireestx(i32 noundef %508, i32 noundef %509, i32 noundef %510, double noundef %513)
  %515 = load i32, i32* %33, align 4
  %516 = add nsw i32 %515, %514
  store i32 %516, i32* %33, align 4
  %517 = load i32, i32* %34, align 4
  %518 = load i32, i32* %32, align 4
  %519 = load i32, i32* %33, align 4
  %520 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %521 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %520, i32 0, i32 3
  %522 = load double, double* %521, align 8
  %523 = call i32 @wireesty(i32 noundef %517, i32 noundef %518, i32 noundef %519, double noundef %522)
  %524 = load i32, i32* %34, align 4
  %525 = sub nsw i32 %524, %523
  store i32 %525, i32* %34, align 4
  %526 = load i32, i32* %35, align 4
  %527 = load i32, i32* %32, align 4
  %528 = load i32, i32* %33, align 4
  %529 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %530 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %529, i32 0, i32 4
  %531 = load double, double* %530, align 8
  %532 = call i32 @wireesty(i32 noundef %526, i32 noundef %527, i32 noundef %528, double noundef %531)
  %533 = load i32, i32* %35, align 4
  %534 = add nsw i32 %533, %532
  store i32 %534, i32* %35, align 4
  br label %535

535:                                              ; preds = %498, %474
  %536 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %537 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %536, i32 0, i32 0
  %538 = load %struct.tilebox*, %struct.tilebox** %537, align 8
  store %struct.tilebox* %538, %struct.tilebox** %18, align 8
  br label %539

539:                                              ; preds = %666, %535
  %540 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %541 = icmp ne %struct.tilebox* %540, null
  br i1 %541, label %542, label %670

542:                                              ; preds = %539
  %543 = load i32, i32* %44, align 4
  %544 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %545 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %544, i32 0, i32 9
  %546 = load i32, i32* %545, align 8
  %547 = add nsw i32 %543, %546
  store i32 %547, i32* %36, align 4
  %548 = load i32, i32* %44, align 4
  %549 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %550 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %549, i32 0, i32 10
  %551 = load i32, i32* %550, align 4
  %552 = add nsw i32 %548, %551
  store i32 %552, i32* %37, align 4
  %553 = load i32, i32* %45, align 4
  %554 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %555 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %554, i32 0, i32 11
  %556 = load i32, i32* %555, align 8
  %557 = add nsw i32 %553, %556
  store i32 %557, i32* %38, align 4
  %558 = load i32, i32* %45, align 4
  %559 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %560 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %559, i32 0, i32 12
  %561 = load i32, i32* %560, align 4
  %562 = add nsw i32 %558, %561
  store i32 %562, i32* %39, align 4
  %563 = load i32, i32* %25, align 4
  %564 = load i32, i32* @numcells, align 4
  %565 = icmp sle i32 %563, %564
  br i1 %565, label %566, label %603

566:                                              ; preds = %542
  %567 = load i32, i32* %36, align 4
  %568 = load i32, i32* %38, align 4
  %569 = load i32, i32* %39, align 4
  %570 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %571 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %570, i32 0, i32 1
  %572 = load double, double* %571, align 8
  %573 = call i32 @wireestx(i32 noundef %567, i32 noundef %568, i32 noundef %569, double noundef %572)
  %574 = load i32, i32* %36, align 4
  %575 = sub nsw i32 %574, %573
  store i32 %575, i32* %36, align 4
  %576 = load i32, i32* %37, align 4
  %577 = load i32, i32* %38, align 4
  %578 = load i32, i32* %39, align 4
  %579 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %580 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %579, i32 0, i32 2
  %581 = load double, double* %580, align 8
  %582 = call i32 @wireestx(i32 noundef %576, i32 noundef %577, i32 noundef %578, double noundef %581)
  %583 = load i32, i32* %37, align 4
  %584 = add nsw i32 %583, %582
  store i32 %584, i32* %37, align 4
  %585 = load i32, i32* %38, align 4
  %586 = load i32, i32* %36, align 4
  %587 = load i32, i32* %37, align 4
  %588 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %589 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %588, i32 0, i32 3
  %590 = load double, double* %589, align 8
  %591 = call i32 @wireesty(i32 noundef %585, i32 noundef %586, i32 noundef %587, double noundef %590)
  %592 = load i32, i32* %38, align 4
  %593 = sub nsw i32 %592, %591
  store i32 %593, i32* %38, align 4
  %594 = load i32, i32* %39, align 4
  %595 = load i32, i32* %36, align 4
  %596 = load i32, i32* %37, align 4
  %597 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %598 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %597, i32 0, i32 4
  %599 = load double, double* %598, align 8
  %600 = call i32 @wireesty(i32 noundef %594, i32 noundef %595, i32 noundef %596, double noundef %599)
  %601 = load i32, i32* %39, align 4
  %602 = add nsw i32 %601, %600
  store i32 %602, i32* %39, align 4
  br label %603

603:                                              ; preds = %566, %542
  %604 = load i32, i32* %36, align 4
  %605 = load i32, i32* %33, align 4
  %606 = icmp sge i32 %604, %605
  br i1 %606, label %619, label %607

607:                                              ; preds = %603
  %608 = load i32, i32* %32, align 4
  %609 = load i32, i32* %37, align 4
  %610 = icmp sge i32 %608, %609
  br i1 %610, label %619, label %611

611:                                              ; preds = %607
  %612 = load i32, i32* %38, align 4
  %613 = load i32, i32* %35, align 4
  %614 = icmp sge i32 %612, %613
  br i1 %614, label %619, label %615

615:                                              ; preds = %611
  %616 = load i32, i32* %34, align 4
  %617 = load i32, i32* %39, align 4
  %618 = icmp sge i32 %616, %617
  br i1 %618, label %619, label %620

619:                                              ; preds = %615, %611, %607, %603
  br label %666

620:                                              ; preds = %615
  %621 = load i32, i32* %32, align 4
  %622 = load i32, i32* %36, align 4
  %623 = icmp sge i32 %621, %622
  br i1 %623, label %624, label %626

624:                                              ; preds = %620
  %625 = load i32, i32* %32, align 4
  br label %628

626:                                              ; preds = %620
  %627 = load i32, i32* %36, align 4
  br label %628

628:                                              ; preds = %626, %624
  %629 = phi i32 [ %625, %624 ], [ %627, %626 ]
  store i32 %629, i32* %40, align 4
  %630 = load i32, i32* %33, align 4
  %631 = load i32, i32* %37, align 4
  %632 = icmp sle i32 %630, %631
  br i1 %632, label %633, label %635

633:                                              ; preds = %628
  %634 = load i32, i32* %33, align 4
  br label %637

635:                                              ; preds = %628
  %636 = load i32, i32* %37, align 4
  br label %637

637:                                              ; preds = %635, %633
  %638 = phi i32 [ %634, %633 ], [ %636, %635 ]
  store i32 %638, i32* %41, align 4
  %639 = load i32, i32* %34, align 4
  %640 = load i32, i32* %38, align 4
  %641 = icmp sge i32 %639, %640
  br i1 %641, label %642, label %644

642:                                              ; preds = %637
  %643 = load i32, i32* %34, align 4
  br label %646

644:                                              ; preds = %637
  %645 = load i32, i32* %38, align 4
  br label %646

646:                                              ; preds = %644, %642
  %647 = phi i32 [ %643, %642 ], [ %645, %644 ]
  store i32 %647, i32* %42, align 4
  %648 = load i32, i32* %35, align 4
  %649 = load i32, i32* %39, align 4
  %650 = icmp sle i32 %648, %649
  br i1 %650, label %651, label %653

651:                                              ; preds = %646
  %652 = load i32, i32* %35, align 4
  br label %655

653:                                              ; preds = %646
  %654 = load i32, i32* %39, align 4
  br label %655

655:                                              ; preds = %653, %651
  %656 = phi i32 [ %652, %651 ], [ %654, %653 ]
  store i32 %656, i32* %43, align 4
  %657 = load i32, i32* %43, align 4
  %658 = load i32, i32* %42, align 4
  %659 = sub nsw i32 %657, %658
  %660 = load i32, i32* %41, align 4
  %661 = load i32, i32* %40, align 4
  %662 = sub nsw i32 %660, %661
  %663 = mul nsw i32 %659, %662
  %664 = load i32, i32* %31, align 4
  %665 = add nsw i32 %664, %663
  store i32 %665, i32* %31, align 4
  br label %666

666:                                              ; preds = %655, %619
  %667 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %668 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %667, i32 0, i32 0
  %669 = load %struct.tilebox*, %struct.tilebox** %668, align 8
  store %struct.tilebox* %669, %struct.tilebox** %18, align 8
  br label %539, !llvm.loop !4

670:                                              ; preds = %539
  br label %671

671:                                              ; preds = %670
  %672 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %673 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %672, i32 0, i32 0
  %674 = load %struct.tilebox*, %struct.tilebox** %673, align 8
  store %struct.tilebox* %674, %struct.tilebox** %17, align 8
  br label %471, !llvm.loop !6

675:                                              ; preds = %471
  %676 = load i32, i32* %31, align 4
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %702

678:                                              ; preds = %675
  %679 = load double, double* @lapFactor, align 8
  %680 = load i32, i32* %31, align 4
  %681 = load i32, i32* @offset, align 4
  %682 = add nsw i32 %680, %681
  %683 = sitofp i32 %682 to double
  %684 = fmul double %679, %683
  %685 = fptosi double %684 to i32
  %686 = load i32, i32* %30, align 4
  %687 = add nsw i32 %686, %685
  store i32 %687, i32* %30, align 4
  %688 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %689 = load i32, i32* %8, align 4
  %690 = load i32, i32* %25, align 4
  %691 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %688, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %689, i32 noundef %690)
  %692 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %693 = load double, double* @lapFactor, align 8
  %694 = load i32, i32* %31, align 4
  %695 = load i32, i32* @offset, align 4
  %696 = add nsw i32 %694, %695
  %697 = sitofp i32 %696 to double
  %698 = fmul double %693, %697
  %699 = fptosi double %698 to i32
  %700 = load i32, i32* %31, align 4
  %701 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %692, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %699, i32 noundef %700)
  br label %702

702:                                              ; preds = %678, %675
  br label %703

703:                                              ; preds = %702, %424
  br label %704

704:                                              ; preds = %703, %378, %299, %258
  %705 = load i32, i32* %48, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %48, align 4
  br label %243, !llvm.loop !7

707:                                              ; preds = %243
  br label %708

708:                                              ; preds = %707, %232
  %709 = load i32, i32* %47, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %47, align 4
  br label %215, !llvm.loop !8

711:                                              ; preds = %215
  br label %712

712:                                              ; preds = %711, %213
  %713 = load i32, i32* %46, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %46, align 4
  br label %202, !llvm.loop !9

715:                                              ; preds = %202
  %716 = load i32, i32* %30, align 4
  ret i32 %716
}

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

declare dso_local i32 @wireesty(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
