; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makebins.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makebins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numBinsX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"numBinsX automatically set to:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"numBinsY automatically set to:%d\0A\00", align 1
@blockarray = external dso_local global i32***, align 8
@numcells = external dso_local global i32, align 4
@bucket = external dso_local global i32*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @makebins(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sitofp i32 %24 to double
  store double %25, double* %5, align 8
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %65, %1
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 19
  br i1 %28, label %29, label %68

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 99
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = sitofp i32 %34 to double
  %36 = load i32, i32* %6, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+02
  %39 = fadd double %35, %38
  store double %39, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = call double @pow(double noundef %40, double noundef 4.000000e+00) #4
  %42 = load double, double* %5, align 8
  %43 = call double @sqrt(double noundef %42) #4
  %44 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %43, double 2.000000e+00)
  %45 = load double, double* %3, align 8
  %46 = call double @pow(double noundef %45, double noundef 3.000000e+00) #4
  %47 = fneg double %44
  %48 = call double @llvm.fmuladd.f64(double %47, double %46, double %41)
  %49 = load double, double* %5, align 8
  %50 = call double @sqrt(double noundef %49) #4
  %51 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %50, double 1.000000e+00)
  %52 = load double, double* %3, align 8
  %53 = call double @pow(double noundef %52, double noundef 2.000000e+00) #4
  %54 = call double @llvm.fmuladd.f64(double %51, double %53, double %48)
  %55 = load double, double* %5, align 8
  %56 = fadd double %54, %55
  store double %56, double* %4, align 8
  %57 = load double, double* %4, align 8
  %58 = fcmp olt double %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %33
  store i32 20, i32* %7, align 4
  br label %64

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %30, !llvm.loop !4

64:                                               ; preds = %59, %30
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %26, !llvm.loop !6

68:                                               ; preds = %26
  %69 = load double, double* %3, align 8
  %70 = fptosi double %69 to i32
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load double, double* %3, align 8
  %73 = fptosi double %72 to i32
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  store i32 100, i32* %10, align 4
  store i32 32000, i32* %23, align 4
  store i32 1, i32* %21, align 4
  br label %82

82:                                               ; preds = %124, %68
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %82
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %21, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sitofp i32 %92 to double
  %94 = load double, double* %3, align 8
  %95 = load double, double* %3, align 8
  %96 = call double @llvm.fmuladd.f64(double %94, double %95, double -5.000000e-01)
  %97 = fcmp olt double %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %124

99:                                               ; preds = %86
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %22, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sitofp i32 %102 to double
  %104 = load double, double* %3, align 8
  %105 = load double, double* %3, align 8
  %106 = fneg double %104
  %107 = call double @llvm.fmuladd.f64(double %106, double %105, double %103)
  %108 = load i32, i32* %23, align 4
  %109 = sitofp i32 %108 to double
  %110 = fcmp olt double %107, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %99
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %22, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sitofp i32 %114 to double
  %116 = load double, double* %3, align 8
  %117 = load double, double* %3, align 8
  %118 = fneg double %116
  %119 = call double @llvm.fmuladd.f64(double %118, double %117, double %115)
  %120 = fptosi double %119 to i32
  store i32 %120, i32* %23, align 4
  %121 = load i32, i32* %21, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %22, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %111, %99
  br label %124

124:                                              ; preds = %123, %98
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %21, align 4
  br label %82, !llvm.loop !7

127:                                              ; preds = %82
  store i32 100, i32* %12, align 4
  store i32 32000, i32* %23, align 4
  store i32 1, i32* %21, align 4
  br label %128

128:                                              ; preds = %170, %127
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %173

132:                                              ; preds = %128
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %21, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sitofp i32 %138 to double
  %140 = load double, double* %3, align 8
  %141 = load double, double* %3, align 8
  %142 = call double @llvm.fmuladd.f64(double %140, double %141, double -5.000000e-01)
  %143 = fcmp olt double %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  br label %170

145:                                              ; preds = %132
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %22, align 4
  %148 = mul nsw i32 %146, %147
  %149 = sitofp i32 %148 to double
  %150 = load double, double* %3, align 8
  %151 = load double, double* %3, align 8
  %152 = fneg double %150
  %153 = call double @llvm.fmuladd.f64(double %152, double %151, double %149)
  %154 = load i32, i32* %23, align 4
  %155 = sitofp i32 %154 to double
  %156 = fcmp olt double %153, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %145
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* %22, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sitofp i32 %160 to double
  %162 = load double, double* %3, align 8
  %163 = load double, double* %3, align 8
  %164 = fneg double %162
  %165 = call double @llvm.fmuladd.f64(double %164, double %163, double %161)
  %166 = fptosi double %165 to i32
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %21, align 4
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %22, align 4
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %157, %145
  br label %170

170:                                              ; preds = %169, %144
  %171 = load i32, i32* %21, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %21, align 4
  br label %128, !llvm.loop !8

173:                                              ; preds = %128
  store i32 100, i32* %16, align 4
  store i32 32000, i32* %23, align 4
  store i32 1, i32* %21, align 4
  br label %174

174:                                              ; preds = %216, %173
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %219

178:                                              ; preds = %174
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %21, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %22, align 4
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %22, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sitofp i32 %184 to double
  %186 = load double, double* %3, align 8
  %187 = load double, double* %3, align 8
  %188 = call double @llvm.fmuladd.f64(double %186, double %187, double -5.000000e-01)
  %189 = fcmp olt double %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  br label %216

191:                                              ; preds = %178
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %22, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sitofp i32 %194 to double
  %196 = load double, double* %3, align 8
  %197 = load double, double* %3, align 8
  %198 = fneg double %196
  %199 = call double @llvm.fmuladd.f64(double %198, double %197, double %195)
  %200 = load i32, i32* %23, align 4
  %201 = sitofp i32 %200 to double
  %202 = fcmp olt double %199, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %191
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %22, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sitofp i32 %206 to double
  %208 = load double, double* %3, align 8
  %209 = load double, double* %3, align 8
  %210 = fneg double %208
  %211 = call double @llvm.fmuladd.f64(double %210, double %209, double %207)
  %212 = fptosi double %211 to i32
  store i32 %212, i32* %23, align 4
  %213 = load i32, i32* %21, align 4
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %22, align 4
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %203, %191
  br label %216

216:                                              ; preds = %215, %190
  %217 = load i32, i32* %21, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %21, align 4
  br label %174, !llvm.loop !9

219:                                              ; preds = %174
  %220 = load i32, i32* %12, align 4
  %221 = icmp slt i32 %220, 100
  br i1 %221, label %222, label %240

222:                                              ; preds = %219
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 100
  br i1 %224, label %225, label %240

225:                                              ; preds = %222
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %13, align 4
  %228 = mul nsw i32 %226, %227
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %11, align 4
  %231 = mul nsw i32 %229, %230
  %232 = icmp sle i32 %228, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %225
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %13, align 4
  store i32 %235, i32* %9, align 4
  br label %239

236:                                              ; preds = %225
  %237 = load i32, i32* %10, align 4
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %11, align 4
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %236, %233
  br label %254

240:                                              ; preds = %222, %219
  %241 = load i32, i32* %10, align 4
  %242 = icmp slt i32 %241, 100
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %9, align 4
  br label %253

246:                                              ; preds = %240
  %247 = load i32, i32* %12, align 4
  %248 = icmp slt i32 %247, 100
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %12, align 4
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %13, align 4
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %249, %246
  br label %253

253:                                              ; preds = %252, %243
  br label %254

254:                                              ; preds = %253, %239
  %255 = load i32, i32* %12, align 4
  %256 = icmp slt i32 %255, 100
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %10, align 4
  %259 = icmp slt i32 %258, 100
  br i1 %259, label %260, label %276

260:                                              ; preds = %257, %254
  %261 = load i32, i32* %16, align 4
  %262 = icmp slt i32 %261, 100
  br i1 %262, label %263, label %275

263:                                              ; preds = %260
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %9, align 4
  %266 = mul nsw i32 %264, %265
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %17, align 4
  %269 = mul nsw i32 %267, %268
  %270 = icmp sge i32 %266, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %263
  %272 = load i32, i32* %16, align 4
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %17, align 4
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %271, %263
  br label %275

275:                                              ; preds = %274, %260
  br label %279

276:                                              ; preds = %257
  %277 = load i32, i32* %16, align 4
  store i32 %277, i32* %8, align 4
  %278 = load i32, i32* %17, align 4
  store i32 %278, i32* %9, align 4
  br label %279

279:                                              ; preds = %276, %275
  %280 = load i32, i32* %8, align 4
  store i32 %280, i32* @numBinsX, align 4
  %281 = load i32, i32* %9, align 4
  store i32 %281, i32* @numBinsY, align 4
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %283 = load i32, i32* @numBinsX, align 4
  %284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %282, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %283)
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %286 = load i32, i32* @numBinsY, align 4
  %287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %285, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %286)
  %288 = load i32, i32* @numBinsX, align 4
  %289 = add nsw i32 1, %288
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 8
  %292 = call noalias i8* @malloc(i64 noundef %291) #4
  %293 = bitcast i8* %292 to i32***
  store i32*** %293, i32**** @blockarray, align 8
  store i32 0, i32* %19, align 4
  br label %294

294:                                              ; preds = %332, %279
  %295 = load i32, i32* %19, align 4
  %296 = load i32, i32* @numBinsX, align 4
  %297 = icmp sle i32 %295, %296
  br i1 %297, label %298, label %335

298:                                              ; preds = %294
  %299 = load i32, i32* @numBinsY, align 4
  %300 = add nsw i32 1, %299
  %301 = sext i32 %300 to i64
  %302 = mul i64 %301, 8
  %303 = call noalias i8* @malloc(i64 noundef %302) #4
  %304 = bitcast i8* %303 to i32**
  %305 = load i32***, i32**** @blockarray, align 8
  %306 = load i32, i32* %19, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32**, i32*** %305, i64 %307
  store i32** %304, i32*** %308, align 8
  store i32 0, i32* %20, align 4
  br label %309

309:                                              ; preds = %328, %298
  %310 = load i32, i32* %20, align 4
  %311 = load i32, i32* @numBinsY, align 4
  %312 = icmp sle i32 %310, %311
  br i1 %312, label %313, label %331

313:                                              ; preds = %309
  %314 = load i32, i32* @numcells, align 4
  %315 = add nsw i32 5, %314
  %316 = sext i32 %315 to i64
  %317 = mul i64 %316, 4
  %318 = call noalias i8* @malloc(i64 noundef %317) #4
  %319 = bitcast i8* %318 to i32*
  %320 = load i32***, i32**** @blockarray, align 8
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32**, i32*** %320, i64 %322
  %324 = load i32**, i32*** %323, align 8
  %325 = load i32, i32* %20, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32*, i32** %324, i64 %326
  store i32* %319, i32** %327, align 8
  br label %328

328:                                              ; preds = %313
  %329 = load i32, i32* %20, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %20, align 4
  br label %309, !llvm.loop !10

331:                                              ; preds = %309
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %19, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %19, align 4
  br label %294, !llvm.loop !11

335:                                              ; preds = %294
  %336 = load i32***, i32**** @blockarray, align 8
  %337 = getelementptr inbounds i32**, i32*** %336, i64 0
  %338 = load i32**, i32*** %337, align 8
  %339 = getelementptr inbounds i32*, i32** %338, i64 0
  %340 = load i32*, i32** %339, align 8
  store i32* %340, i32** @bucket, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
