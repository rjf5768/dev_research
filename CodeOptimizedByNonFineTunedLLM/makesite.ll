; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makesite.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makesite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.kbox = type { i32, i32, i32, i32, i32 }

@cellarray = external dso_local global %struct.cellbox**, align 8
@pinSpacing = external dso_local global i32, align 4
@kArray = external dso_local global %struct.kbox*, align 8
@val1 = dso_local global double 0.000000e+00, align 8
@val2 = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Vside(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  br label %34

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 0, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %28, %25 ], [ %33, %29 ]
  store i32 %35, i32* %17, align 4
  %36 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %36, i64 %38
  %40 = load %struct.cellbox*, %struct.cellbox** %39, align 8
  %41 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 13
  %42 = load double, double* %41, align 8
  store double %42, double* %12, align 8
  %43 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %43, i64 %45
  %47 = load %struct.cellbox*, %struct.cellbox** %46, align 8
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i32 0, i32 16
  %49 = load double, double* %48, align 8
  store double %49, double* %13, align 8
  %50 = load double, double* %13, align 8
  %51 = fadd double %50, 1.000000e-02
  %52 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %52, i64 %54
  %56 = load %struct.cellbox*, %struct.cellbox** %55, align 8
  %57 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %56, i32 0, i32 15
  %58 = load double, double* %57, align 8
  %59 = fcmp ogt double %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %34
  store double 1.000000e+00, double* %11, align 8
  br label %66

61:                                               ; preds = %34
  %62 = load double, double* %13, align 8
  %63 = load double, double* %12, align 8
  %64 = fdiv double %62, %63
  %65 = call double @sqrt(double noundef %64) #2
  store double %65, double* %11, align 8
  br label %66

66:                                               ; preds = %61, %60
  %67 = load double, double* %11, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sitofp i32 %68 to double
  %70 = fmul double %67, %69
  %71 = fptosi double %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  %74 = sitofp i32 %73 to double
  %75 = load double, double* %11, align 8
  %76 = fdiv double %74, %75
  %77 = load i32, i32* %17, align 4
  %78 = sitofp i32 %77 to double
  %79 = fsub double %76, %78
  %80 = load i32, i32* %17, align 4
  %81 = sitofp i32 %80 to double
  %82 = load i32, i32* %14, align 4
  %83 = sitofp i32 %82 to double
  %84 = load double, double* %11, align 8
  %85 = fdiv double %83, %84
  %86 = fsub double %81, %85
  %87 = fcmp olt double %79, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %66
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %66
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @pinSpacing, align 4
  %94 = sdiv i32 %92, %93
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %220

98:                                               ; preds = %91
  %99 = load i32, i32* %15, align 4
  %100 = icmp sgt i32 %99, 50
  br i1 %100, label %101, label %170

101:                                              ; preds = %98
  store i32 1, i32* %16, align 4
  br label %102

102:                                              ; preds = %131, %101
  %103 = load i32, i32* %16, align 4
  %104 = icmp sle i32 %103, 50
  br i1 %104, label %105, label %134

105:                                              ; preds = %102
  %106 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.kbox, %struct.kbox* %106, i64 %108
  %110 = getelementptr inbounds %struct.kbox, %struct.kbox* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.kbox, %struct.kbox* %111, i64 %113
  %115 = getelementptr inbounds %struct.kbox, %struct.kbox* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.kbox, %struct.kbox* %116, i64 %118
  %120 = getelementptr inbounds %struct.kbox, %struct.kbox* %119, i32 0, i32 2
  store i32 0, i32* %120, align 4
  %121 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.kbox, %struct.kbox* %121, i64 %123
  %125 = getelementptr inbounds %struct.kbox, %struct.kbox* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.kbox, %struct.kbox* %126, i64 %128
  %130 = getelementptr inbounds %struct.kbox, %struct.kbox* %129, i32 0, i32 4
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %105
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %102, !llvm.loop !4

134:                                              ; preds = %102
  %135 = load i32, i32* %15, align 4
  %136 = sdiv i32 %135, 50
  store i32 %136, i32* %18, align 4
  store i32 1, i32* %16, align 4
  br label %137

137:                                              ; preds = %149, %134
  %138 = load i32, i32* %16, align 4
  %139 = icmp sle i32 %138, 50
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.kbox, %struct.kbox* %142, i64 %144
  %146 = getelementptr inbounds %struct.kbox, %struct.kbox* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %141
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %137, !llvm.loop !6

152:                                              ; preds = %137
  store i32 1, i32* %16, align 4
  br label %153

153:                                              ; preds = %166, %152
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %15, align 4
  %156 = srem i32 %155, 50
  %157 = icmp sle i32 %154, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.kbox, %struct.kbox* %159, i64 %161
  %163 = getelementptr inbounds %struct.kbox, %struct.kbox* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %16, align 4
  br label %153, !llvm.loop !7

169:                                              ; preds = %153
  br label %219

170:                                              ; preds = %98
  store i32 1, i32* %16, align 4
  br label %171

171:                                              ; preds = %201, %170
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %171
  %176 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.kbox, %struct.kbox* %176, i64 %178
  %180 = getelementptr inbounds %struct.kbox, %struct.kbox* %179, i32 0, i32 0
  store i32 0, i32* %180, align 4
  %181 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.kbox, %struct.kbox* %181, i64 %183
  %185 = getelementptr inbounds %struct.kbox, %struct.kbox* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.kbox, %struct.kbox* %186, i64 %188
  %190 = getelementptr inbounds %struct.kbox, %struct.kbox* %189, i32 0, i32 2
  store i32 0, i32* %190, align 4
  %191 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.kbox, %struct.kbox* %191, i64 %193
  %195 = getelementptr inbounds %struct.kbox, %struct.kbox* %194, i32 0, i32 3
  store i32 0, i32* %195, align 4
  %196 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.kbox, %struct.kbox* %196, i64 %198
  %200 = getelementptr inbounds %struct.kbox, %struct.kbox* %199, i32 0, i32 4
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %175
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %171, !llvm.loop !8

204:                                              ; preds = %171
  store i32 1, i32* %16, align 4
  br label %205

205:                                              ; preds = %215, %204
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.kbox, %struct.kbox* %210, i64 %212
  %214 = getelementptr inbounds %struct.kbox, %struct.kbox* %213, i32 0, i32 0
  store i32 1, i32* %214, align 4
  br label %215

215:                                              ; preds = %209
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %205, !llvm.loop !9

218:                                              ; preds = %205
  br label %219

219:                                              ; preds = %218, %169
  br label %220

220:                                              ; preds = %219, %91
  %221 = load i32, i32* %15, align 4
  %222 = icmp sle i32 %221, 50
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %15, align 4
  store i32 %224, i32* %19, align 4
  br label %226

225:                                              ; preds = %220
  store i32 50, i32* %19, align 4
  br label %226

226:                                              ; preds = %225, %223
  %227 = load i32, i32* %17, align 4
  %228 = sitofp i32 %227 to double
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 1
  %231 = sitofp i32 %230 to double
  %232 = fdiv double %228, %231
  store double %232, double* %20, align 8
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %416

235:                                              ; preds = %226
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %327

239:                                              ; preds = %235
  store i32 1, i32* %16, align 4
  br label %240

240:                                              ; preds = %323, %239
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp sle i32 %241, %242
  br i1 %243, label %244, label %326

244:                                              ; preds = %240
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.kbox, %struct.kbox* %246, i64 %248
  %250 = getelementptr inbounds %struct.kbox, %struct.kbox* %249, i32 0, i32 3
  store i32 %245, i32* %250, align 4
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  %253 = sitofp i32 %252 to double
  %254 = load double, double* %20, align 8
  %255 = fmul double %253, %254
  store double %255, double* @val1, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sitofp i32 %256 to double
  %258 = load double, double* %20, align 8
  %259 = fmul double %257, %258
  store double %259, double* @val2, align 8
  %260 = load double, double* @val2, align 8
  %261 = load double, double* @val2, align 8
  %262 = fptosi double %261 to i32
  %263 = sitofp i32 %262 to double
  %264 = fsub double %260, %263
  %265 = fcmp oge double %264, 5.000000e-01
  br i1 %265, label %266, label %270

266:                                              ; preds = %244
  %267 = load double, double* @val2, align 8
  %268 = fptosi double %267 to i32
  %269 = add nsw i32 %268, 1
  br label %273

270:                                              ; preds = %244
  %271 = load double, double* @val2, align 8
  %272 = fptosi double %271 to i32
  br label %273

273:                                              ; preds = %270, %266
  %274 = phi i32 [ %269, %266 ], [ %272, %270 ]
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %274, %275
  %277 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.kbox, %struct.kbox* %277, i64 %279
  %281 = getelementptr inbounds %struct.kbox, %struct.kbox* %280, i32 0, i32 4
  store i32 %276, i32* %281, align 4
  %282 = load double, double* @val1, align 8
  %283 = load double, double* @val1, align 8
  %284 = fptosi double %283 to i32
  %285 = sitofp i32 %284 to double
  %286 = fsub double %282, %285
  %287 = fcmp oge double %286, 5.000000e-01
  br i1 %287, label %288, label %292

288:                                              ; preds = %273
  %289 = load double, double* @val1, align 8
  %290 = fptosi double %289 to i32
  %291 = add nsw i32 %290, 1
  br label %295

292:                                              ; preds = %273
  %293 = load double, double* @val1, align 8
  %294 = fptosi double %293 to i32
  br label %295

295:                                              ; preds = %292, %288
  %296 = phi i32 [ %291, %288 ], [ %294, %292 ]
  %297 = load double, double* @val2, align 8
  %298 = load double, double* @val2, align 8
  %299 = fptosi double %298 to i32
  %300 = sitofp i32 %299 to double
  %301 = fsub double %297, %300
  %302 = fcmp oge double %301, 5.000000e-01
  br i1 %302, label %303, label %307

303:                                              ; preds = %295
  %304 = load double, double* @val2, align 8
  %305 = fptosi double %304 to i32
  %306 = add nsw i32 %305, 1
  br label %310

307:                                              ; preds = %295
  %308 = load double, double* @val2, align 8
  %309 = fptosi double %308 to i32
  br label %310

310:                                              ; preds = %307, %303
  %311 = phi i32 [ %306, %303 ], [ %309, %307 ]
  %312 = sub nsw i32 %296, %311
  %313 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.kbox, %struct.kbox* %313, i64 %315
  %317 = getelementptr inbounds %struct.kbox, %struct.kbox* %316, i32 0, i32 2
  store i32 %312, i32* %317, align 4
  %318 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.kbox, %struct.kbox* %318, i64 %320
  %322 = getelementptr inbounds %struct.kbox, %struct.kbox* %321, i32 0, i32 1
  store i32 1, i32* %322, align 4
  br label %323

323:                                              ; preds = %310
  %324 = load i32, i32* %16, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %16, align 4
  br label %240, !llvm.loop !10

326:                                              ; preds = %240
  br label %415

327:                                              ; preds = %235
  store i32 1, i32* %16, align 4
  br label %328

328:                                              ; preds = %411, %327
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %19, align 4
  %331 = icmp sle i32 %329, %330
  br i1 %331, label %332, label %414

332:                                              ; preds = %328
  %333 = load i32, i32* %7, align 4
  %334 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %335 = load i32, i32* %16, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.kbox, %struct.kbox* %334, i64 %336
  %338 = getelementptr inbounds %struct.kbox, %struct.kbox* %337, i32 0, i32 3
  store i32 %333, i32* %338, align 4
  %339 = load i32, i32* %16, align 4
  %340 = add nsw i32 %339, 1
  %341 = sitofp i32 %340 to double
  %342 = load double, double* %20, align 8
  %343 = fmul double %341, %342
  store double %343, double* @val1, align 8
  %344 = load i32, i32* %16, align 4
  %345 = sitofp i32 %344 to double
  %346 = load double, double* %20, align 8
  %347 = fmul double %345, %346
  store double %347, double* @val2, align 8
  %348 = load i32, i32* %8, align 4
  %349 = load double, double* @val2, align 8
  %350 = load double, double* @val2, align 8
  %351 = fptosi double %350 to i32
  %352 = sitofp i32 %351 to double
  %353 = fsub double %349, %352
  %354 = fcmp oge double %353, 5.000000e-01
  br i1 %354, label %355, label %359

355:                                              ; preds = %332
  %356 = load double, double* @val2, align 8
  %357 = fptosi double %356 to i32
  %358 = add nsw i32 %357, 1
  br label %362

359:                                              ; preds = %332
  %360 = load double, double* @val2, align 8
  %361 = fptosi double %360 to i32
  br label %362

362:                                              ; preds = %359, %355
  %363 = phi i32 [ %358, %355 ], [ %361, %359 ]
  %364 = sub nsw i32 %348, %363
  %365 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %366 = load i32, i32* %16, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.kbox, %struct.kbox* %365, i64 %367
  %369 = getelementptr inbounds %struct.kbox, %struct.kbox* %368, i32 0, i32 4
  store i32 %364, i32* %369, align 4
  %370 = load double, double* @val1, align 8
  %371 = load double, double* @val1, align 8
  %372 = fptosi double %371 to i32
  %373 = sitofp i32 %372 to double
  %374 = fsub double %370, %373
  %375 = fcmp oge double %374, 5.000000e-01
  br i1 %375, label %376, label %380

376:                                              ; preds = %362
  %377 = load double, double* @val1, align 8
  %378 = fptosi double %377 to i32
  %379 = add nsw i32 %378, 1
  br label %383

380:                                              ; preds = %362
  %381 = load double, double* @val1, align 8
  %382 = fptosi double %381 to i32
  br label %383

383:                                              ; preds = %380, %376
  %384 = phi i32 [ %379, %376 ], [ %382, %380 ]
  %385 = load double, double* @val2, align 8
  %386 = load double, double* @val2, align 8
  %387 = fptosi double %386 to i32
  %388 = sitofp i32 %387 to double
  %389 = fsub double %385, %388
  %390 = fcmp oge double %389, 5.000000e-01
  br i1 %390, label %391, label %395

391:                                              ; preds = %383
  %392 = load double, double* @val2, align 8
  %393 = fptosi double %392 to i32
  %394 = add nsw i32 %393, 1
  br label %398

395:                                              ; preds = %383
  %396 = load double, double* @val2, align 8
  %397 = fptosi double %396 to i32
  br label %398

398:                                              ; preds = %395, %391
  %399 = phi i32 [ %394, %391 ], [ %397, %395 ]
  %400 = sub nsw i32 %384, %399
  %401 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.kbox, %struct.kbox* %401, i64 %403
  %405 = getelementptr inbounds %struct.kbox, %struct.kbox* %404, i32 0, i32 2
  store i32 %400, i32* %405, align 4
  %406 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %407 = load i32, i32* %16, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.kbox, %struct.kbox* %406, i64 %408
  %410 = getelementptr inbounds %struct.kbox, %struct.kbox* %409, i32 0, i32 1
  store i32 1, i32* %410, align 4
  br label %411

411:                                              ; preds = %398
  %412 = load i32, i32* %16, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %16, align 4
  br label %328, !llvm.loop !11

414:                                              ; preds = %328
  br label %415

415:                                              ; preds = %414, %326
  br label %416

416:                                              ; preds = %415, %226
  %417 = load i32, i32* %19, align 4
  ret i32 %417
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hside(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %26, %27
  br label %34

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 0, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %28, %25 ], [ %33, %29 ]
  store i32 %35, i32* %17, align 4
  %36 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %36, i64 %38
  %40 = load %struct.cellbox*, %struct.cellbox** %39, align 8
  %41 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 13
  %42 = load double, double* %41, align 8
  store double %42, double* %12, align 8
  %43 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %43, i64 %45
  %47 = load %struct.cellbox*, %struct.cellbox** %46, align 8
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i32 0, i32 15
  %49 = load double, double* %48, align 8
  store double %49, double* %13, align 8
  %50 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %50, i64 %52
  %54 = load %struct.cellbox*, %struct.cellbox** %53, align 8
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 16
  %56 = load double, double* %55, align 8
  %57 = fadd double %56, 1.000000e-02
  %58 = load double, double* %13, align 8
  %59 = fcmp ogt double %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %34
  store double 1.000000e+00, double* %11, align 8
  br label %66

61:                                               ; preds = %34
  %62 = load double, double* %12, align 8
  %63 = load double, double* %13, align 8
  %64 = fdiv double %62, %63
  %65 = call double @sqrt(double noundef %64) #2
  store double %65, double* %11, align 8
  br label %66

66:                                               ; preds = %61, %60
  %67 = load double, double* %11, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sitofp i32 %68 to double
  %70 = fmul double %67, %69
  %71 = fptosi double %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  %74 = sitofp i32 %73 to double
  %75 = load double, double* %11, align 8
  %76 = fdiv double %74, %75
  %77 = load i32, i32* %17, align 4
  %78 = sitofp i32 %77 to double
  %79 = fsub double %76, %78
  %80 = load i32, i32* %17, align 4
  %81 = sitofp i32 %80 to double
  %82 = load i32, i32* %14, align 4
  %83 = sitofp i32 %82 to double
  %84 = load double, double* %11, align 8
  %85 = fdiv double %83, %84
  %86 = fsub double %81, %85
  %87 = fcmp olt double %79, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %66
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %66
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @pinSpacing, align 4
  %94 = sdiv i32 %92, %93
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %220

98:                                               ; preds = %91
  %99 = load i32, i32* %15, align 4
  %100 = icmp sgt i32 %99, 50
  br i1 %100, label %101, label %170

101:                                              ; preds = %98
  store i32 1, i32* %16, align 4
  br label %102

102:                                              ; preds = %131, %101
  %103 = load i32, i32* %16, align 4
  %104 = icmp sle i32 %103, 50
  br i1 %104, label %105, label %134

105:                                              ; preds = %102
  %106 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.kbox, %struct.kbox* %106, i64 %108
  %110 = getelementptr inbounds %struct.kbox, %struct.kbox* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.kbox, %struct.kbox* %111, i64 %113
  %115 = getelementptr inbounds %struct.kbox, %struct.kbox* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.kbox, %struct.kbox* %116, i64 %118
  %120 = getelementptr inbounds %struct.kbox, %struct.kbox* %119, i32 0, i32 2
  store i32 0, i32* %120, align 4
  %121 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.kbox, %struct.kbox* %121, i64 %123
  %125 = getelementptr inbounds %struct.kbox, %struct.kbox* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.kbox, %struct.kbox* %126, i64 %128
  %130 = getelementptr inbounds %struct.kbox, %struct.kbox* %129, i32 0, i32 4
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %105
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %102, !llvm.loop !12

134:                                              ; preds = %102
  %135 = load i32, i32* %15, align 4
  %136 = sdiv i32 %135, 50
  store i32 %136, i32* %18, align 4
  store i32 1, i32* %16, align 4
  br label %137

137:                                              ; preds = %149, %134
  %138 = load i32, i32* %16, align 4
  %139 = icmp sle i32 %138, 50
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.kbox, %struct.kbox* %142, i64 %144
  %146 = getelementptr inbounds %struct.kbox, %struct.kbox* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %141
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %137, !llvm.loop !13

152:                                              ; preds = %137
  store i32 1, i32* %16, align 4
  br label %153

153:                                              ; preds = %166, %152
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %15, align 4
  %156 = srem i32 %155, 50
  %157 = icmp sle i32 %154, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.kbox, %struct.kbox* %159, i64 %161
  %163 = getelementptr inbounds %struct.kbox, %struct.kbox* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %16, align 4
  br label %153, !llvm.loop !14

169:                                              ; preds = %153
  br label %219

170:                                              ; preds = %98
  store i32 1, i32* %16, align 4
  br label %171

171:                                              ; preds = %201, %170
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %171
  %176 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.kbox, %struct.kbox* %176, i64 %178
  %180 = getelementptr inbounds %struct.kbox, %struct.kbox* %179, i32 0, i32 0
  store i32 0, i32* %180, align 4
  %181 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.kbox, %struct.kbox* %181, i64 %183
  %185 = getelementptr inbounds %struct.kbox, %struct.kbox* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.kbox, %struct.kbox* %186, i64 %188
  %190 = getelementptr inbounds %struct.kbox, %struct.kbox* %189, i32 0, i32 2
  store i32 0, i32* %190, align 4
  %191 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.kbox, %struct.kbox* %191, i64 %193
  %195 = getelementptr inbounds %struct.kbox, %struct.kbox* %194, i32 0, i32 3
  store i32 0, i32* %195, align 4
  %196 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.kbox, %struct.kbox* %196, i64 %198
  %200 = getelementptr inbounds %struct.kbox, %struct.kbox* %199, i32 0, i32 4
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %175
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %171, !llvm.loop !15

204:                                              ; preds = %171
  store i32 1, i32* %16, align 4
  br label %205

205:                                              ; preds = %215, %204
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.kbox, %struct.kbox* %210, i64 %212
  %214 = getelementptr inbounds %struct.kbox, %struct.kbox* %213, i32 0, i32 0
  store i32 1, i32* %214, align 4
  br label %215

215:                                              ; preds = %209
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %205, !llvm.loop !16

218:                                              ; preds = %205
  br label %219

219:                                              ; preds = %218, %169
  br label %220

220:                                              ; preds = %219, %91
  %221 = load i32, i32* %15, align 4
  %222 = icmp sle i32 %221, 50
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %15, align 4
  store i32 %224, i32* %19, align 4
  br label %226

225:                                              ; preds = %220
  store i32 50, i32* %19, align 4
  br label %226

226:                                              ; preds = %225, %223
  %227 = load i32, i32* %17, align 4
  %228 = sitofp i32 %227 to double
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 1
  %231 = sitofp i32 %230 to double
  %232 = fdiv double %228, %231
  store double %232, double* %20, align 8
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %416

235:                                              ; preds = %226
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %7, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %327

239:                                              ; preds = %235
  store i32 1, i32* %16, align 4
  br label %240

240:                                              ; preds = %323, %239
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp sle i32 %241, %242
  br i1 %243, label %244, label %326

244:                                              ; preds = %240
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.kbox, %struct.kbox* %246, i64 %248
  %250 = getelementptr inbounds %struct.kbox, %struct.kbox* %249, i32 0, i32 4
  store i32 %245, i32* %250, align 4
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  %253 = sitofp i32 %252 to double
  %254 = load double, double* %20, align 8
  %255 = fmul double %253, %254
  store double %255, double* @val1, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sitofp i32 %256 to double
  %258 = load double, double* %20, align 8
  %259 = fmul double %257, %258
  store double %259, double* @val2, align 8
  %260 = load double, double* @val2, align 8
  %261 = load double, double* @val2, align 8
  %262 = fptosi double %261 to i32
  %263 = sitofp i32 %262 to double
  %264 = fsub double %260, %263
  %265 = fcmp oge double %264, 5.000000e-01
  br i1 %265, label %266, label %270

266:                                              ; preds = %244
  %267 = load double, double* @val2, align 8
  %268 = fptosi double %267 to i32
  %269 = add nsw i32 %268, 1
  br label %273

270:                                              ; preds = %244
  %271 = load double, double* @val2, align 8
  %272 = fptosi double %271 to i32
  br label %273

273:                                              ; preds = %270, %266
  %274 = phi i32 [ %269, %266 ], [ %272, %270 ]
  %275 = load i32, i32* %7, align 4
  %276 = add nsw i32 %274, %275
  %277 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.kbox, %struct.kbox* %277, i64 %279
  %281 = getelementptr inbounds %struct.kbox, %struct.kbox* %280, i32 0, i32 3
  store i32 %276, i32* %281, align 4
  %282 = load double, double* @val1, align 8
  %283 = load double, double* @val1, align 8
  %284 = fptosi double %283 to i32
  %285 = sitofp i32 %284 to double
  %286 = fsub double %282, %285
  %287 = fcmp oge double %286, 5.000000e-01
  br i1 %287, label %288, label %292

288:                                              ; preds = %273
  %289 = load double, double* @val1, align 8
  %290 = fptosi double %289 to i32
  %291 = add nsw i32 %290, 1
  br label %295

292:                                              ; preds = %273
  %293 = load double, double* @val1, align 8
  %294 = fptosi double %293 to i32
  br label %295

295:                                              ; preds = %292, %288
  %296 = phi i32 [ %291, %288 ], [ %294, %292 ]
  %297 = load double, double* @val2, align 8
  %298 = load double, double* @val2, align 8
  %299 = fptosi double %298 to i32
  %300 = sitofp i32 %299 to double
  %301 = fsub double %297, %300
  %302 = fcmp oge double %301, 5.000000e-01
  br i1 %302, label %303, label %307

303:                                              ; preds = %295
  %304 = load double, double* @val2, align 8
  %305 = fptosi double %304 to i32
  %306 = add nsw i32 %305, 1
  br label %310

307:                                              ; preds = %295
  %308 = load double, double* @val2, align 8
  %309 = fptosi double %308 to i32
  br label %310

310:                                              ; preds = %307, %303
  %311 = phi i32 [ %306, %303 ], [ %309, %307 ]
  %312 = sub nsw i32 %296, %311
  %313 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.kbox, %struct.kbox* %313, i64 %315
  %317 = getelementptr inbounds %struct.kbox, %struct.kbox* %316, i32 0, i32 2
  store i32 %312, i32* %317, align 4
  %318 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.kbox, %struct.kbox* %318, i64 %320
  %322 = getelementptr inbounds %struct.kbox, %struct.kbox* %321, i32 0, i32 1
  store i32 0, i32* %322, align 4
  br label %323

323:                                              ; preds = %310
  %324 = load i32, i32* %16, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %16, align 4
  br label %240, !llvm.loop !17

326:                                              ; preds = %240
  br label %415

327:                                              ; preds = %235
  store i32 1, i32* %16, align 4
  br label %328

328:                                              ; preds = %411, %327
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %19, align 4
  %331 = icmp sle i32 %329, %330
  br i1 %331, label %332, label %414

332:                                              ; preds = %328
  %333 = load i32, i32* %9, align 4
  %334 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %335 = load i32, i32* %16, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.kbox, %struct.kbox* %334, i64 %336
  %338 = getelementptr inbounds %struct.kbox, %struct.kbox* %337, i32 0, i32 4
  store i32 %333, i32* %338, align 4
  %339 = load i32, i32* %16, align 4
  %340 = add nsw i32 %339, 1
  %341 = sitofp i32 %340 to double
  %342 = load double, double* %20, align 8
  %343 = fmul double %341, %342
  store double %343, double* @val1, align 8
  %344 = load i32, i32* %16, align 4
  %345 = sitofp i32 %344 to double
  %346 = load double, double* %20, align 8
  %347 = fmul double %345, %346
  store double %347, double* @val2, align 8
  %348 = load i32, i32* %7, align 4
  %349 = load double, double* @val2, align 8
  %350 = load double, double* @val2, align 8
  %351 = fptosi double %350 to i32
  %352 = sitofp i32 %351 to double
  %353 = fsub double %349, %352
  %354 = fcmp oge double %353, 5.000000e-01
  br i1 %354, label %355, label %359

355:                                              ; preds = %332
  %356 = load double, double* @val2, align 8
  %357 = fptosi double %356 to i32
  %358 = add nsw i32 %357, 1
  br label %362

359:                                              ; preds = %332
  %360 = load double, double* @val2, align 8
  %361 = fptosi double %360 to i32
  br label %362

362:                                              ; preds = %359, %355
  %363 = phi i32 [ %358, %355 ], [ %361, %359 ]
  %364 = sub nsw i32 %348, %363
  %365 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %366 = load i32, i32* %16, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.kbox, %struct.kbox* %365, i64 %367
  %369 = getelementptr inbounds %struct.kbox, %struct.kbox* %368, i32 0, i32 3
  store i32 %364, i32* %369, align 4
  %370 = load double, double* @val1, align 8
  %371 = load double, double* @val1, align 8
  %372 = fptosi double %371 to i32
  %373 = sitofp i32 %372 to double
  %374 = fsub double %370, %373
  %375 = fcmp oge double %374, 5.000000e-01
  br i1 %375, label %376, label %380

376:                                              ; preds = %362
  %377 = load double, double* @val1, align 8
  %378 = fptosi double %377 to i32
  %379 = add nsw i32 %378, 1
  br label %383

380:                                              ; preds = %362
  %381 = load double, double* @val1, align 8
  %382 = fptosi double %381 to i32
  br label %383

383:                                              ; preds = %380, %376
  %384 = phi i32 [ %379, %376 ], [ %382, %380 ]
  %385 = load double, double* @val2, align 8
  %386 = load double, double* @val2, align 8
  %387 = fptosi double %386 to i32
  %388 = sitofp i32 %387 to double
  %389 = fsub double %385, %388
  %390 = fcmp oge double %389, 5.000000e-01
  br i1 %390, label %391, label %395

391:                                              ; preds = %383
  %392 = load double, double* @val2, align 8
  %393 = fptosi double %392 to i32
  %394 = add nsw i32 %393, 1
  br label %398

395:                                              ; preds = %383
  %396 = load double, double* @val2, align 8
  %397 = fptosi double %396 to i32
  br label %398

398:                                              ; preds = %395, %391
  %399 = phi i32 [ %394, %391 ], [ %397, %395 ]
  %400 = sub nsw i32 %384, %399
  %401 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.kbox, %struct.kbox* %401, i64 %403
  %405 = getelementptr inbounds %struct.kbox, %struct.kbox* %404, i32 0, i32 2
  store i32 %400, i32* %405, align 4
  %406 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %407 = load i32, i32* %16, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.kbox, %struct.kbox* %406, i64 %408
  %410 = getelementptr inbounds %struct.kbox, %struct.kbox* %409, i32 0, i32 1
  store i32 0, i32* %410, align 4
  br label %411

411:                                              ; preds = %398
  %412 = load i32, i32* %16, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %16, align 4
  br label %328, !llvm.loop !18

414:                                              ; preds = %328
  br label %415

415:                                              ; preds = %414, %326
  br label %416

416:                                              ; preds = %415, %226
  %417 = load i32, i32* %19, align 4
  ret i32 %417
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
