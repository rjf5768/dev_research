; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.isamax.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.isamax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c" maximum index = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" maximum value = %e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x float], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 20
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sitofp i32 %9 to float
  %11 = fpext float %10 to double
  %12 = fadd double -2.000000e+00, %11
  %13 = fptrunc double %12 to float
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [20 x float], [20 x float]* %2, i64 0, i64 %15
  store float %13, float* %16, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5, !llvm.loop !4

20:                                               ; preds = %5
  %21 = getelementptr inbounds [20 x float], [20 x float]* %2, i64 0, i64 7
  store float 3.300000e+01, float* %21, align 4
  %22 = getelementptr inbounds [20 x float], [20 x float]* %2, i64 0, i64 0
  %23 = call i32 @isamax0(i32 noundef 20, float* noundef %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %24)
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [20 x float], [20 x float]* %2, i64 0, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), double noundef %30)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isamax0(i32 noundef %0, float* noundef %1) #1 {
  %3 = alloca float, align 4
  %4 = alloca <4 x float>, align 16
  %5 = alloca float, align 4
  %6 = alloca <4 x float>, align 16
  %7 = alloca float*, align 8
  %8 = alloca <4 x float>, align 16
  %9 = alloca float*, align 8
  %10 = alloca <4 x float>, align 16
  %11 = alloca <4 x float>, align 16
  %12 = alloca <4 x float>, align 16
  %13 = alloca <4 x float>, align 16
  %14 = alloca <4 x float>, align 16
  %15 = alloca <4 x float>, align 16
  %16 = alloca <4 x float>, align 16
  %17 = alloca <4 x float>, align 16
  %18 = alloca <4 x float>, align 16
  %19 = alloca <4 x float>, align 16
  %20 = alloca <4 x float>, align 16
  %21 = alloca <4 x float>, align 16
  %22 = alloca <4 x float>, align 16
  %23 = alloca <4 x float>, align 16
  %24 = alloca <4 x float>, align 16
  %25 = alloca <4 x float>, align 16
  %26 = alloca <4 x float>, align 16
  %27 = alloca <4 x float>, align 16
  %28 = alloca <4 x float>, align 16
  %29 = alloca <4 x float>, align 16
  %30 = alloca <4 x float>, align 16
  %31 = alloca <4 x float>, align 16
  %32 = alloca <4 x float>, align 16
  %33 = alloca <4 x float>, align 16
  %34 = alloca <4 x float>, align 16
  %35 = alloca <4 x float>, align 16
  %36 = alloca <4 x float>, align 16
  %37 = alloca <4 x float>, align 16
  %38 = alloca <4 x float>, align 16
  %39 = alloca float*, align 8
  %40 = alloca float*, align 8
  %41 = alloca float*, align 8
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca <4 x float>, align 16
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca <4 x float>, align 16
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca float*, align 8
  %57 = alloca float, align 4
  %58 = alloca float, align 4
  %59 = alloca float, align 4
  %60 = alloca float*, align 8
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca <4 x float>, align 16
  %70 = alloca <4 x float>, align 16
  %71 = alloca <4 x float>, align 16
  %72 = alloca <4 x float>, align 16
  %73 = alloca <4 x float>, align 16
  %74 = alloca <4 x float>, align 16
  %75 = alloca <4 x float>, align 16
  %76 = alloca [8 x float], align 16
  %77 = alloca [8 x float], align 16
  store i32 %0, i32* %55, align 4
  store float* %1, float** %56, align 8
  %78 = load i32, i32* %55, align 4
  %79 = icmp slt i32 %78, 12
  br i1 %79, label %80, label %112

80:                                               ; preds = %2
  store i32 0, i32* %64, align 4
  store float 0.000000e+00, float* %57, align 4
  store i32 0, i32* %62, align 4
  br label %81

81:                                               ; preds = %107, %80
  %82 = load i32, i32* %62, align 4
  %83 = load i32, i32* %55, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = load float*, float** %56, align 8
  %87 = load i32, i32* %62, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fpext float %90 to double
  %92 = call double @llvm.fabs.f64(double %91)
  %93 = load float, float* %57, align 4
  %94 = fpext float %93 to double
  %95 = fcmp ogt double %92, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load float*, float** %56, align 8
  %98 = load i32, i32* %62, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fpext float %101 to double
  %103 = call double @llvm.fabs.f64(double %102)
  %104 = fptrunc double %103 to float
  store float %104, float* %57, align 4
  %105 = load i32, i32* %62, align 4
  store i32 %105, i32* %64, align 4
  br label %106

106:                                              ; preds = %96, %85
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %62, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %62, align 4
  br label %81, !llvm.loop !6

110:                                              ; preds = %81
  %111 = load i32, i32* %64, align 4
  store i32 %111, i32* %54, align 4
  br label %438

112:                                              ; preds = %2
  store float 3.000000e+00, float* %44, align 4
  store float 2.000000e+00, float* %45, align 4
  store float 1.000000e+00, float* %46, align 4
  store float 0.000000e+00, float* %47, align 4
  %113 = load float, float* %47, align 4
  %114 = insertelement <4 x float> undef, float %113, i32 0
  %115 = load float, float* %46, align 4
  %116 = insertelement <4 x float> %114, float %115, i32 1
  %117 = load float, float* %45, align 4
  %118 = insertelement <4 x float> %116, float %117, i32 2
  %119 = load float, float* %44, align 4
  %120 = insertelement <4 x float> %118, float %119, i32 3
  store <4 x float> %120, <4 x float>* %48, align 16
  %121 = load <4 x float>, <4 x float>* %48, align 16
  store <4 x float> %121, <4 x float>* %75, align 16
  store float 3.000000e+00, float* %49, align 4
  store float 2.000000e+00, float* %50, align 4
  store float 1.000000e+00, float* %51, align 4
  store float 0.000000e+00, float* %52, align 4
  %122 = load float, float* %52, align 4
  %123 = insertelement <4 x float> undef, float %122, i32 0
  %124 = load float, float* %51, align 4
  %125 = insertelement <4 x float> %123, float %124, i32 1
  %126 = load float, float* %50, align 4
  %127 = insertelement <4 x float> %125, float %126, i32 2
  %128 = load float, float* %49, align 4
  %129 = insertelement <4 x float> %127, float %128, i32 3
  store <4 x float> %129, <4 x float>* %53, align 16
  %130 = load <4 x float>, <4 x float>* %53, align 16
  store <4 x float> %130, <4 x float>* %72, align 16
  store float -0.000000e+00, float* %42, align 4
  %131 = load float, float* %42, align 4
  store float %131, float* %5, align 4
  %132 = load float, float* %5, align 4
  %133 = insertelement <4 x float> undef, float %132, i32 0
  %134 = load float, float* %5, align 4
  %135 = insertelement <4 x float> %133, float %134, i32 1
  %136 = load float, float* %5, align 4
  %137 = insertelement <4 x float> %135, float %136, i32 2
  %138 = load float, float* %5, align 4
  %139 = insertelement <4 x float> %137, float %138, i32 3
  store <4 x float> %139, <4 x float>* %6, align 16
  %140 = load <4 x float>, <4 x float>* %6, align 16
  store <4 x float> %140, <4 x float>* %74, align 16
  store float 4.000000e+00, float* %43, align 4
  %141 = load float, float* %43, align 4
  store float %141, float* %3, align 4
  %142 = load float, float* %3, align 4
  %143 = insertelement <4 x float> undef, float %142, i32 0
  %144 = load float, float* %3, align 4
  %145 = insertelement <4 x float> %143, float %144, i32 1
  %146 = load float, float* %3, align 4
  %147 = insertelement <4 x float> %145, float %146, i32 2
  %148 = load float, float* %3, align 4
  %149 = insertelement <4 x float> %147, float %148, i32 3
  store <4 x float> %149, <4 x float>* %4, align 16
  %150 = load <4 x float>, <4 x float>* %4, align 16
  store <4 x float> %150, <4 x float>* %69, align 16
  %151 = load float*, float** %56, align 8
  %152 = ptrtoint float* %151 to i32
  %153 = lshr i32 %152, 2
  %154 = and i32 %153, 3
  store i32 %154, i32* %65, align 4
  %155 = load i32, i32* %65, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %189

157:                                              ; preds = %112
  %158 = load float*, float** %56, align 8
  %159 = getelementptr inbounds float, float* %158, i64 0
  %160 = load float, float* %159, align 4
  %161 = call float @llvm.fabs.f32(float %160)
  store float %161, float* %57, align 4
  store i32 0, i32* %63, align 4
  store float 3.000000e+00, float* %59, align 4
  %162 = load i32, i32* %55, align 4
  %163 = sub nsw i32 %162, 3
  store i32 %163, i32* %68, align 4
  store i32 1, i32* %62, align 4
  br label %164

164:                                              ; preds = %185, %157
  %165 = load i32, i32* %62, align 4
  %166 = icmp slt i32 %165, 3
  br i1 %166, label %167, label %188

167:                                              ; preds = %164
  %168 = load float*, float** %56, align 8
  %169 = load i32, i32* %62, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  %172 = load float, float* %171, align 4
  %173 = call float @llvm.fabs.f32(float %172)
  %174 = load float, float* %57, align 4
  %175 = fcmp ogt float %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %167
  %177 = load float*, float** %56, align 8
  %178 = load i32, i32* %62, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = call float @llvm.fabs.f32(float %181)
  store float %182, float* %57, align 4
  %183 = load i32, i32* %62, align 4
  store i32 %183, i32* %63, align 4
  br label %184

184:                                              ; preds = %176, %167
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %62, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %62, align 4
  br label %164, !llvm.loop !7

188:                                              ; preds = %164
  br label %225

189:                                              ; preds = %112
  %190 = load i32, i32* %65, align 4
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %192, label %211

192:                                              ; preds = %189
  %193 = load float*, float** %56, align 8
  %194 = getelementptr inbounds float, float* %193, i64 0
  %195 = load float, float* %194, align 4
  %196 = call float @llvm.fabs.f32(float %195)
  store float %196, float* %57, align 4
  store i32 0, i32* %63, align 4
  store float 2.000000e+00, float* %59, align 4
  %197 = load i32, i32* %55, align 4
  %198 = sub nsw i32 %197, 2
  store i32 %198, i32* %68, align 4
  %199 = load float*, float** %56, align 8
  %200 = getelementptr inbounds float, float* %199, i64 1
  %201 = load float, float* %200, align 4
  %202 = call float @llvm.fabs.f32(float %201)
  %203 = load float, float* %57, align 4
  %204 = fcmp ogt float %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %192
  %206 = load float*, float** %56, align 8
  %207 = getelementptr inbounds float, float* %206, i64 1
  %208 = load float, float* %207, align 4
  %209 = call float @llvm.fabs.f32(float %208)
  store float %209, float* %57, align 4
  store i32 1, i32* %63, align 4
  br label %210

210:                                              ; preds = %205, %192
  br label %224

211:                                              ; preds = %189
  %212 = load i32, i32* %65, align 4
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load float*, float** %56, align 8
  %216 = getelementptr inbounds float, float* %215, i64 0
  %217 = load float, float* %216, align 4
  %218 = call float @llvm.fabs.f32(float %217)
  store float %218, float* %57, align 4
  store i32 0, i32* %63, align 4
  store float 1.000000e+00, float* %59, align 4
  %219 = load i32, i32* %55, align 4
  %220 = sub nsw i32 %219, 1
  store i32 %220, i32* %68, align 4
  br label %223

221:                                              ; preds = %211
  store float 0.000000e+00, float* %57, align 4
  store i32 0, i32* %63, align 4
  %222 = load i32, i32* %55, align 4
  store i32 %222, i32* %68, align 4
  store float 0.000000e+00, float* %59, align 4
  br label %223

223:                                              ; preds = %221, %214
  br label %224

224:                                              ; preds = %223, %210
  br label %225

225:                                              ; preds = %224, %188
  %226 = load float*, float** %56, align 8
  %227 = load float, float* %59, align 4
  %228 = fptosi float %227 to i32
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %226, i64 %229
  store float* %230, float** %60, align 8
  %231 = load i32, i32* %68, align 4
  %232 = ashr i32 %231, 2
  %233 = sub nsw i32 %232, 2
  store i32 %233, i32* %66, align 4
  %234 = load i32, i32* %68, align 4
  %235 = load i32, i32* %66, align 4
  %236 = add nsw i32 %235, 2
  %237 = mul nsw i32 4, %236
  %238 = sub nsw i32 %234, %237
  store i32 %238, i32* %61, align 4
  %239 = load float*, float** %60, align 8
  store float* %239, float** %39, align 8
  %240 = load float*, float** %39, align 8
  %241 = bitcast float* %240 to <4 x float>*
  %242 = load <4 x float>, <4 x float>* %241, align 16
  store <4 x float> %242, <4 x float>* %70, align 16
  %243 = load float*, float** %60, align 8
  %244 = getelementptr inbounds float, float* %243, i64 4
  store float* %244, float** %60, align 8
  %245 = load float*, float** %60, align 8
  store float* %245, float** %40, align 8
  %246 = load float*, float** %40, align 8
  %247 = bitcast float* %246 to <4 x float>*
  %248 = load <4 x float>, <4 x float>* %247, align 16
  store <4 x float> %248, <4 x float>* %71, align 16
  %249 = load float*, float** %60, align 8
  %250 = getelementptr inbounds float, float* %249, i64 4
  store float* %250, float** %60, align 8
  %251 = load <4 x float>, <4 x float>* %74, align 16
  %252 = load <4 x float>, <4 x float>* %70, align 16
  store <4 x float> %251, <4 x float>* %33, align 16
  store <4 x float> %252, <4 x float>* %34, align 16
  %253 = load <4 x float>, <4 x float>* %33, align 16
  %254 = bitcast <4 x float> %253 to <4 x i32>
  %255 = xor <4 x i32> %254, <i32 -1, i32 -1, i32 -1, i32 -1>
  %256 = load <4 x float>, <4 x float>* %34, align 16
  %257 = bitcast <4 x float> %256 to <4 x i32>
  %258 = and <4 x i32> %255, %257
  %259 = bitcast <4 x i32> %258 to <4 x float>
  store <4 x float> %259, <4 x float>* %70, align 16
  store i32 0, i32* %62, align 4
  br label %260

260:                                              ; preds = %317, %225
  %261 = load i32, i32* %62, align 4
  %262 = load i32, i32* %66, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %320

264:                                              ; preds = %260
  %265 = load <4 x float>, <4 x float>* %74, align 16
  %266 = load <4 x float>, <4 x float>* %71, align 16
  store <4 x float> %265, <4 x float>* %35, align 16
  store <4 x float> %266, <4 x float>* %36, align 16
  %267 = load <4 x float>, <4 x float>* %35, align 16
  %268 = bitcast <4 x float> %267 to <4 x i32>
  %269 = xor <4 x i32> %268, <i32 -1, i32 -1, i32 -1, i32 -1>
  %270 = load <4 x float>, <4 x float>* %36, align 16
  %271 = bitcast <4 x float> %270 to <4 x i32>
  %272 = and <4 x i32> %269, %271
  %273 = bitcast <4 x i32> %272 to <4 x float>
  store <4 x float> %273, <4 x float>* %71, align 16
  %274 = load <4 x float>, <4 x float>* %71, align 16
  %275 = load <4 x float>, <4 x float>* %70, align 16
  store <4 x float> %274, <4 x float>* %29, align 16
  store <4 x float> %275, <4 x float>* %30, align 16
  %276 = load <4 x float>, <4 x float>* %29, align 16
  %277 = load <4 x float>, <4 x float>* %30, align 16
  %278 = fcmp ugt <4 x float> %276, %277
  %279 = sext <4 x i1> %278 to <4 x i32>
  %280 = bitcast <4 x i32> %279 to <4 x float>
  store <4 x float> %280, <4 x float>* %73, align 16
  %281 = load <4 x float>, <4 x float>* %73, align 16
  store <4 x float> %281, <4 x float>* %27, align 16
  %282 = load <4 x float>, <4 x float>* %27, align 16
  %283 = call i32 @llvm.x86.sse.movmsk.ps(<4 x float> %282) #5
  store i32 %283, i32* %67, align 4
  %284 = load <4 x float>, <4 x float>* %72, align 16
  %285 = load <4 x float>, <4 x float>* %69, align 16
  store <4 x float> %284, <4 x float>* %23, align 16
  store <4 x float> %285, <4 x float>* %24, align 16
  %286 = load <4 x float>, <4 x float>* %23, align 16
  %287 = load <4 x float>, <4 x float>* %24, align 16
  %288 = fadd <4 x float> %286, %287
  store <4 x float> %288, <4 x float>* %72, align 16
  %289 = load i32, i32* %67, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %310

291:                                              ; preds = %264
  %292 = load <4 x float>, <4 x float>* %70, align 16
  %293 = load <4 x float>, <4 x float>* %71, align 16
  store <4 x float> %292, <4 x float>* %15, align 16
  store <4 x float> %293, <4 x float>* %16, align 16
  %294 = load <4 x float>, <4 x float>* %15, align 16
  %295 = load <4 x float>, <4 x float>* %16, align 16
  %296 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %294, <4 x float> %295) #5
  store <4 x float> %296, <4 x float>* %70, align 16
  %297 = load <4 x float>, <4 x float>* %72, align 16
  %298 = load <4 x float>, <4 x float>* %73, align 16
  store <4 x float> %297, <4 x float>* %11, align 16
  store <4 x float> %298, <4 x float>* %12, align 16
  %299 = load <4 x float>, <4 x float>* %11, align 16
  %300 = bitcast <4 x float> %299 to <4 x i32>
  %301 = load <4 x float>, <4 x float>* %12, align 16
  %302 = bitcast <4 x float> %301 to <4 x i32>
  %303 = and <4 x i32> %300, %302
  %304 = bitcast <4 x i32> %303 to <4 x float>
  store <4 x float> %304, <4 x float>* %73, align 16
  %305 = load <4 x float>, <4 x float>* %75, align 16
  %306 = load <4 x float>, <4 x float>* %73, align 16
  store <4 x float> %305, <4 x float>* %17, align 16
  store <4 x float> %306, <4 x float>* %18, align 16
  %307 = load <4 x float>, <4 x float>* %17, align 16
  %308 = load <4 x float>, <4 x float>* %18, align 16
  %309 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %307, <4 x float> %308) #5
  store <4 x float> %309, <4 x float>* %75, align 16
  br label %310

310:                                              ; preds = %291, %264
  %311 = load float*, float** %60, align 8
  store float* %311, float** %41, align 8
  %312 = load float*, float** %41, align 8
  %313 = bitcast float* %312 to <4 x float>*
  %314 = load <4 x float>, <4 x float>* %313, align 16
  store <4 x float> %314, <4 x float>* %71, align 16
  %315 = load float*, float** %60, align 8
  %316 = getelementptr inbounds float, float* %315, i64 4
  store float* %316, float** %60, align 8
  br label %317

317:                                              ; preds = %310
  %318 = load i32, i32* %62, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %62, align 4
  br label %260, !llvm.loop !8

320:                                              ; preds = %260
  %321 = load <4 x float>, <4 x float>* %74, align 16
  %322 = load <4 x float>, <4 x float>* %71, align 16
  store <4 x float> %321, <4 x float>* %37, align 16
  store <4 x float> %322, <4 x float>* %38, align 16
  %323 = load <4 x float>, <4 x float>* %37, align 16
  %324 = bitcast <4 x float> %323 to <4 x i32>
  %325 = xor <4 x i32> %324, <i32 -1, i32 -1, i32 -1, i32 -1>
  %326 = load <4 x float>, <4 x float>* %38, align 16
  %327 = bitcast <4 x float> %326 to <4 x i32>
  %328 = and <4 x i32> %325, %327
  %329 = bitcast <4 x i32> %328 to <4 x float>
  store <4 x float> %329, <4 x float>* %71, align 16
  %330 = load <4 x float>, <4 x float>* %71, align 16
  %331 = load <4 x float>, <4 x float>* %70, align 16
  store <4 x float> %330, <4 x float>* %31, align 16
  store <4 x float> %331, <4 x float>* %32, align 16
  %332 = load <4 x float>, <4 x float>* %31, align 16
  %333 = load <4 x float>, <4 x float>* %32, align 16
  %334 = fcmp ugt <4 x float> %332, %333
  %335 = sext <4 x i1> %334 to <4 x i32>
  %336 = bitcast <4 x i32> %335 to <4 x float>
  store <4 x float> %336, <4 x float>* %73, align 16
  %337 = load <4 x float>, <4 x float>* %73, align 16
  store <4 x float> %337, <4 x float>* %28, align 16
  %338 = load <4 x float>, <4 x float>* %28, align 16
  %339 = call i32 @llvm.x86.sse.movmsk.ps(<4 x float> %338) #5
  store i32 %339, i32* %67, align 4
  %340 = load <4 x float>, <4 x float>* %72, align 16
  %341 = load <4 x float>, <4 x float>* %69, align 16
  store <4 x float> %340, <4 x float>* %25, align 16
  store <4 x float> %341, <4 x float>* %26, align 16
  %342 = load <4 x float>, <4 x float>* %25, align 16
  %343 = load <4 x float>, <4 x float>* %26, align 16
  %344 = fadd <4 x float> %342, %343
  store <4 x float> %344, <4 x float>* %72, align 16
  %345 = load i32, i32* %67, align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %366

347:                                              ; preds = %320
  %348 = load <4 x float>, <4 x float>* %70, align 16
  %349 = load <4 x float>, <4 x float>* %71, align 16
  store <4 x float> %348, <4 x float>* %19, align 16
  store <4 x float> %349, <4 x float>* %20, align 16
  %350 = load <4 x float>, <4 x float>* %19, align 16
  %351 = load <4 x float>, <4 x float>* %20, align 16
  %352 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %350, <4 x float> %351) #5
  store <4 x float> %352, <4 x float>* %70, align 16
  %353 = load <4 x float>, <4 x float>* %72, align 16
  %354 = load <4 x float>, <4 x float>* %73, align 16
  store <4 x float> %353, <4 x float>* %13, align 16
  store <4 x float> %354, <4 x float>* %14, align 16
  %355 = load <4 x float>, <4 x float>* %13, align 16
  %356 = bitcast <4 x float> %355 to <4 x i32>
  %357 = load <4 x float>, <4 x float>* %14, align 16
  %358 = bitcast <4 x float> %357 to <4 x i32>
  %359 = and <4 x i32> %356, %358
  %360 = bitcast <4 x i32> %359 to <4 x float>
  store <4 x float> %360, <4 x float>* %73, align 16
  %361 = load <4 x float>, <4 x float>* %75, align 16
  %362 = load <4 x float>, <4 x float>* %73, align 16
  store <4 x float> %361, <4 x float>* %21, align 16
  store <4 x float> %362, <4 x float>* %22, align 16
  %363 = load <4 x float>, <4 x float>* %21, align 16
  %364 = load <4 x float>, <4 x float>* %22, align 16
  %365 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %363, <4 x float> %364) #5
  store <4 x float> %365, <4 x float>* %75, align 16
  br label %366

366:                                              ; preds = %347, %320
  %367 = getelementptr inbounds [8 x float], [8 x float]* %76, i64 0, i64 0
  %368 = load <4 x float>, <4 x float>* %70, align 16
  store float* %367, float** %7, align 8
  store <4 x float> %368, <4 x float>* %8, align 16
  %369 = load <4 x float>, <4 x float>* %8, align 16
  %370 = load float*, float** %7, align 8
  %371 = bitcast float* %370 to <4 x float>*
  store <4 x float> %369, <4 x float>* %371, align 16
  %372 = getelementptr inbounds [8 x float], [8 x float]* %77, i64 0, i64 0
  %373 = load <4 x float>, <4 x float>* %75, align 16
  store float* %372, float** %9, align 8
  store <4 x float> %373, <4 x float>* %10, align 16
  %374 = load <4 x float>, <4 x float>* %10, align 16
  %375 = load float*, float** %9, align 8
  %376 = bitcast float* %375 to <4 x float>*
  store <4 x float> %374, <4 x float>* %376, align 16
  %377 = load i32, i32* %61, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %405

379:                                              ; preds = %366
  store i32 0, i32* %62, align 4
  br label %380

380:                                              ; preds = %401, %379
  %381 = load i32, i32* %62, align 4
  %382 = load i32, i32* %61, align 4
  %383 = icmp slt i32 %381, %382
  br i1 %383, label %384, label %404

384:                                              ; preds = %380
  %385 = load float*, float** %60, align 8
  %386 = getelementptr inbounds float, float* %385, i32 1
  store float* %386, float** %60, align 8
  %387 = load float, float* %385, align 4
  %388 = call float @llvm.fabs.f32(float %387)
  %389 = load i32, i32* %62, align 4
  %390 = add nsw i32 4, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [8 x float], [8 x float]* %76, i64 0, i64 %391
  store float %388, float* %392, align 4
  %393 = load i32, i32* %68, align 4
  %394 = load i32, i32* %62, align 4
  %395 = add nsw i32 %393, %394
  %396 = sitofp i32 %395 to float
  %397 = load i32, i32* %62, align 4
  %398 = add nsw i32 4, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [8 x float], [8 x float]* %77, i64 0, i64 %399
  store float %396, float* %400, align 4
  br label %401

401:                                              ; preds = %384
  %402 = load i32, i32* %62, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %62, align 4
  br label %380, !llvm.loop !9

404:                                              ; preds = %380
  br label %405

405:                                              ; preds = %404, %366
  %406 = load float, float* %57, align 4
  store float %406, float* %58, align 4
  %407 = load i32, i32* %63, align 4
  store i32 %407, i32* %64, align 4
  store i32 0, i32* %62, align 4
  br label %408

408:                                              ; preds = %433, %405
  %409 = load i32, i32* %62, align 4
  %410 = load i32, i32* %61, align 4
  %411 = add nsw i32 4, %410
  %412 = icmp slt i32 %409, %411
  br i1 %412, label %413, label %436

413:                                              ; preds = %408
  %414 = load i32, i32* %62, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [8 x float], [8 x float]* %76, i64 0, i64 %415
  %417 = load float, float* %416, align 4
  %418 = load float, float* %58, align 4
  %419 = fcmp ogt float %417, %418
  br i1 %419, label %420, label %432

420:                                              ; preds = %413
  %421 = load i32, i32* %62, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [8 x float], [8 x float]* %76, i64 0, i64 %422
  %424 = load float, float* %423, align 4
  store float %424, float* %58, align 4
  %425 = load i32, i32* %62, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [8 x float], [8 x float]* %77, i64 0, i64 %426
  %428 = load float, float* %427, align 4
  %429 = load float, float* %59, align 4
  %430 = fadd float %428, %429
  %431 = fptosi float %430 to i32
  store i32 %431, i32* %64, align 4
  br label %432

432:                                              ; preds = %420, %413
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %62, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %62, align 4
  br label %408, !llvm.loop !10

436:                                              ; preds = %408
  %437 = load i32, i32* %64, align 4
  store i32 %437, i32* %54, align 4
  br label %438

438:                                              ; preds = %436, %110
  %439 = load i32, i32* %54, align 4
  ret i32 %439
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.sse.movmsk.ps(<4 x float>) #4

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

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
