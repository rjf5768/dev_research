; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/dbisect.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/dbisect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [40 x i8] c"bisect: Couldn't allocate memory for wu\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sturm(i32 noundef %0, double* noundef %1, double* noundef %2, double* noundef %3, double noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double %4, double* %10, align 8
  store i32 0, i32* %12, align 4
  store double 1.000000e+00, double* %13, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %61, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = load double, double* %13, align 8
  %21 = fcmp une double %20, 0.000000e+00
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load double*, double** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  %28 = load double, double* %10, align 8
  %29 = fsub double %27, %28
  %30 = load double*, double** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double, double* %13, align 8
  %36 = fdiv double %34, %35
  %37 = fsub double %29, %36
  store double %37, double* %13, align 8
  br label %54

38:                                               ; preds = %19
  %39 = load double*, double** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load double, double* %10, align 8
  %45 = fsub double %43, %44
  %46 = load double*, double** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = call double @llvm.fabs.f64(double %50)
  %52 = fdiv double %51, 0x3CB0000000000000
  %53 = fsub double %45, %52
  store double %53, double* %13, align 8
  br label %54

54:                                               ; preds = %38, %22
  %55 = load double, double* %13, align 8
  %56 = fcmp olt double %55, 0.000000e+00
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %15, !llvm.loop !4

64:                                               ; preds = %15
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dbisect(double* noundef %0, double* noundef %1, double* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double* noundef %7, i32* noundef %8, double* noundef %9) #0 {
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double*, align 8
  store double* %0, double** %11, align 8
  store double* %1, double** %12, align 8
  store double* %2, double** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store double %6, double* %17, align 8
  store double* %7, double** %18, align 8
  store i32* %8, i32** %19, align 8
  store double* %9, double** %20, align 8
  %31 = load double*, double** %12, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  store double 0.000000e+00, double* %32, align 8
  %33 = load double*, double** %13, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  store double 0.000000e+00, double* %34, align 8
  %35 = load double*, double** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %35, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %41, i64 %44
  %46 = load double, double* %45, align 8
  %47 = call double @llvm.fabs.f64(double %46)
  %48 = call double @llvm.fmuladd.f64(double -1.010000e+00, double %47, double %40)
  store double %48, double* %23, align 8
  %49 = load double*, double** %11, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %49, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %12, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %55, i64 %58
  %60 = load double, double* %59, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  %62 = call double @llvm.fmuladd.f64(double 1.010000e+00, double %61, double %54)
  store double %62, double* %24, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, 2
  store i32 %64, i32* %21, align 4
  br label %65

65:                                               ; preds = %120, %10
  %66 = load i32, i32* %21, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %65
  %69 = load double*, double** %12, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = call double @llvm.fabs.f64(double %73)
  %75 = load double*, double** %12, align 8
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %75, i64 %78
  %80 = load double, double* %79, align 8
  %81 = call double @llvm.fabs.f64(double %80)
  %82 = fadd double %74, %81
  %83 = fmul double 1.010000e+00, %82
  store double %83, double* %22, align 8
  %84 = load double*, double** %11, align 8
  %85 = load i32, i32* %21, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8
  %89 = load double, double* %22, align 8
  %90 = fadd double %88, %89
  %91 = load double, double* %24, align 8
  %92 = fcmp ogt double %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %68
  %94 = load double*, double** %11, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = load double, double* %22, align 8
  %100 = fadd double %98, %99
  store double %100, double* %24, align 8
  br label %101

101:                                              ; preds = %93, %68
  %102 = load double*, double** %11, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  %106 = load double, double* %105, align 8
  %107 = load double, double* %22, align 8
  %108 = fsub double %106, %107
  %109 = load double, double* %23, align 8
  %110 = fcmp olt double %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %101
  %112 = load double*, double** %11, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  %116 = load double, double* %115, align 8
  %117 = load double, double* %22, align 8
  %118 = fsub double %116, %117
  store double %118, double* %23, align 8
  br label %119

119:                                              ; preds = %111, %101
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %21, align 4
  br label %65, !llvm.loop !6

123:                                              ; preds = %65
  %124 = load double, double* %23, align 8
  %125 = load double, double* %24, align 8
  %126 = fadd double %124, %125
  %127 = fcmp ogt double %126, 0.000000e+00
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load double, double* %24, align 8
  br label %133

130:                                              ; preds = %123
  %131 = load double, double* %23, align 8
  %132 = fneg double %131
  br label %133

133:                                              ; preds = %130, %128
  %134 = phi double [ %129, %128 ], [ %132, %130 ]
  %135 = fmul double 0x3CB0000000000000, %134
  %136 = load double*, double** %18, align 8
  store double %135, double* %136, align 8
  %137 = load double, double* %17, align 8
  %138 = fcmp ole double %137, 0.000000e+00
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load double*, double** %18, align 8
  %141 = load double, double* %140, align 8
  store double %141, double* %17, align 8
  br label %142

142:                                              ; preds = %139, %133
  %143 = load double, double* %17, align 8
  %144 = load double*, double** %18, align 8
  %145 = load double, double* %144, align 8
  %146 = fmul double 7.000000e+00, %145
  %147 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %143, double %146)
  %148 = load double*, double** %18, align 8
  store double %147, double* %148, align 8
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = call noalias i8* @calloc(i64 noundef %151, i64 noundef 8) #5
  %153 = bitcast i8* %152 to double*
  store double* %153, double** %30, align 8
  %154 = icmp eq double* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i32 @fputs(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %156)
  call void @exit(i32 noundef 1) #6
  unreachable

158:                                              ; preds = %142
  %159 = load double, double* %24, align 8
  store double %159, double* %29, align 8
  %160 = load i32, i32* %16, align 4
  store i32 %160, i32* %21, align 4
  br label %161

161:                                              ; preds = %176, %158
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %161
  %166 = load double, double* %24, align 8
  %167 = load double*, double** %20, align 8
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  store double %166, double* %170, align 8
  %171 = load double, double* %23, align 8
  %172 = load double*, double** %30, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %172, i64 %174
  store double %171, double* %175, align 8
  br label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %21, align 4
  br label %161, !llvm.loop !7

179:                                              ; preds = %161
  %180 = load i32*, i32** %19, align 8
  store i32 0, i32* %180, align 4
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %26, align 4
  br label %182

182:                                              ; preds = %304, %179
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp sge i32 %183, %184
  br i1 %185, label %186, label %307

186:                                              ; preds = %182
  %187 = load double, double* %23, align 8
  store double %187, double* %28, align 8
  %188 = load i32, i32* %26, align 4
  store i32 %188, i32* %21, align 4
  br label %189

189:                                              ; preds = %208, %186
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = load double, double* %28, align 8
  %195 = load double*, double** %30, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds double, double* %195, i64 %197
  %199 = load double, double* %198, align 8
  %200 = fcmp olt double %194, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load double*, double** %30, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %202, i64 %204
  %206 = load double, double* %205, align 8
  store double %206, double* %28, align 8
  br label %211

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %21, align 4
  br label %189, !llvm.loop !8

211:                                              ; preds = %201, %189
  %212 = load double, double* %29, align 8
  %213 = load double*, double** %20, align 8
  %214 = load i32, i32* %26, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %213, i64 %215
  %217 = load double, double* %216, align 8
  %218 = fcmp ogt double %212, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %211
  %220 = load double*, double** %20, align 8
  %221 = load i32, i32* %26, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %220, i64 %222
  %224 = load double, double* %223, align 8
  store double %224, double* %29, align 8
  br label %225

225:                                              ; preds = %219, %211
  %226 = load double, double* %28, align 8
  %227 = load double, double* %29, align 8
  %228 = fadd double %226, %227
  %229 = fdiv double %228, 2.000000e+00
  store double %229, double* %27, align 8
  br label %230

230:                                              ; preds = %290, %225
  %231 = load double, double* %29, align 8
  %232 = load double, double* %28, align 8
  %233 = fsub double %231, %232
  %234 = load double, double* %28, align 8
  %235 = call double @llvm.fabs.f64(double %234)
  %236 = load double, double* %29, align 8
  %237 = call double @llvm.fabs.f64(double %236)
  %238 = fadd double %235, %237
  %239 = load double, double* %17, align 8
  %240 = call double @llvm.fmuladd.f64(double 0x3CC0000000000000, double %238, double %239)
  %241 = fcmp ogt double %233, %240
  br i1 %241, label %242, label %295

242:                                              ; preds = %230
  %243 = load i32*, i32** %19, align 8
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  %246 = load i32*, i32** %19, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %14, align 4
  %248 = load double*, double** %11, align 8
  %249 = load double*, double** %12, align 8
  %250 = load double*, double** %13, align 8
  %251 = load double, double* %27, align 8
  %252 = call i32 @sturm(i32 noundef %247, double* noundef %248, double* noundef %249, double* noundef %250, double noundef %251)
  store i32 %252, i32* %25, align 4
  %253 = load i32, i32* %25, align 4
  %254 = load i32, i32* %26, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %288

256:                                              ; preds = %242
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* %15, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load double, double* %27, align 8
  %262 = load double*, double** %30, align 8
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, double* %262, i64 %264
  store double %261, double* %265, align 8
  store double %261, double* %28, align 8
  br label %287

266:                                              ; preds = %256
  %267 = load double, double* %27, align 8
  %268 = load double*, double** %30, align 8
  %269 = load i32, i32* %25, align 4
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double, double* %268, i64 %271
  store double %267, double* %272, align 8
  store double %267, double* %28, align 8
  %273 = load double*, double** %20, align 8
  %274 = load i32, i32* %25, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds double, double* %273, i64 %275
  %277 = load double, double* %276, align 8
  %278 = load double, double* %27, align 8
  %279 = fcmp ogt double %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %266
  %281 = load double, double* %27, align 8
  %282 = load double*, double** %20, align 8
  %283 = load i32, i32* %25, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, double* %282, i64 %284
  store double %281, double* %285, align 8
  br label %286

286:                                              ; preds = %280, %266
  br label %287

287:                                              ; preds = %286, %260
  br label %290

288:                                              ; preds = %242
  %289 = load double, double* %27, align 8
  store double %289, double* %29, align 8
  br label %290

290:                                              ; preds = %288, %287
  %291 = load double, double* %28, align 8
  %292 = load double, double* %29, align 8
  %293 = fadd double %291, %292
  %294 = fdiv double %293, 2.000000e+00
  store double %294, double* %27, align 8
  br label %230, !llvm.loop !9

295:                                              ; preds = %230
  %296 = load double, double* %28, align 8
  %297 = load double, double* %29, align 8
  %298 = fadd double %296, %297
  %299 = fdiv double %298, 2.000000e+00
  %300 = load double*, double** %20, align 8
  %301 = load i32, i32* %26, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds double, double* %300, i64 %302
  store double %299, double* %303, align 8
  br label %304

304:                                              ; preds = %295
  %305 = load i32, i32* %26, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %26, align 4
  br label %182, !llvm.loop !10

307:                                              ; preds = %182
  %308 = load double*, double** %30, align 8
  %309 = bitcast double* %308 to i8*
  call void @free(i8* noundef %309) #5
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
