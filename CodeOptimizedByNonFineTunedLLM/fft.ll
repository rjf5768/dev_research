; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/fft.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/fft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._Fukusosuu = type { double, double }

@fft.last_n = internal global i32 0, align 4
@fft.bitrev = internal global i32* null, align 8
@fft.sintbl = internal global float* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fft(i32 noundef %0, %struct._Fukusosuu* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._Fukusosuu*, align 8
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
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store %struct._Fukusosuu* %1, %struct._Fukusosuu** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %28

27:                                               ; preds = %3
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %5, align 4
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @fft.last_n, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* @fft.last_n, align 4
  %39 = load float*, float** @fft.sintbl, align 8
  %40 = bitcast float* %39 to i8*
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = call i8* @realloc(i8* noundef %40, i64 noundef %45) #4
  %47 = bitcast i8* %46 to float*
  store float* %47, float** @fft.sintbl, align 8
  %48 = load i32*, i32** @fft.bitrev, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = call i8* @realloc(i8* noundef %49, i64 noundef %52) #4
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** @fft.bitrev, align 8
  %55 = load float*, float** @fft.sintbl, align 8
  %56 = icmp eq float* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %37
  %58 = load i32*, i32** @fft.bitrev, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %37
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %317

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load float*, float** @fft.sintbl, align 8
  call void @make_sintbl(i32 noundef %64, float* noundef %65)
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** @fft.bitrev, align 8
  call void @make_bitrev(i32 noundef %66, i32* noundef %67)
  br label %68

68:                                               ; preds = %63, %34
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %134, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %137

73:                                               ; preds = %69
  %74 = load i32*, i32** @fft.bitrev, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %133

82:                                               ; preds = %73
  %83 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %83, i64 %85
  %87 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = fptrunc double %88 to float
  store float %89, float* %17, align 4
  %90 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %90, i64 %92
  %94 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %93, i32 0, i32 0
  %95 = load double, double* %94, align 8
  %96 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %96, i64 %98
  %100 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %99, i32 0, i32 0
  store double %95, double* %100, align 8
  %101 = load float, float* %17, align 4
  %102 = fpext float %101 to double
  %103 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %103, i64 %105
  %107 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %106, i32 0, i32 0
  store double %102, double* %107, align 8
  %108 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %108, i64 %110
  %112 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %111, i32 0, i32 1
  %113 = load double, double* %112, align 8
  %114 = fptrunc double %113 to float
  store float %114, float* %17, align 4
  %115 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %115, i64 %117
  %119 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %118, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %121, i64 %123
  %125 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %124, i32 0, i32 1
  store double %120, double* %125, align 8
  %126 = load float, float* %17, align 4
  %127 = fpext float %126 to double
  %128 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %128, i64 %130
  %132 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %131, i32 0, i32 1
  store double %127, double* %132, align 8
  br label %133

133:                                              ; preds = %82, %73
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %69, !llvm.loop !4

137:                                              ; preds = %69
  store i32 1, i32* %10, align 4
  br label %138

138:                                              ; preds = %283, %137
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %285

142:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %14, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %279, %142
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %282

153:                                              ; preds = %149
  %154 = load float*, float** @fft.sintbl, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %154, i64 %158
  %160 = load float, float* %159, align 4
  store float %160, float* %19, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load float*, float** @fft.sintbl, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %164, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fneg float %168
  store float %169, float* %18, align 4
  br label %176

170:                                              ; preds = %153
  %171 = load float*, float** @fft.sintbl, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  %175 = load float, float* %174, align 4
  store float %175, float* %18, align 4
  br label %176

176:                                              ; preds = %170, %163
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %271, %176
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %275

182:                                              ; preds = %178
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  store i32 %185, i32* %11, align 4
  %186 = load float, float* %18, align 4
  %187 = fpext float %186 to double
  %188 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %188, i64 %190
  %192 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %191, i32 0, i32 1
  %193 = load double, double* %192, align 8
  %194 = load float, float* %19, align 4
  %195 = fpext float %194 to double
  %196 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %196, i64 %198
  %200 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %199, i32 0, i32 0
  %201 = load double, double* %200, align 8
  %202 = fmul double %195, %201
  %203 = call double @llvm.fmuladd.f64(double %187, double %193, double %202)
  %204 = fptrunc double %203 to float
  store float %204, float* %20, align 4
  %205 = load float, float* %19, align 4
  %206 = fpext float %205 to double
  %207 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %207, i64 %209
  %211 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %210, i32 0, i32 1
  %212 = load double, double* %211, align 8
  %213 = load float, float* %18, align 4
  %214 = fpext float %213 to double
  %215 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %215, i64 %217
  %219 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %218, i32 0, i32 0
  %220 = load double, double* %219, align 8
  %221 = fmul double %214, %220
  %222 = fneg double %221
  %223 = call double @llvm.fmuladd.f64(double %206, double %212, double %222)
  %224 = fptrunc double %223 to float
  store float %224, float* %21, align 4
  %225 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %225, i64 %227
  %229 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %228, i32 0, i32 0
  %230 = load double, double* %229, align 8
  %231 = load float, float* %20, align 4
  %232 = fpext float %231 to double
  %233 = fsub double %230, %232
  %234 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %234, i64 %236
  %238 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %237, i32 0, i32 0
  store double %233, double* %238, align 8
  %239 = load float, float* %20, align 4
  %240 = fpext float %239 to double
  %241 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %241, i64 %243
  %245 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %244, i32 0, i32 0
  %246 = load double, double* %245, align 8
  %247 = fadd double %246, %240
  store double %247, double* %245, align 8
  %248 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %248, i64 %250
  %252 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %251, i32 0, i32 1
  %253 = load double, double* %252, align 8
  %254 = load float, float* %21, align 4
  %255 = fpext float %254 to double
  %256 = fsub double %253, %255
  %257 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %257, i64 %259
  %261 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %260, i32 0, i32 1
  store double %256, double* %261, align 8
  %262 = load float, float* %21, align 4
  %263 = fpext float %262 to double
  %264 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %264, i64 %266
  %268 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %267, i32 0, i32 1
  %269 = load double, double* %268, align 8
  %270 = fadd double %269, %263
  store double %270, double* %268, align 8
  br label %271

271:                                              ; preds = %182
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %8, align 4
  br label %178, !llvm.loop !6

275:                                              ; preds = %178
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %12, align 4
  br label %279

279:                                              ; preds = %275
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %149, !llvm.loop !7

282:                                              ; preds = %149
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %14, align 4
  store i32 %284, i32* %10, align 4
  br label %138, !llvm.loop !8

285:                                              ; preds = %138
  %286 = load i32, i32* %16, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %316, label %288

288:                                              ; preds = %285
  store i32 0, i32* %8, align 4
  br label %289

289:                                              ; preds = %312, %288
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* %5, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %315

293:                                              ; preds = %289
  %294 = load i32, i32* %5, align 4
  %295 = sitofp i32 %294 to double
  %296 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %296, i64 %298
  %300 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %299, i32 0, i32 0
  %301 = load double, double* %300, align 8
  %302 = fdiv double %301, %295
  store double %302, double* %300, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sitofp i32 %303 to double
  %305 = load %struct._Fukusosuu*, %struct._Fukusosuu** %6, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %305, i64 %307
  %309 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %308, i32 0, i32 1
  %310 = load double, double* %309, align 8
  %311 = fdiv double %310, %304
  store double %311, double* %309, align 8
  br label %312

312:                                              ; preds = %293
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %8, align 4
  br label %289, !llvm.loop !9

315:                                              ; preds = %289
  br label %316

316:                                              ; preds = %315, %285
  store i32 0, i32* %4, align 4
  br label %317

317:                                              ; preds = %316, %60
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @make_sintbl(i32 noundef %0, float* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store float* %1, float** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double 0x400921FB54442D18, %21
  %23 = call double @sin(double noundef %22) #4
  store double %23, double* %13, align 8
  %24 = load double, double* %13, align 8
  %25 = fmul double 2.000000e+00, %24
  %26 = load double, double* %13, align 8
  %27 = fmul double %25, %26
  store double %27, double* %11, align 8
  %28 = load double, double* %11, align 8
  %29 = load double, double* %11, align 8
  %30 = fsub double 2.000000e+00, %29
  %31 = fmul double %28, %30
  %32 = call double @sqrt(double noundef %31) #4
  store double %32, double* %12, align 8
  %33 = load double, double* %11, align 8
  %34 = fmul double 2.000000e+00, %33
  store double %34, double* %13, align 8
  %35 = load float*, float** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  store float 1.000000e+00, float* %38, align 4
  store double 1.000000e+00, double* %9, align 8
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  store float 0.000000e+00, float* %40, align 4
  store double 0.000000e+00, double* %10, align 8
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %75, %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load double, double* %11, align 8
  %47 = load double, double* %9, align 8
  %48 = fsub double %47, %46
  store double %48, double* %9, align 8
  %49 = load double, double* %13, align 8
  %50 = load double, double* %9, align 8
  %51 = load double, double* %11, align 8
  %52 = call double @llvm.fmuladd.f64(double %49, double %50, double %51)
  store double %52, double* %11, align 8
  %53 = load double, double* %12, align 8
  %54 = load double, double* %10, align 8
  %55 = fadd double %54, %53
  store double %55, double* %10, align 8
  %56 = load double, double* %13, align 8
  %57 = load double, double* %10, align 8
  %58 = load double, double* %12, align 8
  %59 = fneg double %56
  %60 = call double @llvm.fmuladd.f64(double %59, double %57, double %58)
  store double %60, double* %12, align 8
  %61 = load double, double* %10, align 8
  %62 = fptrunc double %61 to float
  %63 = load float*, float** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  store float %62, float* %66, align 4
  %67 = load double, double* %9, align 8
  %68 = fptrunc double %67 to float
  %69 = load float*, float** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %69, i64 %73
  store float %68, float* %74, align 4
  br label %75

75:                                               ; preds = %45
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %41, !llvm.loop !10

78:                                               ; preds = %41
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = call double @sqrt(double noundef 5.000000e-01) #4
  %83 = fptrunc double %82 to float
  %84 = load float*, float** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  store float %83, float* %87, align 4
  br label %88

88:                                               ; preds = %81, %78
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %105, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load float*, float** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = load float*, float** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %99, i64 %103
  store float %98, float* %104, align 4
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %89, !llvm.loop !11

108:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %128, %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %111, %112
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  %116 = load float*, float** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fneg float %120
  %122 = load float*, float** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %122, i64 %126
  store float %121, float* %127, align 4
  br label %128

128:                                              ; preds = %115
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %109, !llvm.loop !12

131:                                              ; preds = %109
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @make_bitrev(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %38

22:                                               ; preds = %11
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %28, %22
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %7, align 4
  br label %24, !llvm.loop !13

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %11

38:                                               ; preds = %21
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
