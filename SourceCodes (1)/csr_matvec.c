; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matvec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [25 x i8] c"hypre_assert failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"num_vectors == hypre_VectorNumVectors(y)\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matvec.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvec(double noundef %0, %struct.hypre_CSRMatrix* noundef %1, %struct.hypre_Vector* noundef %2, double noundef %3, %struct.hypre_Vector* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.hypre_CSRMatrix*, align 8
  %9 = alloca %struct.hypre_Vector*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.hypre_Vector*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca i32, align 4
  store double %0, double* %7, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %8, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %9, align 8
  store double %3, double* %10, align 8
  store %struct.hypre_Vector* %4, %struct.hypre_Vector** %11, align 8
  %36 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %37 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  store double* %38, double** %12, align 8
  %39 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %40 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %43 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %14, align 8
  %45 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %46 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %49 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %52 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  %54 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %55 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %18, align 4
  %57 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %58 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %57, i32 0, i32 0
  %59 = load double*, double** %58, align 8
  store double* %59, double** %19, align 8
  %60 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %61 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %60, i32 0, i32 0
  %62 = load double*, double** %61, align 8
  store double* %62, double** %20, align 8
  %63 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %64 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %21, align 4
  %66 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %67 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %22, align 4
  %69 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %70 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %23, align 4
  %72 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %73 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %24, align 4
  %75 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %76 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %25, align 4
  %78 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %79 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %26, align 4
  %81 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %82 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %27, align 4
  store double 0x3FE6666666666666, double* %34, align 8
  store i32 0, i32* %35, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %86 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %5
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %90, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 noundef 91, i32 noundef 1)
  br label %92

92:                                               ; preds = %89, %5
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %35, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %22, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 2, i32* %35, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 3, i32* %35, align 4
  br label %111

111:                                              ; preds = %110, %106, %102
  %112 = load double, double* %7, align 8
  %113 = fcmp oeq double %112, 0.000000e+00
  br i1 %113, label %114, label %134

114:                                              ; preds = %111
  store i32 0, i32* %30, align 4
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i32, i32* %30, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %23, align 4
  %119 = mul nsw i32 %117, %118
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load double, double* %10, align 8
  %123 = load double*, double** %20, align 8
  %124 = load i32, i32* %30, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %123, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fmul double %127, %122
  store double %128, double* %126, align 8
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %30, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %30, align 4
  br label %115, !llvm.loop !4

132:                                              ; preds = %115
  %133 = load i32, i32* %35, align 4
  store i32 %133, i32* %6, align 4
  br label %480

134:                                              ; preds = %111
  %135 = load double, double* %10, align 8
  %136 = load double, double* %7, align 8
  %137 = fdiv double %135, %136
  store double %137, double* %28, align 8
  %138 = load double, double* %28, align 8
  %139 = fcmp une double %138, 1.000000e+00
  br i1 %139, label %140, label %179

140:                                              ; preds = %134
  %141 = load double, double* %28, align 8
  %142 = fcmp oeq double %141, 0.000000e+00
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  store i32 0, i32* %30, align 4
  br label %144

144:                                              ; preds = %155, %143
  %145 = load i32, i32* %30, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %23, align 4
  %148 = mul nsw i32 %146, %147
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load double*, double** %20, align 8
  %152 = load i32, i32* %30, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  store double 0.000000e+00, double* %154, align 8
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %30, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %30, align 4
  br label %144, !llvm.loop !6

158:                                              ; preds = %144
  br label %178

159:                                              ; preds = %140
  store i32 0, i32* %30, align 4
  br label %160

160:                                              ; preds = %174, %159
  %161 = load i32, i32* %30, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %23, align 4
  %164 = mul nsw i32 %162, %163
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load double, double* %28, align 8
  %168 = load double*, double** %20, align 8
  %169 = load i32, i32* %30, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %168, i64 %170
  %172 = load double, double* %171, align 8
  %173 = fmul double %172, %167
  store double %173, double* %171, align 8
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %30, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %30, align 4
  br label %160, !llvm.loop !7

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %177, %158
  br label %179

179:                                              ; preds = %178, %134
  %180 = load i32, i32* %18, align 4
  %181 = sitofp i32 %180 to double
  %182 = load double, double* %34, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sitofp i32 %183 to double
  %185 = fmul double %182, %184
  %186 = fcmp olt double %181, %185
  br i1 %186, label %187, label %324

187:                                              ; preds = %179
  store i32 0, i32* %30, align 4
  br label %188

188:                                              ; preds = %320, %187
  %189 = load i32, i32* %30, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %323

192:                                              ; preds = %188
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* %30, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %33, align 4
  %198 = load i32, i32* %23, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %246

200:                                              ; preds = %192
  %201 = load double*, double** %20, align 8
  %202 = load i32, i32* %33, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, double* %201, i64 %203
  %205 = load double, double* %204, align 8
  store double %205, double* %29, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = load i32, i32* %33, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %32, align 4
  br label %211

211:                                              ; preds = %237, %200
  %212 = load i32, i32* %32, align 4
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %33, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %212, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %211
  %221 = load double*, double** %12, align 8
  %222 = load i32, i32* %32, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %221, i64 %223
  %225 = load double, double* %224, align 8
  %226 = load double*, double** %19, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* %32, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %226, i64 %232
  %234 = load double, double* %233, align 8
  %235 = load double, double* %29, align 8
  %236 = call double @llvm.fmuladd.f64(double %225, double %234, double %235)
  store double %236, double* %29, align 8
  br label %237

237:                                              ; preds = %220
  %238 = load i32, i32* %32, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %32, align 4
  br label %211, !llvm.loop !8

240:                                              ; preds = %211
  %241 = load double, double* %29, align 8
  %242 = load double*, double** %20, align 8
  %243 = load i32, i32* %33, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds double, double* %242, i64 %244
  store double %241, double* %245, align 8
  br label %319

246:                                              ; preds = %192
  store i32 0, i32* %31, align 4
  br label %247

247:                                              ; preds = %315, %246
  %248 = load i32, i32* %31, align 4
  %249 = load i32, i32* %23, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %318

251:                                              ; preds = %247
  %252 = load double*, double** %20, align 8
  %253 = load i32, i32* %31, align 4
  %254 = load i32, i32* %25, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i32, i32* %33, align 4
  %257 = load i32, i32* %24, align 4
  %258 = mul nsw i32 %256, %257
  %259 = add nsw i32 %255, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds double, double* %252, i64 %260
  %262 = load double, double* %261, align 8
  store double %262, double* %29, align 8
  %263 = load i32*, i32** %13, align 8
  %264 = load i32, i32* %33, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %32, align 4
  br label %268

268:                                              ; preds = %300, %251
  %269 = load i32, i32* %32, align 4
  %270 = load i32*, i32** %13, align 8
  %271 = load i32, i32* %33, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp slt i32 %269, %275
  br i1 %276, label %277, label %303

277:                                              ; preds = %268
  %278 = load double*, double** %12, align 8
  %279 = load i32, i32* %32, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds double, double* %278, i64 %280
  %282 = load double, double* %281, align 8
  %283 = load double*, double** %19, align 8
  %284 = load i32, i32* %31, align 4
  %285 = load i32, i32* %27, align 4
  %286 = mul nsw i32 %284, %285
  %287 = load i32*, i32** %14, align 8
  %288 = load i32, i32* %32, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %26, align 4
  %293 = mul nsw i32 %291, %292
  %294 = add nsw i32 %286, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds double, double* %283, i64 %295
  %297 = load double, double* %296, align 8
  %298 = load double, double* %29, align 8
  %299 = call double @llvm.fmuladd.f64(double %282, double %297, double %298)
  store double %299, double* %29, align 8
  br label %300

300:                                              ; preds = %277
  %301 = load i32, i32* %32, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %32, align 4
  br label %268, !llvm.loop !9

303:                                              ; preds = %268
  %304 = load double, double* %29, align 8
  %305 = load double*, double** %20, align 8
  %306 = load i32, i32* %31, align 4
  %307 = load i32, i32* %25, align 4
  %308 = mul nsw i32 %306, %307
  %309 = load i32, i32* %33, align 4
  %310 = load i32, i32* %24, align 4
  %311 = mul nsw i32 %309, %310
  %312 = add nsw i32 %308, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %305, i64 %313
  store double %304, double* %314, align 8
  br label %315

315:                                              ; preds = %303
  %316 = load i32, i32* %31, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %31, align 4
  br label %247, !llvm.loop !10

318:                                              ; preds = %247
  br label %319

319:                                              ; preds = %318, %240
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %30, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %30, align 4
  br label %188, !llvm.loop !11

323:                                              ; preds = %188
  br label %456

324:                                              ; preds = %179
  store i32 0, i32* %30, align 4
  br label %325

325:                                              ; preds = %452, %324
  %326 = load i32, i32* %30, align 4
  %327 = load i32, i32* %15, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %455

329:                                              ; preds = %325
  %330 = load i32, i32* %23, align 4
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %378

332:                                              ; preds = %329
  %333 = load double*, double** %20, align 8
  %334 = load i32, i32* %30, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds double, double* %333, i64 %335
  %337 = load double, double* %336, align 8
  store double %337, double* %28, align 8
  %338 = load i32*, i32** %13, align 8
  %339 = load i32, i32* %30, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %32, align 4
  br label %343

343:                                              ; preds = %369, %332
  %344 = load i32, i32* %32, align 4
  %345 = load i32*, i32** %13, align 8
  %346 = load i32, i32* %30, align 4
  %347 = add nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = icmp slt i32 %344, %350
  br i1 %351, label %352, label %372

352:                                              ; preds = %343
  %353 = load double*, double** %12, align 8
  %354 = load i32, i32* %32, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds double, double* %353, i64 %355
  %357 = load double, double* %356, align 8
  %358 = load double*, double** %19, align 8
  %359 = load i32*, i32** %14, align 8
  %360 = load i32, i32* %32, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, double* %358, i64 %364
  %366 = load double, double* %365, align 8
  %367 = load double, double* %28, align 8
  %368 = call double @llvm.fmuladd.f64(double %357, double %366, double %367)
  store double %368, double* %28, align 8
  br label %369

369:                                              ; preds = %352
  %370 = load i32, i32* %32, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %32, align 4
  br label %343, !llvm.loop !12

372:                                              ; preds = %343
  %373 = load double, double* %28, align 8
  %374 = load double*, double** %20, align 8
  %375 = load i32, i32* %30, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds double, double* %374, i64 %376
  store double %373, double* %377, align 8
  br label %451

378:                                              ; preds = %329
  store i32 0, i32* %31, align 4
  br label %379

379:                                              ; preds = %447, %378
  %380 = load i32, i32* %31, align 4
  %381 = load i32, i32* %23, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %450

383:                                              ; preds = %379
  %384 = load double*, double** %20, align 8
  %385 = load i32, i32* %31, align 4
  %386 = load i32, i32* %25, align 4
  %387 = mul nsw i32 %385, %386
  %388 = load i32, i32* %30, align 4
  %389 = load i32, i32* %24, align 4
  %390 = mul nsw i32 %388, %389
  %391 = add nsw i32 %387, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, double* %384, i64 %392
  %394 = load double, double* %393, align 8
  store double %394, double* %28, align 8
  %395 = load i32*, i32** %13, align 8
  %396 = load i32, i32* %30, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %32, align 4
  br label %400

400:                                              ; preds = %432, %383
  %401 = load i32, i32* %32, align 4
  %402 = load i32*, i32** %13, align 8
  %403 = load i32, i32* %30, align 4
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = icmp slt i32 %401, %407
  br i1 %408, label %409, label %435

409:                                              ; preds = %400
  %410 = load double*, double** %12, align 8
  %411 = load i32, i32* %32, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds double, double* %410, i64 %412
  %414 = load double, double* %413, align 8
  %415 = load double*, double** %19, align 8
  %416 = load i32, i32* %31, align 4
  %417 = load i32, i32* %27, align 4
  %418 = mul nsw i32 %416, %417
  %419 = load i32*, i32** %14, align 8
  %420 = load i32, i32* %32, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %26, align 4
  %425 = mul nsw i32 %423, %424
  %426 = add nsw i32 %418, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds double, double* %415, i64 %427
  %429 = load double, double* %428, align 8
  %430 = load double, double* %28, align 8
  %431 = call double @llvm.fmuladd.f64(double %414, double %429, double %430)
  store double %431, double* %28, align 8
  br label %432

432:                                              ; preds = %409
  %433 = load i32, i32* %32, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %32, align 4
  br label %400, !llvm.loop !13

435:                                              ; preds = %400
  %436 = load double, double* %28, align 8
  %437 = load double*, double** %20, align 8
  %438 = load i32, i32* %31, align 4
  %439 = load i32, i32* %25, align 4
  %440 = mul nsw i32 %438, %439
  %441 = load i32, i32* %30, align 4
  %442 = load i32, i32* %24, align 4
  %443 = mul nsw i32 %441, %442
  %444 = add nsw i32 %440, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %437, i64 %445
  store double %436, double* %446, align 8
  br label %447

447:                                              ; preds = %435
  %448 = load i32, i32* %31, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %31, align 4
  br label %379, !llvm.loop !14

450:                                              ; preds = %379
  br label %451

451:                                              ; preds = %450, %372
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %30, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %30, align 4
  br label %325, !llvm.loop !15

455:                                              ; preds = %325
  br label %456

456:                                              ; preds = %455, %323
  %457 = load double, double* %7, align 8
  %458 = fcmp une double %457, 1.000000e+00
  br i1 %458, label %459, label %478

459:                                              ; preds = %456
  store i32 0, i32* %30, align 4
  br label %460

460:                                              ; preds = %474, %459
  %461 = load i32, i32* %30, align 4
  %462 = load i32, i32* %15, align 4
  %463 = load i32, i32* %23, align 4
  %464 = mul nsw i32 %462, %463
  %465 = icmp slt i32 %461, %464
  br i1 %465, label %466, label %477

466:                                              ; preds = %460
  %467 = load double, double* %7, align 8
  %468 = load double*, double** %20, align 8
  %469 = load i32, i32* %30, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds double, double* %468, i64 %470
  %472 = load double, double* %471, align 8
  %473 = fmul double %472, %467
  store double %473, double* %471, align 8
  br label %474

474:                                              ; preds = %466
  %475 = load i32, i32* %30, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %30, align 4
  br label %460, !llvm.loop !16

477:                                              ; preds = %460
  br label %478

478:                                              ; preds = %477, %456
  %479 = load i32, i32* %35, align 4
  store i32 %479, i32* %6, align 4
  br label %480

480:                                              ; preds = %478, %132
  %481 = load i32, i32* %6, align 4
  ret i32 %481
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @hypre_error_handler(i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvecT(double noundef %0, %struct.hypre_CSRMatrix* noundef %1, %struct.hypre_Vector* noundef %2, double noundef %3, %struct.hypre_Vector* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.hypre_CSRMatrix*, align 8
  %9 = alloca %struct.hypre_Vector*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.hypre_Vector*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
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
  store double %0, double* %7, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %8, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %9, align 8
  store double %3, double* %10, align 8
  store %struct.hypre_Vector* %4, %struct.hypre_Vector** %11, align 8
  %38 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %39 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %38, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  store double* %40, double** %12, align 8
  %41 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %42 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %13, align 8
  %44 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %45 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %14, align 8
  %47 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %48 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %15, align 4
  %50 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %51 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %54 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %53, i32 0, i32 0
  %55 = load double*, double** %54, align 8
  store double* %55, double** %17, align 8
  %56 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %57 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %56, i32 0, i32 0
  %58 = load double*, double** %57, align 8
  store double* %58, double** %18, align 8
  %59 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %60 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %19, align 4
  %62 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %63 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %20, align 4
  %65 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %66 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %21, align 4
  %68 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %69 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %22, align 4
  %71 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %72 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %23, align 4
  %74 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %75 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %24, align 4
  %77 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %78 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %25, align 4
  store i32 0, i32* %37, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %82 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %5
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 noundef 258, i32 noundef 1)
  br label %88

88:                                               ; preds = %85, %5
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %37, align 4
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 2, i32* %37, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 3, i32* %37, align 4
  br label %107

107:                                              ; preds = %106, %102, %98
  %108 = load double, double* %7, align 8
  %109 = fcmp oeq double %108, 0.000000e+00
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  store i32 0, i32* %27, align 4
  br label %111

111:                                              ; preds = %125, %110
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %21, align 4
  %115 = mul nsw i32 %113, %114
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load double, double* %10, align 8
  %119 = load double*, double** %18, align 8
  %120 = load i32, i32* %27, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %119, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fmul double %123, %118
  store double %124, double* %122, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %27, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %27, align 4
  br label %111, !llvm.loop !17

128:                                              ; preds = %111
  %129 = load i32, i32* %37, align 4
  store i32 %129, i32* %6, align 4
  br label %509

130:                                              ; preds = %107
  %131 = load double, double* %10, align 8
  %132 = load double, double* %7, align 8
  %133 = fdiv double %131, %132
  store double %133, double* %26, align 8
  %134 = load double, double* %26, align 8
  %135 = fcmp une double %134, 1.000000e+00
  br i1 %135, label %136, label %175

136:                                              ; preds = %130
  %137 = load double, double* %26, align 8
  %138 = fcmp oeq double %137, 0.000000e+00
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  store i32 0, i32* %27, align 4
  br label %140

140:                                              ; preds = %151, %139
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %21, align 4
  %144 = mul nsw i32 %142, %143
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load double*, double** %18, align 8
  %148 = load i32, i32* %27, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %147, i64 %149
  store double 0.000000e+00, double* %150, align 8
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %27, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %27, align 4
  br label %140, !llvm.loop !18

154:                                              ; preds = %140
  br label %174

155:                                              ; preds = %136
  store i32 0, i32* %27, align 4
  br label %156

156:                                              ; preds = %170, %155
  %157 = load i32, i32* %27, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %21, align 4
  %160 = mul nsw i32 %158, %159
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load double, double* %26, align 8
  %164 = load double*, double** %18, align 8
  %165 = load i32, i32* %27, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %164, i64 %166
  %168 = load double, double* %167, align 8
  %169 = fmul double %168, %163
  store double %169, double* %167, align 8
  br label %170

170:                                              ; preds = %162
  %171 = load i32, i32* %27, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %27, align 4
  br label %156, !llvm.loop !19

173:                                              ; preds = %156
  br label %174

174:                                              ; preds = %173, %154
  br label %175

175:                                              ; preds = %174, %130
  store i32 1, i32* %36, align 4
  %176 = load i32, i32* %36, align 4
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %369

178:                                              ; preds = %175
  store i32 0, i32* %28, align 4
  br label %179

179:                                              ; preds = %365, %178
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* %36, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %368

183:                                              ; preds = %179
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %36, align 4
  %186 = sdiv i32 %184, %185
  store i32 %186, i32* %34, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %34, align 4
  %189 = load i32, i32* %36, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sub nsw i32 %187, %190
  store i32 %191, i32* %35, align 4
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %35, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %183
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %34, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %28, align 4
  %200 = add nsw i32 %198, %199
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %32, align 4
  %202 = load i32, i32* %28, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %34, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %28, align 4
  %207 = add nsw i32 %205, %206
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %33, align 4
  br label %222

209:                                              ; preds = %183
  %210 = load i32, i32* %28, align 4
  %211 = load i32, i32* %34, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32, i32* %35, align 4
  %214 = add nsw i32 %212, %213
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %32, align 4
  %216 = load i32, i32* %28, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* %34, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32, i32* %35, align 4
  %221 = add nsw i32 %219, %220
  store i32 %221, i32* %33, align 4
  br label %222

222:                                              ; preds = %209, %195
  %223 = load i32, i32* %21, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %284

225:                                              ; preds = %222
  store i32 0, i32* %27, align 4
  br label %226

226:                                              ; preds = %280, %225
  %227 = load i32, i32* %27, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %283

230:                                              ; preds = %226
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %27, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %31, align 4
  br label %236

236:                                              ; preds = %276, %230
  %237 = load i32, i32* %31, align 4
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* %27, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %237, %243
  br i1 %244, label %245, label %279

245:                                              ; preds = %236
  %246 = load i32*, i32** %14, align 8
  %247 = load i32, i32* %31, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %29, align 4
  %251 = load i32, i32* %29, align 4
  %252 = load i32, i32* %32, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %275

254:                                              ; preds = %245
  %255 = load i32, i32* %29, align 4
  %256 = load i32, i32* %33, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %254
  %259 = load double*, double** %12, align 8
  %260 = load i32, i32* %31, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %259, i64 %261
  %263 = load double, double* %262, align 8
  %264 = load double*, double** %17, align 8
  %265 = load i32, i32* %27, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double, double* %264, i64 %266
  %268 = load double, double* %267, align 8
  %269 = load double*, double** %18, align 8
  %270 = load i32, i32* %29, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double, double* %269, i64 %271
  %273 = load double, double* %272, align 8
  %274 = call double @llvm.fmuladd.f64(double %263, double %268, double %273)
  store double %274, double* %272, align 8
  br label %275

275:                                              ; preds = %258, %254, %245
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %31, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %31, align 4
  br label %236, !llvm.loop !20

279:                                              ; preds = %236
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %27, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %27, align 4
  br label %226, !llvm.loop !21

283:                                              ; preds = %226
  br label %364

284:                                              ; preds = %222
  store i32 0, i32* %27, align 4
  br label %285

285:                                              ; preds = %360, %284
  %286 = load i32, i32* %27, align 4
  %287 = load i32, i32* %15, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %363

289:                                              ; preds = %285
  store i32 0, i32* %30, align 4
  br label %290

290:                                              ; preds = %356, %289
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %21, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %359

294:                                              ; preds = %290
  %295 = load i32*, i32** %13, align 8
  %296 = load i32, i32* %27, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %31, align 4
  br label %300

300:                                              ; preds = %352, %294
  %301 = load i32, i32* %31, align 4
  %302 = load i32*, i32** %13, align 8
  %303 = load i32, i32* %27, align 4
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = icmp slt i32 %301, %307
  br i1 %308, label %309, label %355

309:                                              ; preds = %300
  %310 = load i32*, i32** %14, align 8
  %311 = load i32, i32* %31, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %29, align 4
  %315 = load i32, i32* %29, align 4
  %316 = load i32, i32* %32, align 4
  %317 = icmp sgt i32 %315, %316
  br i1 %317, label %318, label %351

318:                                              ; preds = %309
  %319 = load i32, i32* %29, align 4
  %320 = load i32, i32* %33, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %351

322:                                              ; preds = %318
  %323 = load double*, double** %12, align 8
  %324 = load i32, i32* %31, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds double, double* %323, i64 %325
  %327 = load double, double* %326, align 8
  %328 = load double*, double** %17, align 8
  %329 = load i32, i32* %27, align 4
  %330 = load i32, i32* %24, align 4
  %331 = mul nsw i32 %329, %330
  %332 = load i32, i32* %30, align 4
  %333 = load i32, i32* %25, align 4
  %334 = mul nsw i32 %332, %333
  %335 = add nsw i32 %331, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %328, i64 %336
  %338 = load double, double* %337, align 8
  %339 = load double*, double** %18, align 8
  %340 = load i32, i32* %29, align 4
  %341 = load i32, i32* %22, align 4
  %342 = mul nsw i32 %340, %341
  %343 = load i32, i32* %30, align 4
  %344 = load i32, i32* %23, align 4
  %345 = mul nsw i32 %343, %344
  %346 = add nsw i32 %342, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double, double* %339, i64 %347
  %349 = load double, double* %348, align 8
  %350 = call double @llvm.fmuladd.f64(double %327, double %338, double %349)
  store double %350, double* %348, align 8
  br label %351

351:                                              ; preds = %322, %318, %309
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %31, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %31, align 4
  br label %300, !llvm.loop !22

355:                                              ; preds = %300
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %30, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %30, align 4
  br label %290, !llvm.loop !23

359:                                              ; preds = %290
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %27, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %27, align 4
  br label %285, !llvm.loop !24

363:                                              ; preds = %285
  br label %364

364:                                              ; preds = %363, %283
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %28, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %28, align 4
  br label %179, !llvm.loop !25

368:                                              ; preds = %179
  br label %485

369:                                              ; preds = %175
  store i32 0, i32* %27, align 4
  br label %370

370:                                              ; preds = %481, %369
  %371 = load i32, i32* %27, align 4
  %372 = load i32, i32* %15, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %484

374:                                              ; preds = %370
  %375 = load i32, i32* %21, align 4
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %418

377:                                              ; preds = %374
  %378 = load i32*, i32** %13, align 8
  %379 = load i32, i32* %27, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %31, align 4
  br label %383

383:                                              ; preds = %414, %377
  %384 = load i32, i32* %31, align 4
  %385 = load i32*, i32** %13, align 8
  %386 = load i32, i32* %27, align 4
  %387 = add nsw i32 %386, 1
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %385, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = icmp slt i32 %384, %390
  br i1 %391, label %392, label %417

392:                                              ; preds = %383
  %393 = load i32*, i32** %14, align 8
  %394 = load i32, i32* %31, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %29, align 4
  %398 = load double*, double** %12, align 8
  %399 = load i32, i32* %31, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds double, double* %398, i64 %400
  %402 = load double, double* %401, align 8
  %403 = load double*, double** %17, align 8
  %404 = load i32, i32* %27, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds double, double* %403, i64 %405
  %407 = load double, double* %406, align 8
  %408 = load double*, double** %18, align 8
  %409 = load i32, i32* %29, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds double, double* %408, i64 %410
  %412 = load double, double* %411, align 8
  %413 = call double @llvm.fmuladd.f64(double %402, double %407, double %412)
  store double %413, double* %411, align 8
  br label %414

414:                                              ; preds = %392
  %415 = load i32, i32* %31, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %31, align 4
  br label %383, !llvm.loop !26

417:                                              ; preds = %383
  br label %480

418:                                              ; preds = %374
  store i32 0, i32* %30, align 4
  br label %419

419:                                              ; preds = %476, %418
  %420 = load i32, i32* %30, align 4
  %421 = load i32, i32* %21, align 4
  %422 = icmp slt i32 %420, %421
  br i1 %422, label %423, label %479

423:                                              ; preds = %419
  %424 = load i32*, i32** %13, align 8
  %425 = load i32, i32* %27, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  store i32 %428, i32* %31, align 4
  br label %429

429:                                              ; preds = %472, %423
  %430 = load i32, i32* %31, align 4
  %431 = load i32*, i32** %13, align 8
  %432 = load i32, i32* %27, align 4
  %433 = add nsw i32 %432, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %431, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = icmp slt i32 %430, %436
  br i1 %437, label %438, label %475

438:                                              ; preds = %429
  %439 = load i32*, i32** %14, align 8
  %440 = load i32, i32* %31, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %29, align 4
  %444 = load double*, double** %12, align 8
  %445 = load i32, i32* %31, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds double, double* %444, i64 %446
  %448 = load double, double* %447, align 8
  %449 = load double*, double** %17, align 8
  %450 = load i32, i32* %27, align 4
  %451 = load i32, i32* %24, align 4
  %452 = mul nsw i32 %450, %451
  %453 = load i32, i32* %30, align 4
  %454 = load i32, i32* %25, align 4
  %455 = mul nsw i32 %453, %454
  %456 = add nsw i32 %452, %455
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds double, double* %449, i64 %457
  %459 = load double, double* %458, align 8
  %460 = load double*, double** %18, align 8
  %461 = load i32, i32* %29, align 4
  %462 = load i32, i32* %22, align 4
  %463 = mul nsw i32 %461, %462
  %464 = load i32, i32* %30, align 4
  %465 = load i32, i32* %23, align 4
  %466 = mul nsw i32 %464, %465
  %467 = add nsw i32 %463, %466
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds double, double* %460, i64 %468
  %470 = load double, double* %469, align 8
  %471 = call double @llvm.fmuladd.f64(double %448, double %459, double %470)
  store double %471, double* %469, align 8
  br label %472

472:                                              ; preds = %438
  %473 = load i32, i32* %31, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %31, align 4
  br label %429, !llvm.loop !27

475:                                              ; preds = %429
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %30, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %30, align 4
  br label %419, !llvm.loop !28

479:                                              ; preds = %419
  br label %480

480:                                              ; preds = %479, %417
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %27, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %27, align 4
  br label %370, !llvm.loop !29

484:                                              ; preds = %370
  br label %485

485:                                              ; preds = %484, %368
  %486 = load double, double* %7, align 8
  %487 = fcmp une double %486, 1.000000e+00
  br i1 %487, label %488, label %507

488:                                              ; preds = %485
  store i32 0, i32* %27, align 4
  br label %489

489:                                              ; preds = %503, %488
  %490 = load i32, i32* %27, align 4
  %491 = load i32, i32* %16, align 4
  %492 = load i32, i32* %21, align 4
  %493 = mul nsw i32 %491, %492
  %494 = icmp slt i32 %490, %493
  br i1 %494, label %495, label %506

495:                                              ; preds = %489
  %496 = load double, double* %7, align 8
  %497 = load double*, double** %18, align 8
  %498 = load i32, i32* %27, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds double, double* %497, i64 %499
  %501 = load double, double* %500, align 8
  %502 = fmul double %501, %496
  store double %502, double* %500, align 8
  br label %503

503:                                              ; preds = %495
  %504 = load i32, i32* %27, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %27, align 4
  br label %489, !llvm.loop !30

506:                                              ; preds = %489
  br label %507

507:                                              ; preds = %506, %485
  %508 = load i32, i32* %37, align 4
  store i32 %508, i32* %6, align 4
  br label %509

509:                                              ; preds = %507, %128
  %510 = load i32, i32* %6, align 4
  ret i32 %510
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvec_FF(double noundef %0, %struct.hypre_CSRMatrix* noundef %1, %struct.hypre_Vector* noundef %2, double noundef %3, %struct.hypre_Vector* noundef %4, i32* noundef %5, i32* noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.hypre_CSRMatrix*, align 8
  %12 = alloca %struct.hypre_Vector*, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.hypre_Vector*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store double %0, double* %10, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %11, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %12, align 8
  store double %3, double* %13, align 8
  store %struct.hypre_Vector* %4, %struct.hypre_Vector** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %31 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %32 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %31, i32 0, i32 0
  %33 = load double*, double** %32, align 8
  store double* %33, double** %18, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %19, align 8
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %38 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %20, align 8
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %41 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %21, align 4
  %43 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %44 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %22, align 4
  %46 = load %struct.hypre_Vector*, %struct.hypre_Vector** %12, align 8
  %47 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %46, i32 0, i32 0
  %48 = load double*, double** %47, align 8
  store double* %48, double** %23, align 8
  %49 = load %struct.hypre_Vector*, %struct.hypre_Vector** %14, align 8
  %50 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %49, i32 0, i32 0
  %51 = load double*, double** %50, align 8
  store double* %51, double** %24, align 8
  %52 = load %struct.hypre_Vector*, %struct.hypre_Vector** %12, align 8
  %53 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %25, align 4
  %55 = load %struct.hypre_Vector*, %struct.hypre_Vector** %14, align 8
  %56 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %26, align 4
  store i32 0, i32* %30, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %25, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %8
  store i32 1, i32* %30, align 4
  br label %62

62:                                               ; preds = %61, %8
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %26, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 2, i32* %30, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %25, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %26, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 3, i32* %30, align 4
  br label %76

76:                                               ; preds = %75, %71, %67
  %77 = load double, double* %10, align 8
  %78 = fcmp oeq double %77, 0.000000e+00
  br i1 %78, label %79, label %106

79:                                               ; preds = %76
  store i32 0, i32* %28, align 4
  br label %80

80:                                               ; preds = %101, %79
  %81 = load i32, i32* %28, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %28, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load double, double* %13, align 8
  %94 = load double*, double** %24, align 8
  %95 = load i32, i32* %28, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fmul double %98, %93
  store double %99, double* %97, align 8
  br label %100

100:                                              ; preds = %92, %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %28, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %28, align 4
  br label %80, !llvm.loop !31

104:                                              ; preds = %80
  %105 = load i32, i32* %30, align 4
  store i32 %105, i32* %9, align 4
  br label %272

106:                                              ; preds = %76
  %107 = load double, double* %13, align 8
  %108 = load double, double* %10, align 8
  %109 = fdiv double %107, %108
  store double %109, double* %27, align 8
  %110 = load double, double* %27, align 8
  %111 = fcmp une double %110, 1.000000e+00
  br i1 %111, label %112, label %165

112:                                              ; preds = %106
  %113 = load double, double* %27, align 8
  %114 = fcmp oeq double %113, 0.000000e+00
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  store i32 0, i32* %28, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %28, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %28, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load double*, double** %24, align 8
  %130 = load i32, i32* %28, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  store double 0.000000e+00, double* %132, align 8
  br label %133

133:                                              ; preds = %128, %120
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %28, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %28, align 4
  br label %116, !llvm.loop !32

137:                                              ; preds = %116
  br label %164

138:                                              ; preds = %112
  store i32 0, i32* %28, align 4
  br label %139

139:                                              ; preds = %160, %138
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %28, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load double, double* %27, align 8
  %153 = load double*, double** %24, align 8
  %154 = load i32, i32* %28, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  %157 = load double, double* %156, align 8
  %158 = fmul double %157, %152
  store double %158, double* %156, align 8
  br label %159

159:                                              ; preds = %151, %143
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %28, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %28, align 4
  br label %139, !llvm.loop !33

163:                                              ; preds = %139
  br label %164

164:                                              ; preds = %163, %137
  br label %165

165:                                              ; preds = %164, %106
  store i32 0, i32* %28, align 4
  br label %166

166:                                              ; preds = %238, %165
  %167 = load i32, i32* %28, align 4
  %168 = load i32, i32* %21, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %241

170:                                              ; preds = %166
  %171 = load i32*, i32** %15, align 8
  %172 = load i32, i32* %28, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %237

178:                                              ; preds = %170
  %179 = load double*, double** %24, align 8
  %180 = load i32, i32* %28, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %179, i64 %181
  %183 = load double, double* %182, align 8
  store double %183, double* %27, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load i32, i32* %28, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %29, align 4
  br label %189

189:                                              ; preds = %228, %178
  %190 = load i32, i32* %29, align 4
  %191 = load i32*, i32** %19, align 8
  %192 = load i32, i32* %28, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %190, %196
  br i1 %197, label %198, label %231

198:                                              ; preds = %189
  %199 = load i32*, i32** %16, align 8
  %200 = load i32*, i32** %20, align 8
  %201 = load i32, i32* %29, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %199, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %17, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %227

210:                                              ; preds = %198
  %211 = load double*, double** %18, align 8
  %212 = load i32, i32* %29, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %211, i64 %213
  %215 = load double, double* %214, align 8
  %216 = load double*, double** %23, align 8
  %217 = load i32*, i32** %20, align 8
  %218 = load i32, i32* %29, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %216, i64 %222
  %224 = load double, double* %223, align 8
  %225 = load double, double* %27, align 8
  %226 = call double @llvm.fmuladd.f64(double %215, double %224, double %225)
  store double %226, double* %27, align 8
  br label %227

227:                                              ; preds = %210, %198
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %29, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %29, align 4
  br label %189, !llvm.loop !34

231:                                              ; preds = %189
  %232 = load double, double* %27, align 8
  %233 = load double*, double** %24, align 8
  %234 = load i32, i32* %28, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds double, double* %233, i64 %235
  store double %232, double* %236, align 8
  br label %237

237:                                              ; preds = %231, %170
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %28, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %28, align 4
  br label %166, !llvm.loop !35

241:                                              ; preds = %166
  %242 = load double, double* %10, align 8
  %243 = fcmp une double %242, 1.000000e+00
  br i1 %243, label %244, label %270

244:                                              ; preds = %241
  store i32 0, i32* %28, align 4
  br label %245

245:                                              ; preds = %266, %244
  %246 = load i32, i32* %28, align 4
  %247 = load i32, i32* %21, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %269

249:                                              ; preds = %245
  %250 = load i32*, i32** %15, align 8
  %251 = load i32, i32* %28, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %249
  %258 = load double, double* %10, align 8
  %259 = load double*, double** %24, align 8
  %260 = load i32, i32* %28, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %259, i64 %261
  %263 = load double, double* %262, align 8
  %264 = fmul double %263, %258
  store double %264, double* %262, align 8
  br label %265

265:                                              ; preds = %257, %249
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %28, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %28, align 4
  br label %245, !llvm.loop !36

269:                                              ; preds = %245
  br label %270

270:                                              ; preds = %269, %241
  %271 = load i32, i32* %30, align 4
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %270, %104
  %273 = load i32, i32* %9, align 4
  ret i32 %273
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

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
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
